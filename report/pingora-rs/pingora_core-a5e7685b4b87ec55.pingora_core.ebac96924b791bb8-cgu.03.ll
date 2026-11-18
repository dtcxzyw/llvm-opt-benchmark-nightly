Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.03?download=true
inline.NumInlined: 1136
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs2_NtCs5zWH1ndsy9S_15crossbeam_queue11array_queueINtB5_10ArrayQueueTlNtNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v213ConnectionRefEE3popB1h_:bb.a
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i64, ptr %i.b, align 8, !noundef !7
  %i.ay = add i64 %i.ax, %.sroa.04.0
  store atomic i64 %i.ay, ptr %i.at release, align 8
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE5clearCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !2236, !nonnull !7, !noundef !7 ; 5 uses
  %.val13.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !2237
  %i.e = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = bitcast <16 x i1> %i.e to i16
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i, %bb.b
  %.sroa.06.017.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  %.sroa.6.016.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.6.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  %.sroa.87.015.i = phi i16 [ %i.g, %bb.b ], [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  %.sroa.108.014.i = phi i64 [ %i.b, %bb.b ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i ]
  %.not11.i.i = icmp eq i16 %.sroa.87.015.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECskeugdADtBsi_12pingora_core.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.sroa.6.016.i, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %.sroa.06.017.i, %bb.c ]
  %.val79.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !2238
  %i.j = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.j to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECskeugdADtBsi_12pingora_core.exit.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECskeugdADtBsi_12pingora_core.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1.i = phi ptr [ %.sroa.6.016.i, %bb.c ], [ %i.l, %.lr.ph.i.i ]
  %.sroa.06.1.i = phi ptr [ %.sroa.06.017.i, %bb.c ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.87.015.i, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i, i64 %i.q ; 2 uses
  %i.s = add i64 %.sroa.108.014.i, -1             ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -16
  %.val.i = load ptr, ptr %i.t, align 8, !noalias !2236 ; 5 uses
  %i.u = getelementptr i8, ptr %i.r, i64 -8
  %.val5.i = load ptr, ptr %i.u, align 8, !noalias !2236, !nonnull !7, !align !10, !noundef !7 ; 5 uses
  %i.v = load ptr, ptr %.val5.i, align 8, !invariant.load !7, !noalias !2236 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !2236

bb.e:                                             ; preds = %bb.d, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECskeugdADtBsi_12pingora_core.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !20, !invariant.load !7, !noalias !2236 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !21, !invariant.load !7, !noalias !2236
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #22, !noalias !2236
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !20, !invariant.load !7, !noalias !2236 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !21, !invariant.load !7, !noalias !2236
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #22, !noalias !2236
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.e
  %i.ah = icmp eq i64 %i.s, 0
  br i1 %i.ah, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit, label %bb.c

.body:                                            ; preds = %bb.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !7 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.body
  %i.al = add i64 %i.aj, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.al, i1 false)
  %i.am = icmp ult i64 %i.aj, 8
  %i.an = add i64 %i.aj, 1
  %i.ao = lshr i64 %i.an, 3
  %i.ap = mul nuw i64 %i.ao, 7
  %spec.select.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.ap
  br label %bb.j

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !7 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3r_4SyncEL_EEENCNvMs6_B1w_B1t_5clear0EECskeugdADtBsi_12pingora_core.exit5, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit
  %i.at = add i64 %i.ar, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.at, i1 false)
  %i.au = icmp ult i64 %i.ar, 8
  %i.av = add i64 %i.ar, 1
  %i.aw = lshr i64 %i.av, 3
  %i.ax = mul nuw i64 %i.aw, 7
  %spec.select.i.i.i4 = select i1 %i.au, i64 %i.ar, i64 %i.ax
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3r_4SyncEL_EEENCNvMs6_B1w_B1t_5clear0EECskeugdADtBsi_12pingora_core.exit5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3r_4SyncEL_EEENCNvMs6_B1w_B1t_5clear0EECskeugdADtBsi_12pingora_core.exit5: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit, %bb.h
  %i.ay = phi i64 [ %spec.select.i.i.i4, %bb.h ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECskeugdADtBsi_12pingora_core.exit ]
  store i64 0, ptr %i.a, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %i.az, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3r_4SyncEL_EEENCNvMs6_B1w_B1t_5clear0EECskeugdADtBsi_12pingora_core.exit5
  ret void

bb.j:                                             ; preds = %bb.g, %.body
  %i.ba = phi i64 [ %spec.select.i.i.i, %bb.g ], [ 0, %.body ]
  store i64 0, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bb, align 8
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_CsgVu6wO3fN9n_7unicaseINtB4_7UniCaseReE3newCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %2, 64
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 9223372036854775744
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = and i64 %2, 63                           ; 2 uses
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.sroa.01.028.i.i = phi ptr [ %i.e, %bb.c ], [ %1, %bb.b ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !2255, !noalias !2256
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.g, align 1, !alias.scope !2255, !noalias !2257
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.h, align 1, !alias.scope !2255, !noalias !2258
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.i, align 1, !alias.scope !2255, !noalias !2259
  %i.j = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.k = or <2 x i64> %i.j, %.sroa.0.0.copyload.i10.i.i
  %i.l = or <2 x i64> %i.k, %.sroa.0.0.copyload.i11.i.i
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = icmp slt <16 x i8> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.c, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.r = icmp samesign eq i64 %i.d, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.d
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !2255, !noalias !2260, !noundef !7
  %i.v = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.v, label %bb.d, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.w = and i64 %2, 56                           ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 7 uses
  %i.y = and i64 %2, 7                            ; 7 uses
  %i.z = icmp samesign eq i64 %i.w, 0
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i

3:                                                ; preds = %.lr.ph.i
  %4 = icmp samesign eq i64 %i.w, 8
  br i1 %4, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0.copyload.i.1 = load i64, ptr %5, align 1, !alias.scope !2261
  %6 = and i64 %.sroa.03.0.copyload.i.1, -9187201950435737472
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %.lr.ph.i.1
  %9 = icmp samesign eq i64 %i.w, 16
  br i1 %9, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.0.copyload.i.2 = load i64, ptr %10, align 1, !alias.scope !2261
  %11 = and i64 %.sroa.03.0.copyload.i.2, -9187201950435737472
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %.lr.ph.i.2
  %14 = icmp samesign eq i64 %i.w, 24
  br i1 %14, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload.i.3 = load i64, ptr %15, align 1, !alias.scope !2261
  %16 = and i64 %.sroa.03.0.copyload.i.3, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %.lr.ph.i.3
  %19 = icmp samesign eq i64 %i.w, 32
  br i1 %19, label %._crit_edge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %18
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.03.0.copyload.i.4 = load i64, ptr %20, align 1, !alias.scope !2261
  %21 = and i64 %.sroa.03.0.copyload.i.4, -9187201950435737472
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %.lr.ph.i.4
  %24 = icmp samesign eq i64 %i.w, 40
  br i1 %24, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.03.0.copyload.i.5 = load i64, ptr %i.aa, align 1, !alias.scope !2261
  %25 = and i64 %.sroa.03.0.copyload.i.5, -9187201950435737472
  %i.ab = icmp eq i64 %25, 0
  br i1 %i.ab, label %26, label %.loopexit

26:                                               ; preds = %bb.f
  %27 = icmp samesign eq i64 %i.w, 48
  br i1 %27, label %._crit_edge.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %26
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.03.0.copyload.i.a = load i64, ptr %28, align 1, !alias.scope !2261
  %i.ac = and i64 %.sroa.03.0.copyload.i.a, -9187201950435737472
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %._crit_edge.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 1, !alias.scope !2261
  %29 = and i64 %.sroa.03.0.copyload.i, -9187201950435737472
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %3, label %.loopexit

._crit_edge.i:                                    ; preds = %3, %8, %13, %18, %23, %26, %.lr.ph.i.a, %bb.e
  %i.ae = icmp samesign eq i64 %i.y, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph29

bb.g:                                             ; preds = %.lr.ph29
  %i.af = icmp samesign eq i64 %i.y, 1
  br i1 %i.af, label %.loopexit, label %.lr.ph29.1

.lr.ph29.1:                                       ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.val.i.i.1 = load i8, ptr %i.ag, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.ah = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.ah, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph29.1
  %i.ai = icmp samesign eq i64 %i.y, 2
  br i1 %i.ai, label %.loopexit, label %.lr.ph29.2

.lr.ph29.2:                                       ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val.i.i.2 = load i8, ptr %i.aj, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.ak = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.ak, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph29.2
  %i.al = icmp samesign eq i64 %i.y, 3
  br i1 %i.al, label %.loopexit, label %.lr.ph29.3

.lr.ph29.3:                                       ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %.val.i.i.3 = load i8, ptr %i.am, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.an = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.an, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph29.3
  %i.ao = icmp samesign eq i64 %i.y, 4
  br i1 %i.ao, label %.loopexit, label %.lr.ph29.4

.lr.ph29.4:                                       ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val.i.i.4 = load i8, ptr %i.ap, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.aq = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.aq, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph29.4
  %i.ar = icmp samesign eq i64 %i.y, 5
  br i1 %i.ar, label %.loopexit, label %.lr.ph29.5

.lr.ph29.5:                                       ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %.val.i.i.5 = load i8, ptr %i.as, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.at = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.at, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph29.5
  %i.au = icmp samesign eq i64 %i.y, 6
  br i1 %i.au, label %.loopexit, label %.lr.ph29.6

.lr.ph29.6:                                       ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %.val.i.i.6 = load i8, ptr %i.av, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.aw = icmp sgt i8 %.val.i.i.6, -1
  %spec.select = select i1 %i.aw, i64 0, i64 1
  br label %.loopexit

.lr.ph29:                                         ; preds = %._crit_edge.i
  %.val.i.i = load i8, ptr %i.x, align 1, !alias.scope !2261, !noalias !2262, !noundef !7
  %i.ax = icmp sgt i8 %.val.i.i, -1
  br i1 %i.ax, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph29.6, %.lr.ph.i.i, %.lr.ph, %bb.d, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %bb.f, %.lr.ph.i.a, %.lr.ph29, %bb.g, %.lr.ph29.1, %bb.h, %.lr.ph29.2, %bb.i, %.lr.ph29.3, %bb.j, %.lr.ph29.4, %bb.k, %.lr.ph29.5, %bb.l, %._crit_edge.i.i, %._crit_edge.i
  %.sink = phi i64 [ 0, %._crit_edge.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph.i ], [ 0, %._crit_edge.i ], [ 1, %.lr.ph29 ], [ 0, %bb.g ], [ 1, %.lr.ph29.1 ], [ 0, %bb.h ], [ 1, %.lr.ph29.2 ], [ 0, %bb.i ], [ 1, %.lr.ph29.3 ], [ 0, %bb.j ], [ 1, %.lr.ph29.4 ], [ 0, %bb.k ], [ 1, %.lr.ph29.5 ], [ 0, %bb.l ], [ %spec.select, %.lr.ph29.6 ], [ 1, %.lr.ph.i.a ], [ 1, %bb.f ], [ 1, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.2 ], [ 1, %.lr.ph.i.1 ], [ 1, %.lr.ph ]
  store i64 %.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE24with_capacity_and_hasherCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24), (32, 48)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef 24, i64 noundef 16, i64 noundef %1, i1 noundef zeroext true) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtNtCskeugdADtBsi_12pingora_core7modules4httpNtB4_13HttpModuleCtx20response_body_filter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.01.06, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !align !10, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !7, !nonnull !7
  %i.n = tail call noundef align 8 ptr %i.m(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) #34 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.n, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCskeugdADtBsi_12pingora_core7modules4httpNtB4_13HttpModuleCtx20response_done_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19
  %.sroa.0.063 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ] ; 3 uses
  %.sroa.0.03562 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ] ; 7 uses
  %.sroa.10.061 = phi ptr [ undef, %.lr.ph ], [ %.sroa.10.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ] ; 4 uses
  %.sroa.15.060 = phi i64 [ undef, %.lr.ph ], [ %.sroa.15.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ] ; 4 uses
  %.sroa.18.059 = phi ptr [ undef, %.lr.ph ], [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = load ptr, ptr %.sroa.0.063, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !align !10, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !7, !nonnull !7
  invoke void %i.n(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.j)
          to label %bb.e unwind label %bb.c

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19, %bb.a
  %.sroa.18.0.lcssa = phi ptr [ undef, %bb.a ], [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %.sroa.15.0.lcssa = phi i64 [ undef, %bb.a ], [ %.sroa.15.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %.sroa.10.0.lcssa = phi ptr [ undef, %bb.a ], [ %.sroa.10.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %.sroa.0.035.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.035.lcssa, ptr %i.o, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.lcssa, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.18.0.lcssa, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq ptr %.sroa.0.03562, null
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pn45 = phi { ptr, i32 } [ %i.ae, %.thread ], [ %i.p, %bb.c ]
  %.sroa.0.144 = phi ptr [ %i.v, %.thread ], [ %.sroa.0.03562, %bb.c ]
  %.sroa.10.143 = phi ptr [ %.sroa.4.sroa.0.0.copyload, %.thread ], [ %.sroa.10.061, %bb.c ]
  %.sroa.15.142 = phi i64 [ %.sroa.4.sroa.4.0.copyload, %.thread ], [ %.sroa.15.060, %bb.c ]
  %.sroa.18.141 = phi ptr [ %.sroa.4.sroa.5.0.copyload, %.thread ], [ %.sroa.18.059, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.144, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2281, !nonnull !7, !noundef !7
  invoke void %i.s(ptr noundef %.sroa.18.141, ptr noundef %.sroa.10.143, i64 noundef %.sroa.15.142)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit unwind label %bb.k, !inline_history !0

bb.e:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.a, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = load ptr, ptr %i.h, align 8              ; 5 uses
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  %i.x = icmp eq ptr %.sroa.0.03562, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03562, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2282, !nonnull !7, !noundef !7
  call void %i.z(ptr noundef %.sroa.18.059, ptr noundef %.sroa.10.061, i64 noundef %.sroa.15.060), !noalias !2282, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17

bb.h:                                             ; preds = %bb.e
  %.sroa.4.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq ptr %.sroa.0.03562, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03562, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2283, !nonnull !7, !noundef !7
  invoke void %i.ac(ptr noundef %.sroa.18.059, ptr noundef %.sroa.10.061, i64 noundef %.sroa.15.060)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19 unwind label %.thread, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit19: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.18.2 = phi ptr [ %.sroa.18.059, %bb.h ], [ %.sroa.4.sroa.5.0.copyload, %bb.i ], [ %.sroa.4.sroa.5.0.copyload, %bb.j ] ; 2 uses
  %.sroa.15.2 = phi i64 [ %.sroa.15.060, %bb.h ], [ %.sroa.4.sroa.4.0.copyload, %bb.i ], [ %.sroa.4.sroa.4.0.copyload, %bb.j ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.061, %bb.h ], [ %.sroa.4.sroa.0.0.copyload, %bb.i ], [ %.sroa.4.sroa.0.0.copyload, %bb.j ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.03562, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %i.ad = icmp eq ptr %i.i, %i.f
  br i1 %i.ad, label %._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit17: ; preds = %bb.g, %bb.f, %._crit_edge
  ret void

bb.k:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c, %bb.d
  %.pn46 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn45, %bb.d ]
  resume { ptr, i32 } %.pn46
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCskeugdADtBsi_12pingora_core7modules4httpNtB4_13HttpModuleCtx23response_trailer_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
