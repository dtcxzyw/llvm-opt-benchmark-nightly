Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.14?download=true
inline.NumInlined: 672
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetRReNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1M_8adapters6filter6FilterINtNtNtB1O_5slice4iter4IterBP_ENCNvNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction29check_projected_column_limitss0_0EEB3Y_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetRReNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1M_8adapters6filter6FilterINtNtNtB1O_5slice4iter4IterBP_ENCNvNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction29check_projected_column_limitss_0EEB3Y_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !175
  call void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapRReuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB1O_8adapters3map3MapINtNtB2T_6filter6FilterINtNtNtB1Q_5slice4iter4IterBQ_ENCNvNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction29check_projected_column_limitss_0ENCINvXs8_NtB9_3setINtB66_7HashSetBP_BT_EIB1I_BP_E6extendB3g_E0EEB4k_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXs_NtCs87O7Q65ve1k_7bitcode5serdeNtNtB7_5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECs844E4pPEVZX_17influxdb3_catalog(ptr nofree noundef nonnull readnone captures(none) %0, ptr nofree noundef nonnull readnone captures(none) %1) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs87O7Q65ve1k_7bitcode5serdeNtNtB7_5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXs_NtCs87O7Q65ve1k_7bitcode5serdeNtNtB7_5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCs87O7Q65ve1k_7bitcode9pack_intshNtB6_3Int10with_inputNCINvB6_9pack_intshE0ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs3_NtCs87O7Q65ve1k_7bitcode9pack_intshNtB5_9SizedUInt5pack8(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsc_NtCs87O7Q65ve1k_7bitcode9pack_intshNtB6_3Int11with_outputNCINvB6_11unpack_intshE0ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %3, align 8, !noundef !4
  %i.a = tail call noundef zeroext i1 @_RNvXs3_NtCs87O7Q65ve1k_7bitcode9pack_intshNtB5_9SizedUInt7unpack8(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB6_3Int10with_inputNCINvB6_9pack_intstE0ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 2 %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %or.cond.i.i = icmp samesign ult i64 %1, 2
  br i1 %or.cond.i.i, label %.thread48.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 4611686018427387904) %1, i64 16) ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i
  %i.b = add nsw i64 %.idx.i.i.i, -2              ; 2 uses
  %i.c = lshr exact i64 %i.b, 1
  %i.d = add nuw i64 %i.c, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.e = shl i64 %n.vec, 1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %wide.load = load <8 x i16>, ptr %0, align 2, !alias.scope !212 ; 4 uses
  %i.g = icmp eq i64 %n.vec, 8
  br i1 %i.g, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %0, i64 16
  %wide.load.1 = load <8 x i16>, ptr %next.gep.1, align 2, !alias.scope !212 ; 2 uses
  %i.h = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load.1, <8 x i16> %wide.load)
  %i.i = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load.1, <8 x i16> %wide.load)
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %.lcssa80 = phi <8 x i16> [ %wide.load, %vector.ph ], [ %i.h, %vector.body.1 ]
  %.lcssa79 = phi <8 x i16> [ %wide.load, %vector.ph ], [ %i.i, %vector.body.1 ]
  %i.j = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %.lcssa79) ; 2 uses
  %i.k = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %.lcssa80) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints6minmaxtECs844E4pPEVZX_17influxdb3_catalog.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b, %middle.block
  %.sroa.0.011.i.i.i.ph = phi i16 [ 0, %bb.b ], [ %i.j, %middle.block ]
  %.sroa.03.010.i.i.i.ph = phi i16 [ -1, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.06.09.i.i.i.ph = phi ptr [ %0, %bb.b ], [ %i.f, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i = phi i16 [ %.sroa.0.0.i8.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.sroa.03.010.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.03.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.sroa.06.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.sroa.06.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i.i, i64 2 ; 2 uses
  %i.m = load i16, ptr %.sroa.06.09.i.i.i, align 2, !alias.scope !212, !noundef !4 ; 2 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.umin.i16(i16 %i.m, i16 %.sroa.03.010.i.i.i) ; 2 uses
  %.sroa.0.0.i8.i.i.i = tail call noundef i16 @llvm.umax.i16(i16 %i.m, i16 %.sroa.0.011.i.i.i) ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.a
  br i1 %i.n, label %_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints6minmaxtECs844E4pPEVZX_17influxdb3_catalog.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !184

_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints6minmaxtECs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %.sroa.0.0.i.i.i.i.lcssa = phi i16 [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i.lcssa = phi i16 [ %i.j, %middle.block ], [ %.sroa.0.0.i8.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = sub nuw i16 %.sroa.0.0.i8.i.i.i.lcssa, %.sroa.0.0.i.i.i.i.lcssa
  %i.p = icmp ugt i16 %i.o, 255
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints6minmaxtECs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.0.0.i.i.i ; 6 uses
  %i.r = sub nuw nsw i64 %1, %.sroa.0.0.i.i.i
  %.idx.i16.i.i = shl nuw nsw i64 %i.r, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i16.i.i
  %i.t = icmp samesign ult i64 %1, 17
  br i1 %i.t, label %bb.f, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.u = shl nuw nsw i64 %1, 1
  %i.v = add nsw i64 %i.u, -2
  %i.w = sub i64 %i.v, %.idx.i.i.i                ; 3 uses
  %i.x = lshr exact i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 5 uses
  %min.iters.check4 = icmp ult i64 %i.w, 6
  br i1 %min.iters.check4, label %.lr.ph.i17.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.w, 30
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph6

vector.ph6:                                       ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 12
  %n.vec7 = and i64 %i.y, -16                     ; 4 uses
  %i.aa = shl i64 %n.vec7, 1
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa
  br label %vector.body8

vector.body8:                                     ; preds = %vector.ph6, %vector.body8
  %index9 = phi i64 [ 0, %vector.ph6 ], [ %index.next17, %vector.body8 ] ; 2 uses
  %vec.phi10 = phi <8 x i16> [ zeroinitializer, %vector.ph6 ], [ %i.ag, %vector.body8 ]
  %vec.phi11 = phi <8 x i16> [ zeroinitializer, %vector.ph6 ], [ %i.ah, %vector.body8 ]
  %vec.phi12 = phi <8 x i16> [ splat (i16 -1), %vector.ph6 ], [ %i.ae, %vector.body8 ]
  %vec.phi13 = phi <8 x i16> [ splat (i16 -1), %vector.ph6 ], [ %i.af, %vector.body8 ]
  %i.ac = shl i64 %index9, 1
  %next.gep14 = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load15 = load <8 x i16>, ptr %next.gep14, align 2, !alias.scope !213 ; 2 uses
  %wide.load16 = load <8 x i16>, ptr %i.ad, align 2, !alias.scope !213 ; 2 uses
  %i.ae = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load15, <8 x i16> %vec.phi12) ; 2 uses
  %i.af = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load16, <8 x i16> %vec.phi13) ; 2 uses
  %i.ag = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load15, <8 x i16> %vec.phi10) ; 2 uses
  %i.ah = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load16, <8 x i16> %vec.phi11) ; 2 uses
  %index.next17 = add nuw i64 %index9, 16         ; 2 uses
  %i.ai = icmp eq i64 %index.next17, %n.vec7
  br i1 %i.ai, label %middle.block18, label %vector.body8, !llvm.loop !187

middle.block18:                                   ; preds = %vector.body8
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ag, <8 x i16> %i.ah)
  %i.aj = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax19 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ae, <8 x i16> %i.af)
  %i.ak = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax19) ; 3 uses
  %cmp.n20 = icmp eq i64 %i.y, %n.vec7
  br i1 %cmp.n20, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block18
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i17.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec7, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx21 = phi i16 [ %i.aj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx22 = phi i16 [ %i.ak, %vec.epilog.iter.check ], [ -1, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.y, -4                     ; 3 uses
  %3 = shl i64 %n.vec24, 1
  %4 = getelementptr i8, ptr %i.q, i64 %3
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx21, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <4 x i16> poison, i16 %bc.merge.rdx22, i64 0
  %broadcast.splat26 = shufflevector <4 x i16> %broadcast.splatinsert25, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi28.a = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.an, %vec.epilog.vector.body ]
  %vec.phi29 = phi <4 x i16> [ %broadcast.splat26, %vec.epilog.ph ], [ %i.am, %vec.epilog.vector.body ]
  %i.al = shl i64 %index27, 1
  %next.gep30 = getelementptr i8, ptr %i.q, i64 %i.al
  %wide.load31 = load <4 x i16>, ptr %next.gep30, align 2, !alias.scope !213 ; 2 uses
  %i.am = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load31, <4 x i16> %vec.phi29) ; 2 uses
  %i.an = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load31, <4 x i16> %vec.phi28.a) ; 2 uses
  %index.next32 = add nuw i64 %index27, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next32, %n.vec24
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.an) ; 2 uses
  %i.aq = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.am) ; 2 uses
  %cmp.n33 = icmp eq i64 %i.y, %n.vec24
  br i1 %cmp.n33, label %.loopexit.loopexit.i.i, label %.lr.ph.i17.i.i.preheader

.lr.ph.i17.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.i18.i.i.ph = phi i16 [ 0, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.sroa.03.010.i19.i.i.ph = phi i16 [ -1, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.sroa.06.09.i20.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i.preheader, %.lr.ph.i17.i.i
  %.sroa.0.011.i18.i.i = phi i16 [ %.sroa.0.0.i8.i22.i.i, %.lr.ph.i17.i.i ], [ %.sroa.0.011.i18.i.i.ph, %.lr.ph.i17.i.i.preheader ]
  %.sroa.03.010.i19.i.i = phi i16 [ %.sroa.0.0.i.i21.i.i, %.lr.ph.i17.i.i ], [ %.sroa.03.010.i19.i.i.ph, %.lr.ph.i17.i.i.preheader ]
  %.sroa.06.09.i20.i.i = phi ptr [ %i.ar, %.lr.ph.i17.i.i ], [ %.sroa.06.09.i20.i.i.ph, %.lr.ph.i17.i.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i20.i.i, i64 2 ; 2 uses
  %i.as = load i16, ptr %.sroa.06.09.i20.i.i, align 2, !alias.scope !213, !noundef !4 ; 2 uses
  %.sroa.0.0.i.i21.i.i = tail call noundef i16 @llvm.umin.i16(i16 %i.as, i16 %.sroa.03.010.i19.i.i) ; 2 uses
  %.sroa.0.0.i8.i22.i.i = tail call noundef i16 @llvm.umax.i16(i16 %i.as, i16 %.sroa.0.011.i18.i.i) ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.s
  br i1 %i.at, label %.loopexit.loopexit.i.i, label %.lr.ph.i17.i.i, !llvm.loop !189

bb.d:                                             ; preds = %_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints6minmaxtECs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !214, !noundef !4 ; 3 uses
  %i.aw = load i64, ptr %2, align 8, !range !7, !alias.scope !214, !noundef !4
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writetECs844E4pPEVZX_17influxdb3_catalog.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !215
  br label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writetECs844E4pPEVZX_17influxdb3_catalog.exit.i.i

_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writetECs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !214, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  store i8 0, ptr %i.ba, align 1, !noalias !215
  %i.bb = add i64 %i.av, 1
  store i64 %i.bb, ptr %i.au, align 8, !alias.scope !214
  br label %.thread48.i.i

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i17.i.i, %vec.epilog.middle.block, %middle.block18
  %.sroa.0.0.i.i21.i.i.lcssa = phi i16 [ %i.aq, %vec.epilog.middle.block ], [ %i.ak, %middle.block18 ], [ %.sroa.0.0.i.i21.i.i, %.lr.ph.i17.i.i ]
  %.sroa.0.0.i8.i22.i.i.lcssa = phi i16 [ %i.ap, %vec.epilog.middle.block ], [ %i.aj, %middle.block18 ], [ %.sroa.0.0.i8.i22.i.i, %.lr.ph.i17.i.i ]
  %i.bc = tail call i16 @llvm.umin.i16(i16 %.sroa.0.0.i.i21.i.i.lcssa, i16 %.sroa.0.0.i.i.i.i.lcssa) ; 2 uses
  %i.bd = tail call i16 @llvm.umax.i16(i16 %.sroa.0.0.i8.i22.i.i.lcssa, i16 %.sroa.0.0.i8.i.i.i.lcssa) ; 2 uses
  %.pre.i = sub nuw i16 %i.bd, %i.bc
  %i.be = icmp ult i16 %.pre.i, 256
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.loopexit.i.i, %bb.c
  %.pre-phi.i = phi i1 [ %i.be, %.loopexit.loopexit.i.i ], [ true, %bb.c ]
  %.sroa.03.0.lcssa.i23.i.i = phi i16 [ %i.bc, %.loopexit.loopexit.i.i ], [ %.sroa.0.0.i.i.i.i.lcssa, %bb.c ] ; 4 uses
  %.sroa.0.0.lcssa.i24.i.i = phi i16 [ %i.bd, %.loopexit.loopexit.i.i ], [ %.sroa.0.0.i8.i.i.i.lcssa, %bb.c ]
  %i.bf = icmp ugt i16 %.sroa.0.0.lcssa.i24.i.i, 255 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.bg = icmp samesign ugt i64 %1, 5
  %i.bh = and i1 %i.bg, %.pre-phi.i
  %or.cond.i.i.i = and i1 %i.bh, %i.bf
  br i1 %or.cond.i.i.i, label %iter.check54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !218, !noundef !4 ; 3 uses
  %i.bk = load i64, ptr %2, align 8, !range !7, !alias.scope !218, !noundef !4
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !219
  br label %bb.j

iter.check54:                                     ; preds = %bb.f
  %.idx.i30.i.i = shl nuw nsw i64 %1, 1           ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i30.i.i
  %i.bn = add nsw i64 %.idx.i30.i.i, -2           ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check39 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check39, label %vec.epilog.ph58, label %vector.ph40

vector.ph40:                                      ; preds = %iter.check54
  %i.bq = and i64 %i.bp, 12
  %n.vec41 = and i64 %i.bp, -16                   ; 4 uses
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %.sroa.03.0.lcssa.i23.i.i, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.ph40, %vector.body44
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next49, %vector.body44 ] ; 2 uses
  %i.br = shl i64 %index45, 1
  %next.gep46 = getelementptr i8, ptr %0, i64 %i.br ; 3 uses
  %i.bs = getelementptr i8, ptr %next.gep46, i64 16 ; 2 uses
  %wide.load47.a = load <8 x i16>, ptr %next.gep46, align 2, !alias.scope !219
  %wide.load48 = load <8 x i16>, ptr %i.bs, align 2, !alias.scope !219
  %i.bt = sub <8 x i16> %wide.load47.a, %broadcast.splat43
  %i.bu = sub <8 x i16> %wide.load48, %broadcast.splat43
  store <8 x i16> %i.bt, ptr %next.gep46, align 2, !alias.scope !219
  store <8 x i16> %i.bu, ptr %i.bs, align 2, !alias.scope !219
  %index.next49 = add nuw i64 %index45, 16        ; 2 uses
  %i.bv = icmp eq i64 %index.next49, %n.vec41
  br i1 %i.bv, label %middle.block50, label %vector.body44, !llvm.loop !201

middle.block50:                                   ; preds = %vector.body44
  %cmp.n51 = icmp eq i64 %i.bp, %n.vec41
  br i1 %cmp.n51, label %._crit_edge.i.i.i, label %vec.epilog.iter.check56

vec.epilog.iter.check56:                          ; preds = %middle.block50
  %min.epilog.iters.check57 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check57, label %.lr.ph.i31.i.i.preheader, label %vec.epilog.ph58, !prof !20

vec.epilog.ph58:                                  ; preds = %iter.check54, %vec.epilog.iter.check56
  %vec.epilog.resume.val52 = phi i64 [ %n.vec41, %vec.epilog.iter.check56 ], [ 0, %iter.check54 ]
  %n.vec59 = and i64 %i.bp, -4                    ; 3 uses
  %broadcast.splatinsert60 = insertelement <4 x i16> poison, i16 %.sroa.03.0.lcssa.i23.i.i, i64 0
  %broadcast.splat61 = shufflevector <4 x i16> %broadcast.splatinsert60, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body62

vec.epilog.vector.body62:                         ; preds = %vec.epilog.vector.body62, %vec.epilog.ph58
  %index63 = phi i64 [ %vec.epilog.resume.val52, %vec.epilog.ph58 ], [ %index.next66, %vec.epilog.vector.body62 ] ; 2 uses
  %i.bw = shl i64 %index63, 1
  %next.gep64 = getelementptr i8, ptr %0, i64 %i.bw ; 2 uses
  %wide.load65 = load <4 x i16>, ptr %next.gep64, align 2, !alias.scope !219
  %i.bx = sub <4 x i16> %wide.load65, %broadcast.splat61
  store <4 x i16> %i.bx, ptr %next.gep64, align 2, !alias.scope !219
  %index.next66 = add nuw i64 %index63, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.by, label %vec.epilog.middle.block67, label %vec.epilog.vector.body62, !llvm.loop !202

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body62
  %cmp.n68 = icmp eq i64 %i.bp, %n.vec59
  br i1 %cmp.n68, label %._crit_edge.i.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %vec.epilog.iter.check56, %vec.epilog.middle.block67
  %.pn.in = phi i64 [ %n.vec41, %vec.epilog.iter.check56 ], [ %n.vec59, %vec.epilog.middle.block67 ]
  %.pn = shl i64 %.pn.in, 1
  %.sroa.07.010.i.i.i.ph = getelementptr i8, ptr %0, i64 %.pn
  br label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i.preheader, %.lr.ph.i31.i.i
  %.sroa.07.010.i.i.i = phi ptr [ %i.bz, %.lr.ph.i31.i.i ], [ %.sroa.07.010.i.i.i.ph, %.lr.ph.i31.i.i.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.07.010.i.i.i, i64 2 ; 2 uses
  %i.ca = load i16, ptr %.sroa.07.010.i.i.i, align 2, !alias.scope !219, !noundef !4
  %i.cb = sub i16 %i.ca, %.sroa.03.0.lcssa.i23.i.i
  store i16 %i.cb, ptr %.sroa.07.010.i.i.i, align 2, !alias.scope !219
  %i.cc = icmp eq ptr %i.bz, %i.bm
  br i1 %i.cc, label %._crit_edge.i.i.i, label %.lr.ph.i31.i.i, !llvm.loop !203

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i31.i.i, %vec.epilog.middle.block67, %middle.block50
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !220, !noundef !4 ; 3 uses
  %i.cf = load i64, ptr %2, align 8, !range !7, !alias.scope !220, !noundef !4
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.i, label %.thread41.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !219
  br label %.thread41.i.i

.thread41.i.i:                                    ; preds = %bb.i, %._crit_edge.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !220, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ce
  store i8 1, ptr %i.cj, align 1, !noalias !219
  %i.ck = add i64 %i.ce, 1
  store i64 %i.ck, ptr %i.cd, align 8, !alias.scope !220
  tail call void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt5write(i16 noundef %.sroa.03.0.lcssa.i23.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !219
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.cl = select i1 %i.bf, i8 0, i8 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !218, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bj
  store i8 %i.cl, ptr %i.co, align 1, !noalias !219
  %i.cp = add i64 %i.bj, 1
  store i64 %i.cp, ptr %i.bi, align 8, !alias.scope !218
  br i1 %i.bf, label %.thread48.i.i, label %bb.k

.thread48.i.i:                                    ; preds = %bb.j, %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writetECs844E4pPEVZX_17influxdb3_catalog.exit.i.i, %bb.a
  tail call void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt6pack16(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RNCINvNtCs87O7Q65ve1k_7bitcode9pack_ints9pack_intstE0Cs844E4pPEVZX_17influxdb3_catalog.exit

bb.k:                                             ; preds = %bb.j, %.thread41.i.i
  tail call void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt5pack8(ptr noalias noundef nonnull align 2 %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RNCINvNtCs87O7Q65ve1k_7bitcode9pack_ints9pack_intstE0Cs844E4pPEVZX_17influxdb3_catalog.exit

_RNCINvNtCs87O7Q65ve1k_7bitcode9pack_ints9pack_intstE0Cs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.thread48.i.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXse_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB6_3Int11with_outputNCINvB6_11unpack_intstE0ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %3, align 8, !noundef !4
  %i.a = tail call noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints26unpack_ints_sized_unsignedtECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvXsg_CskjZYK41KTdf_13generic_arrayINtB6_12GenericArrayhINtNtCsl9JNONEOWpr_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB2a_2B0EB2n_EB2n_EB2n_EB2n_EB2n_EB2n_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs4NRVxsYgnAr_4core7default7Default7default0ECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 1 captures(none) dereferenceable(128) initializes((0, 128)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
end_hunk_0
