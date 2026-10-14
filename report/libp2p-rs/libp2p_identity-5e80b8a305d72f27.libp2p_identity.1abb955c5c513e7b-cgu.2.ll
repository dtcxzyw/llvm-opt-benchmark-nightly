Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identity-5e80b8a305d72f27.libp2p_identity.1abb955c5c513e7b-cgu.2?download=true
inline.NumInlined: 86
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShECs2iisHxfqoT7_15libp2p_identity:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.016.i ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae   ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !25, !noalias !26, !noundef !4
  %i.ai = load i8, ptr %i.ag, align 1, !alias.scope !26, !noalias !25
  store i8 %i.ai, ptr %i.af, align 1, !alias.scope !25, !noalias !26
  store i8 %i.ah, ptr %i.ag, align 1, !alias.scope !26, !noalias !25
  %i.aj = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.s
  br i1 %exitcond.not.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i, !llvm.loop !21

_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %.lr.ph61.preheader, %.lr.ph61, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.c, %._crit_edge76
  %.sroa.4.0 = phi i64 [ undef, %.lr.ph61 ], [ %.sroa.03.1.lcssa, %middle.block ], [ %.sroa.03.1.lcssa, %._crit_edge76 ], [ 0, %bb.a ], [ 0, %bb.c ], [ undef, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit ], [ %.sroa.03.1.lcssa, %vec.epilog.middle.block ], [ %.sroa.03.1.lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ undef, %.lr.ph61.preheader ]
  %.sroa.0.0 = phi i64 [ 1, %.lr.ph61 ], [ 0, %middle.block ], [ 0, %._crit_edge76 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit ], [ 0, %vec.epilog.middle.block ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ 1, %.lr.ph61.preheader ]
  %i.ak = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, i64 } %i.ak, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.al

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit
  %exitcond90.not = icmp eq i64 %.sroa.03.168, %umax89
  br i1 %exitcond90.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.168
  store i8 0, ptr %i.am, align 1
  %i.an = add i64 %.sroa.03.168, 1                ; 2 uses
  %i.ao = icmp eq ptr %i.e, %i.a
  br i1 %i.ao, label %._crit_edge, label %.lr.ph69

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax89, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.j:                                             ; preds = %.lr.ph65
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.064, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

bb.k:                                             ; preds = %.lr.ph65
  %i.ap = load i8, ptr %.sroa.034.063, align 1, !noundef !4
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.064
  %i.as = icmp samesign eq i64 %.sroa.03.064, 0
  br i1 %i.as, label %.preheader47, label %.lr.ph

.preheader47:                                     ; preds = %.lr.ph, %bb.k
  %.sroa.015.0.lcssa = phi i64 [ %i.aq, %bb.k ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.not3258 = icmp eq i64 %.sroa.015.0.lcssa, 0
  br i1 %.not3258, label %.loopexit, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %.preheader47
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.03.064, i64 %3) ; 2 uses
  %i.at = icmp eq i64 %.sroa.03.064, %3
  br i1 %i.at, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph123

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.sroa.015.057 = phi i64 [ %i.bb, %.lr.ph ], [ %i.aq, %bb.k ]
  %.sroa.021.056 = phi ptr [ %i.au, %.lr.ph ], [ %2, %bb.k ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.021.056, i64 1 ; 2 uses
  %i.av = load i8, ptr %.sroa.021.056, align 1, !noundef !4
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = add nuw nsw i64 %i.ax, %.sroa.015.057   ; 2 uses
  %i.az = urem i64 %i.ay, 58
  %i.ba = trunc nuw nsw i64 %i.az to i8
  store i8 %i.ba, ptr %.sroa.021.056, align 1
  %i.bb = udiv i64 %i.ay, 58                      ; 2 uses
  %i.bc = icmp eq ptr %i.au, %i.ar
  br i1 %i.bc, label %.preheader47, label %.lr.ph

.lr.ph61:                                         ; preds = %bb.l
  %i.bd = icmp eq i64 %i.bi, %3
  br i1 %i.bd, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph61.preheader, %.lr.ph61
  %.sroa.015.159122 = phi i64 [ %i.bf, %.lr.ph61 ], [ %.sroa.015.0.lcssa, %.lr.ph61.preheader ] ; 3 uses
  %.sroa.03.260121 = phi i64 [ %i.bi, %.lr.ph61 ], [ %.sroa.03.064, %.lr.ph61.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.03.260121, %umax
  br i1 %exitcond.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph123
  %i.be = urem i64 %.sroa.015.159122, 58
  %i.bf = udiv i64 %.sroa.015.159122, 58
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.260121
  %i.bh = trunc nuw nsw i64 %i.be to i8
  store i8 %i.bh, ptr %i.bg, align 1
  %i.bi = add i64 %.sroa.03.260121, 1             ; 3 uses
  %.not32 = icmp samesign ult i64 %.sroa.015.159122, 58
  br i1 %.not32, label %.loopexit, label %.lr.ph61

bb.m:                                             ; preds = %.lr.ph123
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterhEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1O_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB31_3VechE14extend_trustedBP_E0E0ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8, !alias.scope !47 ; 5 uses
  %.sroa.04.0.copyload12 = ptrtoaddr ptr %.sroa.04.0.copyload to i64
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !47 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47 ; 5 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 9 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.510.0.copyload = load ptr, ptr %.sroa.510.0..sroa_idx, align 8 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a, %bb.b
  %i.a = phi ptr [ %i.ah, %bb.b ], [ %.sroa.04.0.copyload, %bb.a ] ; 5 uses
  %i.b = icmp eq ptr %i.a, %.sroa.45.0.copyload
  br i1 %i.b, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i
  %i.c = ptrtoint ptr %.sroa.45.0.copyload to i64 ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = add i64 %.sroa.5.0.copyload, %.sroa.04.0.copyload12
  %i.g = sub i64 %i.c, %i.f                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = ptrtoaddr ptr %.sroa.510.0.copyload to i64
  %3 = ptrtoaddr ptr %.sroa.04.0.copyload to i64
  %i.h = add i64 %.sroa.5.0.copyload, %3
  %i.i = add i64 %.sroa.49.0.copyload, %2
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 28
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.l = add i64 %.sroa.49.0.copyload, %n.vec     ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.510.0.copyload, i64 %.sroa.49.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !alias.scope !48, !noalias !49
  %wide.load14 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !48, !noalias !49
  %i.p = getelementptr i8, ptr %i.m, i64 %index   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !noalias !50
  store <16 x i8> %wide.load14, ptr %i.q, align 1, !noalias !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.g, -4                     ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec15   ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.510.0.copyload, i64 %.sroa.49.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.u, align 1, !alias.scope !48, !noalias !49
  %i.v = getelementptr i8, ptr %i.t, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.v, align 1, !noalias !50
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.g, %n.vec15
  br i1 %cmp.n19, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.49.0.copyload, %iter.check ], [ %.sroa.49.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.x = phi i64 [ %i.aa, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.ab, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.i
  %.val15.i.i = load i8, ptr %i.y, align 1, !alias.scope !48, !noalias !49, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.510.0.copyload, i64 %i.x
  store i8 %.val15.i.i, ptr %i.z, align 1, !noalias !50
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.e
  br i1 %i.ac, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.scalar.ph, !llvm.loop !46

bb.b:                                             ; preds = %bb.a
  %i.ad = add i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload) ]
  %i.ae = ptrtoint ptr %.sroa.45.0.copyload to i64
  %i.af = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %.not.i.not.i = icmp ult i64 %i.ad, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %.sroa.5.0.copyload
  br i1 %.not.i.not.i, label %._crit_edge.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %._crit_edge.i
  %.sroa.49.0.copyload.sink = phi i64 [ %.sroa.49.0.copyload, %bb.b ], [ %.sroa.49.0.copyload, %._crit_edge.i ], [ %i.s, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.aa, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  store i64 %.sroa.49.0.copyload.sink, ptr %.sroa.08.0.copyload, align 8, !noalias !52
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs2_NtCs5wSrZkEBHYe_4ring9signatureINtB5_17UnparsedPublicKeyRINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6verifyCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs5wSrZkEBHYe_4ring3cpu5intel12featureflags11get_or_init()
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !7, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #19
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB5_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11into_stringCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.0.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !69, !noalias !70, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !69, !noalias !70, !noundef !4 ; 3 uses
  store ptr %.val.i, ptr %i.f, align 8, !noalias !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i, ptr %i.j, align 8, !noalias !71
  %i.k = add i64 %.val1.i, 1
  %i.l = lshr i64 %i.k, 1
  %i.m = add i64 %i.l, %.val1.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !69, !noalias !70, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !74
  store i64 0, ptr %i.g, align 8, !alias.scope !75, !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !75, !noalias !74
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !75, !noalias !74
  %i.p = invoke { i64, i64 } @_RINvXs_NtCsk7Z1gFMStHv_4bs586encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12EncodeTarget11encode_withNCINvMs3_B5_INtB5_13EncodeBuilderBx_E4ontoQNtNtBC_6string6StringE0ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(186) %i.o)
          to label %bb.c unwind label %bb.t, !noalias !76

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %.thread.i.i.i, %bb.m, %bb.h, %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.t, %bb.e ], [ %eh.lpad-body17.i.i.i, %.thread.i.i.i ], [ %i.al, %bb.t ], [ %i.z, %bb.h ], [ %i.ag, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #20
          to label %.body unwind label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.r = extractvalue { i64, i64 } %i.p, 0
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i unwind label %bb.e, !noalias !76

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.f, !noalias !76

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !76
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.v unwind label %bb.b, !noalias !71

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !73
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !78, !noalias !80, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !78, !noalias !80, !noundef !4 ; 2 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
end_hunk_0
