Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN10serde_core2de7Visitor14visit_byte_buf17h6dcb26a94e5e0f8fE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !4363)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !4363 ; 2 uses
  %i.k = icmp eq i64 %.val.i, 0
  br i1 %i.k, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !4363
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4362
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.l, align 8, !alias.scope !4361, !noalias !4364
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4361, !noalias !4364
  call void @llvm.experimental.noalias.scope.decl(metadata !4365)
  %.val.i1 = load i64, ptr %1, align 8, !alias.scope !4365 ; 2 uses
  %i.m = icmp eq i64 %.val.i1, 0
  br i1 %i.m, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit3", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !4365
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit3"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit3": ; preds = %bb.d, %bb.e
  ret void

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN10serde_core2de7Visitor20visit_newtype_struct17hb46dc3cea58196c5E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 9, ptr %i.b, align 8
  %i.c = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h7ea6a4efa478212cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr101drop_in_place$LT$serde..private..de..content..ContentDeserializer$LT$serde_json..error..Error$GT$$GT$17hffc535ebae3078beE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h7ea6a4efa478212cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

"_ZN4core3ptr101drop_in_place$LT$serde..private..de..content..ContentDeserializer$LT$serde_json..error..Error$GT$$GT$17hffc535ebae3078beE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN10serde_core2de9MapAccess10next_value17h21a5a65f06363581E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4508)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4509, !noalias !4510, !noundef !41 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !4511, !noalias !4512 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4509, !noalias !4510, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4514)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !4515, !noundef !41
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !84

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !4516, !noalias !4512
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4507
  store i64 3, ptr %i.o, align 8, !noalias !4507
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4507
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4507
  store i64 6, ptr %i.p, align 8, !noalias !4507
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4507
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !4517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4521)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !4522
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit153.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.bg ] ; 11 uses
  %.promoted.i194.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bg ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.en, %bb.bg ] ; 7 uses
  %.sroa.01.0193.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bg ] ; 3 uses
  %.sroa.8.0192.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.030.0186.i.i.i.i.i, %bb.bg ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4523)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i194.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4524, !noundef !41 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !4525, !noalias !4526
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i, label %bb.f

.loopexit153.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4522
  store i64 5, ptr %i.n, align 8, !noalias !4522
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4522
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ah, label %bb.ag, !prof !83

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !4527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4528)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4530)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.j, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !4531, !noundef !41
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !4532, !noalias !4533
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit256.i.i.i.i.i, !prof !85

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4535)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4536, !noundef !41
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !4537, !noalias !4533
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit256.i.i.i.i.i, !prof !85

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4539)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4540, !noundef !41
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !4541, !noalias !4533
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit256.i.i.i.i.i, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i": ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4542
  store i64 5, ptr %i.f, align 8, !noalias !4542
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !4543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4542
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

.loopexit256.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4542
  store i64 9, ptr %i.e, align 8, !noalias !4542
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !4543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4542
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !4544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4545)
  %umax.i69.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  %exitcond.not.i71.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i71.not.i.i.i.i.i, label %bb.p, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !4548, !noundef !41
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !4549, !noalias !4550
  %.not.i72.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i72.i.i.i.i.i, label %bb.q, label %.loopexit249.i.i.i.i.i, !prof !85

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  %exitcond.not.i71.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i69.i.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4553, !noundef !41
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !4554, !noalias !4550
  %.not.i72.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i72.1.i.i.i.i.i, label %bb.s, label %.loopexit249.i.i.i.i.i, !prof !85

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  %exitcond.not.i71.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i69.i.i.i.i.i
  br i1 %exitcond.not.i71.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4557, !noundef !41
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !4558, !noalias !4550
  %.not.i72.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i72.2.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit249.i.i.i.i.i, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i": ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4559
  store i64 5, ptr %i.d, align 8, !noalias !4559
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !4560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4559
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

.loopexit249.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4559
  store i64 9, ptr %i.c, align 8, !noalias !4559
  %i.bl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !4560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4559
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !4561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4562)
  %umax.i77.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4564)
  %exitcond.not.i79.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i79.not.i.i.i.i.i, label %bb.v, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i"

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4565, !noundef !41
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !4566, !noalias !4567
  %.not.i80.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i80.i.i.i.i.i, label %bb.w, label %.loopexit242.i.i.i.i.i, !prof !85

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4569)
  %exitcond.not.i79.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !4570, !noundef !41
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !4571, !noalias !4567
  %.not.i80.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i80.1.i.i.i.i.i, label %bb.y, label %.loopexit242.i.i.i.i.i, !prof !85

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4573)
  %exitcond.not.i79.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !4574, !noundef !41
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !4575, !noalias !4567
  %.not.i80.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i80.2.i.i.i.i.i, label %bb.aa, label %.loopexit242.i.i.i.i.i, !prof !85

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4577)
  %exitcond.not.i79.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.3.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !4578, !noundef !41
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !4579, !noalias !4567
  %.not.i80.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i80.3.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit242.i.i.i.i.i, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i": ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4580
  store i64 5, ptr %i.b, align 8, !noalias !4580
  %i.bz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !4581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4580
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

.loopexit242.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4580
  store i64 9, ptr %i.a, align 8, !noalias !4580
  %i.ca = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !4581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4580
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !4582
  %i.cc = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h392fd7984c6f5578E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not57.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not57.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !4583
  %i.ce = tail call noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h81eca9ab2bccb71bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  %i.cf = zext i1 %.sroa.01.0193.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !4585, !noundef !41 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !43, !alias.scope !4585, !noundef !41
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i", !prof !44

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !4586
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i": ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.01.0193.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i"
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !4586, !nonnull !41, !noundef !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.8.0192.i.i.i.i.i, ptr %i.cm, align 1, !noalias !4587
  %i.cn = add i64 %i.ck, 1
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !4586, !noalias !4588
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !4589, !noundef !41
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !4589
  br label %bb.ak

bb.ag:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4522
  store i64 10, ptr %i.m, align 8, !noalias !4522
  %i.cq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4522
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

bb.ah:                                            ; preds = %bb.h
  %i.cr = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h392fd7984c6f5578E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not61.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not61.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit"

.loopexit150.i.i.i.i.i:                           ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.01.0193.i.i.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.loopexit150.i.i.i.i.i
  %i.cs = load i64, ptr %i.ad, align 8, !alias.scope !4522, !noundef !41 ; 2 uses
  %.not62.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not62.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf6e1aae712e81c3E.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add i64 %i.cs, -1                       ; 3 uses
  store i64 %i.ct, ptr %i.ad, align 8, !alias.scope !4522
  %i.cu = load i64, ptr %.0.val, align 8, !range !43, !alias.scope !4522, !noundef !41
  %i.cv = icmp ult i64 %i.ct, %i.cu
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load ptr, ptr %i.af, align 8, !alias.scope !4522, !nonnull !41, !noundef !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !41
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit150.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i.i.i.i"
  %.sroa.054.1.i.i.i.i.i = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i.i.i.i" ], [ true, %.loopexit150.i.i.i.i.i ], [ true, %bb.aj ]
  %.sroa.055.1.i.i.i.i.i = phi i8 [ %i.ak, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i.i.i.i" ], [ %.sroa.8.0192.i.i.i.i.i, %.loopexit150.i.i.i.i.i ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.cz = load i64, ptr %i.r, align 8, !alias.scope !4590, !noalias !4591, !noundef !41 ; 6 uses
  %.promoted.i84185.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !4592, !noalias !4593 ; 2 uses
  %i.da = icmp ult i64 %.promoted.i84185.i.i.i.i.i, %i.cz
  br i1 %i.da, label %.lr.ph.i89.lr.ph.i.i.i.i.i, label %.loopexit145.i.i.i.i.i

.lr.ph.i89.lr.ph.i.i.i.i.i:                       ; preds = %bb.ak
  %i.db = load ptr, ptr %i.u, align 8, !alias.scope !4590, !noalias !4591, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  br label %.lr.ph.i89.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i89.lr.ph.i.i.i.i.i
  %.promoted.i84188.i.i.i.i.i = phi i64 [ %.promoted.i84185.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.av ]
  %.sroa.028.0187.i.i.i.i.i = phi i1 [ %.sroa.054.1.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.030.0186.i.i.i.i.i = phi i8 [ %.sroa.055.1.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ %i.ds, %bb.av ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4594)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i89.i.i.i.i.i
  %i.dc = phi i64 [ %.promoted.i84188.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.df, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4596)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !4597, !noundef !41
  switch i8 %i.de, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 44, label %bb.aq
    i8 93, label %bb.ar
    i8 125, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.df, ptr %i.q, align 8, !alias.scope !4598, !noalias !4593
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.df, %i.cz
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit145.i.i.i.i.i, label %bb.al

.loopexit145.i.i.i.i.i:                           ; preds = %bb.ak, %bb.av, %bb.am
  %.sroa.030.0182.i.i.i.i.i = phi i8 [ %i.ds, %bb.av ], [ %.sroa.030.0186.i.i.i.i.i, %bb.am ], [ %.sroa.055.1.i.i.i.i.i, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4522
  switch i8 %.sroa.030.0182.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

bb.an:                                            ; preds = %.loopexit145.i.i.i.i.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #73
  unreachable

end_hunk_0
begin_hunk_1_@"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17hf391e47ce0e5441aE":bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14": ; preds = %bb.f, %bb.s
  %.sroa.06.032 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !5876, !noundef !41
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14", %bb.s, %bb.f
  %.sroa.06.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.06.032, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14" ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14"
  %i.ag = add nuw i64 %i.ac, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !5877
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.06.032, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14.thread"
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14.thread"
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.021.i = tail call i32 @llvm.abs.i32(i32 %.sroa.011.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.021.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.023.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.011.0, %bb.j ] ; 2 uses
  %.sroa.04.022.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.022.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.011.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.021.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017hb565df7df204af31E, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !5879, !noundef !41 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !44

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.023.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5879
  store i64 14, ptr %i.a, align 8, !noalias !5879
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !5878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5879
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !5878, !noalias !5880
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h9f50af34cf2cbc6bE.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.az, align 8, !alias.scope !5878, !noalias !5880
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h9f50af34cf2cbc6bE.exit"

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !44

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5879
  store i64 14, ptr %i.b, align 8, !noalias !5879
  %i.be = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !5878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5879
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !5878, !noalias !5880
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h9f50af34cf2cbc6bE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h9f50af34cf2cbc6bE.exit": ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !5878, !noalias !5880
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.t, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h9f50af34cf2cbc6bE.exit"
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.06.032, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !52

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.06.032, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14.thread", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hf4999fb86870924eE.exit14"

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$23parse_exponent_overflow17h5d5889b1f9ef4964E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hbf2b15bde5425c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5943)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !5944, !noalias !5945, !noundef !41 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5944, !noalias !5945, !noundef !41 ; 10 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !5944, !noalias !5945, !nonnull !41, !align !46, !noundef !41 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !noalias !5946, !noundef !41 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !5947

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread40, !prof !85

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !5948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5949)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5951)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.v
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !5952, !noundef !41
  %i.af = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !5953, !noalias !5954
  %.not.i = icmp eq i8 %i.ae, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !85

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5956)
  %exitcond.not.i.1 = icmp eq i64 %i.v, %i.af
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !5957, !noundef !41
  %i.ai = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !5958, !noalias !5954
  %.not.i.1 = icmp eq i8 %i.ah, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !85

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  %exitcond.not.i.2 = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !5961, !noundef !41
  %i.al = add i64 %i.t, 4
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !5962, !noalias !5954
  %.not.i.2 = icmp eq i8 %i.ak, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit", label %bb.j, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5963
  store i64 5, ptr %i.f, align 8, !noalias !5963
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !5964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5963
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5963
  store i64 9, ptr %i.e, align 8, !noalias !5963
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !5964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5963
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !5965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5966)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5968)
  %exitcond.not.i22.not = icmp ult i64 %i.ao, %i.v
  br i1 %exitcond.not.i22.not, label %bb.l, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25"

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !5969, !noundef !41
  %i.ar = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !5970, !noalias !5971
  %.not.i23 = icmp eq i8 %i.aq, 114
  br i1 %.not.i23, label %bb.m, label %bb.q, !prof !85

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5973)
  %exitcond.not.i22.1 = icmp eq i64 %i.v, %i.ar
  br i1 %exitcond.not.i22.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !5974, !noundef !41
  %i.au = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !5975, !noalias !5971
  %.not.i23.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i23.1, label %bb.o, label %bb.q, !prof !85

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5977)
  %exitcond.not.i22.2 = icmp eq i64 %i.au, %umax.i20
  br i1 %exitcond.not.i22.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !5978, !noundef !41
  %i.ax = add i64 %i.t, 4
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !5979, !noalias !5971
  %.not.i23.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i23.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit26", label %bb.q, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5980
  store i64 5, ptr %i.d, align 8, !noalias !5980
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !5981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5980
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5980
  store i64 9, ptr %i.c, align 8, !noalias !5980
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !5981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5980
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !5982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5983)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5985)
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.v
  br i1 %exitcond.not.i30.not, label %bb.s, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33"

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !5986, !noundef !41
  %i.bd = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !5987, !noalias !5988
  %.not.i31 = icmp eq i8 %i.bc, 97
  br i1 %.not.i31, label %bb.t, label %bb.z, !prof !85

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5990)
  %exitcond.not.i30.1 = icmp eq i64 %i.v, %i.bd
  br i1 %exitcond.not.i30.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !5991, !noundef !41
  %i.bg = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !5992, !noalias !5988
  %.not.i31.1 = icmp eq i8 %i.bf, 108
  br i1 %.not.i31.1, label %bb.v, label %bb.z, !prof !85

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5994)
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !5995, !noundef !41
  %i.bj = add i64 %i.t, 4                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !5996, !noalias !5988
  %.not.i31.2 = icmp eq i8 %i.bi, 115
  br i1 %.not.i31.2, label %bb.x, label %bb.z, !prof !85

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5998)
  %exitcond.not.i30.3 = icmp eq i64 %i.bj, %umax.i28
  br i1 %exitcond.not.i30.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !5999, !noundef !41
  %i.bm = add i64 %i.t, 5
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !6000, !noalias !5988
  %.not.i31.3 = icmp eq i8 %i.bl, 101
  br i1 %.not.i31.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit34", label %bb.z, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6001
  store i64 5, ptr %i.b, align 8, !noalias !6001
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6001
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6001
  store i64 9, ptr %i.a, align 8, !noalias !6001
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !6002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6001
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bp = add nuw i64 %i.t, 1
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !6003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h2e82135a14cc6c65E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.bq = load i64, ptr %i.o, align 8, !range !82, !noundef !41
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !48

bb.ab:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.t, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !6004
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bu = load i64, ptr %i.k, align 8, !range !73, !noundef !41
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !41, !noundef !41 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.ai, !prof !48

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread40, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit34", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit26", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.al ], [ %i.cm, %.thread40 ], [ %i.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit" ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit26" ], [ %i.cf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit34" ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.by, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.cb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit26": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cc, align 1
  store i8 0, ptr %i.q, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit34": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ce, align 1
  store i8 0, ptr %i.p, align 8
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ci = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h59fb10017c333febE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bx, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.ck, align 8
  store i8 5, ptr %i.j, align 8
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread40:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h2e82135a14cc6c65E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.cn = load i64, ptr %i.m, align 8, !range !82, !noundef !41
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.ak, label %bb.al, !prof !48

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cr = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h59fb10017c333febE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.thread": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", %bb.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25", %bb.q, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cb, %bb.ae ], [ %i.cq, %bb.ak ], [ %i.bx, %bb.ah ], [ %i.az, %bb.q ], [ %i.an, %bb.j ], [ %i.ch, %bb.af ], [ %i.am, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i" ], [ %i.ay, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25" ], [ %i.bn, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33" ], [ %i.bo, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN10serde_json3ser27format_escaped_str_contents17h441faf266c0cab93E:bb.a
  %i.au = phi i64 [ %i.aq, %bb.k ], [ %.pre.i.i.i.i.i.i25, %bb.l ] ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.b, align 8, !alias.scope !6147, !noalias !6146, !nonnull !41, !noundef !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.ax, align 1, !noalias !6147
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 %i.an, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !6147
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  store i8 %i.ap, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !6147
  %i.ay = add nuw i64 %i.au, 6
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h3049d202c5e49dbbE.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6151)
  %i.az = load i64, ptr %i.a, align 8, !alias.scope !6152, !noalias !6153, !noundef !41 ; 3 uses
  %i.ba = load i64, ptr %.0.val, align 8, !range !43, !alias.scope !6152, !noalias !6153, !noundef !41
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = icmp ult i64 %i.bb, 2
  br i1 %i.bc, label %bb.n, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit7.i", !prof !44

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.az, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !6153
  %.pre.i.i.i.i.i6.i = load i64, ptr %i.a, align 8, !alias.scope !6154, !noalias !6153
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit7.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit7.i": ; preds = %bb.n, %bb.m
  %i.bd = phi i64 [ %i.az, %bb.m ], [ %.pre.i.i.i.i.i6.i, %bb.n ] ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = load ptr, ptr %i.b, align 8, !alias.scope !6154, !noalias !6153, !nonnull !41, !noundef !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd ; 2 uses
  store i8 92, ptr %i.bg, align 1, !noalias !6154
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.r, ptr %.sroa.42.0..sroa_idx.i, align 1, !noalias !6154
  %i.bh = add nuw i64 %i.bd, 2
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h3049d202c5e49dbbE.exit

_ZN10serde_json3ser9Formatter17write_char_escape17h3049d202c5e49dbbE.exit: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit7.i"
  %storemerge = phi i64 [ %i.bh, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit7.i" ], [ %i.ay, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i" ]
  store i64 %storemerge, ptr %i.a, align 8, !noalias !41
  %exitcond.not3 = icmp eq i64 %i.w, 0
  br i1 %exitcond.not3, label %.outer._crit_edge, label %.lr.ph
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !41
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
          to label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17hc9e120d5cbb0033eE.exit" unwind label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17hc9e120d5cbb0033eE.exit": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #67
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17hc9e120d5cbb0033eE.exit"
  %.sroa.0.0 = phi ptr [ %i.d, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17hc9e120d5cbb0033eE.exit" ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #67
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN10serde_with2de5impls98_$LT$impl$u20$serde_with..de..DeserializeAs$LT$T$GT$$u20$for$u20$serde_with..FromInto$LT$U$GT$$GT$14deserialize_as17h0c2dc77f3bdf937fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.17.i.i = alloca [16 x i8], align 8       ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.9168.i.i = alloca [7 x i8], align 1      ; 6 uses
  %.sroa.12.i.i = alloca [16 x i8], align 8       ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [32 x i8], align 8               ; 9 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 9 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.45.i.i = alloca [7 x i8], align 1        ; 12 uses
  %.sroa.63.i.i = alloca [16 x i8], align 8       ; 12 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [72 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !6362, !noalias !6363, !noundef !41 ; 8 uses
  %.promoted.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !6364, !noalias !6365 ; 2 uses
  %i.bc = icmp ult i64 %.promoted.i.i.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !6362, !noalias !6363, !nonnull !41, !align !46, !noundef !41 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.bf = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bi, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6367)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !6368, !noundef !41 ; 3 uses
  switch i8 %i.bh, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bi = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !6369, !noalias !6365
  %exitcond.not.i.i.i = icmp eq i64 %i.bi, %i.bb
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63.i.i)
  switch i8 %i.bh, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !6370
  store i64 5, ptr %i.aw, align 8, !noalias !6370
  %i.bj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw), !noalias !6371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !6370
  br label %"_ZN19nickel_lang_package5index9serialize1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..index..serialize..IdFormat$GT$11deserialize17hf9fbe053d0eb300fE.exit.thread"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.bk = add i8 %i.bh, -48
  %or.cond8.i.i = icmp ult i8 %i.bk, 10
  br i1 %or.cond8.i.i, label %bb.dl, label %bb.dk, !prof !83

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.bl = add i64 %i.bf, 1                        ; 4 uses
  store i64 %i.bl, ptr %i.az, align 8, !alias.scope !6372, !noalias !6371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6373)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bl) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6375)
  %exitcond.not.i74.not.i.i = icmp ult i64 %i.bl, %i.bb
  br i1 %exitcond.not.i74.not.i.i, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !6376, !noundef !41
  %i.bo = add i64 %i.bf, 2                        ; 3 uses
  store i64 %i.bo, ptr %i.az, align 8, !alias.scope !6377, !noalias !6378
  %.not.i.i.i = icmp eq i8 %i.bn, 117
  br i1 %.not.i.i.i, label %bb.g, label %bb.k, !prof !85

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6380)
  %exitcond.not.i74.1.i.i = icmp eq i64 %i.bo, %umax.i.i.i
  br i1 %exitcond.not.i74.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !6381, !noundef !41
  %i.br = add i64 %i.bf, 3                        ; 3 uses
  store i64 %i.br, ptr %i.az, align 8, !alias.scope !6382, !noalias !6378
  %.not.i.1.i.i = icmp eq i8 %i.bq, 108
  br i1 %.not.i.1.i.i, label %bb.i, label %bb.k, !prof !85

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  %exitcond.not.i74.2.i.i = icmp eq i64 %i.br, %umax.i.i.i
  br i1 %exitcond.not.i74.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !6385, !noundef !41
  %i.bu = add i64 %i.bf, 4
  store i64 %i.bu, ptr %i.az, align 8, !alias.scope !6386, !noalias !6378
  %.not.i.2.i.i = icmp eq i8 %i.bt, 108
  br i1 %.not.i.2.i.i, label %bb.af, label %bb.k, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6387
  store i64 5, ptr %i.ae, align 8, !noalias !6387
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6387
  br label %bb.ag

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6387
  store i64 9, ptr %i.ad, align 8, !noalias !6387
  %i.bw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6387
  br label %bb.ag

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.bx = add i64 %i.bf, 1                        ; 4 uses
  store i64 %i.bx, ptr %i.az, align 8, !alias.scope !6389, !noalias !6371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6390)
  %umax.i76.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bx) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  %exitcond.not.i78.not.i.i = icmp ult i64 %i.bx, %i.bb
  br i1 %exitcond.not.i78.not.i.i, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i81.i.i"

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !6393, !noundef !41
  %i.ca = add i64 %i.bf, 2                        ; 3 uses
  store i64 %i.ca, ptr %i.az, align 8, !alias.scope !6394, !noalias !6395
  %.not.i79.i.i = icmp eq i8 %i.bz, 114
  br i1 %.not.i79.i.i, label %bb.n, label %bb.r, !prof !85

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6397)
  %exitcond.not.i78.1.i.i = icmp eq i64 %i.ca, %umax.i76.i.i
  br i1 %exitcond.not.i78.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i81.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !6398, !noundef !41
  %i.cd = add i64 %i.bf, 3                        ; 3 uses
  store i64 %i.cd, ptr %i.az, align 8, !alias.scope !6399, !noalias !6395
  %.not.i79.1.i.i = icmp eq i8 %i.cc, 117
  br i1 %.not.i79.1.i.i, label %bb.p, label %bb.r, !prof !85

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  %exitcond.not.i78.2.i.i = icmp eq i64 %i.cd, %umax.i76.i.i
  br i1 %exitcond.not.i78.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i81.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !6402, !noundef !41
  %i.cg = add i64 %i.bf, 4
  store i64 %i.cg, ptr %i.az, align 8, !alias.scope !6403, !noalias !6395
  %.not.i79.2.i.i = icmp eq i8 %i.cf, 101
  br i1 %.not.i79.2.i.i, label %bb.ah, label %bb.r, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i81.i.i": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6404
  store i64 5, ptr %i.ac, align 8, !noalias !6404
  %i.ch = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !6405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6404
  br label %bb.ag

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6404
  store i64 9, ptr %i.ab, align 8, !noalias !6404
  %i.ci = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab), !noalias !6405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6404
  br label %bb.ag

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.cj = add i64 %i.bf, 1                        ; 4 uses
  store i64 %i.cj, ptr %i.az, align 8, !alias.scope !6406, !noalias !6371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6407)
  %umax.i84.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.cj) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6409)
  %exitcond.not.i86.not.i.i = icmp ult i64 %i.cj, %i.bb
  br i1 %exitcond.not.i86.not.i.i, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i"

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !6410, !noundef !41
  %i.cm = add i64 %i.bf, 2                        ; 3 uses
  store i64 %i.cm, ptr %i.az, align 8, !alias.scope !6411, !noalias !6412
  %.not.i87.i.i = icmp eq i8 %i.cl, 97
  br i1 %.not.i87.i.i, label %bb.u, label %bb.aa, !prof !85

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6414)
  %exitcond.not.i86.1.i.i = icmp eq i64 %i.cm, %umax.i84.i.i
  br i1 %exitcond.not.i86.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !6415, !noundef !41
  %i.cp = add i64 %i.bf, 3                        ; 3 uses
  store i64 %i.cp, ptr %i.az, align 8, !alias.scope !6416, !noalias !6412
  %.not.i87.1.i.i = icmp eq i8 %i.co, 108
  br i1 %.not.i87.1.i.i, label %bb.w, label %bb.aa, !prof !85

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6418)
  %exitcond.not.i86.2.i.i = icmp eq i64 %i.cp, %umax.i84.i.i
  br i1 %exitcond.not.i86.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !6419, !noundef !41
  %i.cs = add i64 %i.bf, 4                        ; 3 uses
  store i64 %i.cs, ptr %i.az, align 8, !alias.scope !6420, !noalias !6412
  %.not.i87.2.i.i = icmp eq i8 %i.cr, 115
  br i1 %.not.i87.2.i.i, label %bb.y, label %bb.aa, !prof !85

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  %exitcond.not.i86.3.i.i = icmp eq i64 %i.cs, %umax.i84.i.i
  br i1 %exitcond.not.i86.3.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !6423, !noundef !41
  %i.cv = add i64 %i.bf, 5
  store i64 %i.cv, ptr %i.az, align 8, !alias.scope !6424, !noalias !6412
  %.not.i87.3.i.i = icmp eq i8 %i.cu, 101
  br i1 %.not.i87.3.i.i, label %bb.ai, label %bb.aa, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6425
  store i64 5, ptr %i.aa, align 8, !noalias !6425
  %i.cw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa), !noalias !6426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6425
  br label %bb.ag

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6425
  store i64 9, ptr %i.z, align 8, !noalias !6425
  %i.cx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z), !noalias !6426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6425
  br label %bb.ag

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.cy = add i64 %i.bf, 1
  store i64 %i.cy, ptr %i.az, align 8, !alias.scope !6427, !noalias !6371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6370
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h2e82135a14cc6c65E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !6371
  %i.cz = load i64, ptr %i.as, align 8, !range !82, !noalias !6370, !noundef !41 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.dc = add i64 %i.bf, 1
  store i64 %i.dc, ptr %i.az, align 8, !alias.scope !6428, !noalias !6371
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !6429, !noalias !6371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !6370
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !6371
  %i.de = load i64, ptr %i.ao, align 8, !range !73, !noalias !6370, !noundef !41 ; 2 uses
  %i.df = icmp eq i64 %i.de, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !6370 ; 4 uses
  br i1 %i.df, label %bb.ap, label %bb.aq

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.dj = load i8, ptr %i.di, align 8, !alias.scope !6429, !noalias !6371, !noundef !41
  %i.dk = add i8 %i.dj, -1                        ; 2 uses
  store i8 %i.dk, ptr %i.di, align 8, !alias.scope !6429, !noalias !6371
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.at, label %bb.au, !prof !44

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 8, !alias.scope !6429, !noalias !6371, !noundef !41
  %i.do = add i8 %i.dn, -1                        ; 2 uses
  store i8 %i.do, ptr %i.dm, align 8, !alias.scope !6429, !noalias !6371
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.bn, label %bb.bo, !prof !44

bb.af:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6370
  store ptr @817, ptr %i.av, align 8, !noalias !6430
  %.sroa.12.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx25.i, align 8, !noalias !6430
  %.sroa.15.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr @818, ptr %.sroa.15.0..sroa_idx37.i, align 8, !noalias !6430
  %.sroa.16.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx49.i, align 8, !noalias !6430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6431
  store i8 7, ptr %i.y, align 8, !noalias !6431
  %i.dq = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96), !noalias !6432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6370
  %i.dr = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !6371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i)
  br label %"_ZN19nickel_lang_package5index9serialize1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..index..serialize..IdFormat$GT$11deserialize17hf9fbe053d0eb300fE.exit.thread"

bb.ag:                                            ; preds = %bb.dm, %bb.bn, %bb.at, %bb.ap, %bb.aj, %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i", %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i81.i.i", %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"
  %.sroa.22.1.i = phi ptr [ %i.jo, %bb.dm ], [ %i.fy, %bb.bn ], [ %i.bw, %bb.k ], [ %i.ci, %bb.r ], [ %i.dy, %bb.aj ], [ %i.dh, %bb.ap ], [ %i.eo, %bb.at ], [ %i.bv, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i" ], [ %i.ch, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i81.i.i" ], [ %i.cw, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i89.i.i" ], [ %i.cx, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i)
  br label %"_ZN19nickel_lang_package5index9serialize1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..index..serialize..IdFormat$GT$11deserialize17hf9fbe053d0eb300fE.exit.thread"

bb.ah:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6370
  store ptr @817, ptr %i.au, align 8, !noalias !6430
  %.sroa.12.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx23.i, align 8, !noalias !6430
  %.sroa.15.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr @818, ptr %.sroa.15.0..sroa_idx35.i, align 8, !noalias !6430
  %.sroa.16.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx47.i, align 8, !noalias !6430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6433
  %i.ds = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 1, ptr %i.ds, align 1, !noalias !6433
  store i8 0, ptr %i.x, align 8, !noalias !6433
  %i.dt = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96), !noalias !6434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6370
  %i.du = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !6371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i)
  br label %"_ZN19nickel_lang_package5index9serialize1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..index..serialize..IdFormat$GT$11deserialize17hf9fbe053d0eb300fE.exit.thread"

bb.ai:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6370
  store ptr @817, ptr %i.at, align 8, !noalias !6430
  %.sroa.12.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx21.i, align 8, !noalias !6430
  %.sroa.15.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr @818, ptr %.sroa.15.0..sroa_idx33.i, align 8, !noalias !6430
  %.sroa.16.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx45.i, align 8, !noalias !6430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6435
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.dv, align 1, !noalias !6435
  store i8 0, ptr %i.w, align 8, !noalias !6435
  %i.dw = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96), !noalias !6436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6370
  %i.dx = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !6371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i)
  br label %"_ZN19nickel_lang_package5index9serialize1_105_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..index..serialize..IdFormat$GT$11deserialize17hf9fbe053d0eb300fE.exit.thread"

bb.aj:                                            ; preds = %bb.ab
  %i.dy = load ptr, ptr %i.db, align 8, !noalias !6370, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6370
  br label %bb.ag

bb.ak:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.db, align 8, !noalias !6370 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6370
  store ptr @817, ptr %i.ar, align 8, !noalias !6430
  %.sroa.12.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx19.i, align 8, !noalias !6430
  %.sroa.15.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr @818, ptr %.sroa.15.0..sroa_idx31.i, align 8, !noalias !6430
  %.sroa.16.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx43.i, align 8, !noalias !6430
  switch i64 %i.cz, label %default.unreachable [
    i64 0, label %bb.al
    i64 1, label %bb.am
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.dn, %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
end_hunk_2
begin_hunk_3_@"_ZN16nickel_lang_core7program27ProgramBuilder$LT$R$C$W$GT$5build17he676e12cd121adc8E":bb.a
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..FieldOverride$GT$$GT$17h51f52e4e13ed9fc9E"(ptr noalias noundef align 8 dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.jr = trunc nuw i8 %.sroa.055.5 to i1
  br i1 %i.jr, label %bb.ds, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17ha1987d6bbcfffd70E.exit"

bb.ds:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h53db3bbc8fb438b7E.exit253"
  call void @llvm.experimental.noalias.scope.decl(metadata !28116)
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i254 = load ptr, ptr %i.js, align 8, !alias.scope !28116, !nonnull !41, !noundef !41 ; 4 uses
  %i.jt = icmp eq i64 %i.bc, 0
  br i1 %i.jt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc792dc53d555f94E.exit.i", label %.lr.ph

bb.dt:                                            ; preds = %.lr.ph
  %i.ju = icmp eq i64 %i.jw, %i.bc
  br i1 %i.ju, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc792dc53d555f94E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.ds, %bb.dt
  %.sroa.0.0.i.i.i774 = phi i64 [ %i.jw, %bb.dt ], [ 0, %bb.ds ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [48 x i8], ptr %.val.i254, i64 %.sroa.0.0.i.i.i774
  %i.jw = add i64 %.sroa.0.0.i.i.i774, 1          ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17hdcdfd5198bf98b4aE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.jv)
          to label %bb.dt unwind label %bb.dv, !noalias !28116

bb.du:                                            ; preds = %.lr.ph778
  %i.jx = add i64 %.sroa.0.1.i.i.i776, 1          ; 2 uses
  %i.jy = icmp eq i64 %i.jx, %i.bc
  br i1 %i.jy, label %.body.i256, label %.lr.ph778

bb.dv:                                            ; preds = %.lr.ph
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = icmp eq i64 %i.jw, %i.bc
  br i1 %i.ka, label %.body.i256, label %.lr.ph778

.lr.ph778:                                        ; preds = %bb.dv, %bb.du
  %.sroa.0.1.i.i.i776 = phi i64 [ %i.jx, %bb.du ], [ %i.jw, %bb.dv ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [48 x i8], ptr %.val.i254, i64 %.sroa.0.1.i.i.i776
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17hdcdfd5198bf98b4aE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.kb) #75
          to label %bb.du unwind label %bb.dw, !noalias !28116

bb.dw:                                            ; preds = %.lr.ph778
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !28117
  unreachable

.body.i256:                                       ; preds = %bb.du, %bb.dv
  %.val4.i257 = load i64, ptr %1, align 8, !alias.scope !28116 ; 2 uses
  %i.kd = icmp eq i64 %.val4.i257, 0
  br i1 %i.kd, label %common.resume, label %bb.dx

bb.dx:                                            ; preds = %.body.i256
  %i.ke = mul nuw i64 %.val4.i257, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i254, i64 noundef %i.ke, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28116
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc792dc53d555f94E.exit.i": ; preds = %bb.dt, %bb.ds
  %.val2.i258 = load i64, ptr %1, align 8, !alias.scope !28116 ; 2 uses
  %i.kf = icmp eq i64 %.val2.i258, 0
  br i1 %i.kf, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17ha1987d6bbcfffd70E.exit", label %bb.dy

bb.dy:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc792dc53d555f94E.exit.i"
  %i.kg = mul nuw i64 %.val2.i258, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i254, i64 noundef %i.kg, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28116
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17ha1987d6bbcfffd70E.exit"

common.resume:                                    ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h53db3bbc8fb438b7E.exit", %bb.ed, %.body.i256, %bb.dx
  %common.resume.op = phi { ptr, i32 } [ %i.jz, %.body.i256 ], [ %i.jz, %bb.dx ], [ %.pn151, %bb.ed ], [ %.pn151, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h53db3bbc8fb438b7E.exit" ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %.body219, %bb.i, %.body, %bb.f, %bb.n, %.thread357, %.thread343
  %.pn139342 = phi { ptr, i32 } [ %i.em, %.thread343 ], [ %i.bi, %.thread357 ], [ %.pn129, %.body ], [ %i.bn, %bb.f ], [ %i.bo, %bb.i ], [ %i.bt, %bb.n ], [ %.pn137, %.body219 ]
  %.sroa.049.1341 = phi i8 [ 1, %.thread343 ], [ %.sroa.051.2, %.thread357 ], [ 1, %.body ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.n ], [ %.sroa.049.3, %.body219 ]
  %.sroa.051.1340 = phi i8 [ 0, %.thread343 ], [ %.sroa.051.2, %.thread357 ], [ 1, %.body ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.n ], [ 0, %.body219 ]
  %.sroa.053.1339 = phi i8 [ 1, %.thread343 ], [ 1, %.thread357 ], [ 1, %.body ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.n ], [ 0, %.body219 ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$nickel_lang_core..cache..CacheHub$GT$17h4d2e08a378a0900bE"(ptr noalias noundef align 8 dereferenceable(632) %i.am) #75
          to label %bb.dz unwind label %bb.o

bb.dz:                                            ; preds = %bb.d, %.thread, %bb.bf
  %.sroa.055.13.ph = phi i8 [ 0, %bb.bf ], [ 0, %.thread ], [ %.sroa.055.0, %bb.d ]
  %.sroa.053.8.ph = phi i8 [ 0, %bb.bf ], [ %.sroa.053.1339, %.thread ], [ %.sroa.051.0, %bb.d ]
  %.sroa.051.7.ph = phi i8 [ 0, %bb.bf ], [ %.sroa.051.1340, %.thread ], [ %.sroa.051.0, %bb.d ]
  %.sroa.049.7.ph = phi i8 [ %.sroa.049.3, %bb.bf ], [ %.sroa.049.1341, %.thread ], [ %.sroa.049.0, %bb.d ]
  %.pn141.ph = phi { ptr, i32 } [ %i.fs, %bb.bf ], [ %.pn139342, %.thread ], [ %i.bg, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hc368351a6af39af0E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #75
          to label %.body238 unwind label %bb.o

bb.ea:                                            ; preds = %.body238
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..package..PackageMap$GT$17h826e248fd3afa4b9E"(ptr noalias noundef align 8 dereferenceable(96) %i.an) #75
  br label %bb.de

bb.eb:                                            ; preds = %bb.de
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h07f46c6bc33142aaE"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #75
  br label %bb.dj

bb.ec:                                            ; preds = %bb.dj
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17he6cfa9ab359cb4e7E"(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #75
  br label %bb.dm

bb.ed:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h53db3bbc8fb438b7E.exit"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17ha1987d6bbcfffd70E"(ptr noalias noundef align 8 dereferenceable(24) %1) #75
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN16nickel_lang_core9serialize100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$11deserialize17h82c8a91c039f26feE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [72 x i8], align 8                ; 4 uses
  %i.w = alloca [88 x i8], align 8                ; 4 uses
  %i.x = alloca [20 x i8], align 4                ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [72 x i8], align 8               ; 14 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28286)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !28287, !noalias !28288, !noundef !41 ; 8 uses
  %.promoted.i34 = load i64, ptr %i.al, align 8, !alias.scope !28286, !noalias !28289 ; 2 uses
  %i.ao = icmp ult i64 %.promoted.i34, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %.loopexit162

.lr.ph.i:                                         ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !28287, !noalias !28288, !nonnull !41, !align !46, !noundef !41 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ar = phi i64 [ %.promoted.i34, %.lr.ph.i ], [ %i.au, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28291)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !28292, !noundef !41 ; 2 uses
  switch i8 %i.at, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.au = add i64 %i.ar, 1                        ; 3 uses
  store i64 %i.au, ptr %i.al, align 8, !alias.scope !28293, !noalias !28289
  %exitcond.not.i35 = icmp eq i64 %i.au, %i.an
  br i1 %exitcond.not.i35, label %.loopexit162, label %bb.b

.loopexit162:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !28285
  store i64 5, ptr %i.ak, align 8, !noalias !28285
  %i.av = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak), !inline_history !28131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !28285
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.d:                                             ; preds = %bb.b
  %i.aw = add i8 %i.at, -48
  %or.cond8.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond8.i, label %bb.dd, label %bb.dc, !prof !83

bb.e:                                             ; preds = %bb.b
  %i.ax = add i64 %i.ar, 1                        ; 4 uses
  store i64 %i.ax, ptr %i.al, align 8, !alias.scope !28294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28295)
  %umax.i27 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ax) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28297)
  %exitcond.not.i29.not = icmp ult i64 %i.ax, %i.an
  br i1 %exitcond.not.i29.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i32"

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !28298, !noundef !41
  %i.ba = add i64 %i.ar, 2                        ; 3 uses
  store i64 %i.ba, ptr %i.al, align 8, !alias.scope !28299, !noalias !28300
  %.not.i30 = icmp eq i8 %i.az, 117
  br i1 %.not.i30, label %bb.g, label %bb.k, !prof !85

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28302)
  %exitcond.not.i29.1 = icmp eq i64 %i.ba, %umax.i27
  br i1 %exitcond.not.i29.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i32", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !28303, !noundef !41
  %i.bd = add i64 %i.ar, 3                        ; 3 uses
  store i64 %i.bd, ptr %i.al, align 8, !alias.scope !28304, !noalias !28300
  %.not.i30.1 = icmp eq i8 %i.bc, 108
  br i1 %.not.i30.1, label %bb.i, label %bb.k, !prof !85

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28306)
  %exitcond.not.i29.2 = icmp eq i64 %i.bd, %umax.i27
  br i1 %exitcond.not.i29.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i32", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !28307, !noundef !41
  %i.bg = add i64 %i.ar, 4
  store i64 %i.bg, ptr %i.al, align 8, !alias.scope !28308, !noalias !28300
  %.not.i30.2 = icmp eq i8 %i.bf, 108
  br i1 %.not.i30.2, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit", label %bb.k, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i32": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28309
  store i64 5, ptr %i.i, align 8, !noalias !28309
  %i.bh = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !28310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28309
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28309
  store i64 9, ptr %i.h, align 8, !noalias !28309
  %i.bi = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !28310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28309
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.l:                                             ; preds = %bb.b
  %i.bj = add i64 %i.ar, 1                        ; 4 uses
  store i64 %i.bj, ptr %i.al, align 8, !alias.scope !28311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28312)
  %umax.i19 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.bj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28314)
  %exitcond.not.i21.not = icmp ult i64 %i.bj, %i.an
  br i1 %exitcond.not.i21.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i24"

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !28315, !noundef !41
  %i.bm = add i64 %i.ar, 2                        ; 3 uses
  store i64 %i.bm, ptr %i.al, align 8, !alias.scope !28316, !noalias !28317
  %.not.i22 = icmp eq i8 %i.bl, 114
  br i1 %.not.i22, label %bb.n, label %bb.r, !prof !85

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28319)
  %exitcond.not.i21.1 = icmp eq i64 %i.bm, %umax.i19
  br i1 %exitcond.not.i21.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i24", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !28320, !noundef !41
  %i.bp = add i64 %i.ar, 3                        ; 3 uses
  store i64 %i.bp, ptr %i.al, align 8, !alias.scope !28321, !noalias !28317
  %.not.i22.1 = icmp eq i8 %i.bo, 117
  br i1 %.not.i22.1, label %bb.p, label %bb.r, !prof !85

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28323)
  %exitcond.not.i21.2 = icmp eq i64 %i.bp, %umax.i19
  br i1 %exitcond.not.i21.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i24", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !28324, !noundef !41
  %i.bs = add i64 %i.ar, 4
  store i64 %i.bs, ptr %i.al, align 8, !alias.scope !28325, !noalias !28317
  %.not.i22.2 = icmp eq i8 %i.br, 101
  br i1 %.not.i22.2, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit", label %bb.r, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i24": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !28326
  store i64 5, ptr %i.k, align 8, !noalias !28326
  %i.bt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !28327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28326
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !28326
  store i64 9, ptr %i.j, align 8, !noalias !28326
  %i.bu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !28327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28326
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.s:                                             ; preds = %bb.b
  %i.bv = add i64 %i.ar, 1                        ; 4 uses
  store i64 %i.bv, ptr %i.al, align 8, !alias.scope !28328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28329)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.bv) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28331)
  %exitcond.not.i.not = icmp ult i64 %i.bv, %i.an
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !28332, !noundef !41
  %i.by = add i64 %i.ar, 2                        ; 3 uses
  store i64 %i.by, ptr %i.al, align 8, !alias.scope !28333, !noalias !28334
  %.not.i16 = icmp eq i8 %i.bx, 97
  br i1 %.not.i16, label %bb.u, label %bb.aa, !prof !85

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28336)
  %exitcond.not.i.1 = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !28337, !noundef !41
  %i.cb = add i64 %i.ar, 3                        ; 3 uses
  store i64 %i.cb, ptr %i.al, align 8, !alias.scope !28338, !noalias !28334
  %.not.i16.1 = icmp eq i8 %i.ca, 108
  br i1 %.not.i16.1, label %bb.w, label %bb.aa, !prof !85

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28340)
  %exitcond.not.i.2 = icmp eq i64 %i.cb, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !28341, !noundef !41
  %i.ce = add i64 %i.ar, 4                        ; 3 uses
  store i64 %i.ce, ptr %i.al, align 8, !alias.scope !28342, !noalias !28334
  %.not.i16.2 = icmp eq i8 %i.cd, 115
  br i1 %.not.i16.2, label %bb.y, label %bb.aa, !prof !85

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28344)
  %exitcond.not.i.3 = icmp eq i64 %i.ce, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !28345, !noundef !41
  %i.ch = add i64 %i.ar, 5
  store i64 %i.ch, ptr %i.al, align 8, !alias.scope !28346, !noalias !28334
  %.not.i16.3 = icmp eq i8 %i.cg, 101
  br i1 %.not.i16.3, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit", label %bb.aa, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !28347
  store i64 5, ptr %i.m, align 8, !noalias !28347
  %i.ci = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !28348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !28347
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !28347
  store i64 9, ptr %i.l, align 8, !noalias !28347
  %i.cj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !28348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !28347
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.ab:                                            ; preds = %bb.b
  %i.ck = add i64 %i.ar, 1
  store i64 %i.ck, ptr %i.al, align 8, !alias.scope !28349
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h2e82135a14cc6c65E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false), !inline_history !28131
  %i.cl = load i64, ptr %i.aj, align 8, !range !82, !noundef !41
  %i.cm = icmp eq i64 %i.cl, 3
  br i1 %i.cm, label %bb.af, label %bb.ag

bb.ac:                                            ; preds = %bb.b
  %i.cn = add i64 %i.ar, 1
  store i64 %i.cn, ptr %i.al, align 8, !alias.scope !28350
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.co, align 8, !alias.scope !28285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !28285
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(56) %0), !inline_history !28131
  %i.cp = load i64, ptr %i.ah, align 8, !range !73, !noalias !28285, !noundef !41
  %i.cq = icmp eq i64 %i.cp, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !28285 ; 3 uses
  br i1 %i.cq, label %bb.ai, label %bb.aj

bb.ad:                                            ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cu = load i8, ptr %i.ct, align 8, !alias.scope !28285, !noundef !41
  %i.cv = add i8 %i.cu, -1                        ; 2 uses
  store i8 %i.cv, ptr %i.ct, align 8, !alias.scope !28285
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.ar, label %bb.as, !prof !44

bb.ae:                                            ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cy = load i8, ptr %i.cx, align 8, !alias.scope !28285, !noundef !41
  %i.cz = add i8 %i.cy, -1                        ; 2 uses
  store i8 %i.cz, ptr %i.cx, align 8, !alias.scope !28285
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.bq, label %bb.br, !prof !44

bb.af:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !41, !align !42, !noundef !41
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.ag:                                            ; preds = %bb.ab
  %i.dd = call fastcc { i64, ptr } @_ZN10serde_json2de12ParserNumber5visit17h607bdbb4ac04d55fE(ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %i.aj) ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.dd, 0
  %i.df = extractvalue { i64, ptr } %i.dd, 1      ; 3 uses
  %i.dg = trunc nuw i64 %i.de to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  br i1 %i.dg, label %bb.ah, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit", !prof !44

bb.ah:                                            ; preds = %bb.ag
  %i.dh = tail call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.ai:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !28285
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

bb.aj:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !28285 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.di = icmp slt i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.di, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.aj
  %i.dj = icmp eq i64 %.sroa.4.0.copyload.i, 0    ; 2 uses
  br i1 %i.dj, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i", label %bb.ak

bb.ak:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28351
  %i.dk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #67, !noalias !28351 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.al, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i"

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.ak ], [ 0, %bb.aj ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73, !noalias !28352
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i": ; preds = %bb.ak, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.dk, %bb.ak ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.cs, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !28353
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28354
  %i.dm = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #67, !noalias !28354 ; 7 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ao, label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h02f3af63e8b1070eE.exit", !prof !44

bb.am:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dj, label %common.resume290, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28355
  br label %common.resume290

bb.ao:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28354
  store ptr @386, ptr %i.b, align 8, !noalias !28354
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.dp, align 8, !noalias !28354
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.dq, align 8, !noalias !28354
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dr, align 8, !noalias !28354
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ds, align 8, !noalias !28354
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.ap unwind label %bb.am, !noalias !28354

bb.ap:                                            ; preds = %bb.ao
  unreachable

common.resume290:                                 ; preds = %bb.bo, %bb.db, %.body.i.thread, %bb.ax, %bb.aw, %.thread112, %bb.cj, %bb.ci, %bb.cu, %bb.bf, %bb.am, %bb.an
  %common.resume290.op = phi { ptr, i32 } [ %i.do, %bb.am ], [ %i.do, %bb.an ], [ %i.id, %bb.ci ], [ %i.jd, %bb.cu ], [ %i.fw, %bb.bo ], [ %i.en, %bb.aw ], [ %i.fm, %bb.bf ], [ %i.jm, %bb.db ], [ %eh.lpad-body.i81, %.body.i.thread ], [ %i.en, %bb.ax ], [ %.pn.i2116, %.thread112 ], [ %i.id, %bb.cj ]
  resume { ptr, i32 } %common.resume290.op

"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h02f3af63e8b1070eE.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i"
  store i64 216172782113783809, ptr %i.dm, align 8, !noalias !28354
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 -1, ptr %i.dt, align 8, !noalias !28354
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %i.du, align 8, !noalias !28356
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !28356
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !28356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !28285
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hec99917d86d131b7E.exit"

end_hunk_3
begin_hunk_4_@_ZN4core4iter6traits8iterator8Iterator7collect17hfd88917cd9da0637E:bb.a
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1c596b27f3f8341E.exit.i.i.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #73
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !69747

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hc196b4ef44df6c58E"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !69747

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !69747
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1c596b27f3f8341E.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !69747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69747
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !69746, !noalias !69753
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1c596b27f3f8341E.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = load i64, ptr %i.b, align 8, !range !58, !alias.scope !69757, !noalias !69758, !noundef !41
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h55be1b5a94c0a31cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !69753 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !69757, !noalias !69758
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !69757, !noalias !69758
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !69747
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !69746, !noalias !69753, !noundef !41
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !44

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hd4f29464da939f52E"(ptr noalias noundef align 8 dereferenceable(112) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9e4a887aac9039abE.exit" unwind label %bb.v, !noalias !69745

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !69753 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #73
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !69753

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !58, !noalias !69753, !noundef !41
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !69746, !noalias !69753, !noundef !41
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h1524740ef14d351cE"(ptr noalias noundef align 8 dereferenceable(112) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !69753

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !69753, !noundef !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !69753, !noundef !41
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h69143d0e92ebb660E"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(112) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.i.i.i.i, !noalias !69753

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !69753, !noundef !41
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !69753, !noundef !41
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !69746, !noalias !69753, !noundef !41
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !69746, !noalias !69753
  %i.al = load i64, ptr %i.b, align 8, !range !58, !alias.scope !69759, !noalias !69760, !noundef !41
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h55be1b5a94c0a31cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !69753 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !69759, !noalias !69760
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !69759, !noalias !69760
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !69747
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hdff448eee96c360fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.backedge unwind label %.loopexit.i.i.i.i, !noalias !69753

.backedge:                                        ; preds = %bb.t, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h74440ae7fd830c5dE.exit17.i.i.i.i"
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !69753
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !69761)
  call void @llvm.experimental.noalias.scope.decl(metadata !69762)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !69763, !noalias !69745, !noundef !41 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !69764, !noundef !41
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !69764
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i" unwind label %bb.y, !noalias !69745

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !69745
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9e4a887aac9039abE.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69747
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !69765
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !69765
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !69765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69745
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !69744, !noalias !69766
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !69744, !noalias !69766
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !69744, !noalias !69766
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !69744, !noalias !69766
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h112872b84c85fd2aE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !69777, !noundef !41 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8, !alias.scope !69777 ; 3 uses
  %.val2.i.i = load ptr, ptr %0, align 8, !nonnull !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !nonnull !41
  %umax = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %.promoted)
  %exitcond.not17.not = icmp ult i64 %.promoted, %i.c
  br i1 %exitcond.not17.not, label %.lr.ph, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread"

bb.b:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit"
  %exitcond.not = icmp eq i64 %i.f, %umax
  br i1 %exitcond.not, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread.loopexit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 5 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !69777
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %.val2.i.i, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !69778, !noalias !69779, !noundef !41 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit", label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread.loopexit"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit": ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.n = tail call noundef zeroext i1 @_ZN16nickel_lang_core4eval11contract_eq11contract_eq17he6c330c435fcc7dcE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.n, label %bb.b, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread.loopexit"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread.loopexit": ; preds = %bb.b, %.lr.ph, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit"
  %.lcssa.ph = phi i64 [ %i.e, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit" ], [ %i.e, %.lr.ph ], [ %i.f, %bb.b ]
  %i.o = icmp ult i64 %.lcssa.ph, %i.c
  br label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread.loopexit", %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.o, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha1e9748d4b79ebbaE.exit.thread.loopexit" ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h66cd8bcc15340240E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.01.i.i.i = alloca [96 x i8], align 8     ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !noundef !41  ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69803)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !69804, !noalias !69805, !nonnull !41, !noundef !41
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.j, ptr %1, align 8, !alias.scope !69804, !noalias !69805
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !69806, !noalias !69805, !nonnull !41, !align !42, !noundef !41 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69808
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69809
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663), !noalias !69810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69809
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663)
          to label %bb.f unwind label %bb.e, !noalias !69810

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i": ; preds = %bb.h, %bb.g, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69811)
  call void @llvm.experimental.noalias.scope.decl(metadata !69812)
  %.val.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !69813, !noalias !69809 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.m, label %common.resume.i.i.i, label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !69813, !noalias !69809, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !69814
  br label %common.resume.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i"

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69809
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
          to label %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i.i.i" unwind label %bb.g, !noalias !69810

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69815)
  call void @llvm.experimental.noalias.scope.decl(metadata !69816)
  %.val.i.i2.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !69817, !noalias !69809 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i2.i.i.i.i, 0
  br i1 %i.r, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i3.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !69817, !noalias !69809, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i.i, i64 noundef %.val.i.i2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !69818
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i"

common.resume.i.i.i:                              ; preds = %bb.i, %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i"
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn.i.i.i.i, %bb.d ], [ %.pn.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i" ]
  resume { ptr, i32 } %common.resume.op.i.i.i

"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i.i.i": ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !69819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !69819
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !69819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69809
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load <2 x i64>, ptr %i.v, align 8, !alias.scope !69807, !noalias !69820
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !69807, !noalias !69820, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69808
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %_ZN4core3ops8function6FnOnce9call_once17h8edd949b9dd9f54eE.exit unwind label %bb.i, !noalias !69820

bb.i:                                             ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #75, !noalias !69820
  br label %common.resume.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h8edd949b9dd9f54eE.exit: ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i.i.i"
  %.sroa.01.72..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.72..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !69808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69808
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  ret void

bb.l:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h8edd949b9dd9f54eE.exit, %bb.l
  %.sroa.0.015 = phi i64 [ -9223372036854775807, %_ZN4core3ops8function6FnOnce9call_once17h8edd949b9dd9f54eE.exit ], [ -9223372036854775806, %bb.l ]
  %.sroa.10.09 = phi i64 [ %i.y, %_ZN4core3ops8function6FnOnce9call_once17h8edd949b9dd9f54eE.exit ], [ undef, %bb.l ]
  %i.aa = phi <2 x i64> [ %i.w, %_ZN4core3ops8function6FnOnce9call_once17h8edd949b9dd9f54eE.exit ], [ undef, %bb.l ]
  store i64 %.sroa.0.015, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.i.i.i, i64 96, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i64> %i.aa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.10.09, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h853e104ba6c43200E(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !64, !noundef !41 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69828)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !69829, !noundef !41 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h26748723c45b3a95E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h26748723c45b3a95E.exit.i.i": ; preds = %bb.b
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !69829
  %i.h = tail call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5730986dd3ca0ac6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h26748723c45b3a95E.exit.i.i._crit_edge", label %bb.c

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h26748723c45b3a95E.exit.i.i._crit_edge": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h26748723c45b3a95E.exit.i.i"
  %.val8.pre = load i64, ptr %0, align 8, !range !64
  br label %bb.h

bb.c:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h26748723c45b3a95E.exit.i.i"
end_hunk_4
begin_hunk_5_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bde1181ff4e7680E":bb.a
  br i1 %i.ke, label %bb.cl, label %.invoke.invoke.i.i.i

.invoke.invoke.i.i.i:                             ; preds = %bb.cl, %bb.ck, %bb.bd
  %i.kf = phi ptr [ @721, %bb.bd ], [ @722, %bb.ck ], [ @723, %bb.cl ]
  %i.kg = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h466a3848b291da68E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kf, i64 noundef 5)
          to label %.loopexit.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !87921

bb.cl:                                            ; preds = %bb.ck
  %i.kh = trunc nuw i64 %.sroa.010.0.i.i.i.ph613 to i1
  br i1 %i.kh, label %bb.cm, label %.invoke.invoke.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %.not101.i.i.i = icmp eq i64 %.sroa.0.0159.i.i.i.ph, -9223372036854775808 ; 3 uses
  %.sroa.085.0.i.i.i = select i1 %.not101.i.i.i, i64 0, i64 %.sroa.0.0159.i.i.i.ph
  %.sroa.587.0.i.i.i = select i1 %.not101.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.12.0.i52.i.i.ph
  %.sroa.690.0.i.i.i = select i1 %.not101.i.i.i, i64 0, i64 %.sroa.18.0.i.i.i.ph
  br label %"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i"

.loopexit.i.i:                                    ; preds = %_ZN10serde_core2de9MapAccess10next_value17h8fd2cba8fa4644c1E.exit126.i.i.i, %bb.cj, %_ZN10serde_core2de9MapAccess10next_value17h8fd2cba8fa4644c1E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8fd2cba8fa4644c1E.exit136.i.i.i, %.invoke, %.invoke.invoke.i.i.i, %bb.bc, %bb.ao
  %.sroa.11158.0.ph.sink.i.i.i = phi ptr [ %i.kg, %.invoke.invoke.i.i.i ], [ %i.dt, %bb.ao ], [ %i.ix, %.invoke ], [ %i.ee, %bb.bc ], [ %i.it, %_ZN10serde_core2de9MapAccess10next_value17h8fd2cba8fa4644c1E.exit126.i.i.i ], [ %i.ic, %_ZN10serde_core2de9MapAccess10next_value17h8fd2cba8fa4644c1E.exit.i.i.i ], [ %i.hn, %bb.cj ], [ %i.jm, %_ZN10serde_core2de9MapAccess10next_value17h8fd2cba8fa4644c1E.exit136.i.i.i ] ; 3 uses
  switch i64 %.sroa.0.0159.i.i.i.ph, label %bb.cn [
    i64 -9223372036854775808, label %"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i"
    i64 0, label %"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i"
  ]

bb.cn:                                            ; preds = %.loopexit.i.i, %.thread.i.i.i
  %.sroa.910.0.i.i = phi ptr [ %.sroa.11158.0.ph.sink.i.i.i, %.loopexit.i.i ], [ %i.jp, %.thread.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i52.i.i.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i52.i.i.ph, i64 noundef %.sroa.0.0159.i.i.i.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !87981
  br label %"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i"

bb.co:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i52.i.i.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i52.i.i.ph, i64 noundef %.sroa.0.0159493.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !87982
  br label %common.resume.i.i

"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i, %bb.cn, %.loopexit.i.i, %.loopexit.i.i, %bb.cm, %.thread.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i
  %.sroa.1612.0.i.i = phi i64 [ undef, %bb.cn ], [ undef, %.loopexit.i.i ], [ undef, %.loopexit.i.i ], [ %.sroa.712.0.i.i.i.ph612, %bb.cm ], [ undef, %.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i ]
  %.sroa.1511.0.i.i = phi i64 [ undef, %bb.cn ], [ undef, %.loopexit.i.i ], [ undef, %.loopexit.i.i ], [ %.sroa.77.0.i.i.i.ph622, %bb.cm ], [ undef, %.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i ]
  %.sroa.14.0.i.i = phi i64 [ undef, %bb.cn ], [ undef, %.loopexit.i.i ], [ undef, %.loopexit.i.i ], [ %.sroa.7.0.i.i.i.ph629, %bb.cm ], [ undef, %.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i ]
  %.sroa.13.0.i.i = phi i64 [ undef, %bb.cn ], [ undef, %.loopexit.i.i ], [ undef, %.loopexit.i.i ], [ %.sroa.690.0.i.i.i, %bb.cm ], [ undef, %.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i ]
  %.sroa.910.1.i.i = phi ptr [ %.sroa.910.0.i.i, %bb.cn ], [ %.sroa.11158.0.ph.sink.i.i.i, %.loopexit.i.i ], [ %.sroa.11158.0.ph.sink.i.i.i, %.loopexit.i.i ], [ %.sroa.587.0.i.i.i, %bb.cm ], [ %i.jp, %.thread.i.i.i ], [ %.sroa.0.0.i.ph.i.i139.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i ], [ %i.kd, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i ] ; 5 uses
  %.sroa.09.1.i.i = phi i64 [ -9223372036854775808, %bb.cn ], [ -9223372036854775808, %.loopexit.i.i ], [ -9223372036854775808, %.loopexit.i.i ], [ %.sroa.085.0.i.i.i, %bb.cm ], [ -9223372036854775808, %.thread.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.thread.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17hb3c8e699a601c467E.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !87875
  %i.ki = load i8, ptr %i.an, align 8, !alias.scope !87877, !noalias !87876, !noundef !41
  %i.kj = add i8 %i.ki, 1
  store i8 %i.kj, ptr %i.an, align 8, !alias.scope !87877, !noalias !87876
  %i.kk = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h9873d551c94e778cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.cq unwind label %bb.cp, !noalias !87876 ; 9 uses

bb.cp:                                            ; preds = %"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i"
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$core..result..Result$LT$nickel_lang_package..version..SemVer$C$serde_json..error..Error$GT$$GT$17h38796d78d0ddf5fbE"(i64 %.sroa.09.1.i.i, ptr %.sroa.910.1.i.i) #75
          to label %common.resume.i.i unwind label %bb.ag, !noalias !87876

bb.cq:                                            ; preds = %"_ZN194_$LT$nickel_lang_package..version.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h88ceb52b7d0c5245E.exit.i.i"
  %i.km = icmp eq i64 %.sroa.09.1.i.i, -9223372036854775808
  %.not36.i.i = icmp eq ptr %i.kk, null           ; 2 uses
  br i1 %i.km, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not36.i.i, label %.thread.i.i, label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not36.i.i, label %.thread.thread.i.i, label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  %i.kn = icmp eq i64 %.sroa.09.1.i.i, 0
  br i1 %i.kn, label %.thread.thread.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.910.1.i.i, i64 noundef %.sroa.09.1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !87983
  br label %.thread.thread.i.i

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !87984)
  call void @llvm.experimental.noalias.scope.decl(metadata !87985)
  %i.ko = load i64, ptr %i.kk, align 8, !range !89, !alias.scope !87986, !noalias !87987, !noundef !41
  switch i64 %i.ko, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i" [
    i64 0, label %bb.cw
    i64 1, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %.val1.i.i.i.i58.i.i = load i64, ptr %i.kp, align 8, !alias.scope !87986, !noalias !87987, !noundef !41 ; 2 uses
  %i.kq = icmp eq i64 %.val1.i.i.i.i58.i.i, 0
  br i1 %i.kq, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i59.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i59.i.i": ; preds = %bb.cw
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.val.i.i.i.i60.i.i = load ptr, ptr %i.kr, align 8, !alias.scope !87986, !noalias !87987, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i60.i.i, i64 noundef %.val1.i.i.i.i58.i.i, i64 noundef 1) #67, !noalias !87988
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i"

bb.cx:                                            ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ks)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i" unwind label %bb.cy, !noalias !87987

bb.cy:                                            ; preds = %bb.cx
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef 40, i64 noundef 8) #67, !noalias !87987
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i": ; preds = %bb.cx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i59.i.i", %bb.cw, %bb.cv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kk, i64 noundef 40, i64 noundef 8) #67, !noalias !87987
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i", %bb.cu, %bb.ct, %bb.cs, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit.i.i", %bb.af, %bb.ae, %bb.ad, %bb.d
  %.sroa.12.5.i.i = phi ptr [ %.sroa.10.0.i.i, %bb.ad ], [ %i.ai, %bb.d ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.af ], [ %.sroa.10.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit.i.i" ], [ %i.kk, %bb.cu ], [ %i.kk, %bb.ct ], [ %.sroa.910.1.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit61.i.i" ], [ %.sroa.910.1.i.i, %bb.cs ]
  %i.ku = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !87876
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.kv, align 8, !alias.scope !87876, !noalias !87877
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !87876, !noalias !87877
  br label %"_ZN19nickel_lang_package7version1_94_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$11deserialize17h88370e49c974c0d1E.exit"

.thread.i.i:                                      ; preds = %bb.cr, %bb.ac
  %.sroa.09.2375.i.i = phi i64 [ %.sroa.09.1.i.i, %bb.cr ], [ %.sroa.02.0.i.i, %bb.ac ]
  %.sroa.12.2374.i.i = phi ptr [ %.sroa.910.1.i.i, %bb.cr ], [ %.sroa.10.0.i.i, %bb.ac ]
  %.sroa.18.sroa.0.1373.i.i = phi i64 [ %.sroa.13.0.i.i, %bb.cr ], [ %.sroa.15.0.i.i, %bb.ac ]
  %.sroa.18.sroa.6.1372.i.i = phi i64 [ %.sroa.14.0.i.i, %bb.cr ], [ %.sroa.16.0.i.i, %bb.ac ]
  %.sroa.18.sroa.7.1371.i.i = phi i64 [ %.sroa.1511.0.i.i, %bb.cr ], [ %.sroa.17.0.i.i, %bb.ac ]
  %.sroa.18.sroa.8.1370.i.i = phi i64 [ %.sroa.1612.0.i.i, %bb.cr ], [ %.sroa.183.0.i.i, %bb.ac ]
  store i64 %.sroa.09.2375.i.i, ptr %0, align 8, !alias.scope !87876, !noalias !87877
  %.sroa.232.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.2374.i.i, ptr %.sroa.232.0..sroa_idx.i.i, align 8, !alias.scope !87876, !noalias !87877
  %.sroa.333.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.sroa.0.1373.i.i, ptr %.sroa.333.0..sroa_idx.i.i, align 8, !alias.scope !87876, !noalias !87877
  %.sroa.333.sroa.2.0..sroa.333.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.18.sroa.6.1372.i.i, ptr %.sroa.333.sroa.2.0..sroa.333.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !87876, !noalias !87877
  %.sroa.333.sroa.3.0..sroa.333.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.18.sroa.7.1371.i.i, ptr %.sroa.333.sroa.3.0..sroa.333.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !87876, !noalias !87877
  %.sroa.333.sroa.4.0..sroa.333.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.18.sroa.8.1370.i.i, ptr %.sroa.333.sroa.4.0..sroa.333.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !87876, !noalias !87877
  br label %"_ZN19nickel_lang_package7version1_94_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$11deserialize17h88370e49c974c0d1E.exit"

"_ZN19nickel_lang_package7version1_94_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..version..SemVer$GT$11deserialize17h88370e49c974c0d1E.exit": ; preds = %.loopexit39.i.i, %bb.z, %.thread.thread.i.i, %.thread.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1a46f8dc24324ccbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88028)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !88029, !noalias !88030, !noundef !41 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !88031, !noalias !88032 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i.i.i, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !88029, !noalias !88030, !nonnull !41, !align !46, !noundef !41 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88034)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !88035, !noundef !41
  switch i8 %i.k, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !88036, !noalias !88032
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.thread.i.i": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88037)
  %i.m = tail call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17h1bb6958a12722cfeE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !88038 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %spec.select.i.i.i = add i64 %i.n, 1
  %i.o = extractvalue { i64, ptr } %i.m, 1
  %.sink2.i.i.i = ptrtoint ptr %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.p, align 8, !alias.scope !88038, !noalias !88039
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h0c032e8ca41ce994E.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !88040, !noalias !88041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88042)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.q) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88044)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.q, %i.e
  br i1 %exitcond.not.i9.not.i.i, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !88045, !noundef !41
  %i.t = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !88046, !noalias !88047
  %.not.i.i.i = icmp eq i8 %i.s, 117
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !85

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88049)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.t, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !88050, !noundef !41
  %i.w = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !88051, !noalias !88047
  %.not.i.1.i.i = icmp eq i8 %i.v, 108
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !85

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88053)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.w, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !88054, !noundef !41
  %i.z = add i64 %i.i, 4
  store i64 %i.z, ptr %i.c, align 8, !alias.scope !88055, !noalias !88047
  %.not.i.2.i.i = icmp eq i8 %i.y, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h0c032e8ca41ce994E.exit", label %bb.j, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88056
  store i64 5, ptr %i.b, align 8, !noalias !88056
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !88057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88056
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88056
  store i64 9, ptr %i.a, align 8, !noalias !88056
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !88057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88056
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i" ], [ %i.ab, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ac, align 8, !alias.scope !88041, !noalias !88058
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h0c032e8ca41ce994E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h0c032e8ca41ce994E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.thread.i.i", %bb.i, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.k ], [ %spec.select.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.thread.i.i" ], [ 0, %bb.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !88041, !noalias !88058
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h2a468aa8151366b5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.f = alloca [20 x i8], align 4                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 26 uses
  %i.v = alloca [88 x i8], align 8                ; 15 uses
  %i.w = alloca [72 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [72 x i8], align 8               ; 35 uses
  %.sroa.6.i.i.i.i = alloca [48 x i8], align 8    ; 7 uses
  %i.af = alloca [72 x i8], align 8               ; 10 uses
  %i.ag = alloca [304 x i8], align 8              ; 22 uses
  %i.ah = alloca [64 x i8], align 8               ; 14 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [88 x i8], align 8               ; 5 uses
  %i.am = alloca [64 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !88284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !88286
  call void @_ZN16nickel_lang_core4eval5value11NickelValue7content17h5471752e14fb6256E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noundef nonnull %1), !noalias !88286
  %i.ao = load i64, ptr %i.an, align 8, !range !116, !noalias !88286, !noundef !41 ; 5 uses
  %i.ap = icmp ne i64 %i.ao, 23
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -16
  %i.ar = icmp samesign ugt i64 %i.ao, 15
  %i.as = select i1 %i.ar, i64 %i.aq, i64 7
  switch i64 %i.as, label %bb.b [
    i64 3, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !88286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !88286
  %i.at = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueContent7restore17hfb083f1ff11168ebE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ak), !noalias !88286 ; 9 uses
  store ptr %i.at, ptr %i.aj, align 8, !noalias !88286
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !88287
  %i.au = call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #67, !noalias !88287 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.es, label %bb.fa

bb.c:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !88286, !nonnull !41, !noundef !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !88286, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !88286
  invoke void %i.az(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.am, ptr noundef nonnull %i.ax)
          to label %bb.e unwind label %.thread28.i.i, !noalias !88286

bb.d:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !88286, !nonnull !41, !noundef !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !88286, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !88286
  invoke void %i.bd(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.al, ptr noundef nonnull %i.bb)
          to label %bb.bj unwind label %.thread28.i.i, !noalias !88286

.thread28.i.i:                                    ; preds = %bb.eo, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i", %bb.d, %bb.c
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread21.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !88288)
  call void @llvm.experimental.noalias.scope.decl(metadata !88289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !88290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !88290
  %i.be = load i64, ptr %i.am, align 8, !range !64, !alias.scope !88289, !noalias !88291, !noundef !41
  %.not.i.i.i = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.am, i64 64, i1 false), !noalias !88291
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 0, ptr %i.ah, align 8, !noalias !88290
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bf, i8 0, i64 17, i1 false), !noalias !88290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !88290
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !88290
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !88290
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !noalias !88290
  call void @llvm.experimental.noalias.scope.decl(metadata !88292)
  call void @llvm.experimental.noalias.scope.decl(metadata !88293)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !88293, !noalias !88294, !noundef !41
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !88293, !noalias !88294, !noundef !41
  %i.bl = sub i64 %i.bi, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !88295
  invoke void @_ZN16nickel_lang_core11deserialize17ArrayDeserializer3new17h1ee9865604ffb102E(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(address) dereferenceable(304) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ai)
          to label %.noexc.i.i.i unwind label %bb.ay, !noalias !88290

end_hunk_5
begin_hunk_6_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3ad294b354c3652dE":bb.a
  br i1 %.not111.i.i.i.i.i.i, label %"_ZN183_$LT$nickel_lang_package.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h4ca84d688aa026b4E.exit.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i"
  call void @"_ZN4core3ptr33drop_in_place$LT$gix_url..Url$GT$17hbb9314442ac85c62E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m), !noalias !88794
  br label %"_ZN183_$LT$nickel_lang_package.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h4ca84d688aa026b4E.exit.i.i.i.i.i"

bb.cx:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i57.i.i.i.i.i.ph955) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i57.i.i.i.i.i.ph955, i64 noundef %.sroa.0.0479.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !88853
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i.i.i.i.i.i"

bb.cy:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i.i.i.i.i.i"
  call void @"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p) #75, !noalias !88794
  br label %bb.cv

bb.cz:                                            ; preds = %bb.cv
  call void @"_ZN4core3ptr33drop_in_place$LT$gix_url..Url$GT$17hbb9314442ac85c62E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m) #75, !noalias !88794
  br label %common.resume.i.i.i.i.i

"_ZN183_$LT$nickel_lang_package.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h4ca84d688aa026b4E.exit.i.i.i.i.i": ; preds = %bb.cw, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i", %bb.cr
  %.sroa.26.0.i.i.i.i.i = phi i64 [ undef, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i" ], [ undef, %bb.cw ], [ %.sroa.686.0.i.i.i.i.i.i, %bb.cr ]
  %.sroa.25.0.i.i.i.i.i = phi ptr [ undef, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i" ], [ undef, %bb.cw ], [ %.sroa.583.0.i.i.i.i.i.i, %bb.cr ]
  %.sroa.2415.0.i.i.i.i.i = phi i64 [ undef, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i" ], [ undef, %bb.cw ], [ %.sroa.081.0.i.i.i.i.i.i, %bb.cr ]
  %.sroa.1511.3.i.i.i.i.i = phi ptr [ %.sroa.1511.2.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i" ], [ %.sroa.1511.2.i.i.i.i.i, %bb.cw ], [ %.ph, %bb.cr ]
  %.sroa.09.318.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i" ], [ -9223372036854775808, %bb.cw ], [ %.ph940, %bb.cr ]
  %.sroa.27.0.i.i.i.i.i = phi i8 [ undef, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$nickel_lang_git..Target$GT$$GT$17hb6db6b93a474dd99E.exit143.i.i.i.i.i.i" ], [ undef, %bb.cw ], [ %.sroa.051.0.i.i.i.i.i.i, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !88742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !88742
  %i.jh = load i8, ptr %i.be, align 8, !alias.scope !88744, !noalias !88743, !noundef !41
  %i.ji = add i8 %i.jh, 1
  store i8 %i.ji, ptr %i.be, align 8, !alias.scope !88744, !noalias !88743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !88742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !88742
  store i64 %.sroa.09.318.i.i.i.i.i, ptr %i.aa, align 8, !noalias !88742
  %.sroa.1511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.1511.3.i.i.i.i.i, ptr %.sroa.1511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88742
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.24.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.24.i.i.i.i.i, i64 112, i1 false), !noalias !88742
  %.sroa.2415.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store i64 %.sroa.2415.0.i.i.i.i.i, ptr %.sroa.2415.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88742
  %.sroa.25.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store ptr %.sroa.25.0.i.i.i.i.i, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88742
  %.sroa.26.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  store i64 %.sroa.26.0.i.i.i.i.i, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88742
  %.sroa.27.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  store i8 %.sroa.27.0.i.i.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88742
  %.sroa.28.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.i.i.i.i.i.i, i64 31, i1 false), !noalias !88742
  %i.jj = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h9873d551c94e778cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.db unwind label %bb.da, !noalias !88743 ; 11 uses

bb.da:                                            ; preds = %"_ZN183_$LT$nickel_lang_package.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h4ca84d688aa026b4E.exit.i.i.i.i.i"
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$nickel_lang_package..GitDependency$C$serde_json..error..Error$GT$$GT$17h9dec5c6b1a82d9cfE"(ptr noalias noundef align 8 dereferenceable(184) %i.aa) #75
          to label %common.resume.i.i.i.i.i unwind label %bb.aq, !noalias !88743

bb.db:                                            ; preds = %"_ZN183_$LT$nickel_lang_package.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h4ca84d688aa026b4E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ab, ptr noundef nonnull align 8 dereferenceable(184) %i.aa, i64 184, i1 false), !noalias !88742
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  store ptr %i.jj, ptr %i.jl, align 8, !noalias !88742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !88742
  %i.jm = load i64, ptr %i.ab, align 8, !range !64, !noalias !88742, !noundef !41 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, -9223372036854775808
  br i1 %i.jn, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %.sroa.225.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.225.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.225.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88742
  %.sroa.326.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.326.0..sroa_idx.i.i.i.i.i, i64 168, i1 false), !noalias !88742
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i)
  br label %.thread36.i.i.i.i.i

bb.de:                                            ; preds = %bb.db
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !88742, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i)
  %.not43.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not43.i.i.i.i.i, label %.thread36.i.i.i.i.i, label %bb.dj

bb.df:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !88854)
  call void @"_ZN4core3ptr33drop_in_place$LT$gix_url..Url$GT$17hbb9314442ac85c62E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(184) %i.ab), !noalias !88743
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !88855)
  %i.jr = load i8, ptr %i.jq, align 8, !range !70, !alias.scope !88856, !noalias !88742, !noundef !41
  switch i8 %i.jr, label %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i" [
    i8 1, label %bb.dg
    i8 2, label %bb.dh
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i61.i.i.i.i.i": ; preds = %bb.dh, %bb.dg
  %.val.i.i1.sink.i.i62.i.i.i.i.i = phi i64 [ %.val.i.i.i.i67.i.i.i.i.i, %bb.dg ], [ %.val.i.i1.i.i60.i.i.i.i.i, %bb.dh ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %.val1.i.i2.i.i63.i.i.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !88856, !noalias !88742, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i63.i.i.i.i.i, i64 noundef %.val.i.i1.sink.i.i62.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !88857
  br label %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i"

bb.dg:                                            ; preds = %bb.df
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %.val.i.i.i.i67.i.i.i.i.i = load i64, ptr %i.jt, align 8, !alias.scope !88858, !noalias !88742 ; 2 uses
  %i.ju = icmp eq i64 %.val.i.i.i.i67.i.i.i.i.i, 0
  br i1 %i.ju, label %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i61.i.i.i.i.i"

bb.dh:                                            ; preds = %bb.df
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %.val.i.i1.i.i60.i.i.i.i.i = load i64, ptr %i.jv, align 8, !alias.scope !88859, !noalias !88742 ; 2 uses
  %i.jw = icmp eq i64 %.val.i.i1.i.i60.i.i.i.i.i, 0
  br i1 %i.jw, label %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i61.i.i.i.i.i"

"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i": ; preds = %bb.dh, %bb.dg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i61.i.i.i.i.i", %bb.df
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  call void @llvm.experimental.noalias.scope.decl(metadata !88860)
  call void @llvm.experimental.noalias.scope.decl(metadata !88861)
  %.val.i.i2.i65.i.i.i.i.i = load i64, ptr %i.jx, align 8, !alias.scope !88862, !noalias !88742 ; 2 uses
  %i.jy = icmp eq i64 %.val.i.i2.i65.i.i.i.i.i, 0
  br i1 %i.jy, label %.thread36.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i"
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %.val1.i.i3.i66.i.i.i.i.i = load ptr, ptr %i.jz, align 8, !alias.scope !88863, !noalias !88742, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i66.i.i.i.i.i, i64 noundef %.val.i.i2.i65.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !88864
  br label %.thread36.i.i.i.i.i

.thread36.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i", %bb.di, %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i", %bb.de, %bb.dd
  %.sroa.09.342.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.de ], [ -9223372036854775808, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i" ], [ %i.jm, %bb.dd ], [ -9223372036854775808, %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i" ], [ -9223372036854775808, %bb.di ]
  %.sroa.12.341.i.i.i.i.i = phi ptr [ %i.jp, %bb.de ], [ %i.jp, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i, %bb.dd ], [ %i.jj, %"_ZN4core3ptr44drop_in_place$LT$nickel_lang_git..Target$GT$17h24d0c2fa0f6f251aE.exit.i64.i.i.i.i.i" ], [ %i.jj, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !88742
  br label %bb.av

bb.dj:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !88865)
  call void @llvm.experimental.noalias.scope.decl(metadata !88866)
  %i.ka = load i64, ptr %i.jj, align 8, !range !89, !alias.scope !88867, !noalias !88868, !noundef !41
  switch i64 %i.ka, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i" [
    i64 0, label %bb.dk
    i64 1, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %.val1.i.i.i.i70.i.i.i.i.i = load i64, ptr %i.kb, align 8, !alias.scope !88867, !noalias !88868, !noundef !41 ; 2 uses
  %i.kc = icmp eq i64 %.val1.i.i.i.i70.i.i.i.i.i, 0
  br i1 %i.kc, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i71.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i71.i.i.i.i.i": ; preds = %bb.dk
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %.val.i.i.i.i72.i.i.i.i.i = load ptr, ptr %i.kd, align 8, !alias.scope !88867, !noalias !88868, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i72.i.i.i.i.i, i64 noundef %.val1.i.i.i.i70.i.i.i.i.i, i64 noundef 1) #67, !noalias !88869
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i"

bb.dl:                                            ; preds = %bb.dj
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ke)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i" unwind label %bb.dm, !noalias !88868

bb.dm:                                            ; preds = %bb.dl
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jj, i64 noundef 40, i64 noundef 8) #67, !noalias !88868
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit73.i.i.i.i.i": ; preds = %bb.dl, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i71.i.i.i.i.i", %bb.dk, %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jj, i64 noundef 40, i64 noundef 8) #67, !noalias !88868
  br label %.thread36.i.i.i.i.i

"_ZN19nickel_lang_package1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$11deserialize17hc7027a96659aa354E.exit.thread6.i.i.i": ; preds = %bb.av, %bb.f
  %.sroa.12.5.i.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.av ], [ %i.az, %bb.f ]
  %i.kg = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !88743
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  br label %"_ZN19nickel_lang_package1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$11deserialize17hc7027a96659aa354E.exit.thread.i.i.i"

"_ZN19nickel_lang_package1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$11deserialize17hc7027a96659aa354E.exit.thread.i.i.i": ; preds = %"_ZN19nickel_lang_package1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$11deserialize17hc7027a96659aa354E.exit.thread6.i.i.i", %bb.ag, %.loopexit.i.i.i.i.i
  %.sroa.8.15.i.i.i = phi ptr [ %i.kg, %"_ZN19nickel_lang_package1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$11deserialize17hc7027a96659aa354E.exit.thread6.i.i.i" ], [ %i.ay, %.loopexit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.15.i.i.i, ptr %i.kh, align 8, !alias.scope !88870, !noalias !88871
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !88870, !noalias !88871
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h7be1d42a9fdfeda9E.exit"

bb.dn:                                            ; preds = %bb.av
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.18.i.i.i.i.i, i64 168, i1 false), !noalias !88871
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  store i64 %.sroa.09.2.i.i.i.i.i, ptr %0, align 8, !alias.scope !88870, !noalias !88871
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.2.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !88870, !noalias !88871
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h7be1d42a9fdfeda9E.exit"

bb.do:                                            ; preds = %bb.b
  %i.ki = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.ki, ptr %i.ah, align 8, !alias.scope !88872, !noalias !88873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88874)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ki) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88876)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ki, %i.aj
  br i1 %exitcond.not.i9.not.i.i, label %bb.dp, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"

bb.dp:                                            ; preds = %bb.do
  %i.kj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !88877, !noundef !41
  %i.kl = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.kl, ptr %i.ah, align 8, !alias.scope !88878, !noalias !88879
  %.not.i.i.i = icmp eq i8 %i.kk, 117
  br i1 %.not.i.i.i, label %bb.dq, label %bb.du, !prof !85

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88881)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.kl, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.km = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !noalias !88882, !noundef !41
  %i.ko = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.ko, ptr %i.ah, align 8, !alias.scope !88883, !noalias !88879
  %.not.i.1.i.i = icmp eq i8 %i.kn, 108
  br i1 %.not.i.1.i.i, label %bb.ds, label %bb.du, !prof !85

bb.ds:                                            ; preds = %bb.dr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88885)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ko, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.kp = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !88886, !noundef !41
  %i.kr = add i64 %i.an, 4
  store i64 %i.kr, ptr %i.ah, align 8, !alias.scope !88887, !noalias !88879
  %.not.i.2.i.i = icmp eq i8 %i.kq, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i", label %bb.du, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i": ; preds = %bb.ds, %bb.dq, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88888
  store i64 5, ptr %i.c, align 8, !noalias !88888
  %i.ks = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !88889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88888
  br label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.dr, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88888
  store i64 9, ptr %i.b, align 8, !noalias !88888
  %i.kt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !88889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88888
  br label %bb.dv

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i": ; preds = %bb.dt
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !88890, !noalias !88891
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h7be1d42a9fdfeda9E.exit"

bb.dv:                                            ; preds = %bb.du, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ks, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i" ], [ %i.kt, %bb.du ]
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ku, align 8, !alias.scope !88873, !noalias !88891
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !88873, !noalias !88891
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h7be1d42a9fdfeda9E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h7be1d42a9fdfeda9E.exit": ; preds = %"_ZN19nickel_lang_package1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..GitDependency$GT$11deserialize17hc7027a96659aa354E.exit.thread.i.i.i", %bb.dn, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h30c0fa94f80b3895E.exit.i.i", %bb.dv
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h43be76d8c46a189bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.18.i.i = alloca [16 x i8], align 8       ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88924)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !88925, !noalias !88926, !noundef !41 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !88927, !noalias !88928 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i.i.i, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !88925, !noalias !88926, !nonnull !41, !align !46, !noundef !41
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.l = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88930)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !88931, !noundef !41 ; 2 uses
  switch i8 %i.n, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !88932, !noalias !88928
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.i)
  %i.p = icmp eq i8 %i.n, 34
  br i1 %i.p, label %bb.d, label %bb.e, !prof !48

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88933
  store i64 5, ptr %i.e, align 8, !noalias !88933
  %i.q = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !88934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88933
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !88934, !noalias !88935
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !88934, !noalias !88935
  br label %"_ZN84_$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hcf5ccd2b6fa4d24fE.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.s = add i64 %i.l, 1
  store i64 %i.s, ptr %i.f, align 8, !alias.scope !88936, !noalias !88934
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !88935, !noalias !88934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88933
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !88934
  %i.u = load i64, ptr %i.d, align 8, !range !73, !noalias !88933, !noundef !41 ; 2 uses
  %i.v = icmp eq i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !88933 ; 4 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit.i.i"
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hbf2b15bde5425c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2747), !noalias !88934
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.z, align 8, !alias.scope !88934, !noalias !88935
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !88934, !noalias !88935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i)
  br label %"_ZN84_$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hcf5ccd2b6fa4d24fE.exit"

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !88933 ; 2 uses
  %i.aa = trunc nuw i64 %i.u to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88937
  call void @"_ZN83_$LT$nickel_lang_package..lock..EntryName$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb13866b40746e559E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %.sroa.4.0.copyload.i.i), !noalias !88938
  %i.ab = load i64, ptr %i.c, align 8, !range !64, !noalias !88937, !noundef !41 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -9223372036854775808
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.ac, label %"_ZN159_$LT$$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Helper$LT$__S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hddc3d5e425938741E.exit.thread.i.i", label %bb.l

"_ZN159_$LT$$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Helper$LT$__S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hddc3d5e425938741E.exit.thread.i.i": ; preds = %bb.h
  %i.ae = load i8, ptr %i.ad, align 8, !range !133, !noalias !88937, !noundef !41
  %i.af = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h559e5c71e76bf195E"(i8 noundef %i.ae), !noalias !88938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88933
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88939
  call void @"_ZN83_$LT$nickel_lang_package..lock..EntryName$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb13866b40746e559E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %.sroa.4.0.copyload.i.i), !noalias !88940
  %i.ag = load i64, ptr %i.b, align 8, !range !64, !noalias !88939, !noundef !41 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ah, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h697303a9a77ef03bE.exit.thread.i.i, label %bb.k

_ZN10serde_core2de7Visitor18visit_borrowed_str17h697303a9a77ef03bE.exit.thread.i.i: ; preds = %bb.i
  %i.aj = load i8, ptr %i.ai, align 8, !range !133, !noalias !88939, !noundef !41
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h559e5c71e76bf195E"(i8 noundef %i.aj), !noalias !88940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88933
  br label %bb.j

bb.j:                                             ; preds = %_ZN10serde_core2de7Visitor18visit_borrowed_str17h697303a9a77ef03bE.exit.thread.i.i, %"_ZN159_$LT$$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Helper$LT$__S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hddc3d5e425938741E.exit.thread.i.i", %bb.e
  %.sroa.14.0.i.i = phi ptr [ %i.af, %"_ZN159_$LT$$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Helper$LT$__S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hddc3d5e425938741E.exit.thread.i.i" ], [ %i.ak, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h697303a9a77ef03bE.exit.thread.i.i ], [ %i.y, %bb.e ]
  %i.al = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %.sroa.14.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !88934
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !88934, !noalias !88935
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !88934, !noalias !88935
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i)
  br label %"_ZN84_$LT$nickel_lang_package..lock..EntryName$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hcf5ccd2b6fa4d24fE.exit"
end_hunk_6
begin_hunk_7_@"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$4name17he141929e70993f40E":bb.a
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !align !46, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 dereferenceable_or_null(24) ptr @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$4note17h014df55bb5b8bf7fE"(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !73, !noundef !41
  %.not = icmp eq i64 %i.b, 2
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 dereferenceable_or_null(24) ptr @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$4note17h1788d800e773e472E"(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !73, !noundef !41
  %.not = icmp eq i64 %i.b, 2
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 dereferenceable_or_null(24) ptr @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$4note17h4fb2d69592c39610E"(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !73, !noundef !41
  %.not = icmp eq i64 %i.b, 2
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 dereferenceable_or_null(24) ptr @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$4note17he7785b24aea54e8dE"(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !73, !noundef !41
  %.not = icmp eq i64 %i.b, 2
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$7section17h003b35dca2ad7b38E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !align !46, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !align !42, !noundef !41
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$7section17h4c8e706cef10b268E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !align !46, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !align !42, !noundef !41
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$7section17had81afe71cd2de89E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !align !46, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !align !42, !noundef !41
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$7section17hd5862601ec7960b8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !align !46, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !align !42, !noundef !41
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$8validate17h3ac457264e702874E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call { ptr, ptr } @"_ZN120_$LT$gix..config..tree..sections..fetch..validate..NegotiationAlgorithm$u20$as$u20$gix..config..tree..keys..Validate$GT$8validate17hcd5a6c7dafd25d22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %spec.select = select i1 %.not, ptr undef, ptr %i.d
  %i.e = insertvalue { ptr, ptr } %i.b, ptr %spec.select, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$8validate17h548f8982457cf1acE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call { ptr, ptr } @"_ZN99_$LT$gix..config..tree..keys..validate..RemoteName$u20$as$u20$gix..config..tree..keys..Validate$GT$8validate17h93b0d0b6f75435a1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %spec.select = select i1 %.not, ptr undef, ptr %i.d
  %i.e = insertvalue { ptr, ptr } %i.b, ptr %spec.select, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$8validate17h60fb3252b50d7f38E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call { ptr, ptr } @"_ZN117_$LT$gix..config..tree..sections..fetch..validate..RecurseSubmodules$u20$as$u20$gix..config..tree..keys..Validate$GT$8validate17heb8c7cfcb84035bfE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %spec.select = select i1 %.not, ptr undef, ptr %i.d
  %i.e = insertvalue { ptr, ptr } %i.b, ptr %spec.select, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN88_$LT$gix..config..tree..keys..Any$LT$T$GT$$u20$as$u20$gix..config..tree..traits..Key$GT$8validate17h92626a045badfec7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call { ptr, ptr } @"_ZN96_$LT$gix..config..tree..keys..validate..Boolean$u20$as$u20$gix..config..tree..keys..Validate$GT$8validate17h50e8b17dad0103eaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %spec.select = select i1 %.not, ptr undef, ptr %i.d
  %i.e = insertvalue { ptr, ptr } %i.b, ptr %spec.select, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h406047fbc0dcd2f3E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94847)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94848, !noalias !94849, !noundef !41 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !94850, !noalias !94851 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !94848, !noalias !94849, !nonnull !41, !align !46, !noundef !41 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94853)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !94854, !noundef !41
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !84

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !94855, !noalias !94851
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !94846
  store i64 5, ptr %i.d, align 8, !noalias !94846
  %i.o = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !94846
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h34efa50def52b2c6E.exit"

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !94856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94857)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.p) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94859)
  %exitcond.not.i17.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i17.not.i, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i"

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !94860, !noundef !41
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !94861, !noalias !94862
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !85

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94864)
  %exitcond.not.i17.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i17.1.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !94865, !noundef !41
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !94866, !noalias !94862
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !85

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94868)
  %exitcond.not.i17.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i17.2.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !94869, !noundef !41
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !94870, !noalias !94862
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h34efa50def52b2c6E.exit", label %bb.j, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94871
  store i64 5, ptr %i.c, align 8, !noalias !94871
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !94872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94871
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h34efa50def52b2c6E.exit"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94871
  store i64 9, ptr %i.b, align 8, !noalias !94871
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !94872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94871
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h34efa50def52b2c6E.exit"

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hbf2b15bde5425c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2748)
  %i.ac = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0f71d8b74bc3e356E(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h34efa50def52b2c6E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h34efa50def52b2c6E.exit": ; preds = %.loopexit.i, %bb.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i", %bb.j, %bb.k
  %.sroa.0.1.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i" ], [ null, %bb.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hafadff03b7335eb5E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 2, 13) %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !76, !noundef !41
  %i.e = icmp eq i8 %i.d, 1
  %.val = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94955)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 7 uses
  br i1 %i.e, label %.split.i, label %.split6.i

.split6.i:                                        ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94959)
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94960, !noalias !94961, !noundef !41 ; 3 uses
  %i.h = load i64, ptr %.val, align 8, !range !43, !alias.scope !94960, !noalias !94961, !noundef !41
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.b, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i", !prof !44

bb.b:                                             ; preds = %.split6.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.g, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !94961
  %.pre.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !94962, !noalias !94961
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i": ; preds = %bb.b, %.split6.i
  %i.k = phi i64 [ %i.g, %.split6.i ], [ %.pre.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !94962, !noalias !94961, !nonnull !41, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i16 2604, ptr %i.o, align 1, !noalias !94963
  %i.p = add nuw i64 %i.k, 2
  br label %bb.d

.split.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94967)
  %i.q = load i64, ptr %i.f, align 8, !alias.scope !94968, !noalias !94969, !noundef !41 ; 3 uses
  %i.r = load i64, ptr %.val, align 8, !range !43, !alias.scope !94968, !noalias !94969, !noundef !41
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i", !prof !44

bb.c:                                             ; preds = %.split.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !94969
  %.pre.i.i.i.i.i9.i = load i64, ptr %i.f, align 8, !alias.scope !94970, !noalias !94969
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i": ; preds = %bb.c, %.split.i
  %i.t = phi i64 [ %i.q, %.split.i ], [ %.pre.i.i.i.i.i9.i, %bb.c ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !94970, !noalias !94969, !nonnull !41, !noundef !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 10, ptr %i.x, align 1, !noalias !94971
  %i.y = add nuw i64 %i.t, 1
  br label %bb.d

bb.d:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i"
  %.sink.i = phi i64 [ %i.p, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i" ], [ %i.y, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i" ] ; 2 uses
  store i64 %.sink.i, ptr %i.f, align 8, !noalias !94955
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !94955, !noundef !41 ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !94955, !nonnull !41, !align !46, !noundef !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !94955, !noundef !41 ; 4 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h00cba45b8b5d7735E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i", %.lr.ph.i.i
  %i.af = phi i64 [ %.sink.i, %.lr.ph.i.i ], [ %i.ao, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i" ] ; 3 uses
  %.sroa.04.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ag, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i" ]
  %i.ag = add nuw i64 %.sroa.04.01.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94975)
  %i.ah = load i64, ptr %.val, align 8, !range !43, !alias.scope !94976, !noalias !94977, !noundef !41
  %i.ai = sub i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.f, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i", !prof !44

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.af, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1), !noalias !94977
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !94978, !noalias !94977
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i": ; preds = %bb.f, %bb.e
  %i.ak = phi i64 [ %i.af, %bb.e ], [ %.pre.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load ptr, ptr %i.ae, align 8, !alias.scope !94978, !noalias !94977, !nonnull !41, !noundef !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.ab, i64 %i.ad, i1 false), !noalias !94979
  %i.ao = add i64 %i.ak, %i.ad                    ; 2 uses
  store i64 %i.ao, ptr %i.f, align 8, !alias.scope !94978, !noalias !94977
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.aa
  br i1 %exitcond.not.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h00cba45b8b5d7735E.exit", label %bb.e

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h00cba45b8b5d7735E.exit": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i", %bb.d
  store i8 2, ptr %i.c, align 8
  %.val9 = load ptr, ptr %i.a, align 8, !nonnull !41, !align !42, !noundef !41 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94983)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val9, i64 16 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !94984, !noalias !94985, !noundef !41 ; 3 uses
  %i.ar = load i64, ptr %.val9, align 8, !range !43, !alias.scope !94984, !noalias !94985, !noundef !41
  %i.as = icmp eq i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.g, label %_ZN10serde_json3ser9Formatter12begin_string17h216f34073ad73167E.exit.i.i.i.i, !prof !44

bb.g:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h00cba45b8b5d7735E.exit"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9, i64 noundef %i.aq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !94985
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !94986, !noalias !94985
  br label %_ZN10serde_json3ser9Formatter12begin_string17h216f34073ad73167E.exit.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_string17h216f34073ad73167E.exit.i.i.i.i: ; preds = %bb.g, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h00cba45b8b5d7735E.exit"
  %i.at = phi i64 [ %i.aq, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h00cba45b8b5d7735E.exit" ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !94986, !noalias !94985, !nonnull !41, !noundef !41
end_hunk_7
begin_hunk_8_@"_ZN97_$LT$toml..de..deserializer..value..ValueDeserializer$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h7b315ba846a241f2E":bb.a
bb.gi:                                            ; preds = %bb.gf
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !99905
  unreachable

bb.gj:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i.i", %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !99832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nv, ptr %i.oy, align 8
  store i64 2, ptr %0, align 8
  br label %bb.an

bb.gk:                                            ; preds = %bb.gh, %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.be, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 88, i1 false), !alias.scope !99907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.be, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.an

.body:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i", %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i", %bb.gf, %bb.fx, %bb.ft, %bb.dm, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h9f1b165f78d7a752E.exit.i.i", %bb.cn, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ov, %bb.gf ], [ %i.nw, %bb.ft ], [ %i.ka, %bb.dm ], [ %.pn.i, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h9f1b165f78d7a752E.exit.i.i" ], [ %i.oa, %bb.fx ], [ %i.hx, %bb.cn ], [ %i.bq, %bb.b ], [ %.pn37.i, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i" ], [ %.pn37.i, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i" ] ; 14 uses
  %.sroa.026.1 = phi i1 [ false, %bb.gf ], [ false, %bb.ft ], [ true, %bb.dm ], [ true, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h9f1b165f78d7a752E.exit.i.i" ], [ false, %bb.fx ], [ true, %bb.cn ], [ %.sroa.026.0, %bb.b ], [ false, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i" ], [ false, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i" ]
  %.sroa.025.1 = phi i1 [ true, %bb.gf ], [ true, %bb.ft ], [ false, %bb.dm ], [ false, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h9f1b165f78d7a752E.exit.i.i" ], [ true, %bb.fx ], [ true, %bb.cn ], [ %.sroa.025.0, %bb.b ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i" ]
  %.sroa.024.3 = phi i1 [ true, %bb.gf ], [ true, %bb.ft ], [ true, %bb.dm ], [ true, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h9f1b165f78d7a752E.exit.i.i" ], [ true, %bb.fx ], [ %.sroa.024.2, %bb.cn ], [ true, %bb.b ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i" ]
  %.sroa.023.3 = phi i1 [ true, %bb.gf ], [ true, %bb.ft ], [ true, %bb.dm ], [ true, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h9f1b165f78d7a752E.exit.i.i" ], [ true, %bb.fx ], [ %.sroa.023.2, %bb.cn ], [ true, %bb.b ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h44535051f8510d0dE.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h5eba25b880c82b2eE.exit.i" ]
  switch i8 %i.bp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit" [
    i8 0, label %.body.thread
    i8 1, label %bb.gl
    i8 2, label %bb.gm
    i8 5, label %bb.gn
    i8 6, label %bb.go
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit": ; preds = %bb.ai, %bb.aj, %bb.gt, %bb.gr, %.body116, %.body108, %bb.ac, %bb.ab, %bb.br, %bb.aq, %.thread.i, %bb.gu, %bb.gs, %bb.gq, %bb.gp, %bb.gw, %bb.gv, %bb.go, %bb.gn, %bb.gm, %bb.gl, %.body.thread, %.body
  %.pn291 = phi { ptr, i32 } [ %.pn, %bb.gs ], [ %.pn, %bb.gq ], [ %eh.lpad-body109, %bb.aq ], [ %.pn, %bb.gw ], [ %.pn, %bb.gv ], [ %.pn, %bb.go ], [ %.pn, %bb.gn ], [ %.pn, %bb.gm ], [ %.pn, %bb.gl ], [ %.pn, %.body.thread ], [ %.pn, %.body ], [ %.pn, %bb.gu ], [ %.pn56.i, %.thread.i ], [ %.pn, %bb.gp ], [ %eh.lpad-body117, %bb.br ], [ %.pn, %bb.gr ], [ %eh.lpad-body117, %.body116 ], [ %.pn, %bb.gt ], [ %i.dy, %bb.ac ], [ %eh.lpad-body109, %.body108 ], [ %i.dy, %bb.ab ], [ %i.ek, %bb.aj ], [ %i.ek, %bb.ai ]
  resume { ptr, i32 } %.pn291

.body.thread:                                     ; preds = %.body
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre363 = load i64, ptr %.phi.trans.insert, align 8, !range !64 ; 3 uses
  %.not335 = icmp eq i64 %.pre363, -9223372036854775808
  br i1 %.not335, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit", label %bb.gp

bb.gl:                                            ; preds = %.body
  br i1 %.sroa.023.3, label %bb.gr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gm:                                            ; preds = %.body
  br i1 %.sroa.024.3, label %bb.gt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gn:                                            ; preds = %.body
  br i1 %.sroa.025.1, label %bb.gv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.go:                                            ; preds = %.body
  br i1 %.sroa.026.1, label %bb.gw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gp:                                            ; preds = %.body.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !99908)
  call void @llvm.experimental.noalias.scope.decl(metadata !99909)
  %i.oz = icmp eq i64 %.pre363, 0
  br i1 %i.oz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit", label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load ptr, ptr %i.pa, align 8, !alias.scope !99910, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.pre363, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !99910
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gr:                                            ; preds = %bb.gl
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val55 = load i64, ptr %i.pb, align 8, !range !64, !noundef !41 ; 2 uses
  %switch333 = icmp sgt i64 %.val55, 0
  br i1 %switch333, label %bb.gs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gs:                                            ; preds = %bb.gr
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val56 = load ptr, ptr %i.pc, align 8, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %.val55, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !99911
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gt:                                            ; preds = %bb.gm
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val61 = load i64, ptr %i.pd, align 8, !range !64, !noundef !41 ; 2 uses
  %switch334 = icmp sgt i64 %.val61, 0
  br i1 %switch334, label %bb.gu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gu:                                            ; preds = %bb.gt
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val62 = load ptr, ptr %i.pe, align 8, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %.val61, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !99912
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.gv:                                            ; preds = %bb.gn
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$toml..de..parser..dearray..DeArray$GT$17h21b1894fe48785f9E"(ptr noalias noundef align 8 dereferenceable(32) %i.pf) #75
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit" unwind label %bb.bp

bb.gw:                                            ; preds = %bb.go
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr187drop_in_place$LT$toml..map..Map$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17he72dfd8be1d3a949E"(ptr noalias noundef align 8 dereferenceable(32) %i.pg) #75
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit" unwind label %bb.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h96197cc19e194402E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.6130 = alloca [48 x i8], align 8         ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.9117 = alloca [16 x i8], align 8         ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [40 x i8], align 8                ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.35 = alloca [6 x i8], align 2            ; 13 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100057)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !100058, !noalias !100059, !noundef !41 ; 8 uses
  %.promoted.i = load i64, ptr %i.aa, align 8, !alias.scope !100057, !noalias !100060 ; 2 uses
  %i.ad = icmp ult i64 %.promoted.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit184

.lr.ph.i:                                         ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !100058, !noalias !100059, !nonnull !41, !align !46, !noundef !41 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ag = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aj, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100062)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !100063, !noundef !41 ; 3 uses
  switch i8 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aj = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !100064, !noalias !100060
  %exitcond.not.i = icmp eq i64 %i.aj, %i.ac
  br i1 %exitcond.not.i, label %.loopexit184, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35)
  switch i8 %i.ai, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit184:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 5, ptr %i.z, align 8
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h7e419c6cf134e000E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ah

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.am = add i8 %i.ai, -48
  %or.cond8 = icmp ult i8 %i.am, 10
  br i1 %or.cond8, label %bb.cw, label %bb.cv, !prof !83

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.an = add i64 %i.ag, 1                        ; 4 uses
  store i64 %i.an, ptr %i.aa, align 8, !alias.scope !100065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100066)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.an) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100068)
  %exitcond.not.i71.not = icmp ult i64 %i.an, %i.ac
  br i1 %exitcond.not.i71.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !100069, !noundef !41
  %i.aq = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.aq, ptr %i.aa, align 8, !alias.scope !100070, !noalias !100071
  %.not.i = icmp eq i8 %i.ap, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !85

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100073)
  %exitcond.not.i71.1 = icmp eq i64 %i.aq, %umax.i
  br i1 %exitcond.not.i71.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !100074, !noundef !41
  %i.at = add i64 %i.ag, 3                        ; 3 uses
  store i64 %i.at, ptr %i.aa, align 8, !alias.scope !100075, !noalias !100071
  %.not.i.1 = icmp eq i8 %i.as, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !85

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100077)
  %exitcond.not.i71.2 = icmp eq i64 %i.at, %umax.i
  br i1 %exitcond.not.i71.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !100078, !noundef !41
  %i.aw = add i64 %i.ag, 4
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !100079, !noalias !100071
  %.not.i.2 = icmp eq i8 %i.av, 108
  br i1 %.not.i.2, label %bb.ag, label %bb.k, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !100080
  store i64 5, ptr %i.o, align 8, !noalias !100080
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !100081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !100080
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !100080
  store i64 9, ptr %i.n, align 8, !noalias !100080
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !100081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !100080
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.az = add i64 %i.ag, 1                        ; 4 uses
  store i64 %i.az, ptr %i.aa, align 8, !alias.scope !100082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100083)
  %umax.i73 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.az) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100085)
  %exitcond.not.i75.not = icmp ult i64 %i.az, %i.ac
  br i1 %exitcond.not.i75.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78"

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !100086, !noundef !41
  %i.bc = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.bc, ptr %i.aa, align 8, !alias.scope !100087, !noalias !100088
  %.not.i76 = icmp eq i8 %i.bb, 114
  br i1 %.not.i76, label %bb.n, label %bb.r, !prof !85

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100090)
  %exitcond.not.i75.1 = icmp eq i64 %i.bc, %umax.i73
  br i1 %exitcond.not.i75.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !100091, !noundef !41
  %i.bf = add i64 %i.ag, 3                        ; 3 uses
  store i64 %i.bf, ptr %i.aa, align 8, !alias.scope !100092, !noalias !100088
  %.not.i76.1 = icmp eq i8 %i.be, 117
  br i1 %.not.i76.1, label %bb.p, label %bb.r, !prof !85

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100094)
  %exitcond.not.i75.2 = icmp eq i64 %i.bf, %umax.i73
  br i1 %exitcond.not.i75.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !100095, !noundef !41
  %i.bi = add i64 %i.ag, 4
  store i64 %i.bi, ptr %i.aa, align 8, !alias.scope !100096, !noalias !100088
  %.not.i76.2 = icmp eq i8 %i.bh, 101
  br i1 %.not.i76.2, label %bb.ak, label %bb.r, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !100097
  store i64 5, ptr %i.m, align 8, !noalias !100097
  %i.bj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !100098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !100097
  br label %bb.aj

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !100097
  store i64 9, ptr %i.l, align 8, !noalias !100097
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !100098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !100097
  br label %bb.aj

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.bl = add i64 %i.ag, 1                        ; 4 uses
  store i64 %i.bl, ptr %i.aa, align 8, !alias.scope !100099
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100100)
  %umax.i81 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.bl) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100102)
  %exitcond.not.i83.not = icmp ult i64 %i.bl, %i.ac
  br i1 %exitcond.not.i83.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86"

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !100103, !noundef !41
  %i.bo = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.bo, ptr %i.aa, align 8, !alias.scope !100104, !noalias !100105
  %.not.i84 = icmp eq i8 %i.bn, 97
  br i1 %.not.i84, label %bb.u, label %bb.aa, !prof !85

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100107)
  %exitcond.not.i83.1 = icmp eq i64 %i.bo, %umax.i81
  br i1 %exitcond.not.i83.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !100108, !noundef !41
  %i.br = add i64 %i.ag, 3                        ; 3 uses
  store i64 %i.br, ptr %i.aa, align 8, !alias.scope !100109, !noalias !100105
  %.not.i84.1 = icmp eq i8 %i.bq, 108
  br i1 %.not.i84.1, label %bb.w, label %bb.aa, !prof !85

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100111)
  %exitcond.not.i83.2 = icmp eq i64 %i.br, %umax.i81
  br i1 %exitcond.not.i83.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !100112, !noundef !41
  %i.bu = add i64 %i.ag, 4                        ; 3 uses
  store i64 %i.bu, ptr %i.aa, align 8, !alias.scope !100113, !noalias !100105
  %.not.i84.2 = icmp eq i8 %i.bt, 115
  br i1 %.not.i84.2, label %bb.y, label %bb.aa, !prof !85

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100115)
  %exitcond.not.i83.3 = icmp eq i64 %i.bu, %umax.i81
  br i1 %exitcond.not.i83.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !100116, !noundef !41
  %i.bx = add i64 %i.ag, 5
  store i64 %i.bx, ptr %i.aa, align 8, !alias.scope !100117, !noalias !100105
  %.not.i84.3 = icmp eq i8 %i.bw, 101
  br i1 %.not.i84.3, label %bb.am, label %bb.aa, !prof !85

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !100118
  store i64 5, ptr %i.k, align 8, !noalias !100118
  %i.by = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !100119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !100118
  br label %bb.al

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !100118
  store i64 9, ptr %i.j, align 8, !noalias !100118
  %i.bz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc3f61405868223a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !100119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !100118
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.ca = add i64 %i.ag, 1
  store i64 %i.ca, ptr %i.aa, align 8, !alias.scope !100120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h2e82135a14cc6c65E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.cb = load i64, ptr %i.y, align 8, !range !82, !noundef !41 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.cc, label %bb.an, label %switch.lookup

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.ce = add i64 %i.ag, 1
  store i64 %i.ce, ptr %i.aa, align 8, !alias.scope !100121
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.cg = load i64, ptr %i.w, align 8, !range !73, !noundef !41 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 4 uses
  br i1 %i.ch, label %bb.ao, label %bb.ap

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cl = load i8, ptr %i.ck, align 8, !noundef !41
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.ck, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.aw, label %bb.ax, !prof !44

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h22ce2a6464e9eae4E.exit"
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cp = load i8, ptr %i.co, align 8, !noundef !41
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  store i8 %i.cq, ptr %i.co, align 8
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.bk, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit", !prof !44

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.ax, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i" ], [ %i.ay, %bb.k ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cs, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.j
  store i8 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.cu, %.loopexit184, %bb.ai, %switch.lookup507, %bb.av, %bb.au, %switch.lookup, %bb.am, %bb.ak, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.cx, %bb.bk, %bb.aw, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78"
  %.sroa.0.1.i77.ph = phi ptr [ %i.bj, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78" ], [ %i.bk, %bb.r ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i77.ph, ptr %i.ct, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.q
  store i8 0, ptr %0, align 8
  %.sroa.33.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.33.0..sroa_idx292, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.al:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86"
  %.sroa.0.1.i85.ph = phi ptr [ %i.by, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86" ], [ %i.bz, %bb.aa ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i85.ph, ptr %i.cu, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  store i8 0, ptr %0, align 8
  %.sroa.33.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.33.0..sroa_idx294, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %i.cv = load ptr, ptr %i.cd, align 8, !nonnull !41, !align !42, !noundef !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  store i8 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ai

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.cd, align 8
  %switch.cast = trunc nuw i64 %i.cb to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i8 %switch.masked, ptr %0, align 8
  %.sroa.35319.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.35319.0..sroa_idx324, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.ao:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.cx, align 8
  store i8 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.ap:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %i.cy = trunc nuw i64 %i.cg to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  br i1 %i.cy, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.cz = icmp slt i64 %.sroa.4.0.copyload, 0
  br i1 %i.cz, label %bb.as, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.aq
  %i.da = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.da, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !100122
end_hunk_8
