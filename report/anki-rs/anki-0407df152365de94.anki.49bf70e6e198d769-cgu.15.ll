inline.NumInlined: 4531
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E":bb.a
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i": ; preds = %bb.c
  %i.al = call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %i.al, ptr %i.ah, align 1, !alias.scope !602, !noalias !603
  %i.am = load i64, ptr %i.y, align 8, !alias.scope !591, !noalias !594, !noundef !4 ; 2 uses
  %i.an = load i64, ptr %i.z, align 8, !alias.scope !591, !noalias !594, !noundef !4
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i", label %"_ZN86_$LT$sha2..core_api..Sha256VarCore$u20$as$u20$digest..core_api..VariableOutputCore$GT$22finalize_variable_core17h1832a17fbfb87c1dE.exit"

"_ZN86_$LT$sha2..core_api..Sha256VarCore$u20$as$u20$digest..core_api..VariableOutputCore$GT$22finalize_variable_core17h1832a17fbfb87c1dE.exit": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !605, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef nonnull align 16 dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 1 captures(address, read_provenance) dereferenceable(129) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(64) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [128 x i8], align 1               ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false), !alias.scope !611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !617, !noalias !619, !noundef !4 ; 4 uses
  %i.h = icmp sgt i8 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = zext nneg i8 %i.g to i128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i128, ptr %i.j, align 16, !alias.scope !614, !noalias !621, !noundef !4
  %i.l = shl i128 %i.k, 10
  %i.m = shl nuw nsw i128 %i.i, 3
  %i.n = or disjoint i128 %i.l, %i.m
  %i.o = tail call i128 @llvm.bswap.i128(i128 %i.n) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.p = zext nneg i8 %i.g to i64                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  store i8 -128, ptr %i.q, align 1, !alias.scope !625, !noalias !626
  %i.r = icmp eq i8 %i.g, 127
  br i1 %i.r, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.q, i64 1
  %i.t = xor i64 %i.p, 127
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.t, i1 false), !alias.scope !625, !noalias !626
  %i.u = xor i64 %i.p, 112
  %i.v = icmp samesign ult i64 %i.u, 16
  br i1 %i.v, label %._crit_edge.thread.i, label %bb.b

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  tail call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %1, i64 noundef 1), !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !630
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, i8 0, i64 112, i1 false), !alias.scope !631, !noalias !634
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i128 %i.o, ptr %i.w, align 1, !alias.scope !635, !noalias !639
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(128) %i.b, i64 noundef 1), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !630
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i"

bb.b:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i128 %i.o, ptr %i.x, align 1, !alias.scope !641, !noalias !645
  tail call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %1, i64 noundef 1), !noalias !629
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i": ; preds = %bb.b, %._crit_edge.thread.i
  store i8 0, ptr %i.f, align 1, !alias.scope !625, !noalias !626
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !647
  store ptr %i.y, ptr %i.a, align 8, !noalias !651
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !651
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !651
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !651
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 8, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !651
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h58850fa5ebba578bE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull %i.j), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !653
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !654, !noalias !657, !noundef !4 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !654, !noalias !657, !noundef !4
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i", label %"_ZN86_$LT$sha2..core_api..Sha512VarCore$u20$as$u20$digest..core_api..VariableOutputCore$GT$22finalize_variable_core17hc9ed7ecbb3b00932E.exit"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i"
  %i.af = phi i64 [ %i.ab, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i" ], [ %i.an, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i" ] ; 3 uses
  %i.ag = add nuw i64 %i.af, 1
  store i64 %i.ag, ptr %i.z, align 8, !alias.scope !654, !noalias !657
  %i.ah = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.af), !noalias !659 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %"_ZN86_$LT$sha2..core_api..Sha512VarCore$u20$as$u20$digest..core_api..VariableOutputCore$GT$22finalize_variable_core17hc9ed7ecbb3b00932E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i"
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %.val.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !654, !noalias !657, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.af
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %.not.i.i = icmp eq i64 %i.aj, 8
  br i1 %.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i", label %bb.d, !prof !230

bb.d:                                             ; preds = %bb.c
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.aj, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @636) #50, !noalias !665
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i": ; preds = %bb.c
  %i.am = call i64 @llvm.bswap.i64(i64 %i.al)
  store i64 %i.am, ptr %i.ai, align 1, !alias.scope !665, !noalias !666
  %i.an = load i64, ptr %i.z, align 8, !alias.scope !654, !noalias !657, !noundef !4 ; 2 uses
  %i.ao = load i64, ptr %i.aa, align 8, !alias.scope !654, !noalias !657, !noundef !4
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i", label %"_ZN86_$LT$sha2..core_api..Sha512VarCore$u20$as$u20$digest..core_api..VariableOutputCore$GT$22finalize_variable_core17hc9ed7ecbb3b00932E.exit"

"_ZN86_$LT$sha2..core_api..Sha512VarCore$u20$as$u20$digest..core_api..VariableOutputCore$GT$22finalize_variable_core17hc9ed7ecbb3b00932E.exit": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.e, i64 64, i1 false), !alias.scope !668, !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12tracing_core8callsite8Callsite15private_type_id17hf2869adc7e78815eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @15, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN138_$LT$anki..error..not_found..NotFoundSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki..error..not_found..NotFoundError$GT$$GT$10into_error17hcab0ac926c1768f4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN101_$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$u20$as$u20$snafu..GenerateImplicitData$GT$8generate17h12355bed071fbcdfE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.thread12, %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #51
          to label %.thread12 unwind label %bb.c

bb.e:                                             ; preds = %.thread12
  resume { ptr, i32 } %i.f

.thread12:                                        ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #51
          to label %bb.e unwind label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN13fluent_syntax7unicode16unescape_unicode17h7128082bf19ca73dE(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %.not97.i = icmp eq i64 %2, 0
  br i1 %.not97.i, label %_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread.sink.split, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i", %.lr.ph.lr.ph.i
  %.sroa.01.0.ph94.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.bm, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i" ] ; 13 uses
  br label %bb.b

.outer._crit_edge.i:                              ; preds = %bb.f
  %i.c = icmp eq i64 %.sroa.01.0.ph94.i, 0
  br i1 %i.c, label %_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread.sink.split, label %bb.c

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.01.089.i = phi i64 [ %.sroa.01.0.ph94.i, %.lr.ph.i ], [ %i.l, %bb.f ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.089.i
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !677, !noalias !674, !noundef !4
  %i.f = icmp eq i8 %i.e, 92
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %.outer._crit_edge.i
  %.not5.i.i = icmp ult i64 %.sroa.01.0.ph94.i, %2
  br i1 %.not5.i.i, label %bb.d, label %.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.ph94.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !679, !noalias !674, !noundef !4
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread.sink.split, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d, %bb.c
  %i.j = add nuw i64 %.sroa.01.0.ph94.i, 1
  %umax.le.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.j)
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.0.ph94.i, i64 noundef %umax.le.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.089.i
  %.not38.i = icmp eq i64 %.sroa.01.0.ph94.i, %.sroa.01.089.i
  br i1 %.not38.i, label %bb.i, label %3

bb.f:                                             ; preds = %bb.b
  %i.l = add nuw i64 %.sroa.01.089.i, 1           ; 2 uses
  %i.m = icmp ult i64 %i.l, %2
  br i1 %i.m, label %bb.b, label %.outer._crit_edge.i

3:                                                ; preds = %bb.e
  %.not.i40.i = icmp ugt i64 %.sroa.01.0.ph94.i, %.sroa.01.089.i
  br i1 %.not.i40.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %3
  %i.n = icmp eq i64 %.sroa.01.0.ph94.i, 0
  br i1 %i.n, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.ph94.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !682, !noalias !674, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.e
  %.sroa.01.089.i12 = phi i64 [ %.sroa.01.089.i, %bb.j ], [ %.sroa.01.0.ph94.i, %bb.e ] ; 2 uses
  %i.r = add nuw i64 %.sroa.01.089.i12, 1         ; 5 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.l, label %.thread77.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.ph94.i
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %i.t, ptr noundef nonnull readonly %i.k)
  br label %bb.i

bb.k:                                             ; preds = %bb.h, %3
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.0.ph94.i, i64 noundef %.sroa.01.089.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #50
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !677, !noalias !674, !noundef !4 ; 2 uses
  switch i8 %i.v, label %.thread77.i [
    i8 92, label %.thread.i
    i8 34, label %bb.m
    i8 117, label %bb.x
    i8 85, label %bb.x
  ]

bb.m:                                             ; preds = %bb.l
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l
  %.sroa.015.0.ph.i = phi i32 [ 34, %bb.m ], [ 92, %bb.l ]
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !685, !noalias !677, !noundef !4 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.q

.thread77.i:                                      ; preds = %bb.l, %bb.i
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !690, !noalias !677, !noundef !4 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  br label %bb.q

bb.n:                                             ; preds = %bb.ab, %bb.aa, %.split7.i54.i, %bb.z, %bb.x
  %.sroa.0.0.i52.i = phi ptr [ %i.bz, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.x ], [ null, %.split7.i54.i ]
  %i.aa = tail call noundef i32 @_ZN13fluent_syntax7unicode14encode_unicode17hdf7876f1eb0024b4E(ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.0.0.i52.i, i64 %..i) ; 6 uses
  %i.ab = load i64, ptr %i.a, align 8, !alias.scope !692, !noalias !677, !noundef !4 ; 4 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i32 %i.aa, 128
  br i1 %i.ad, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp samesign ult i32 %i.aa, 2048
  br i1 %i.ae, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = icmp samesign ult i32 %i.aa, 65536
  %spec.select.i = select i1 %i.af, i64 3, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.thread77.i, %.thread.i
  %i.ag = phi i1 [ false, %bb.o ], [ true, %.thread.i ], [ true, %bb.n ], [ false, %bb.p ], [ false, %.thread77.i ]
  %i.ah = phi i64 [ %i.ab, %bb.o ], [ %i.w, %.thread.i ], [ %i.ab, %bb.n ], [ %i.ab, %bb.p ], [ %i.y, %.thread77.i ]
  %.sroa.01.165.i = phi i64 [ %i.bq, %bb.o ], [ %i.r, %.thread.i ], [ %i.bq, %bb.n ], [ %i.bq, %bb.p ], [ %i.r, %.thread77.i ]
  %.sroa.015.064.i = phi i32 [ %i.aa, %bb.o ], [ %.sroa.015.0.ph.i, %.thread.i ], [ %i.aa, %bb.n ], [ %i.aa, %bb.p ], [ 65533, %.thread77.i ] ; 7 uses
  %.sroa.0.0.i.i.i = phi i64 [ 2, %bb.o ], [ 1, %.thread.i ], [ 1, %bb.n ], [ %spec.select.i, %bb.p ], [ 3, %.thread77.i ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i.i.i)
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !692, !noalias !677, !nonnull !4, !noundef !4
  %i.aj = load i64, ptr %i.a, align 8, !alias.scope !692, !noalias !677, !noundef !4 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 10 uses
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = icmp samesign ult i32 %.sroa.015.064.i, 2048
  %i.an = trunc i32 %.sroa.015.064.i to i8
  %i.ao = and i8 %i.an, 63
  %i.ap = or disjoint i8 %i.ao, -128              ; 3 uses
  %i.aq = lshr i32 %.sroa.015.064.i, 6
  %i.ar = trunc i32 %i.aq to i8                   ; 2 uses
  %i.as = and i8 %i.ar, 63
  %i.at = or disjoint i8 %i.as, -128              ; 2 uses
  %i.au = lshr i32 %.sroa.015.064.i, 12
  %i.av = trunc i32 %i.au to i8                   ; 2 uses
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128
  %i.ay = lshr i32 %.sroa.015.064.i, 18
  %i.az = trunc nuw nsw i32 %i.ay to i8
  %i.ba = or disjoint i8 %i.az, -16
  br i1 %i.am, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bb = trunc nuw nsw i32 %.sroa.015.064.i to i8
  store i8 %i.bb, ptr %i.al, align 1
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i"

bb.t:                                             ; preds = %bb.r
  %i.bc = or disjoint i8 %i.ar, -64
  store i8 %i.bc, ptr %i.al, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ap, ptr %i.bd, align 1
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i"

bb.u:                                             ; preds = %bb.r
  %i.be = icmp samesign ult i32 %.sroa.015.064.i, 65536
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = or disjoint i8 %i.av, -32
  store i8 %i.bf, ptr %i.al, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.at, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 %i.ap, ptr %i.bh, align 1
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i"

bb.w:                                             ; preds = %bb.u
  store i8 %i.ba, ptr %i.al, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ax, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 %i.at, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store i8 %i.ap, ptr %i.bk, align 1
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i": ; preds = %bb.w, %bb.v, %bb.t, %bb.s
  %i.bl = add nuw i64 %.sroa.0.0.i.i.i, %i.ah
  store i64 %i.bl, ptr %i.a, align 8, !alias.scope !692, !noalias !677
  %i.bm = add i64 %.sroa.01.165.i, 1              ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %2
  br i1 %i.bn, label %.lr.ph.i, label %_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread

bb.x:                                             ; preds = %bb.l, %bb.l
  %i.bo = add nuw i64 %.sroa.01.089.i12, 2        ; 5 uses
  %i.bp = icmp eq i8 %i.v, 117
  %..i = select i1 %i.bp, i64 4, i64 6            ; 3 uses
  %i.bq = add i64 %..i, %i.r                      ; 3 uses
  %i.br = add i64 %..i, %i.bo                     ; 4 uses
  %.not.i48.i = icmp ugt i64 %i.bo, %i.br
  br i1 %.not.i48.i, label %bb.n, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not5.i49.i = icmp ult i64 %i.bo, %2
  br i1 %.not5.i49.i, label %bb.z, label %.split.i50.i

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !694, !noalias !674, !noundef !4
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %.split.i50.i, label %bb.n

.split.i50.i:                                     ; preds = %bb.z, %bb.y
  %.not6.i53.i = icmp ult i64 %i.br, %2
  br i1 %.not6.i53.i, label %bb.aa, label %.split7.i54.i

.split7.i54.i:                                    ; preds = %.split.i50.i
  %i.bv = icmp eq i64 %i.br, %2
  br i1 %i.bv, label %bb.ab, label %bb.n

bb.aa:                                            ; preds = %.split.i50.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !694, !noalias !674, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -65
  br i1 %i.by, label %bb.ab, label %bb.n

bb.ab:                                            ; preds = %bb.aa, %.split7.i54.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  br label %bb.n

_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread.sink.split: ; preds = %bb.a, %.outer._crit_edge.i, %bb.d
  %.sink = phi ptr [ %i.g, %bb.d ], [ %1, %.outer._crit_edge.i ], [ %1, %bb.a ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %.sink, ptr noundef nonnull readonly %i.ca)
  br label %_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread

_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread: ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i", %_ZN13fluent_syntax7unicode8unescape17hcb73cf0008a35ae3E.exit.thread.sink.split
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN142_$LT$axum_core..response..into_response_parts..TryIntoHeaderError$LT$K$C$V$GT$$u20$as$u20$axum_core..response..into_response..IntoResponse$GT$13into_response17h373702ec4acf2611E"(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !697
  store i64 0, ptr %i.c, align 8, !noalias !697
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !697
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !697
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !697
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !697
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !697
  store ptr %i.c, ptr %i.b, align 8, !noalias !697
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @120, ptr %i.f, align 8, !noalias !697
  %i.g = invoke noundef zeroext i1 @"_ZN78_$LT$http..header..value..InvalidHeaderValue$u20$as$u20$core..fmt..Display$GT$3fmt17h46ef27cb770e15e0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !704

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %bb.f unwind label %bb.e, !noalias !704

end_hunk_0
