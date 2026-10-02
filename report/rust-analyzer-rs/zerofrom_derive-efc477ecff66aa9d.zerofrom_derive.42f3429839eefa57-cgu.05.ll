Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/zerofrom_derive-efc477ecff66aa9d.zerofrom_derive.42f3429839eefa57-cgu.05?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0_@_RNvXNvNtCsiwvLk4GMN8X_10proc_macro6bridges3_1__INtNtCshzWfHUSfYae_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCs5KndGQj2IFn_15zerofrom_derive:bb.a
bb.g:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 4 %i.a) #15
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXNvNtCsiwvLk4GMN8X_10proc_macro6bridges3_1__INtNtCshzWfHUSfYae_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCs5KndGQj2IFn_15zerofrom_derive(ptr %0, i64 %1, ptr align 8 %2, ptr %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %2, i8 0) #14
  tail call void @_RNvXs8_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCs5KndGQj2IFn_15zerofrom_derive(ptr nonnull %0, i64 %1, ptr align 8 %2, ptr %3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %2, i8 1) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionbENtNtB7_3cmp9PartialEq2eqCs5KndGQj2IFn_15zerofrom_derive(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, 2                      ; 2 uses
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 2                       ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %i.c
  %.mux = select i1 %.not, i1 %i.c, i1 false
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.d, %bb.c ], [ %.mux, %bb.a ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_RNvXsh_NtNtCshzWfHUSfYae_4core3cmp5implsbNtB7_9PartialEq2eqCs5KndGQj2IFn_15zerofrom_derive(ptr nonnull %0, ptr nonnull %1) #14
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBP_EEENtNtNtB1t_3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1d_EENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs5KndGQj2IFn_15zerofrom_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.l) #14
  %i.m = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.m, ptr %i.c, align 16
  %i.n = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 16 %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = load i64, ptr %i.i, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = trunc i32 %i.n to i16
  %i.s = xor i16 %i.r, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.sroa.05.019.i.i = phi ptr [ %.sroa.05.229.i.i, %bb.d ], [ %i.l, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.4.018.i.i = phi ptr [ %.sroa.4.228.i.i, %bb.d ], [ %i.q, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.sroa.1.017.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.o, %.lr.ph.preheader.i.i ]
  %.sroa.76.016.i.i = phi i16 [ %i.af, %bb.d ], [ %i.s, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i.i.i = icmp eq i16 %.sroa.76.016.i.i, 0
  br i1 %.not8.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.4.1.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.4.018.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.05.1.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.sroa.05.019.i.i, %.lr.ph.i.i ]
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1.i.i) #14
  %i.t = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.t, ptr %i.a, align 16
  %i.u = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 16 %i.a) #14
  %i.v = trunc i32 %i.u to i16                    ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.05.1.i.i, i64 -768 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.v, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = xor i16 %i.v, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq ptr %.sroa.05.019.i.i, null
  br i1 %.not.i.i, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i
  %.lcssa.i30.i.i = phi i16 [ %i.y, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i ], [ %.sroa.76.016.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i ] ; 3 uses
  %.sroa.05.229.i.i = phi ptr [ %i.w, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i ], [ %.sroa.05.019.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i ] ; 2 uses
  %.sroa.4.228.i.i = phi ptr [ %i.x, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i ], [ %.sroa.4.018.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i ]
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [48 x i8], ptr %.sroa.05.229.i.i, i64 %i.ab
  %i.ad = add i64 %.sroa.10.sroa.1.017.i.i, -1    ; 2 uses
  %i.ae = add i16 %.lcssa.i30.i.i, -1
  %i.af = and i16 %i.ae, %.lcssa.i30.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -48
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtB4_6option6OptionBC_EEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %.lr.ph.i.i

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i: ; preds = %bb.d, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i, %bb.c, %bb.b
  %i.ai = load i64, ptr %i.f, align 8             ; 2 uses
  %i.aj = add i64 %i.ai, 1
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 48) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 3 uses
  %i.an = add i64 %i.ai, 17
  %i.ao = add i64 %i.an, %i.am                    ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.am
  br i1 %i.ap, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ugt i64 %i.ao, 9223372036854775792
  br i1 %i.aq, label %bb.g, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i

bb.g:                                             ; preds = %bb.f
  br label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i
  %.sroa.8.0.i = phi i64 [ undef, %bb.e ], [ undef, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i ], [ %i.am, %bb.f ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.e ], [ undef, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i ], [ %i.ao, %bb.f ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 0, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1a_EEECs5KndGQj2IFn_15zerofrom_derive.exit.i ], [ 16, %bb.f ], [ 0, %bb.g ]
  %i.ar = load ptr, ptr %0, align 8
  %i.as = sub nsw i64 0, %.sroa.8.0.i
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  call void @_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocateCs5KndGQj2IFn_15zerofrom_derive(ptr nonnull %i.e, ptr %i.at, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #14
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1d_EENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs5KndGQj2IFn_15zerofrom_derive.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionB1d_EENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs5KndGQj2IFn_15zerofrom_derive.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs1K5DUQUZc67_11proc_macro25IdentuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs5KndGQj2IFn_15zerofrom_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.l) #14, !noalias !6
  %i.m = load <2 x i64>, ptr %i.d, align 16, !noalias !6
  store <2 x i64> %i.m, ptr %i.c, align 16, !noalias !6
  %i.n = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 16 %i.c) #14, !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = load i64, ptr %i.i, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = trunc i32 %i.n to i16
  %i.s = xor i16 %i.r, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.sroa.05.019.i.i = phi ptr [ %.sroa.05.229.i.i, %bb.d ], [ %i.l, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.4.018.i.i = phi ptr [ %.sroa.4.228.i.i, %bb.d ], [ %i.q, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.sroa.1.017.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.o, %.lr.ph.preheader.i.i ]
  %.sroa.76.016.i.i = phi i16 [ %i.af, %bb.d ], [ %i.s, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i.i.i = icmp eq i16 %.sroa.76.016.i.i, 0
  br i1 %.not8.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.4.1.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.4.018.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.05.1.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.sroa.05.019.i.i, %.lr.ph.i.i ]
  call void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1.i.i) #14
  %i.t = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.t, ptr %i.a, align 16
  %i.u = call i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 16 %i.a) #14
  %i.v = trunc i32 %i.u to i16                    ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.05.1.i.i, i64 -384 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.v, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = xor i16 %i.v, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq ptr %.sroa.05.019.i.i, null
  br i1 %.not.i.i, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i
  %.lcssa.i30.i.i = phi i16 [ %i.y, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i ], [ %.sroa.76.016.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i ] ; 3 uses
  %.sroa.05.229.i.i = phi ptr [ %i.w, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i ], [ %.sroa.05.019.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i ] ; 2 uses
  %.sroa.4.228.i.i = phi ptr [ %i.x, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.thread.i.i ], [ %.sroa.4.018.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i ]
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %.sroa.05.229.i.i, i64 %i.ab
  %i.ad = add i64 %.sroa.10.sroa.1.017.i.i, -1    ; 2 uses
  %i.ae = add i16 %.lcssa.i30.i.i, -1
  %i.af = and i16 %i.ae, %.lcssa.i30.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -24
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i, label %.lr.ph.i.i

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i: ; preds = %bb.d, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE9next_implKb0_ECs5KndGQj2IFn_15zerofrom_derive.exit.i.i, %bb.c, %bb.b
  %i.ai = load i64, ptr %i.f, align 8             ; 2 uses
  %i.aj = add i64 %i.ai, 1
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 24) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = add nuw i64 %i.am, 8
  %i.ao = and i64 %i.an, -16                      ; 3 uses
  %i.ap = add i64 %i.ai, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp ugt i64 %i.aq, 9223372036854775792
  br i1 %i.as, label %bb.g, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i

bb.g:                                             ; preds = %bb.f
  br label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i
  %.sroa.8.0.i = phi i64 [ undef, %bb.e ], [ undef, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i ], [ %i.ao, %bb.f ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.e ], [ undef, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i ], [ %i.aq, %bb.f ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 0, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive.exit.i ], [ 16, %bb.f ], [ 0, %bb.g ]
  %i.at = load ptr, ptr %0, align 8
  %i.au = sub nsw i64 0, %.sroa.8.0.i
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  call void @_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocateCs5KndGQj2IFn_15zerofrom_derive(ptr nonnull %i.e, ptr %i.av, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #14
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs1K5DUQUZc67_11proc_macro25IdentuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs5KndGQj2IFn_15zerofrom_derive.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs1K5DUQUZc67_11proc_macro25IdentuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs5KndGQj2IFn_15zerofrom_derive.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs5KndGQj2IFn_15zerofrom_derive.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_breakNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeEs_0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_breakNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyEs_0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_rangeNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_rangeNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeEs_0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_rangeNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_rangeNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyEs_0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_yieldNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_expr_yieldNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BU_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold16fold_expr_returnNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BV_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold16fold_expr_returnNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BV_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold16fold_expr_structNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeEs_0BV_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold16fold_expr_structNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyEs_0BV_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusE3pop0Cs5KndGQj2IFn_15zerofrom_derive(ptr sret([128 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold10fold_fieldNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BP_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold10fold_fieldNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BP_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_item_macroNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BU_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_item_macroNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BU_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold17fold_type_bare_fnNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeEs0_0BW_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold17fold_type_bare_fnNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyEs0_0BW_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i32 } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold14fold_signatureNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BT_(ptr align 8, ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i32 } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold14fold_signatureNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BT_(ptr align 8, ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i32 } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold17fold_type_bare_fnNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeEs_0BW_(ptr align 8, ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i32 } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold17fold_type_bare_fnNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyEs_0BW_(ptr align 8, ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_type_paramNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BU_(ptr sret([224 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_type_paramNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BU_(ptr sret([224 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold8fold_abiNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BM_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold8fold_abiNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BM_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_pat_structNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeEs_0BU_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_pat_structNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyEs_0BU_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold16fold_const_paramNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BV_(ptr sret([176 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold16fold_const_paramNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BV_(ptr sret([176 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold14fold_expr_loopNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BT_(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold22fold_item_extern_crateNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0B11_
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold22fold_item_extern_crateNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0B11_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold14fold_pat_identNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BT_(ptr sret([16 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold14fold_pat_identNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BT_(ptr sret([16 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold20fold_trait_item_typeNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BZ_(ptr sret([232 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold20fold_trait_item_typeNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BZ_(ptr sret([232 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold12fold_variantNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BR_(ptr sret([184 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold12fold_variantNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BR_(ptr sret([184 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold21fold_trait_item_constNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0B10_(ptr sret([184 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold21fold_trait_item_constNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0B10_(ptr sret([184 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, ptr } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold8fold_armNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BM_(ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, ptr } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold8fold_armNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BM_(ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold13fold_receiverNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BS_(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold13fold_receiverNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BS_(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, ptr } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold12fold_expr_ifNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BR_(ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, ptr } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold12fold_expr_ifNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BR_(ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, ptr } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_local_initNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BU_(ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, ptr } @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold15fold_local_initNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BU_(ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold13fold_item_modNtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeE0BS_(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtCsgFSQ9XOTBNe_3syn3gen4fold13fold_item_modNtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyE0BS_(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusE3pops_0Cs5KndGQj2IFn_15zerofrom_derive(ptr sret([128 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBV_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtB1z_3ops8function6FnOnceTOhEE9call_onceCs5KndGQj2IFn_15zerofrom_derive(ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs1K5DUQUZc67_11proc_macro25IdentuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs5KndGQj2IFn_15zerofrom_derive(ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs2RXd34xq0RM_12synstructure(ptr sret([32 x i8]) align 8, ptr, i64, i64, i64, i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_load_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse217__mm_movemask_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr align 16) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECs2RXd34xq0RM_12synstructure(ptr align 8) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs1K5DUQUZc67_11proc_macro25IdentINtNtB4_6option6OptionBC_EEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs1K5DUQUZc67_11proc_macro25IdentuEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocateCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCshzWfHUSfYae_4core3cmp3Ord3maxCs1K5DUQUZc67_11proc_macro2(i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map11make_hasherNtCs1K5DUQUZc67_11proc_macro25IdentINtNtCshzWfHUSfYae_4core6option6OptionBL_ENtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Cs5KndGQj2IFn_15zerofrom_derive(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map14equivalent_keyNtCs1K5DUQUZc67_11proc_macro25IdentBO_INtNtCshzWfHUSfYae_4core6option6OptionBO_EE0Cs5KndGQj2IFn_15zerofrom_derive(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map11make_hasherNtCs1K5DUQUZc67_11proc_macro25IdentuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Cs5KndGQj2IFn_15zerofrom_derive(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCINvNtCsfjX3T6UU9IB_9hashbrown3map14equivalent_keyNtCs1K5DUQUZc67_11proc_macro25IdentBO_uE0Cs5KndGQj2IFn_15zerofrom_derive(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nounwind nonlazybind uwtable
declare hidden void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse213__mm_set1_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr sret([16 x i8]) align 16, i8) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs5KndGQj2IFn_15zerofrom_derive(ptr sret([16 x i8]) align 16, ptr align 16, ptr align 16) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytesCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2RXd34xq0RM_12synstructure(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCs2RXd34xq0RM_12synstructure(ptr sret([32 x i8]) align 8, i64, i64, i64) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsfjX3T6UU9IB_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCs5KndGQj2IFn_15zerofrom_derive(ptr sret([16 x i8]) align 16, ptr align 16) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_store_si128Cs5KndGQj2IFn_15zerofrom_derive(ptr, ptr align 16) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs5KndGQj2IFn_15zerofrom_derive(ptr align 8, i8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs5KndGQj2IFn_15zerofrom_derive(i32, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamECs1K5DUQUZc67_11proc_macro2(ptr align 4) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCsiwvLk4GMN8X_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCs5KndGQj2IFn_15zerofrom_derive(ptr, i64, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsh_NtNtCshzWfHUSfYae_4core3cmp5implsbNtB7_9PartialEq2eqCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noinline }
attributes #18 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = distinct !{!4, i1 false, !"_RNvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE3newCs5KndGQj2IFn_15zerofrom_derive"}
!5 = distinct !{!5, !4, !"_RNvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_12RawIterRangeTNtCs1K5DUQUZc67_11proc_macro25IdentuEE3newCs5KndGQj2IFn_15zerofrom_derive: argument 0"}
!6 = !{!5}
end_hunk_1
