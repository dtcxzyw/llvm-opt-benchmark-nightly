Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_utils-90b9802b57eaafeb.nickel_lang_utils.bc94d49b1cb31a83-cgu.0?download=true
inline.NumInlined: 8202
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN11malachite_q10conversion19from_float_simplest39_$LT$impl$u20$malachite_q..Rational$GT$23try_from_float_simplest17hc2546713b7ceacd1E":bb.a
  %.sroa.64.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx2.i16 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx2.i16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.64.0..sroa_idx.i15, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4264
  store i64 %i.ar, ptr %i.o, align 8, !alias.scope !4264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @"_ZN11malachite_q10arithmetic3add106_$LT$impl$u20$core..ops..arith..Add$LT$malachite_q..Rational$GT$$u20$for$u20$$RF$malachite_q..Rational$GT$3add17hdc0edcc8c8f35f5fE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.o)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @"_ZN11malachite_q10arithmetic3shr82_$LT$impl$u20$core..ops..bit..Shr$LT$i32$GT$$u20$for$u20$malachite_q..Rational$GT$3shr17hd28dbd51abb3a253E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.m)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  invoke void @"_ZN11malachite_q10arithmetic3add73_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$malachite_q..Rational$GT$3add17hcacdc3027d6880ebE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @"_ZN11malachite_q10arithmetic3shr82_$LT$impl$u20$core..ops..bit..Shr$LT$i32$GT$$u20$for$u20$malachite_q..Rational$GT$3shr17hd28dbd51abb3a253E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @"_ZN11malachite_q10arithmetic29simplest_rational_in_interval111_$LT$impl$u20$malachite_q..arithmetic..traits..SimplestRationalInInterval$u20$for$u20$malachite_q..Rational$GT$34simplest_rational_in_open_interval17hb322ef6d67c6cc30E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef align 8 dereferenceable(56) %i.l) #43
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !4265)
  %.val4.i = load i64, ptr %i.l, align 8, !range !33, !alias.scope !4265, !noundef !15 ; 2 uses
  %switch.i = icmp sgt i64 %.val4.i, 0
  br i1 %switch.i, label %bb.af, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i"

bb.af:                                            ; preds = %bb.ae
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val5.i = load ptr, ptr %i.av, align 8, !alias.scope !4265, !nonnull !15, !noundef !15
  %i.aw = shl nuw i64 %.val4.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4265
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i": ; preds = %bb.af, %bb.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val.i = load i64, ptr %i.ax, align 8, !range !33, !alias.scope !4265, !noundef !15 ; 2 uses
  %switch8.i = icmp sgt i64 %.val.i, 0
  br i1 %switch8.i, label %bb.ag, label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit"

bb.ag:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val1.i = load ptr, ptr %i.ay, align 8, !alias.scope !4265, !nonnull !15, !noundef !15
  %i.az = shl nuw i64 %.val.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4265
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit"

"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit": ; preds = %bb.ag, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !4266)
  %.val4.i20 = load i64, ptr %i.n, align 8, !range !33, !alias.scope !4266, !noundef !15 ; 2 uses
  %switch.i21 = icmp sgt i64 %.val4.i20, 0
  br i1 %switch.i21, label %bb.ah, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i22"

bb.ah:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit"
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val5.i26 = load ptr, ptr %i.ba, align 8, !alias.scope !4266, !nonnull !15, !noundef !15
  %i.bb = shl nuw i64 %.val4.i20, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i26, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4266
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i22"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i22": ; preds = %bb.ah, %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val.i23 = load i64, ptr %i.bc, align 8, !range !33, !alias.scope !4266, !noundef !15 ; 2 uses
  %switch8.i24 = icmp sgt i64 %.val.i23, 0
  br i1 %switch8.i24, label %bb.ai, label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit27"

bb.ai:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i22"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val1.i25 = load ptr, ptr %i.bd, align 8, !alias.scope !4266, !nonnull !15, !noundef !15
  %i.be = shl nuw i64 %.val.i23, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i25, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4266
  br label %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit27"

"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit27": ; preds = %bb.ai, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit.i22"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E.exit27", %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.am

bb.ak:                                            ; preds = %bb.y, %bb.w, %bb.v, %bb.u, %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef align 8 dereferenceable(56) %i.p) #43
  br label %bb.al

bb.al:                                            ; preds = %bb.aa, %bb.ad, %bb.m, %bb.ak
  %.sink = phi ptr [ %i.s, %bb.m ], [ %i.s, %bb.ak ], [ %i.n, %bb.ad ], [ %i.n, %bb.aa ]
  %.pn5.pn30 = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.bf, %bb.ak ], [ %i.au, %bb.ad ], [ %i.at, %bb.aa ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef align 8 dereferenceable(56) %.sink) #43
  resume { ptr, i32 } %.pn5.pn30

bb.am:                                            ; preds = %bb.aj, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h54502e9527511d78E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !33, !noundef !15
  %.not = icmp eq i64 %i.b, -9223372036854775808
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.not1 = icmp eq i64 %i.d, 1
  %or.cond = select i1 %.not, i1 %.not1, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i8, ptr %i.e, align 8, !range !16, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = tail call noundef i64 @"_ZN12malachite_nz7natural5logic16significant_bits116_$LT$impl$u20$malachite_base..num..logic..traits..SignificantBits$u20$for$u20$$RF$malachite_nz..natural..Natural$GT$16significant_bits17h0fb717fbc1d67f6fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %i.i = icmp ult i64 %i.h, 64                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 64
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.c
  %i.k = tail call noundef i64 @"_ZN12malachite_nz7natural10conversion26primitive_int_from_natural129_$LT$impl$u20$malachite_base..num..conversion..traits..WrappingFrom$LT$$RF$malachite_nz..natural..Natural$GT$$u20$for$u20$u64$GT$13wrapping_from17ha66b7b9b9c437b94E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  %i.l = sub i64 0, %i.k
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @"_ZN12malachite_nz7natural10arithmetic23divisible_by_power_of_2125_$LT$impl$u20$malachite_base..num..arithmetic..traits..DivisibleByPowerOf2$u20$for$u20$$RF$malachite_nz..natural..Natural$GT$23divisible_by_power_of_217hbf4bb10b06860204E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 63)
  br i1 %i.m, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.a, %bb.i, %bb.f
  %.sroa.6.0 = phi i64 [ undef, %bb.a ], [ %i.p, %bb.i ], [ undef, %bb.e ], [ %i.l, %bb.f ], [ undef, %bb.g ], [ undef, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.i ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.d ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.o

bb.i:                                             ; preds = %bb.d
  %i.p = tail call noundef i64 @"_ZN12malachite_nz7natural10conversion26primitive_int_from_natural129_$LT$impl$u20$malachite_base..num..conversion..traits..WrappingFrom$LT$$RF$malachite_nz..natural..Natural$GT$$u20$for$u20$u64$GT$13wrapping_from17ha66b7b9b9c437b94E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_ZN11malachite_q10conversion27primitive_int_from_rational17try_from_unsigned17h3d12ddfac00a8945E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !33, !noundef !15
  %.not7 = icmp eq i64 %i.e, -9223372036854775808
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 1
  %or.cond = select i1 %.not7, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.i, align 8            ; 2 uses
  %.not.i = icmp ne i64 %.val, -9223372036854775808
  %1 = icmp ugt i64 %.val8, 4294967295
  %2 = trunc nuw i64 %.val8 to i32
  %.not1.i = select i1 %.not.i, i1 true, i1 %1    ; 2 uses
  %.sroa.4.0 = select i1 %.not1.i, i32 undef, i32 %2
  %.sroa.0.0 = zext i1 %.not1.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.1 = phi i32 [ %.sroa.4.0, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.4.1, 1
  ret { i32, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h5b3272d7c45edaa5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h0e6cb1e6a01c7d77E.exit":
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload6 = load ptr, ptr %1, align 8, !alias.scope !4290, !nonnull !15, !noundef !15 ; 2 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload8 = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !4290, !nonnull !15, !noundef !15 ; 2 uses
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx9, align 8, !alias.scope !4290, !nonnull !15, !noundef !15
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.sroa.4.0.copyload = load ptr, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx9.sroa_idx, align 8, !alias.scope !4290, !nonnull !15, !noundef !15 ; 2 uses
  %i.f = icmp eq ptr %.sroa.0.0.copyload6, %.sroa.6.0.copyload8
  br i1 %i.f, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h34408f460f587bbbE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h0e6cb1e6a01c7d77E.exit"
  %i.g = getelementptr i8, ptr %.sroa.8.sroa.4.0.copyload, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.a

bb.a:                                             ; preds = %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i", %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.copyload6, %.lr.ph.i.i.i ], [ %i.j, %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i" ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 72 ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.0.010.i.i.i, i64 64
  %.val.i.i.i = load i32, ptr %i.k, align 4, !noalias !4291
  %i.l = getelementptr i8, ptr %.sroa.0.010.i.i.i, i64 24
  %.val6.i.i.i = load ptr, ptr %i.l, align 8, !noalias !4291, !noundef !15 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val6.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4292
  %i.m = ptrtoint ptr %.val6.i.i.i to i64
  %i.n = and i64 %i.m, 3
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.n, i64 2)
  switch i64 %..i.i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !20

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41, !noalias !4293
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %.val6.i.i.i, align 8, !noalias !4293, !noundef !15 ; 3 uses
  %i.p = and i64 %i.o, 72057594037927935          ; 3 uses
  %i.q = icmp ne i64 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  %i.s = and i64 %i.o, 1080863910568919040
  %i.t = icmp ult i64 %i.o, 864691128455135232
  call void @llvm.assume(i1 %i.t)
  %i.u = or i64 %i.r, %i.s
  store i64 %i.u, ptr %.val6.i.i.i, align 8, !noalias !4293
  %i.v = icmp eq i64 %i.p, 72057594037927935
  br i1 %i.v, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i", !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4292
  store ptr @825, ptr %i.d, align 8, !noalias !4292
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !4292
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !4292
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !4292
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !4292
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41, !noalias !4293
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i": ; preds = %bb.d, %bb.b
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.8.sroa.4.0.copyload, align 8, !noalias !4293, !nonnull !15, !noundef !15 ; 3 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !4293 ; 4 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i, align 8, !noalias !4293, !noundef !15 ; 2 uses
  %i.aa = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add i64 %.val.i.i.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.ab, ptr %.val1.i.i.i.i.i.i, align 8, !noalias !4293
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i, !prof !21

bb.f:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i = load i64, ptr %.val2.i.i.i.i.i.i, align 8, !noalias !4293, !noundef !15 ; 2 uses
  %i.ad = icmp ne i64 %.val.i2.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i2.i.i.i.i.i.i.i, 1       ; 2 uses
  store i64 %i.ae, ptr %.val2.i.i.i.i.i.i, align 8, !noalias !4293
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i
  store ptr %.val6.i.i.i, ptr %i.e, align 8, !noalias !4292
  store ptr %.val1.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !4292
  store ptr %.val2.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !4292
  %i.ag = call noundef nonnull ptr @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3add17h1f5d73ab6a0e0d6aE"(ptr noalias noundef nonnull align 1 %.sroa.8.sroa.0.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, ptr undef), !noalias !4293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4292
  %i.ah = call fastcc noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h4e96e67ff35cfa2fE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.val.i.i.i, ptr noundef nonnull %i.ag), !noalias !4294 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = and i64 %i.aj, 3
  %..i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !20

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41, !noalias !4295
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4296
  store ptr %i.ah, ptr %i.c, align 8, !noalias !4296
  %i.al = load i64, ptr %i.ah, align 8, !noalias !4297, !noundef !15 ; 3 uses
  %i.am = and i64 %i.al, 72057594037927935
  %i.an = add nsw i64 %i.am, -1                   ; 3 uses
  %i.ao = and i64 %i.al, 1080863910568919040
  %i.ap = icmp ult i64 %i.al, 864691128455135232
  call void @llvm.assume(i1 %i.ap)
  %i.aq = or i64 %i.an, %i.ao
  store i64 %i.aq, ptr %i.ah, align 8, !noalias !4297
  %i.ar = icmp ugt i64 %i.an, 72057594037927935
  br i1 %i.ar, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i64 %i.an, 0
  br i1 %i.as, label %bb.o, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4298
  store ptr @825, ptr %i.b, align 8, !noalias !4298
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.at, align 8, !noalias !4298
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.au, align 8, !noalias !4298
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8, !noalias !4298
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.aw, align 8, !noalias !4298
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41, !noalias !4297
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !4295
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4296
  br label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i"

"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i.i.i.i.i.i", %bb.j, %bb.i, %bb.a
  %i.ax = icmp eq ptr %i.j, %.sroa.6.0.copyload8
  br i1 %i.ax, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h34408f460f587bbbE.exit, label %bb.a

_ZN4core4iter6traits8iterator8Iterator8for_each17h34408f460f587bbbE.exit: ; preds = %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf3416d401215771eE.exit.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h0e6cb1e6a01c7d77E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17he27a46652b9b72d1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [272 x i8], align 8               ; 8 uses
  %i.e = alloca [272 x i8], align 8               ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
end_hunk_0
begin_hunk_1_@"_ZN16nickel_lang_core4eval5merge69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$5merge17hfdcc9d7b9761f3e8E":bb.a
  %i.dt = alloca [8 x i8], align 8                ; 4 uses
  %i.du = alloca [152 x i8], align 8              ; 15 uses
  %i.dv = alloca [152 x i8], align 8              ; 4 uses
  %i.dw = alloca [152 x i8], align 8              ; 6 uses
  %i.dx = alloca [24 x i8], align 8               ; 10 uses
  %i.dy = alloca [152 x i8], align 8              ; 4 uses
  %i.dz = alloca [20 x i8], align 4               ; 4 uses
  %i.ea = alloca [56 x i8], align 8               ; 5 uses
  %i.eb = alloca [20 x i8], align 4               ; 4 uses
  %.sroa.5 = alloca [23 x i8], align 1            ; 5 uses
  %i.ec = alloca [8 x i8], align 8                ; 4 uses
  %i.ed = alloca [56 x i8], align 8               ; 6 uses
  %i.ee = alloca [8 x i8], align 8                ; 4 uses
  %i.ef = alloca [8 x i8], align 8                ; 4 uses
  %i.eg = alloca [8 x i8], align 8                ; 4 uses
  %i.eh = alloca [152 x i8], align 8              ; 4 uses
  %i.ei = alloca [20 x i8], align 4               ; 4 uses
  %i.ej = alloca [8 x i8], align 8                ; 4 uses
  %i.ek = alloca [20 x i8], align 4               ; 6 uses
  %i.el = alloca [8 x i8], align 8                ; 5 uses
  %i.em = alloca [392 x i8], align 8              ; 10 uses
  %i.en = alloca [20 x i8], align 4               ; 4 uses
  %i.eo = alloca [8 x i8], align 8                ; 4 uses
  %i.ep = alloca [152 x i8], align 8              ; 4 uses
  %i.eq = alloca [40 x i8], align 8               ; 7 uses
  %i.er = alloca [56 x i8], align 8               ; 6 uses
  %i.es = alloca [8 x i8], align 8                ; 4 uses
  %i.et = alloca [20 x i8], align 4               ; 2 uses
  %i.eu = alloca [152 x i8], align 8              ; 4 uses
  %i.ev = alloca [152 x i8], align 8              ; 5 uses
  %i.ew = alloca [8 x i8], align 8                ; 4 uses
  %i.ex = alloca [152 x i8], align 8              ; 5 uses
  %i.ey = alloca [8 x i8], align 8                ; 4 uses
  %i.ez = alloca [392 x i8], align 8              ; 9 uses
  %i.fa = alloca [152 x i8], align 8              ; 5 uses
  %i.fb = alloca [152 x i8], align 8              ; 4 uses
  %i.fc = alloca [8 x i8], align 8                ; 4 uses
  %i.fd = alloca [8 x i8], align 8                ; 4 uses
  %i.fe = alloca [392 x i8], align 8              ; 9 uses
  %i.ff = alloca [152 x i8], align 8              ; 4 uses
  %i.fg = alloca [56 x i8], align 8               ; 3 uses
  %i.fh = alloca [8 x i8], align 8                ; 4 uses
  %i.fi = alloca [56 x i8], align 8               ; 3 uses
  %i.fj = alloca [8 x i8], align 8                ; 4 uses
  %i.fk = alloca [392 x i8], align 8              ; 9 uses
  %i.fl = alloca [56 x i8], align 8               ; 3 uses
  %i.fm = alloca [16 x i8], align 8               ; 15 uses
  %i.fn = alloca [16 x i8], align 8               ; 8 uses
  %i.fo = alloca [16 x i8], align 8               ; 8 uses
  %i.fp = alloca [8 x i8], align 8                ; 5 uses
  %i.fq = alloca [16 x i8], align 8               ; 8 uses
  %i.fr = alloca [8 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.fr, align 8
  store ptr %2, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 7 uses
  store ptr %3, ptr %i.fs, align 8
  store ptr %4, ptr %i.fp, align 8
  store ptr %5, ptr %i.fo, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 7 uses
  store ptr %6, ptr %i.ft, align 8
  %i.fu = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fr)
          to label %bb.c unwind label %bb.b       ; 6 uses

.body181:                                         ; preds = %bb.po, %bb.pq, %bb.b, %.body387, %.body357, %.body333, %bb.lh, %bb.ku, %bb.de, %bb.ay, %.body247
  %.sroa.059.0 = phi i8 [ 1, %.body333 ], [ 1, %.body387 ], [ 1, %.body247 ], [ 0, %bb.de ], [ 0, %bb.ay ], [ 1, %.body357 ], [ 1, %bb.lh ], [ 1, %bb.ku ], [ %.sroa.059.2.ph, %bb.pq ], [ %.sroa.059.1, %bb.b ], [ %.sroa.059.2.ph, %bb.po ] ; 2 uses
  %.sroa.057.0 = phi i8 [ 1, %.body333 ], [ 1, %.body387 ], [ 1, %.body247 ], [ 0, %bb.de ], [ 0, %bb.ay ], [ 1, %.body357 ], [ 1, %bb.lh ], [ 1, %bb.ku ], [ %.sroa.053.2.ph, %bb.pq ], [ %.sroa.057.1, %bb.b ], [ %.sroa.053.2.ph, %bb.po ] ; 2 uses
  %.sroa.055.0 = phi i8 [ 1, %.body333 ], [ 1, %.body387 ], [ 1, %.body247 ], [ 0, %bb.de ], [ 0, %bb.ay ], [ 1, %.body357 ], [ 1, %bb.lh ], [ 1, %bb.ku ], [ %.sroa.055.2.ph, %bb.pq ], [ %.sroa.055.1, %bb.b ], [ %.sroa.055.2.ph, %bb.po ] ; 2 uses
  %.sroa.053.0 = phi i8 [ 1, %.body333 ], [ 1, %.body387 ], [ 1, %.body247 ], [ 0, %bb.de ], [ 0, %bb.ay ], [ 1, %.body357 ], [ 1, %bb.lh ], [ 1, %bb.ku ], [ %.sroa.053.2.ph, %bb.pq ], [ %.sroa.053.1, %bb.b ], [ %.sroa.053.2.ph, %bb.po ] ; 2 uses
  %.sroa.050.0 = phi i8 [ %.sroa.050.12, %.body333 ], [ %.sroa.050.14, %.body387 ], [ %.sroa.050.3, %.body247 ], [ %.sroa.050.4132, %bb.de ], [ %.sroa.050.5141, %bb.ay ], [ %.sroa.050.13, %.body357 ], [ %.sroa.050.11265, %bb.lh ], [ %.sroa.050.11, %bb.ku ], [ %.sroa.050.2.ph, %bb.pq ], [ %.sroa.050.1, %bb.b ], [ %.sroa.050.2.ph, %bb.po ]
  %.pn165 = phi { ptr, i32 } [ %.pn122, %.body333 ], [ %.pn, %.body387 ], [ %.pn163, %.body247 ], [ %.pn159.pn.pn133, %bb.de ], [ %.pn159.pn142, %bb.ay ], [ %.pn120, %.body357 ], [ %.pn152266, %bb.lh ], [ %.pn152, %bb.ku ], [ %lpad.thr_comm.split-lp.i394, %bb.pq ], [ %i.fw, %bb.b ], [ %i.alz, %bb.po ] ; 2 uses
  %i.fv = trunc nuw i8 %.sroa.050.0 to i1
  br i1 %i.fv, label %.thread97, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit427"

bb.b:                                             ; preds = %.noexc398.invoke, %.noexc397, %._crit_edge, %bb.oj, %bb.oh, %bb.od, %bb.oa, %bb.ns, %bb.nq, %bb.mm, %bb.ml, %bb.mj, %bb.lj, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hbe2423e520b5e2eeE.exit.thread", %bb.kw, %bb.dr, %bb.dh, %bb.aw, %bb.z, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread", %bb.p, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.059.1 = phi i8 [ %.sroa.059.2.ph, %.noexc398.invoke ], [ 1, %bb.a ], [ 1, %bb.p ], [ 1, %bb.oh ], [ 1, %bb.oa ], [ 1, %bb.z ], [ 1, %bb.oj ], [ 1, %bb.ns ], [ 1, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread" ], [ 1, %bb.c ], [ 0, %bb.aw ], [ 1, %bb.nq ], [ 1, %bb.kw ], [ 1, %bb.dr ], [ 1, %bb.dh ], [ 1, %bb.ml ], [ 1, %bb.lj ], [ 1, %bb.e ], [ 1, %bb.mj ], [ 1, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hbe2423e520b5e2eeE.exit.thread" ], [ 1, %bb.od ], [ 1, %bb.d ], [ 1, %bb.mm ], [ %.sroa.059.2.ph, %.noexc397 ], [ %.sroa.059.2.ph, %._crit_edge ]
  %.sroa.057.1 = phi i8 [ %.sroa.053.2.ph, %.noexc398.invoke ], [ 1, %bb.a ], [ 1, %bb.p ], [ 1, %bb.oh ], [ 0, %bb.oa ], [ 1, %bb.z ], [ 1, %bb.oj ], [ 1, %bb.ns ], [ 1, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread" ], [ 1, %bb.c ], [ 0, %bb.aw ], [ 1, %bb.nq ], [ 1, %bb.kw ], [ 1, %bb.dr ], [ 1, %bb.dh ], [ 1, %bb.ml ], [ 1, %bb.lj ], [ 1, %bb.e ], [ 1, %bb.mj ], [ 1, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hbe2423e520b5e2eeE.exit.thread" ], [ 0, %bb.od ], [ 1, %bb.d ], [ 1, %bb.mm ], [ %.sroa.053.2.ph, %.noexc397 ], [ %.sroa.053.2.ph, %._crit_edge ]
  %.sroa.055.1 = phi i8 [ %.sroa.055.2.ph, %.noexc398.invoke ], [ 1, %bb.a ], [ 1, %bb.p ], [ 1, %bb.oh ], [ 1, %bb.oa ], [ 1, %bb.z ], [ 1, %bb.oj ], [ 1, %bb.ns ], [ 1, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread" ], [ 1, %bb.c ], [ 1, %bb.aw ], [ 1, %bb.nq ], [ 1, %bb.kw ], [ 1, %bb.dr ], [ 1, %bb.dh ], [ 1, %bb.ml ], [ 1, %bb.lj ], [ 1, %bb.e ], [ 1, %bb.mj ], [ 1, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hbe2423e520b5e2eeE.exit.thread" ], [ 1, %bb.od ], [ 1, %bb.d ], [ 1, %bb.mm ], [ %.sroa.055.2.ph, %.noexc397 ], [ %.sroa.055.2.ph, %._crit_edge ]
  %.sroa.053.1 = phi i8 [ %.sroa.053.2.ph, %.noexc398.invoke ], [ 1, %bb.a ], [ 1, %bb.p ], [ 1, %bb.oh ], [ 0, %bb.oa ], [ 1, %bb.z ], [ 1, %bb.oj ], [ 1, %bb.ns ], [ 1, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread" ], [ 1, %bb.c ], [ 1, %bb.aw ], [ 1, %bb.nq ], [ 1, %bb.kw ], [ 1, %bb.dr ], [ 1, %bb.dh ], [ 1, %bb.ml ], [ 1, %bb.lj ], [ 1, %bb.e ], [ 1, %bb.mj ], [ 1, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hbe2423e520b5e2eeE.exit.thread" ], [ 0, %bb.od ], [ 1, %bb.d ], [ 1, %bb.mm ], [ %.sroa.053.2.ph, %.noexc397 ], [ %.sroa.053.2.ph, %._crit_edge ]
  %.sroa.050.1 = phi i8 [ %.sroa.050.2.ph, %.noexc398.invoke ], [ 1, %bb.a ], [ 1, %bb.p ], [ 1, %bb.oh ], [ 0, %bb.oa ], [ 1, %bb.z ], [ 1, %bb.oj ], [ 0, %bb.ns ], [ 1, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread" ], [ 1, %bb.c ], [ 1, %bb.aw ], [ 1, %bb.nq ], [ 1, %bb.kw ], [ 1, %bb.dr ], [ 1, %bb.dh ], [ 1, %bb.ml ], [ 1, %bb.lj ], [ 1, %bb.e ], [ 1, %bb.mj ], [ 1, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hbe2423e520b5e2eeE.exit.thread" ], [ 0, %bb.od ], [ 1, %bb.d ], [ 1, %bb.mm ], [ %.sroa.050.2.ph, %.noexc397 ], [ %.sroa.050.2.ph, %._crit_edge ]
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body181

bb.c:                                             ; preds = %bb.a
  %i.fx = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fp)
          to label %bb.d unwind label %bb.b       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.fy = or i32 %7, -2147483648                  ; 9 uses
  %i.fz = load i64, ptr %8, align 8, !range !33, !noundef !15
  %.not = icmp eq i64 %i.fz, -9223372036854775808
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fr)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fp)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.ga = load i8, ptr %i.fn, align 8, !range !31, !noundef !15
  switch i8 %i.ga, label %bb.g [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
  ]

bb.g:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store ptr %1, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %4, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bu, ptr noundef nonnull align 8 dereferenceable(152) %8, i64 152, i1 false)
  %i.gb = invoke { i32, i1 } @"_ZN16nickel_lang_core4eval5merge133_$LT$impl$u20$core..convert..From$LT$nickel_lang_core..eval..merge..MergeMode$GT$$u20$for$u20$nickel_lang_core..label..MergeLabel$GT$4from17h0be7cb2c80d111c1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.bu)
          to label %bb.pg unwind label %bb.pf     ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.gc = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.p, label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ge = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gf = icmp eq i8 %i.ge, 1
  br i1 %i.gf, label %bb.q, label %bb.g

bb.j:                                             ; preds = %bb.f
  %i.gg = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gh = icmp eq i8 %i.gg, 2
  br i1 %i.gh, label %bb.s, label %bb.g

bb.k:                                             ; preds = %bb.f
  %i.gi = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gj = icmp eq i8 %i.gi, 3
  br i1 %i.gj, label %bb.aw, label %bb.g

bb.l:                                             ; preds = %bb.f
  %i.gk = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gl = icmp eq i8 %i.gk, 4
  br i1 %i.gl, label %bb.df, label %bb.g

bb.m:                                             ; preds = %bb.f
  %i.gm = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gn = icmp eq i8 %i.gm, 5
  br i1 %i.gn, label %bb.li, label %bb.g

bb.n:                                             ; preds = %bb.f
  %i.go = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gp = icmp eq i8 %i.go, 8
  br i1 %i.gp, label %bb.mj, label %bb.g

bb.o:                                             ; preds = %bb.f
  %i.gq = load i8, ptr %i.fm, align 8, !range !31, !noundef !15
  %i.gr = icmp eq i8 %i.gq, 9
  br i1 %i.gr, label %bb.nm, label %bb.g

bb.p:                                             ; preds = %bb.h
  %i.gs = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull inttoptr (i64 -4294967295 to ptr), i32 noundef %i.fy)
          to label %bb.pl unwind label %bb.b

bb.q:                                             ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !range !16, !noundef !15 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !range !16, !noundef !15
  %i.gx = icmp eq i8 %i.gu, %i.gw
  br i1 %i.gx, label %bb.r, label %bb.g

bb.r:                                             ; preds = %bb.q
  %i.gy = trunc nuw i8 %i.gu to i1
  %i.gz = zext i32 %i.fy to i64
  %i.ha = shl nuw i64 %i.gz, 32
  %.sroa.0.0.in.v.i = select i1 %i.gy, i64 5, i64 9
  %.sroa.0.0.in.i = or disjoint i64 %.sroa.0.0.in.v.i, %i.ha
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr
  br label %bb.pl

bb.s:                                             ; preds = %bb.j
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !15, !align !22, !noundef !15 ; 11 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !15, !align !22, !noundef !15 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6960)
  call void @llvm.experimental.noalias.scope.decl(metadata !6961)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hg = load i8, ptr %i.hf, align 8, !range !16, !alias.scope !6960, !noalias !6961, !noundef !15
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hi = load i8, ptr %i.hh, align 8, !range !16, !alias.scope !6961, !noalias !6960, !noundef !15
  %i.hj = icmp eq i8 %i.hg, %i.hi
  br i1 %i.hj, label %bb.t, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

bb.t:                                             ; preds = %bb.s
  %i.hk = load i64, ptr %i.hc, align 8, !range !33, !alias.scope !6960, !noalias !6961, !noundef !15
  %i.hl = icmp ne i64 %i.hk, -9223372036854775808 ; 2 uses
  %i.hm = load i64, ptr %i.he, align 8, !range !33, !alias.scope !6961, !noalias !6960, !noundef !15
  %i.hn = icmp eq i64 %i.hm, -9223372036854775808 ; 3 uses
  %not..i = xor i1 %i.hn, true
  %i.ho = xor i1 %i.hl, %i.hn
  br i1 %i.ho, label %bb.u, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

bb.u:                                             ; preds = %bb.t
  br i1 %i.hl, label %bb.v, label %.split.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 %not..i)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %.val11.i = load i64, ptr %i.hp, align 8, !alias.scope !6960, !noalias !6961, !noundef !15 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %.val13.i = load i64, ptr %i.hq, align 8, !alias.scope !6961, !noalias !6960, !noundef !15
  %.not.i.i.i = icmp eq i64 %.val11.i, %.val13.i
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

.split.i:                                         ; preds = %bb.u
  call void @llvm.assume(i1 %i.hn)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !6960, !noalias !6961, !noundef !15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !6961, !noalias !6960, !noundef !15
  %i.hv = icmp eq i64 %i.hs, %i.hu
  br i1 %i.hv, label %bb.w, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i": ; preds = %bb.v
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.val12.i = load ptr, ptr %i.hw, align 8, !alias.scope !6961, !noalias !6960, !nonnull !15, !noundef !15
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.val10.i = load ptr, ptr %i.hx, align 8, !alias.scope !6960, !noalias !6961, !nonnull !15, !noundef !15
  %i.hy = shl nuw nsw i64 %.val11.i, 3
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly align 8 %.val10.i, ptr nonnull readonly align 8 %.val12.i, i64 %i.hy), !alias.scope !6962, !noalias !6963
  %i.hz = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.hz, label %bb.w, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

bb.w:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i", %.split.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !range !33, !alias.scope !6960, !noalias !6961, !noundef !15
  %i.ic = icmp ne i64 %i.ib, -9223372036854775808 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.ie = load i64, ptr %i.id, align 8, !range !33, !alias.scope !6961, !noalias !6960, !noundef !15
  %i.if = icmp eq i64 %i.ie, -9223372036854775808 ; 3 uses
  %not.6.i = xor i1 %i.if, true
  %i.ig = xor i1 %i.ic, %i.if
  br i1 %i.ig, label %bb.x, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

bb.x:                                             ; preds = %bb.w
  br i1 %i.ic, label %bb.y, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 %not.6.i)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %.val7.i = load i64, ptr %i.ih, align 8, !alias.scope !6960, !noalias !6961, !noundef !15 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %.val9.i = load i64, ptr %i.ii, align 8, !alias.scope !6961, !noalias !6960, !noundef !15
  %.not.i.i14.i = icmp eq i64 %.val7.i, %.val9.i
  br i1 %.not.i.i14.i, label %.split, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

.split:                                           ; preds = %bb.y
  %i.ij = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %.val8.i = load ptr, ptr %i.ij, align 8, !alias.scope !6961, !noalias !6960, !nonnull !15, !noundef !15
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %.val.i = load ptr, ptr %i.ik, align 8, !alias.scope !6960, !noalias !6961, !nonnull !15, !noundef !15
  %i.il = shl nuw nsw i64 %.val7.i, 3
  %bcmp.i.i16.i = call i32 @bcmp(ptr nonnull readonly align 8 %.val.i, ptr nonnull readonly align 8 %.val8.i, i64 %i.il), !alias.scope !6964, !noalias !6963
  %i.im = icmp eq i32 %bcmp.i.i16.i, 0
  br i1 %i.im, label %bb.z, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit": ; preds = %bb.x
  call void @llvm.assume(i1 %i.if)
  %i.in = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !6960, !noalias !6961, !noundef !15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !6961, !noalias !6960, !noundef !15
  %i.ir = icmp eq i64 %i.io, %i.iq
  br i1 %i.ir, label %bb.z, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"

"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread": ; preds = %bb.v, %bb.y, %bb.w, %bb.s, %bb.t, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i", %.split.i, %.split, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.fi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hc)
          to label %bb.aa unwind label %bb.b

bb.z:                                             ; preds = %.split, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hc)
          to label %bb.as unwind label %bb.b

bb.aa:                                            ; preds = %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6965
  %i.is = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !6965 ; 6 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.ac, label %bb.ae, !prof !21

bb.ab:                                            ; preds = %bb.ac
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.fi) #43
  br label %.thread97

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !6965
  store ptr @155, ptr %i.bc, align 8, !noalias !6965
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 1, ptr %i.iv, align 8, !noalias !6965
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr null, ptr %i.iw, align 8, !noalias !6965
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ix, align 8, !noalias !6965
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 0, ptr %i.iy, align 8, !noalias !6965
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #41
          to label %bb.ad unwind label %bb.ab, !noalias !6965

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.aa
  store i64 1, ptr %i.is, align 8, !noalias !6965
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i32 %i.fu, ptr %i.iz, align 8, !noalias !6965
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ja, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fi, i64 56, i1 false)
  store ptr %i.is, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.he)
          to label %bb.ag unwind label %bb.af

.body247:                                         ; preds = %bb.af, %bb.ah, %bb.al
  %.sroa.050.3 = phi i8 [ 0, %bb.al ], [ 1, %bb.ah ], [ 1, %bb.af ]
  %.pn163 = phi { ptr, i32 } [ %i.jm, %bb.al ], [ %i.je, %bb.ah ], [ %i.jb, %bb.af ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fj) #43
          to label %.body181 unwind label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body247

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6966
  %i.jc = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !6966 ; 6 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.ai, label %bb.ak, !prof !21

bb.ah:                                            ; preds = %bb.ai
  %i.je = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.fg) #43
  br label %.body247

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !6966
  store ptr @155, ptr %i.bb, align 8, !noalias !6966
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %i.jf, align 8, !noalias !6966
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr null, ptr %i.jg, align 8, !noalias !6966
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jh, align 8, !noalias !6966
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %i.ji, align 8, !noalias !6966
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #41
          to label %bb.aj unwind label %bb.ah, !noalias !6966

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ag
  store i64 1, ptr %i.jc, align 8, !noalias !6966
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i32 %i.fx, ptr %i.jj, align 8, !noalias !6966
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jk, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fg, i64 56, i1 false)
  store ptr %i.jc, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ff, ptr noundef nonnull align 8 dereferenceable(152) %8, i64 152, i1 false)
  %i.jl = invoke { i32, i1 } @"_ZN16nickel_lang_core4eval5merge133_$LT$impl$u20$core..convert..From$LT$nickel_lang_core..eval..merge..MergeMode$GT$$u20$for$u20$nickel_lang_core..label..MergeLabel$GT$4from17h0be7cb2c80d111c1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.ff)
          to label %bb.am unwind label %bb.al     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fh) #43
          to label %.body247 unwind label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.jn = extractvalue { i32, i1 } %i.jl, 0
  %i.jo = extractvalue { i32, i1 } %i.jl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.is, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr %i.jc, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i32 %i.jn, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %i.jt = zext i1 %i.jo to i8
  store i8 %i.jt, ptr %i.js, align 4
  store i64 28, ptr %i.fk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6967
  %i.ju = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !6967 ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.an, label %bb.aq, !prof !18

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h221047cb3d118c1eE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.fk) #43
          to label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit427.thread" unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.aq:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ju, ptr noundef nonnull align 8 dereferenceable(392) %i.fk, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %.thread279

bb.ar:                                            ; preds = %bb.qx, %bb.cn, %bb.cd, %bb.eo, %bb.dv, %bb.ra, %bb.qy, %.body410.thread, %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..merge..MergeMode$GT$17hd529ca8a441e42c3E.exit427.thread", %bb.qw, %bb.pf, %bb.oz, %.body387, %bb.of, %bb.ny, %bb.nu, %bb.na, %.body357, %bb.lx, %.body333, %bb.lh, %bb.lg, %.thread200, %.thread214, %.body314, %bb.et, %bb.dp, %bb.de, %.thread135, %.thread148, %bb.db, %bb.da, %bb.cz, %bb.bg, %bb.al, %.body247
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.as:                                            ; preds = %bb.z
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6968
  %i.jz = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !6968 ; 5 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.au, label %_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hf7e6844a27316b94E.exit257, !prof !21

bb.at:                                            ; preds = %bb.au
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.fl) #43
  br label %.thread97

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !6968
  store ptr @155, ptr %i.ba, align 8, !noalias !6968
end_hunk_1
begin_hunk_2_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op217h152268ff24c9f8fbE":bb.a
  %i.bex = and i64 %i.bew, 3
  %..i2253 = call i64 @llvm.umin.i64(i64 %i.bex, i64 2)
  switch i64 %..i2253, label %bb.avj [
    i64 2, label %.invoke5383.a
    i64 0, label %bb.lw
  ], !prof !20

bb.lw:                                            ; preds = %bb.lv
  %i.bey = load i64, ptr %.val1948, align 8, !noundef !15 ; 2 uses
  %i.bez = icmp ult i64 %i.bey, 864691128455135232
  call void @llvm.assume(i1 %i.bez)
  %i.bfa = icmp samesign ult i64 %i.bey, 72057594037927936
  br i1 %i.bfa, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h6b9cf53268cfd67dE.exit2257, label %bb.avj

bb.lx:                                            ; preds = %bb.c
  %.val1941 = load ptr, ptr %i.abw, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.bfb = ptrtoint ptr %.val1941 to i64
  %i.bfc = and i64 %i.bfb, 3
  %..i2258 = call i64 @llvm.umin.i64(i64 %i.bfc, i64 2)
  switch i64 %..i2258, label %bb.awn [
    i64 2, label %.invoke5383.a
    i64 0, label %bb.ly
  ], !prof !20

bb.ly:                                            ; preds = %bb.lx
  %i.bfd = load i64, ptr %.val1941, align 8, !noundef !15 ; 2 uses
  %i.bfe = icmp ult i64 %i.bfd, 864691128455135232
  call void @llvm.assume(i1 %i.bfe)
  %.mask.i = and i64 %i.bfd, 1080863910568919040
  %i.bff = icmp eq i64 %.mask.i, 216172782113783808
  br i1 %i.bff, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17he3d235c2ea30311eE.exit, label %bb.awn

bb.lz:                                            ; preds = %bb.c
  %i.bfg = load ptr, ptr %i.abw, align 8, !nonnull !15, !noundef !15
  %i.bfh = load ptr, ptr %i.abu, align 8, !nonnull !15, !noundef !15
  %i.bfi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bfj = load ptr, ptr %i.bfi, align 8, !nonnull !15, !align !22, !noundef !15
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 712 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi)
  store i32 %i.acr, ptr %i.gi, align 4, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !12513
  store ptr %i.bfg, ptr %i.gh, align 8, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !noalias !12513
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 6 uses
  %i.bfm = load <2 x ptr>, ptr %i.abv, align 16
  store <2 x ptr> %i.bfm, ptr %i.gg, align 16, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !noalias !12513
  store ptr %i.bfh, ptr %i.gf, align 8, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !12513
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 6 uses
  %i.bfo = load <2 x ptr>, ptr %i.abt, align 16
  store <2 x ptr> %i.bfo, ptr %i.ge, align 16, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !12513
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gh)
          to label %bb.mb unwind label %bb.ma, !noalias !12513

.body.i:                                          ; preds = %.thread200.i, %bb.ma
  %.sroa.067.0.i = phi i8 [ %.sroa.067.7.i, %.thread200.i ], [ %.sroa.067.1.i, %bb.ma ]
  %.pn89.i = phi { ptr, i32 } [ %.pn81.i, %.thread200.i ], [ %i.bfq, %bb.ma ] ; 2 uses
  %i.bfp = trunc nuw i8 %.sroa.067.0.i to i1
  br i1 %i.bfp, label %.thread.i, label %.body130.thread.i

bb.ma:                                            ; preds = %bb.pp, %bb.pm, %bb.pf, %bb.op, %bb.om, %bb.oa, %bb.nw, %bb.nu, %bb.nq, %bb.nk, %bb.nh, %bb.ng, %bb.nf, %bb.mb, %bb.lz
  %.sroa.067.1.i = phi i8 [ 1, %bb.mb ], [ 1, %bb.nq ], [ 1, %bb.nk ], [ 1, %bb.pm ], [ 1, %bb.nh ], [ 1, %bb.ng ], [ 1, %bb.nf ], [ %.sroa.067.4.i, %bb.om ], [ 1, %bb.op ], [ 1, %bb.oa ], [ 1, %bb.nw ], [ 1, %bb.nu ], [ 0, %bb.pp ], [ 1, %bb.lz ], [ 1, %bb.pf ]
  %i.bfq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.mb:                                            ; preds = %bb.lz
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gf)
          to label %bb.mc unwind label %bb.ma, !noalias !12514

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !12513
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bfr, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !noalias !12513
  %i.bfs = load i8, ptr %i.gc, align 8, !range !31, !noalias !12513, !noundef !15
  switch i8 %i.bfs, label %.thread175.i [
    i8 0, label %bb.md
    i8 1, label %bb.me
    i8 2, label %bb.mf
    i8 3, label %bb.mg
    i8 4, label %bb.mh
    i8 5, label %bb.mi
    i8 7, label %bb.mj
    i8 8, label %bb.mk
    i8 9, label %bb.ml
    i8 10, label %bb.mm
    i8 11, label %bb.mn
    i8 12, label %bb.mo
  ]

bb.md:                                            ; preds = %bb.mc
  %i.bft = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bfu = icmp eq i8 %i.bft, 0
  %spec.select4871 = select i1 %i.bfu, ptr inttoptr (i64 1 to ptr), ptr null
  br label %.thread175.i

bb.me:                                            ; preds = %bb.mc
  %i.bfv = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bfw = icmp eq i8 %i.bfv, 1
  br i1 %i.bfw, label %bb.mq, label %.thread175.i

bb.mf:                                            ; preds = %bb.mc
  %i.bfx = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bfy = icmp eq i8 %i.bfx, 2
  br i1 %i.bfy, label %bb.mr, label %.thread175.i

bb.mg:                                            ; preds = %bb.mc
  %i.bfz = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bga = icmp eq i8 %i.bfz, 3
  br i1 %i.bga, label %bb.na, label %.thread175.i

bb.mh:                                            ; preds = %bb.mc
  %i.bgb = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgc = icmp eq i8 %i.bgb, 4
  br i1 %i.bgc, label %bb.nu, label %.thread175.i

bb.mi:                                            ; preds = %bb.mc
  %i.bgd = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bge = icmp eq i8 %i.bgd, 5
  br i1 %i.bge, label %bb.ox, label %.thread175.i

bb.mj:                                            ; preds = %bb.mc
  %i.bgf = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgg = icmp eq i8 %i.bgf, 7
  br i1 %i.bgg, label %bb.oz, label %.thread175.i

bb.mk:                                            ; preds = %bb.mc
  %i.bgh = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgi = icmp eq i8 %i.bgh, 8
  br i1 %i.bgi, label %bb.pf, label %.thread175.i

bb.ml:                                            ; preds = %bb.mc
  %i.bgj = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgk = icmp eq i8 %i.bgj, 9
  br i1 %i.bgk, label %bb.ph, label %.thread175.i

bb.mm:                                            ; preds = %bb.mc
  %i.bgl = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgm = icmp eq i8 %i.bgl, 10
  br i1 %i.bgm, label %bb.pb, label %.thread175.i

bb.mn:                                            ; preds = %bb.mc
  %i.bgn = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgo = icmp eq i8 %i.bgn, 11
  br i1 %i.bgo, label %bb.pq, label %.thread175.i

bb.mo:                                            ; preds = %bb.mc
  %i.bgp = load i8, ptr %i.gb, align 8, !range !31, !noalias !12513, !noundef !15
  %i.bgq = icmp eq i8 %i.bgp, 12
  br i1 %i.bgq, label %bb.pb, label %.thread175.i

.thread175.i:                                     ; preds = %bb.ox, %bb.oy, %bb.md, %bb.ny, %bb.nc, %bb.ne, %bb.mc, %bb.me, %bb.mf, %bb.mg, %bb.mh, %bb.mi, %bb.mj, %bb.mk, %bb.ml, %bb.mm, %bb.mn, %bb.mo, %bb.nd, %.thread187.i, %.thread187.thread.i, %bb.nx, %bb.nz, %bb.oz, %bb.pa, %bb.pi, %bb.pj, %bb.pl, %bb.pr, %bb.pq, %bb.pk, %bb.pg, %bb.np, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i", %bb.mq
  %.sroa.21.0 = phi ptr [ %i.bpr, %bb.pq ], [ inttoptr (i64 1 to ptr), %bb.ny ], [ %i.bgw, %bb.mq ], [ %i.bio, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i" ], [ null, %bb.mc ], [ %.sroa.21.7, %bb.np ], [ inttoptr (i64 1 to ptr), %bb.nc ], [ inttoptr (i64 1 to ptr), %bb.ne ], [ %i.boc, %bb.pr ], [ %i.bol, %bb.pg ], [ %i.box, %bb.pk ], [ null, %bb.pl ], [ null, %bb.pj ], [ null, %bb.pi ], [ null, %bb.pa ], [ null, %bb.oz ], [ null, %bb.nz ], [ null, %bb.nx ], [ null, %.thread187.thread.i ], [ null, %.thread187.i ], [ null, %bb.nd ], [ null, %bb.mo ], [ null, %bb.mn ], [ null, %bb.mm ], [ null, %bb.ml ], [ null, %bb.mk ], [ null, %bb.mj ], [ null, %bb.mi ], [ null, %bb.mh ], [ null, %bb.mg ], [ null, %bb.mf ], [ null, %bb.me ], [ %spec.select4871, %bb.md ], [ %i.bnl, %bb.oy ], [ null, %bb.ox ]
  %.sroa.41.0 = phi ptr [ undef, %bb.pq ], [ undef, %bb.ny ], [ undef, %bb.mq ], [ undef, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i" ], [ undef, %bb.mc ], [ %.sroa.41.7, %bb.np ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.pr ], [ undef, %bb.pg ], [ undef, %bb.pk ], [ undef, %bb.pl ], [ undef, %bb.pj ], [ undef, %bb.pi ], [ undef, %bb.pa ], [ undef, %bb.oz ], [ undef, %bb.nz ], [ undef, %bb.nx ], [ undef, %.thread187.thread.i ], [ undef, %.thread187.i ], [ undef, %bb.nd ], [ undef, %bb.mo ], [ undef, %bb.mn ], [ undef, %bb.mm ], [ undef, %bb.ml ], [ undef, %bb.mk ], [ undef, %bb.mj ], [ undef, %bb.mi ], [ undef, %bb.mh ], [ undef, %bb.mg ], [ undef, %bb.mf ], [ undef, %bb.me ], [ undef, %bb.md ], [ undef, %bb.oy ], [ undef, %bb.ox ]
  %.sroa.39.0 = phi ptr [ undef, %bb.pq ], [ undef, %bb.ny ], [ undef, %bb.mq ], [ undef, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i" ], [ undef, %bb.mc ], [ %.sroa.39.7, %bb.np ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.pr ], [ undef, %bb.pg ], [ undef, %bb.pk ], [ undef, %bb.pl ], [ undef, %bb.pj ], [ undef, %bb.pi ], [ undef, %bb.pa ], [ undef, %bb.oz ], [ undef, %bb.nz ], [ undef, %bb.nx ], [ undef, %.thread187.thread.i ], [ undef, %.thread187.i ], [ undef, %bb.nd ], [ undef, %bb.mo ], [ undef, %bb.mn ], [ undef, %bb.mm ], [ undef, %bb.ml ], [ undef, %bb.mk ], [ undef, %bb.mj ], [ undef, %bb.mi ], [ undef, %bb.mh ], [ undef, %bb.mg ], [ undef, %bb.mf ], [ undef, %bb.me ], [ undef, %bb.md ], [ undef, %bb.oy ], [ undef, %bb.ox ]
  %.sroa.38.0 = phi i64 [ undef, %bb.pq ], [ undef, %bb.ny ], [ undef, %bb.mq ], [ undef, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i" ], [ undef, %bb.mc ], [ %.sroa.38.7, %bb.np ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.pr ], [ undef, %bb.pg ], [ undef, %bb.pk ], [ undef, %bb.pl ], [ undef, %bb.pj ], [ undef, %bb.pi ], [ undef, %bb.pa ], [ undef, %bb.oz ], [ undef, %bb.nz ], [ undef, %bb.nx ], [ undef, %.thread187.thread.i ], [ undef, %.thread187.i ], [ undef, %bb.nd ], [ undef, %bb.mo ], [ undef, %bb.mn ], [ undef, %bb.mm ], [ undef, %bb.ml ], [ undef, %bb.mk ], [ undef, %bb.mj ], [ undef, %bb.mi ], [ undef, %bb.mh ], [ undef, %bb.mg ], [ undef, %bb.mf ], [ undef, %bb.me ], [ undef, %bb.md ], [ undef, %bb.oy ], [ undef, %bb.ox ]
  %.sroa.03515.0 = phi i64 [ -9223372036854775808, %bb.pq ], [ -9223372036854775808, %bb.ny ], [ -9223372036854775808, %bb.mq ], [ -9223372036854775808, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i" ], [ -9223372036854775808, %bb.mc ], [ %.sroa.03515.7, %bb.np ], [ -9223372036854775808, %bb.nc ], [ -9223372036854775808, %bb.ne ], [ -9223372036854775807, %bb.pr ], [ -9223372036854775808, %bb.pg ], [ -9223372036854775808, %bb.pk ], [ -9223372036854775808, %bb.pl ], [ -9223372036854775808, %bb.pj ], [ -9223372036854775808, %bb.pi ], [ -9223372036854775808, %bb.pa ], [ -9223372036854775808, %bb.oz ], [ -9223372036854775808, %bb.nz ], [ -9223372036854775808, %bb.nx ], [ -9223372036854775808, %.thread187.thread.i ], [ -9223372036854775808, %.thread187.i ], [ -9223372036854775808, %bb.nd ], [ -9223372036854775808, %bb.mo ], [ -9223372036854775808, %bb.mn ], [ -9223372036854775808, %bb.mm ], [ -9223372036854775808, %bb.ml ], [ -9223372036854775808, %bb.mk ], [ -9223372036854775808, %bb.mj ], [ -9223372036854775808, %bb.mi ], [ -9223372036854775808, %bb.mh ], [ -9223372036854775808, %bb.mg ], [ -9223372036854775808, %bb.mf ], [ -9223372036854775808, %bb.me ], [ -9223372036854775808, %bb.md ], [ -9223372036854775808, %bb.oy ], [ -9223372036854775808, %bb.ox ]
  %.sroa.069.2.ph.i = phi i8 [ 1, %bb.pq ], [ 1, %bb.ny ], [ 1, %bb.mq ], [ 1, %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i" ], [ 1, %bb.mc ], [ 1, %bb.np ], [ 1, %bb.nc ], [ 1, %bb.ne ], [ 0, %bb.pr ], [ 1, %bb.pg ], [ 1, %bb.pk ], [ 1, %bb.pl ], [ 1, %bb.pj ], [ 1, %bb.pi ], [ 1, %bb.pa ], [ 1, %bb.oz ], [ 1, %bb.nz ], [ 1, %bb.nx ], [ 1, %.thread187.thread.i ], [ 1, %.thread187.i ], [ 1, %bb.nd ], [ 1, %bb.mo ], [ 1, %bb.mn ], [ 1, %bb.mm ], [ 1, %bb.ml ], [ 1, %bb.mk ], [ 1, %bb.mj ], [ 1, %bb.mi ], [ 1, %bb.mh ], [ 1, %bb.mg ], [ 1, %bb.mf ], [ 1, %bb.me ], [ 1, %bb.md ], [ 1, %bb.oy ], [ 1, %bb.ox ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !12513
  br label %bb.ps

bb.mp:                                            ; preds = %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !12513
  br i1 %i.bmt, label %bb.ps, label %.thread208.i

bb.mq:                                            ; preds = %bb.me
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.bgs = load i8, ptr %i.bgr, align 1, !range !16, !noalias !12513, !noundef !15
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.bgu = load i8, ptr %i.bgt, align 1, !range !16, !noalias !12513, !noundef !15
  %i.bgv = icmp eq i8 %i.bgs, %i.bgu
  %.sroa.21.0.insert.ext3565 = zext i1 %i.bgv to i64
  %i.bgw = inttoptr i64 %.sroa.21.0.insert.ext3565 to ptr
  br label %.thread175.i

bb.mr:                                            ; preds = %bb.mf
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8, !noalias !12513, !nonnull !15, !align !22, !noundef !15 ; 9 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.bha = load ptr, ptr %i.bgz, align 8, !noalias !12513, !nonnull !15, !align !22, !noundef !15 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12515)
  call void @llvm.experimental.noalias.scope.decl(metadata !12516)
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 48
  %i.bhc = load i8, ptr %i.bhb, align 8, !range !16, !alias.scope !12515, !noalias !12517, !noundef !15
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bha, i64 48
  %i.bhe = load i8, ptr %i.bhd, align 8, !range !16, !alias.scope !12516, !noalias !12518, !noundef !15
  %i.bhf = icmp eq i8 %i.bhc, %i.bhe
  br i1 %i.bhf, label %bb.ms, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

bb.ms:                                            ; preds = %bb.mr
  %i.bhg = load i64, ptr %i.bgy, align 8, !range !33, !alias.scope !12515, !noalias !12517, !noundef !15
  %i.bhh = icmp ne i64 %i.bhg, -9223372036854775808 ; 2 uses
  %i.bhi = load i64, ptr %i.bha, align 8, !range !33, !alias.scope !12516, !noalias !12518, !noundef !15
  %i.bhj = icmp eq i64 %i.bhi, -9223372036854775808 ; 3 uses
  %not..i.i = xor i1 %i.bhj, true
  %i.bhk = xor i1 %i.bhh, %i.bhj
  br i1 %i.bhk, label %bb.mt, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

bb.mt:                                            ; preds = %bb.ms
  br i1 %i.bhh, label %bb.mu, label %.split.i.i2264

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.assume(i1 %not..i.i)
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bgy, i64 16
  %.val11.i.i = load i64, ptr %i.bhl, align 8, !alias.scope !12515, !noalias !12517, !noundef !15 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bha, i64 16
  %.val13.i.i = load i64, ptr %i.bhm, align 8, !alias.scope !12516, !noalias !12518, !noundef !15
  %.not.i.i.i.i = icmp eq i64 %.val11.i.i, %.val13.i.i
  br i1 %.not.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i.i", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

.split.i.i2264:                                   ; preds = %bb.mt
  call void @llvm.assume(i1 %i.bhj)
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  %i.bho = load i64, ptr %i.bhn, align 8, !alias.scope !12515, !noalias !12517, !noundef !15
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhq = load i64, ptr %i.bhp, align 8, !alias.scope !12516, !noalias !12518, !noundef !15
  %i.bhr = icmp eq i64 %i.bho, %i.bhq
  br i1 %i.bhr, label %bb.mv, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i.i": ; preds = %bb.mu
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %.val12.i.i = load ptr, ptr %i.bhs, align 8, !alias.scope !12516, !noalias !12518, !nonnull !15, !noundef !15
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  %.val10.i.i = load ptr, ptr %i.bht, align 8, !alias.scope !12515, !noalias !12517, !nonnull !15, !noundef !15
  %i.bhu = shl nuw nsw i64 %.val11.i.i, 3
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 8 %.val10.i.i, ptr nonnull readonly align 8 %.val12.i.i, i64 %i.bhu), !alias.scope !12519, !noalias !12520
  %i.bhv = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bhv, label %bb.mv, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

bb.mv:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i.i", %.split.i.i2264
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bgy, i64 24
  %i.bhx = load i64, ptr %i.bhw, align 8, !range !33, !alias.scope !12515, !noalias !12517, !noundef !15
  %i.bhy = icmp ne i64 %i.bhx, -9223372036854775808 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bha, i64 24
  %i.bia = load i64, ptr %i.bhz, align 8, !range !33, !alias.scope !12516, !noalias !12518, !noundef !15
  %i.bib = icmp eq i64 %i.bia, -9223372036854775808 ; 3 uses
  %not.6.i.i = xor i1 %i.bib, true
  %i.bic = xor i1 %i.bhy, %i.bib
  br i1 %i.bic, label %bb.mw, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

bb.mw:                                            ; preds = %bb.mv
  br i1 %i.bhy, label %bb.mx, label %bb.mz

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.assume(i1 %not.6.i.i)
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bgy, i64 40
  %.val7.i.i = load i64, ptr %i.bid, align 8, !alias.scope !12515, !noalias !12517, !noundef !15 ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bha, i64 40
  %.val9.i.i = load i64, ptr %i.bie, align 8, !alias.scope !12516, !noalias !12518, !noundef !15
  %.not.i.i14.i.i = icmp eq i64 %.val7.i.i, %.val9.i.i
  br i1 %.not.i.i14.i.i, label %bb.my, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

bb.my:                                            ; preds = %bb.mx
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bha, i64 32
  %.val8.i.i = load ptr, ptr %i.bif, align 8, !alias.scope !12516, !noalias !12518, !nonnull !15, !noundef !15
  %i.big = getelementptr inbounds nuw i8, ptr %i.bgy, i64 32
  %.val.i.i = load ptr, ptr %i.big, align 8, !alias.scope !12515, !noalias !12517, !nonnull !15, !noundef !15
  %i.bih = shl nuw nsw i64 %.val7.i.i, 3
  %bcmp.i.i16.i.i = call i32 @bcmp(ptr nonnull readonly align 8 %.val.i.i, ptr nonnull readonly align 8 %.val8.i.i, i64 %i.bih), !alias.scope !12521, !noalias !12520
  %i.bii = icmp eq i32 %bcmp.i.i16.i.i, 0
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

bb.mz:                                            ; preds = %bb.mw
  call void @llvm.assume(i1 %i.bib)
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bgy, i64 32
  %i.bik = load i64, ptr %i.bij, align 8, !alias.scope !12515, !noalias !12517, !noundef !15
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bha, i64 32
  %i.bim = load i64, ptr %i.bil, align 8, !alias.scope !12516, !noalias !12518, !noundef !15
  %i.bin = icmp eq i64 %i.bik, %i.bim
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i"

"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.i": ; preds = %bb.mz, %bb.my, %bb.mx, %bb.mv, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i.i", %.split.i.i2264, %bb.mu, %bb.ms, %bb.mr
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %.split.i.i2264 ], [ %i.bin, %bb.mz ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit.i.i" ], [ false, %bb.ms ], [ false, %bb.mr ], [ false, %bb.mv ], [ false, %bb.mx ], [ %i.bii, %bb.my ], [ false, %bb.mu ]
  %.sroa.21.0.insert.ext3561 = zext i1 %.sroa.0.0.shrunk.i.i to i64
  %i.bio = inttoptr i64 %.sroa.21.0.insert.ext3561 to ptr
  br label %.thread175.i

bb.na:                                            ; preds = %bb.mg
  %i.bip = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.biq = load ptr, ptr %i.bip, align 8, !noalias !12513, !align !22, !noundef !15 ; 6 uses
  %.not83.i = icmp eq ptr %i.biq, null            ; 2 uses
  br i1 %.not83.i, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 56
  %i.bis = load i64, ptr %i.bir, align 8, !noalias !12514, !noundef !15 ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %i.biq, i64 48
  %i.biu = load i64, ptr %i.bit, align 8, !noalias !12514, !noundef !15 ; 2 uses
  %i.biv = icmp eq i64 %i.bis, %i.biu
  br i1 %i.biv, label %bb.nc, label %.thread187.i

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.biw = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.bix = load ptr, ptr %i.biw, align 8, !noalias !12513, !align !22, !noundef !15 ; 4 uses
  %.not84.i = icmp eq ptr %i.bix, null
  br i1 %.not84.i, label %.thread175.i, label %bb.ne

bb.nd:                                            ; preds = %bb.ne
  br i1 %.not83.i, label %.thread175.i, label %..thread187.thread.i_crit_edge

..thread187.thread.i_crit_edge:                   ; preds = %bb.nd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.biq, i64 56
  %.pre4950 = load i64, ptr %.phi.trans.insert, align 8, !noalias !12514
  %.phi.trans.insert4951 = getelementptr inbounds nuw i8, ptr %i.biq, i64 48
  %.pre4952 = load i64, ptr %.phi.trans.insert4951, align 8, !noalias !12514
  br label %.thread187.thread.i

bb.ne:                                            ; preds = %bb.nc
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 56
  %i.biz = load i64, ptr %i.biy, align 8, !noalias !12514, !noundef !15 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bix, i64 48
  %i.bjb = load i64, ptr %i.bja, align 8, !noalias !12514, !noundef !15 ; 2 uses
  %i.bjc = icmp eq i64 %i.biz, %i.bjb
  br i1 %i.bjc, label %.thread175.i, label %bb.nd

.thread187.i:                                     ; preds = %bb.nb
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !12513 ; 4 uses
  %.not85.i = icmp eq ptr %.pre.i, null
  br i1 %.not85.i, label %.thread175.i, label %.thread187.i..thread187.thread.i_crit_edge

.thread187.i..thread187.thread.i_crit_edge:       ; preds = %.thread187.i
  %.phi.trans.insert4953 = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  %.pre4954 = load i64, ptr %.phi.trans.insert4953, align 8, !noalias !12514
  %.phi.trans.insert4955 = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %.pre4956 = load i64, ptr %.phi.trans.insert4955, align 8, !noalias !12514
  br label %.thread187.thread.i

.thread187.thread.i:                              ; preds = %.thread187.i..thread187.thread.i_crit_edge, %..thread187.thread.i_crit_edge
  %i.bjd = phi i64 [ %.pre4956, %.thread187.i..thread187.thread.i_crit_edge ], [ %i.bjb, %..thread187.thread.i_crit_edge ]
  %i.bje = phi i64 [ %.pre4954, %.thread187.i..thread187.thread.i_crit_edge ], [ %i.biz, %..thread187.thread.i_crit_edge ]
  %i.bjf = phi i64 [ %i.biu, %.thread187.i..thread187.thread.i_crit_edge ], [ %.pre4952, %..thread187.thread.i_crit_edge ]
  %i.bjg = phi i64 [ %i.bis, %.thread187.i..thread187.thread.i_crit_edge ], [ %.pre4950, %..thread187.thread.i_crit_edge ]
  %i.bjh = phi ptr [ %.pre.i, %.thread187.i..thread187.thread.i_crit_edge ], [ %i.bix, %..thread187.thread.i_crit_edge ]
  %i.bji = sub i64 %i.bjg, %i.bjf
  %i.bjj = sub i64 %i.bje, %i.bjd
  %i.bjk = icmp eq i64 %i.bji, %i.bjj
  br i1 %i.bjk, label %bb.nf, label %.thread175.i

bb.nf:                                            ; preds = %.thread187.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !12513
  %i.bjl = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gh)
          to label %bb.ng unwind label %bb.ma, !noalias !12514

bb.ng:                                            ; preds = %bb.nf
  %i.bjm = or i32 %i.bjl, -2147483648
  invoke void @_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts17hdda7f7b11c2ffd80E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.fl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.biq, i32 noundef %i.bjm)
          to label %bb.nh unwind label %bb.ma, !noalias !12514

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fm, ptr noundef nonnull align 8 dereferenceable(64) %i.fl, i64 64, i1 false), !noalias !12513
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  store ptr %i.bfk, ptr %i.bjn, align 8, !noalias !12513
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  store ptr %i.gg, ptr %i.bjo, align 8, !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !12513
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hac172c1bcf307edbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fn, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.fm)
          to label %bb.ni unwind label %bb.ma, !noalias !12514

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !12513
  call void @llvm.experimental.noalias.scope.decl(metadata !12522)
  call void @llvm.experimental.noalias.scope.decl(metadata !12523)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.fn, align 8, !alias.scope !12523, !noalias !12524
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !12523, !noalias !12524, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i2263 = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i2263, align 8, !alias.scope !12523, !noalias !12524 ; 2 uses
  %i.bjp = icmp ult i64 %.sroa.5.0.copyload.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.bjp)
  %i.bjq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.fo, align 8, !alias.scope !12522, !noalias !12525
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bjr, align 8, !alias.scope !12522, !noalias !12525
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.bjs, align 8, !alias.scope !12522, !noalias !12525
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr %i.bjq, ptr %i.bjt, align 8, !alias.scope !12522, !noalias !12525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !12513
  %i.bju = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gf)
          to label %bb.nj unwind label %bb.nt, !noalias !12514

bb.nj:                                            ; preds = %bb.ni
  %i.bjv = or i32 %i.bju, -2147483648
  invoke void @_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts17hdda7f7b11c2ffd80E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bjh, i32 noundef %i.bjv)
          to label %bb.nk unwind label %bb.nt, !noalias !12514

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fp, ptr noundef nonnull align 8 dereferenceable(64) %i.fk, i64 64, i1 false), !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !12513
  call void @llvm.experimental.noalias.scope.decl(metadata !12526)
  call void @llvm.experimental.noalias.scope.decl(metadata !12527)
  call void @llvm.experimental.noalias.scope.decl(metadata !12528)
  call void @llvm.experimental.noalias.scope.decl(metadata !12529)
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bjw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fo, i64 32, i1 false), !alias.scope !12530, !noalias !12531
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  store ptr %i.bfk, ptr %.sroa.4150.0..sroa_idx.i, align 8, !alias.scope !12532, !noalias !12533
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  store ptr %i.ge, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12532, !noalias !12533
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjx, i8 0, i64 16, i1 false), !alias.scope !12534, !noalias !12535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !12513
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h2e6e8c72700b5faaE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fq, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.fp)
          to label %bb.nl unwind label %bb.ma, !noalias !12514

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !12513
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.bjz = load i64, ptr %i.bjy, align 8, !noalias !12513, !noundef !15 ; 3 uses
  %i.bka = icmp eq i64 %i.bjz, 0
  br i1 %i.bka, label %bb.nq, label %bb.no

bb.nm:                                            ; preds = %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !12513
  %.sroa.03515.0.copyload3517 = load i64, ptr %i.fh, align 8, !noalias !12536
  %.sroa.21.0..sroa_idx3520 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.21.0.copyload3521 = load ptr, ptr %.sroa.21.0..sroa_idx3520, align 8, !noalias !12536
  %.sroa.38.0..sroa_idx3524 = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.sroa.38.0.copyload3525 = load i64, ptr %.sroa.38.0..sroa_idx3524, align 8, !noalias !12536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !12513
  br label %bb.np

bb.nn:                                            ; preds = %bb.no
  %i.bkb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fi) #43
          to label %bb.ns unwind label %bb.nr, !noalias !12514

bb.no:                                            ; preds = %bb.nl
  %i.bkc = add nsw i64 %i.bjz, -1                 ; 2 uses
  %i.bkd = load i64, ptr %i.fq, align 8, !range !39, !noalias !12513, !noundef !15 ; 2 uses
  %i.bke = icmp samesign ult i64 %i.bkc, %i.bkd
  call void @llvm.assume(i1 %i.bke)
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.bkg = load ptr, ptr %i.bkf, align 8, !noalias !12513, !nonnull !15, !noundef !15 ; 3 uses
  %i.bkh = icmp ult i64 %i.bjz, 576460752303423489
  call void @llvm.assume(i1 %i.bkh)
end_hunk_2
begin_hunk_3_@"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h438efe30e4fe918eE":bb.a
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h8b6e5f5ab96e21b1E.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h8b6e5f5ab96e21b1E.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h8b6e5f5ab96e21b1E.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h8b6e5f5ab96e21b1E.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h8b6e5f5ab96e21b1E.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h8b6e5f5ab96e21b1E.exit19.i.i.i.i.i" ]
  %i.cp = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !23225, !noundef !15
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !23225, !noundef !15
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h5f5606dd0cd32cd0E.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3c12e8b450798186E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hc6920cfdd0a442a8E.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hc6920cfdd0a442a8E.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3c12e8b450798186E.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hc6920cfdd0a442a8E.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3c12e8b450798186E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h574b63fb3d3dc548E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !23238
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !23238
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !23238
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !23238
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !23238
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !23238
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !23238
  %.val.i = load i32, ptr %0, align 4, !noalias !23239, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23240
  store i32 %.val.i, ptr %i.a, align 4, !noalias !23240
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17habca5f4658f8fd83E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23240
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !23241
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !23241
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !23241 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !23241
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !23241, !noundef !15
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23241, !noundef !15
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17hf444588b7c5039d9E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !23267, !noalias !23265
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.val3.i = load i64, ptr %i.f, align 8, !noalias !23266 ; 2 uses
  %.sroa.0.0.in.i = icmp ne i64 %.val3.i, -9223372036854775808 ; 3 uses
  %.sroa.0.0.i = zext i1 %.sroa.0.0.in.i to i64   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !23268, !noalias !23269, !noundef !15
  %i.j = icmp ult i64 %i.i, %.sroa.0.0.i
  br i1 %i.j, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !23270, !noalias !23271, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !23270, !noalias !23271, !nonnull !15, !noundef !15
  %i.o = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.l, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i" unwind label %bb.e, !noalias !23271 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.p = load i64, ptr %0, align 8, !range !39, !alias.scope !23270, !noalias !23271, !noundef !15
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !23270, !noalias !23271, !noundef !15 ; 2 uses
  %i.r = icmp ult i64 %i.q, 128102389400760776
  tail call void @llvm.assume(i1 %i.r)
  %i.s = sub nsw i64 %i.p, %i.q
  %i.t = icmp ult i64 %i.s, %.sroa.0.0.i
  br i1 %i.t, label %bb.c, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i"

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i"
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !23270, !noalias !23271, !noundef !15
  %i.v = load i64, ptr %i.h, align 8, !alias.scope !23270, !noalias !23271, !noundef !15
  %i.w = add i64 %i.v, %i.u
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h70ec2df240746fe8E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1, i64 noundef %i.w)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i" unwind label %bb.e, !noalias !23271

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i"
  br i1 %.sroa.0.0.in.i, label %.noexc2.i.i.i, label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17ha1ee4d4dd84b2315E.exit"

.noexc2.i.i.i:                                    ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i"
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 24, i1 false), !noalias !23265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !23265
  store i64 %.val3.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !23272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23273
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.i), !noalias !23271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !23273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23273
  %i.z = load i64, ptr %i.b, align 8, !range !33, !alias.scope !23274, !noalias !23273, !noundef !15
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit4.loopexit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.noexc2.i.i.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !23271
  br label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit4.loopexit.i.i.i"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit4.loopexit.i.i.i": ; preds = %bb.d, %.noexc2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23272
  br label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17ha1ee4d4dd84b2315E.exit"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br i1 %.sroa.0.0.in.i, label %bb.f, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit.i"

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit.i" unwind label %bb.g, !noalias !23271

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !23271
  unreachable

"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17ha1ee4d4dd84b2315E.exit": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i", %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h03caf2b0e6103e77E.exit4.loopexit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23266
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator3nth17h504b8cd9f9675d71E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0.i.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23287
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !23288
  %i.d = load i64, ptr %i.b, align 8, !range !34, !noalias !23287, !noundef !15
  %cond.i.i.i = icmp eq i64 %i.d, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23287
  br i1 %cond.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !23289)
  call void @llvm.experimental.noalias.scope.decl(metadata !23290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23291
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !23289
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !23290, !noalias !23289, !noundef !15
  %i.i = load i64, ptr %i.a, align 8, !range !34, !noalias !23291, !noundef !15
  switch i64 %i.i, label %bb.e [
    i64 2, label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !23290, !noalias !23289, !nonnull !15, !align !27, !noundef !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !23291
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = phi <2 x i64> [ %i.k, %bb.e ], [ undef, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i, ptr %i.m, align 8, !alias.scope !23289, !noalias !23290
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !23289, !noalias !23290
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.l, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !23289, !noalias !23290
  br label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"

"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit": ; preds = %bb.d, %bb.f
  %storemerge.i = phi i64 [ 1, %bb.f ], [ 0, %bb.d ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !23289, !noalias !23290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23291
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core4iter6traits8iterator8Iterator4fold17hbdf878b19f6700abE(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split.us:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23294
  store i8 18, ptr %i.d, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !23294
  store i64 -9223372036854775757, ptr %i.a, align 8, !noalias !23294
  %i.e = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23294
  store ptr %i.e, ptr %i.g, align 8
  store ptr %1, ptr %i.f, align 8
  store i64 -9223372036854775761, ptr %i.b, align 8
  %i.h = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms28_$u7b$$u7b$closure$u7d$$u7d$17h125fe9232ed33f61E.exit.us" unwind label %.split12.us

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms28_$u7b$$u7b$closure$u7d$$u7d$17h125fe9232ed33f61E.exit.us": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.h

.split12.us:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.b:                                             ; preds = %.split.us
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.d:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %.split12.us, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.i, %.split12.us ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$core..iter..sources..once..Once$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h4738f7a225c1bbf7E"(ptr null) #43
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator5unzip17h6a2fda7502394f9bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23339)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !16, !noalias !23340, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !23341
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !23341
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.j = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i"
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !23342
  store i8 1, ptr %i.g, align 8, !noalias !23342
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i
  %.pre1.i.i.i.i9.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i ], [ %i.l, %.noexc ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i ], [ %i.k, %.noexc ] ; 3 uses
  %i.o = add i64 %i.n, 1
  %i.p = add i64 %i.n, 2
  store i64 %i.p, ptr %i.f, align 8, !noalias !23343
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.pre1.i.i.i.i9.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !23339
end_hunk_3
begin_hunk_4_@"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb9b8d757c4430a9fE":bb.a
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p, !prof !24
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25613
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h77dd0a63f536506eE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val31.i = load ptr, ptr %i.q, align 8, !alias.scope !25613, !nonnull !15, !noundef !15
  %i.s = mul nuw i64 %i.e, %4
  store ptr %.val31.i, ptr %i.a, align 8, !alias.scope !25614, !noalias !25613
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !25614, !noalias !25613
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h77dd0a63f536506eE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h77dd0a63f536506eE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.t, align 8, !alias.scope !25614, !noalias !25613
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h95e9d5a58699d584E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 1, 9) %3, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !25613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25613
  %i.u = load i64, ptr %i.b, align 8, !range !29, !noalias !25613, !noundef !15
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h77dd0a63f536506eE.exit.i"
  %i.x = load i64, ptr %i.w, align 8, !range !33, !noalias !25613, !noundef !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !25613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25613
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.z, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #41
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h77dd0a63f536506eE.exit.i"
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !25613, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25613
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !25613
  %i.ab = icmp sgt i64 %.sroa.0.0.i32.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !25613
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !15
  %i.c = load i64, ptr %1, align 8, !range !33, !noundef !15
  %.not = icmp eq i64 %i.c, -9223372036854775808
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.522.0.copyload24 = load ptr, ptr %.sroa.522.0..sroa_idx23, align 8 ; 2 uses
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.625.0.copyload27 = load i64, ptr %.sroa.625.0..sroa_idx26, align 8 ; 5 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %.sroa.625.0.copyload27, 3       ; 5 uses
  %i.e = icmp ugt i64 %.sroa.625.0.copyload27, 2305843009213693951
  %i.f = icmp ugt i64 %i.d, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h53afe90ca0c554bdE.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25633
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #40, !noalias !25633 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h53afe90ca0c554bdE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #41, !noalias !25634
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h53afe90ca0c554bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.sroa.625.0.copyload27, %bb.c ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.625.0.copyload27, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i, ptr nonnull readonly align 8 %.sroa.522.0.copyload24, i64 %i.d, i1 false), !noalias !25635
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h53afe90ca0c554bdE.exit"
  %.sroa.522.0 = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h53afe90ca0c554bdE.exit" ], [ %.sroa.522.0.copyload24, %bb.a ] ; 3 uses
  %.sroa.020.0 = phi i64 [ %.sroa.4.0.i.i.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h53afe90ca0c554bdE.exit" ], [ -9223372036854775808, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !range !33, !noundef !15
  %.not1 = icmp eq i64 %i.l, -9223372036854775808
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.535.0.copyload = load ptr, ptr %.sroa.535.0..sroa_idx, align 8 ; 2 uses
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.638.0.copyload = load i64, ptr %.sroa.638.0..sroa_idx, align 8 ; 5 uses
  br i1 %.not1, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl i64 %.sroa.638.0.copyload, 3         ; 5 uses
  %i.n = icmp ugt i64 %.sroa.638.0.copyload, 2305843009213693951
  %i.o = icmp ugt i64 %i.m, 9223372036854775800
  %or.cond.i.i.i.i.i7 = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i.i.i7, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8: ; preds = %bb.f
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25636
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 8) #40, !noalias !25636 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i13 = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i13, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #41
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.l
  %.sroa.535.0 = phi ptr [ %.sroa.10.0.i.i.i9, %bb.l ], [ %.sroa.535.0.copyload, %bb.e ]
  %.sroa.033.0 = phi i64 [ %.sroa.4.0.i.i.i10, %bb.l ], [ -9223372036854775808, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.b, ptr %i.s, align 8
  store i64 %.sroa.020.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.522.0, ptr %.sroa.5.0..sroa_idx16, align 8
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.625.0.copyload27, ptr %.sroa.6.0..sroa_idx18, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.033.0, ptr %i.t, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.535.0, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.638.0.copyload, ptr %.sroa.543.0..sroa_idx, align 8
  ret void

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  switch i64 %.sroa.020.0, label %bb.k [
    i64 -9223372036854775808, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit"
    i64 0, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit"
  ]

bb.k:                                             ; preds = %bb.j
  %i.v = shl nuw i64 %.sroa.020.0, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.522.0, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit"

bb.l:                                             ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8
  %.sroa.10.0.i.i.i9 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8 ], [ %i.q, %bb.g ] ; 2 uses
  %.sroa.4.0.i.i.i10 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8 ], [ %.sroa.638.0.copyload, %bb.g ] ; 2 uses
  %i.w = icmp samesign ule i64 %.sroa.638.0.copyload, %.sroa.4.0.i.i.i10
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i9, ptr nonnull readonly align 8 %.sroa.535.0.copyload, i64 %i.m, i1 false), !noalias !25637
  br label %bb.i

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7cde35a1770d2a72E.exit": ; preds = %bb.k, %bb.j, %bb.j
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !16, !noundef !15
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !33, !noundef !15
  %i.g = icmp ne i64 %i.f, -9223372036854775808   ; 2 uses
  %i.h = load i64, ptr %1, align 8, !range !33, !noundef !15
  %i.i = icmp eq i64 %i.h, -9223372036854775808   ; 3 uses
  %not. = xor i1 %i.i, true
  %i.j = xor i1 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %not.)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val11 = load i64, ptr %i.k, align 8, !noundef !15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13 = load i64, ptr %i.l, align 8, !noundef !15
  %.not.i.i = icmp eq i64 %.val11, %.val13
  br i1 %.not.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

.split:                                           ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !15
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !15, !noundef !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.s, align 8, !nonnull !15, !noundef !15
  %i.t = shl nuw nsw i64 %.val11, 3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val10, ptr nonnull readonly align 8 %.val12, i64 %i.t), !alias.scope !25644
  %i.u = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.u, label %bb.e, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

bb.e:                                             ; preds = %.split, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !range !33, !noundef !15
  %i.x = icmp ne i64 %i.w, -9223372036854775808   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !range !33, !noundef !15
  %i.aa = icmp eq i64 %i.z, -9223372036854775808  ; 3 uses
  %not.6 = xor i1 %i.aa, true
  %i.ab = xor i1 %i.x, %i.aa
  br i1 %i.ab, label %bb.f, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17": ; preds = %bb.d, %bb.h, %bb.g, %.split, %bb.e, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit", %bb.a, %bb.b, %bb.i
  %.sroa.0.0.shrunk = phi i1 [ false, %.split ], [ %i.am, %bb.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit" ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.g ], [ %i.ah, %bb.h ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %not.6)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load i64, ptr %i.ac, align 8, !noundef !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9 = load i64, ptr %i.ad, align 8, !noundef !15
  %.not.i.i14 = icmp eq i64 %.val7, %.val9
  br i1 %.not.i.i14, label %bb.h, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8 = load ptr, ptr %i.ae, align 8, !nonnull !15, !noundef !15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.af, align 8, !nonnull !15, !noundef !15
  %i.ag = shl nuw nsw i64 %.val7, 3
  %bcmp.i.i16 = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val, ptr nonnull readonly align 8 %.val8, i64 %i.ag), !alias.scope !25645
  %i.ah = icmp eq i32 %bcmp.i.i16, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.aa)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !15
  %i.am = icmp eq i64 %i.aj, %i.al
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h7a1c743d2b10a4a4E.exit17"
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17haa8c086867ea745fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7561913bcd0f69c2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @522, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @523, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @520, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @524, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @521)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6e3c481a1552e4cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25651
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !25652
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = icmp samesign eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h48f60d14b49034eeE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25653
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !25653
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25653
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h48f60d14b49034eeE.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h48f60d14b49034eeE.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25651
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$smallvec..CollectionAllocErr$u20$as$u20$core..fmt..Debug$GT$3fmt17h38fa9e5b1c762419E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !33, !noundef !15
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @527, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @528, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @526)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @525, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h1ae755926189ede4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76dc2bc4497baa97E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !29, !noundef !15
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @530, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @488)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @529, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h92e52d3071d649ccE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !37, !noundef !15
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @530, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @531)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @529, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb253bce4c6a01cd3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !47, !noundef !15
  %.not = icmp eq i64 %i.b, 169
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @530, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @532)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @529, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfbbe10e4bb4256d5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !33, !noundef !15
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_4
