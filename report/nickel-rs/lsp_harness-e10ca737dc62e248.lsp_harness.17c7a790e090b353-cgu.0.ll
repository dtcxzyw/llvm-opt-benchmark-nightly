Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN10serde_core3ser12SerializeMap15serialize_entry17ha93bf474a9d43a57E:bb.a
"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6927, !noalias !6925, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !6928
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !6927, !noalias !6925
  %.val9.pre.i = load ptr, ptr %i.b, align 8, !noalias !6919
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
  %.val9.i = phi ptr [ %.val.i, %bb.a ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !6918
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %.val.i6 = load ptr, ptr %i.b, align 8, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6932)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i6, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6933, !noalias !6934, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i6, align 8, !range !29, !alias.scope !6933, !noalias !6934, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6935
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.p, align 8, !alias.scope !6936, !noalias !6934
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit" ], [ %.pre.i.i.i.i.i.i.i7, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i6, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !6936, !noalias !6934, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !6936
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !6936, !noalias !6934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6939)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !6940, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6944)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6945, !noalias !6946, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val.i.i.i.i, align 8, !range !29, !alias.scope !6945, !noalias !6946, !noundef !28
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6947
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !6948, !noalias !6946
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  %i.ad = phi i64 [ %i.aa, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !6948, !noalias !6946, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 123, ptr %i.ah, align 1, !noalias !6949
  %i.ai = add nuw i64 %i.ad, 1
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !6948, !noalias !6946
  store ptr %i.b, ptr %i.a, align 8, !noalias !6937
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.aj, align 8, !noalias !6937
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @405, i64 noundef 4, i32 %.0.val)
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @406, i64 noundef 9, i32 %.4.val)
  %i.ak = load ptr, ptr %i.a, align 8, !noalias !6937, !nonnull !28, !align !35, !noundef !28
  %i.al = load i8, ptr %i.aj, align 8, !range !42, !noalias !6937, !noundef !28
  %.val.i.i = load ptr, ptr %i.ak, align 8        ; 5 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hc67950812807e396E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6953)
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !6954, !noalias !6955, !noundef !28 ; 3 uses
  %i.ap = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !6954, !noalias !6955, !noundef !28
  %i.aq = icmp eq i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.h, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.ao, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6956
  %.pre.i.i.i.i.i.i.i.i13.i.i = load i64, ptr %i.an, align 8, !alias.scope !6957, !noalias !6955
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ar = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i13.i.i, %bb.h ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !6957, !noalias !6955, !nonnull !28, !noundef !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store i8 125, ptr %i.av, align 1, !noalias !6957
  %i.aw = add nuw i64 %i.ar, 1
  store i64 %i.aw, ptr %i.an, align 8, !alias.scope !6957, !noalias !6955
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hc67950812807e396E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hc67950812807e396E.exit": ; preds = %bb.f, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6937
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hca87e7493e5c3631E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 4, 11) %2, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6989)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6989, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !42, !alias.scope !6989, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !6990 ; 6 uses
  br i1 %i.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6995, !noalias !6996, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !6995, !noalias !6996, !noundef !28
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6997
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !6998, !noalias !6996
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6998, !noalias !6996, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 44, ptr %i.m, align 1, !noalias !6999
  %i.n = add nuw i64 %i.i, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !6998, !noalias !6996
  %.val9.pre.i = load ptr, ptr %i.a, align 8, !noalias !6990
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
  %.val9.i = phi ptr [ %.val.i, %bb.a ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i8 2, ptr %i.b, align 8, !alias.scope !6989
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %.val.i6 = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7003)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i6, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !7004, !noalias !7005, !noundef !28 ; 3 uses
  %i.q = load i64, ptr %.val.i6, align 8, !range !29, !alias.scope !7004, !noalias !7005, !noundef !28
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h1828ef64cd50d6efE.exit", !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, i64 noundef %i.p, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7006
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.o, align 8, !alias.scope !7007, !noalias !7005
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h1828ef64cd50d6efE.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h1828ef64cd50d6efE.exit": ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", %bb.d
  %i.s = phi i64 [ %i.p, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit" ], [ %.pre.i.i.i.i.i.i.i7, %bb.d ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i6, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7007, !noalias !7005, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 58, ptr %i.w, align 1, !noalias !7007
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !7007, !noalias !7005
  %.val11.i = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9serialize17hfe868f72dde48a15E"(ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx.i = mul nuw nsw i64 %.16.val, 24
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7079)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7080, !noalias !7081, !noundef !28 ; 3 uses
  %i.d = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !7080, !noalias !7081, !noundef !28
  %i.e = icmp eq i64 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.c, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7082
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !7083, !noalias !7081
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7083, !noalias !7081, !nonnull !28, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 91, ptr %i.j, align 1, !noalias !7084
  %i.k = add nuw i64 %i.f, 1                      ; 4 uses
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !7083, !noalias !7081
  %i.l = icmp eq i64 %.16.val, 0
  br i1 %i.l, label %bb.c, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i
  %i.m = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !7085, !noalias !7086, !noundef !28
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i", label %_ZN10serde_core3ser10Serializer11collect_seq17h752fd53ceee06b4bE.exit, !prof !30

.lr.ph.i.i.i:                                     ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i
  %i.o = getelementptr i8, ptr %.8.val, i64 8
  %.val8.peel.i.i.i = load ptr, ptr %i.o, align 8, !noalias !7087, !nonnull !28, !noundef !28
  %i.p = getelementptr i8, ptr %.8.val, i64 16
  %.val9.peel.i.i.i = load i64, ptr %i.p, align 8, !noalias !7087
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i.i, i64 noundef %.val9.peel.i.i.i)
  %i.q = icmp eq i64 %.16.val, 1
  br i1 %i.q, label %.loopexit.i, label %.peel.next.i.i.preheader.i

.peel.next.i.i.preheader.i:                       ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb777a419b75c4859E.exit.i.i.i", %.peel.next.i.i.preheader.i
  %i.s = phi ptr [ %i.t, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb777a419b75c4859E.exit.i.i.i" ], [ %i.r, %.peel.next.i.i.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val8.i.i.i = load ptr, ptr %i.u, align 8, !noalias !7087 ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %.val9.i.i.i = load i64, ptr %i.v, align 8, !noalias !7087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7091)
  %i.w = load i64, ptr %i.b, align 8, !alias.scope !7092, !noalias !7093, !noundef !28 ; 3 uses
  %i.x = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !7092, !noalias !7093, !noundef !28
  %i.y = icmp eq i64 %i.x, %i.w
  br i1 %i.y, label %bb.d, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb777a419b75c4859E.exit.i.i.i", !prof !30

bb.d:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.w, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7094
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !7095, !noalias !7093
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb777a419b75c4859E.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb777a419b75c4859E.exit.i.i.i": ; preds = %bb.d, %.peel.next.i.i.i
  %i.z = phi i64 [ %i.w, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !7095, !noalias !7093, !nonnull !28, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 44, ptr %i.ac, align 1, !noalias !7096
  %i.ad = add nuw i64 %i.z, 1
  store i64 %i.ad, ptr %i.b, align 8, !alias.scope !7095, !noalias !7093
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i, i64 noundef %.val9.i.i.i)
  %i.ae = icmp eq ptr %i.t, %i.a
  br i1 %i.ae, label %.loopexit.i, label %.peel.next.i.i.i, !llvm.loop !7063

.loopexit.i:                                      ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb777a419b75c4859E.exit.i.i.i", %.lr.ph.i.i.i
  %i.af = load i64, ptr %i.b, align 8, !alias.scope !7097, !noalias !7098, !noundef !28 ; 3 uses
  %i.ag = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !7097, !noalias !7098, !noundef !28
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i", label %_ZN10serde_core3ser10Serializer11collect_seq17h752fd53ceee06b4bE.exit, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i": ; preds = %.loopexit.i, %bb.c
  %.sink.i = phi i64 [ %i.k, %bb.c ], [ %i.af, %.loopexit.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7099
  %.pre.i.i.i.i.i.i.i15.i = load i64, ptr %i.b, align 8, !noalias !7099
  br label %_ZN10serde_core3ser10Serializer11collect_seq17h752fd53ceee06b4bE.exit

_ZN10serde_core3ser10Serializer11collect_seq17h752fd53ceee06b4bE.exit: ; preds = %bb.c, %.loopexit.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i"
  %.sink29.i = phi i64 [ %i.af, %.loopexit.i ], [ %i.k, %bb.c ], [ %.pre.i.i.i.i.i.i.i15.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i" ] ; 3 uses
  %i.ai = icmp sgt i64 %.sink29.i, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.h, align 8, !noalias !7099, !nonnull !28, !noundef !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink29.i
  store i8 93, ptr %i.ak, align 1, !noalias !7099
  %storemerge.i = add nuw i64 %.sink29.i, 1
  store i64 %storemerge.i, ptr %i.b, align 8, !noalias !7099
  ret ptr null
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = invoke { i64, i64 } @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$13peek_position17h600d7557545629c1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd2865701fce3fc75E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.d, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17hd3dfb168367db28eE"(ptr noalias noundef align 8 dereferenceable(24) %1) #43
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$12parse_number17h255f0838bd7f2ec0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7130)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7131, !noundef !28 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7131, !noundef !28 ; 5 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit": ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7131, !nonnull !28, !align !37, !noundef !28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !7132, !noundef !28
  switch i8 %i.o, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.thread" [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.thread": ; preds = %bb.a, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit"
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7134)
  %i.p = add nuw i64 %i.h, 1                      ; 4 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !7135
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.lr.ph.i", label %.thread.thread.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.lr.ph.i": ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.i": ; preds = %bb.n, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.lr.ph.i"
  %.sroa.0.038.i = phi i64 [ %3, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.lr.ph.i" ], [ %i.bi, %bb.n ] ; 6 uses
  %.sroa.07.037.i = phi i32 [ 0, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.lr.ph.i" ], [ %i.bj, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.lr.ph.i" ], [ %i.bg, %bb.n ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !7136, !noundef !28 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit.i"
  %i.z = icmp eq i32 %.sroa.07.037.i, 0
  br i1 %i.z, label %.thread.thread.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit12.i"
end_hunk_0
begin_hunk_1_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.oj)
          to label %.noexc25.i.i.i.i.i unwind label %bb.cx

.noexc25.i.i.i.i.i:                               ; preds = %bb.cu
  %i.tv = load ptr, ptr %i.hp, align 8, !noalias !12775, !nonnull !28, !align !35, !noundef !28
  %i.tw = load i8, ptr %i.ov, align 8, !range !42, !noalias !12775, !noundef !28
  %.val20.i.i.i.i.i.i.i = load ptr, ptr %i.tv, align 8, !noalias !12907 ; 5 uses
  %i.tx = icmp eq i8 %i.tw, 0
  br i1 %i.tx, label %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %.noexc25.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12908)
  call void @llvm.experimental.noalias.scope.decl(metadata !12909)
  call void @llvm.experimental.noalias.scope.decl(metadata !12910)
  call void @llvm.experimental.noalias.scope.decl(metadata !12911)
  %i.ty = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.tz = load i64, ptr %i.ty, align 8, !alias.scope !12912, !noalias !12913, !noundef !28 ; 3 uses
  %i.ua = load i64, ptr %.val20.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !12912, !noalias !12913, !noundef !28
  %i.ub = icmp eq i64 %i.ua, %i.tz
  br i1 %i.ub, label %bb.cw, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, !prof !30

bb.cw:                                            ; preds = %bb.cv
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i, i64 noundef %i.tz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc26.i.i.i.i.i unwind label %bb.cx, !noalias !12793

.noexc26.i.i.i.i.i:                               ; preds = %bb.cw
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i = load i64, ptr %i.ty, align 8, !alias.scope !12914, !noalias !12913
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc26.i.i.i.i.i, %bb.cv
  %i.uc = phi i64 [ %i.tz, %bb.cv ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i ] ; 3 uses
  %i.ud = icmp sgt i64 %i.uc, -1
  call void @llvm.assume(i1 %i.ud)
  %i.ue = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !alias.scope !12914, !noalias !12913, !nonnull !28, !noundef !28
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.uc
  store i8 125, ptr %i.ug, align 1, !noalias !12915
  %i.uh = add nuw i64 %i.uc, 1
  store i64 %i.uh, ptr %i.ty, align 8, !alias.scope !12914, !noalias !12913
  br label %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.i.i.i.i

bb.cx:                                            ; preds = %bb.ch, %bb.cu, %bb.cp, %bb.cj, %bb.ck, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i", %bb.ca, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i", %bb.cd, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cw, %bb.ct, %bb.cr, %bb.co, %bb.cn, %bb.cm, %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.bz
  %i.ui = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12916)
  %.val.i.i.i.i.i.i1 = load i64, ptr %i.hr, align 8, !range !29, !alias.scope !12916, !noalias !12767, !noundef !28 ; 2 uses
  %i.uj = icmp eq i64 %.val.i.i.i.i.i.i1, 0
  br i1 %i.uj, label %.body.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.val1.i.i.i.i.i.i2 = load ptr, ptr %i.ot, align 8, !alias.scope !12916, !noalias !12767, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i2, i64 noundef %.val.i.i.i.i.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12917
  br label %.body.i.i.i

bb.cz:                                            ; preds = %.noexc15.i.i.i.i.i, %.noexc14.i.i.i.i.i
  %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i = phi ptr [ %i.rk, %.noexc15.i.i.i.i.i ], [ %i.rh, %.noexc14.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !12841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !12775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq), !noalias !12772
  call void @llvm.experimental.noalias.scope.decl(metadata !12918)
  %.val.i27.i.i.i.i.i = load i64, ptr %i.hr, align 8, !range !29, !alias.scope !12918, !noalias !12767, !noundef !28 ; 2 uses
  %i.uk = icmp eq i64 %.val.i27.i.i.i.i.i, 0
  br i1 %i.uk, label %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.thread.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val1.i28.i.i.i.i.i = load ptr, ptr %i.ot, align 8, !alias.scope !12918, !noalias !12767, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i28.i.i.i.i.i, i64 noundef %.val.i27.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12919
  br label %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.thread.i.i.i.i: ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr), !noalias !12767
  br label %bb.db

_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !12775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq), !noalias !12772
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.hr, align 8, !noalias !12920 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i = load ptr, ptr %i.ot, align 8, !noalias !12920 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = load i64, ptr %i.ou, align 8, !noalias !12920 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr), !noalias !12767
  %i.ul = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.ul, label %bb.db, label %bb.de

bb.db:                                            ; preds = %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i, %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i, %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i) ]
  %i.um = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12769

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i": ; preds = %bb.dk, %bb.dj, %bb.dd
  %.pn.i.i.i.i20 = phi { ptr, i32 } [ %i.uo, %bb.dd ], [ %i.vc, %bb.dj ], [ %i.vc, %bb.dk ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12921)
  call void @llvm.experimental.noalias.scope.decl(metadata !12922)
  %.val.i.i55.i.i.i.i = load i64, ptr %i.hw, align 8, !range !29, !alias.scope !12923, !noalias !12765, !noundef !28 ; 2 uses
  %i.un = icmp eq i64 %.val.i.i55.i.i.i.i, 0
  br i1 %i.un, label %.body.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"
  %.val1.i.i56.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12923, !noalias !12765, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i, i64 noundef %.val.i.i55.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12924
  br label %.body.i.i.i

bb.dd:                                            ; preds = %.invoke.i.i.i.i, %bb.dq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", %bb.dg, %bb.df
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.de:                                            ; preds = %_ZN10serde_json3ser6to_vec17hd6535c152b3555d5E.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i, ptr %i.hw, align 8, !noalias !12765
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12765
  %.sroa.5.0..sroa_idx.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i19, align 8, !noalias !12765
  %i.up = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !12765 ; 2 uses
  %i.uq = icmp ult i64 %i.up, 6
  call void @llvm.assume(i1 %i.uq)
  %i.ur = icmp samesign ugt i64 %i.up, 3
  br i1 %i.ur, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.dh, %bb.de
  %i.us = phi i64 [ %.pre.i.i.i.i, %bb.dh ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu), !noalias !12765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ht), !noalias !12765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs), !noalias !12765
  store i64 %i.us, ptr %i.hs, align 8, !noalias !12765
  %i.ut = icmp sgt i64 %i.us, -1
  call void @llvm.assume(i1 %i.ut)
  store ptr %i.hs, ptr %i.ht, align 8, !noalias !12765
  %.sroa.442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i, align 8, !noalias !12765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm), !noalias !12925
  store ptr @390, ptr %i.hm, align 8, !noalias !12926
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !12926
  %.sroa.5.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr %i.ht, ptr %.sroa.5.0..sroa_idx9.i.i.i.i, align 8, !noalias !12926
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !noalias !12926
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 8, !noalias !12926
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.hm)
          to label %bb.di unwind label %bb.dd, !noalias !12927

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv), !noalias !12765
  store ptr %i.hw, ptr %i.hv, align 8, !noalias !12765
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i, align 8, !noalias !12765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl), !noalias !12928
  %i.uu = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  store i64 4, ptr %i.uu, align 8, !noalias !12928
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %i.uv = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  store ptr @387, ptr %i.uv, align 8, !noalias !12928
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 96
  store ptr %i.hv, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  store i64 0, ptr %i.hl, align 8, !noalias !12928
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %i.uw = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store i64 0, ptr %i.uw, align 8, !noalias !12928
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i, align 8, !noalias !12928
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i, align 8, !noalias !12928
  %i.ux = getelementptr inbounds nuw i8, ptr %i.hl, i64 72
  store i32 1, ptr %i.ux, align 8, !noalias !12928
  %i.uy = getelementptr inbounds nuw i8, ptr %i.hl, i64 76
  store i32 302, ptr %i.uy, align 4, !noalias !12928
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.hl)
          to label %bb.dh unwind label %bb.dd, !noalias !12927

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl), !noalias !12928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !noalias !12765
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i19, align 8, !noalias !12765
  br label %bb.df

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm), !noalias !12925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hs), !noalias !12765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ht), !noalias !12765
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.hu, align 8, !noalias !12765 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i21, align 8, !noalias !12765, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %.sroa.11.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !12765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu), !noalias !12765
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i), "nonnull"(ptr %.val33.i.i.i) ]
  %i.uz = getelementptr inbounds nuw i8, ptr %.val33.i.i.i, i64 56
  %i.va = load ptr, ptr %i.uz, align 8, !invariant.load !28, !noalias !12927, !nonnull !28 ; 2 uses
  %i.vb = invoke noundef ptr %i.va(ptr noundef nonnull align 1 %.val32.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i.i)
          to label %bb.dl unwind label %bb.dj, !noalias !12927 ; 2 uses

bb.dj:                                            ; preds = %bb.dm, %bb.di
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vd = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.vd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12929
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.dl:                                            ; preds = %bb.di
  %.not.i.i.i.i = icmp eq ptr %i.vb, null
  br i1 %.not.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ve = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.vb)
          to label %bb.dv unwind label %bb.dj, !noalias !12927 ; 2 uses

bb.dn:                                            ; preds = %bb.dl
  %i.vf = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.vf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12930
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i": ; preds = %bb.do, %bb.dn
  %i.vg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12765, !nonnull !28, !noundef !28
  %i.vh = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i19, align 8, !noalias !12765, !noundef !28
  %i.vi = invoke noundef ptr %i.va(ptr noundef nonnull align 1 %.val32.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vg, i64 noundef %i.vh)
          to label %bb.dp unwind label %bb.dd, !noalias !12927 ; 2 uses

bb.dp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i"
  %.not48.i.i.i.i = icmp eq ptr %i.vi, null
  br i1 %.not48.i.i.i.i, label %bb.dq, label %.invoke.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.vj = getelementptr inbounds nuw i8, ptr %.val33.i.i.i, i64 48
  %i.vk = load ptr, ptr %i.vj, align 8, !invariant.load !28, !noalias !12927, !nonnull !28
  %i.vl = invoke noundef ptr %i.vk(ptr noundef nonnull align 1 %.val32.i.i.i)
          to label %bb.dr unwind label %bb.dd, !noalias !12927 ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %.not50.i.i.i.i = icmp eq ptr %i.vl, null
  br i1 %.not50.i.i.i.i, label %bb.ds, label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.dr, %bb.dp
  %i.vm = phi ptr [ %i.vi, %bb.dp ], [ %i.vl, %bb.dr ]
  %i.vn = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.vm)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i" unwind label %bb.dd, !noalias !12927

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !12931)
  call void @llvm.experimental.noalias.scope.decl(metadata !12932)
  %.val.i.i66.i.i.i.i = load i64, ptr %i.hw, align 8, !range !29, !alias.scope !12933, !noalias !12765, !noundef !28 ; 2 uses
  %i.vo = icmp eq i64 %.val.i.i66.i.i.i.i, 0
  br i1 %i.vo, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.val1.i.i67.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12933, !noalias !12765, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i, i64 noundef %.val.i.i66.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12934
  br label %bb.dx

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i": ; preds = %bb.dw, %bb.dv, %.invoke.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ve, %bb.dv ], [ %i.vn, %.invoke.i.i.i.i ], [ %i.ve, %bb.dw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12935)
  call void @llvm.experimental.noalias.scope.decl(metadata !12936)
  %.val.i.i70.i.i.i.i = load i64, ptr %i.hw, align 8, !range !29, !alias.scope !12937, !noalias !12765, !noundef !28 ; 2 uses
  %i.vp = icmp eq i64 %.val.i.i70.i.i.i.i, 0
  br i1 %i.vp, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i"
  %.val1.i.i71.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12937, !noalias !12765, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i, i64 noundef %.val.i.i70.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12938
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dm
  %i.vq = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.vq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12939
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i"

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ef, %bb.dc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i", %bb.cy, %bb.cx
  %.pn.i.i.i = phi { ptr, i32 } [ %i.wp, %bb.ef ], [ %.pn.i.i.i.i20, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i" ], [ %i.ui, %bb.cx ], [ %i.ui, %bb.cy ], [ %.pn.i.i.i.i20, %bb.dc ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..References$GT$$GT$17hc81a1ba98b760264E"(ptr noalias noundef align 8 dereferenceable(192) %i.ib) #43, !noalias !12940
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i, %bb.dz, %bb.ek, %bb.db, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.dx:                                            ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw), !noalias !12765
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ia, i64 120 ; 2 uses
  br label %bb.dz

bb.dy:                                            ; preds = %bb.du, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i", %bb.db
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.um, %bb.db ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw), !noalias !12765
  br label %bb.en

bb.dz:                                            ; preds = %bb.el, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !noalias !12757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz), !noalias !12757
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.hz, ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12940

bb.ea:                                            ; preds = %bb.dz
  %i.vu = load i64, ptr %i.hz, align 8, !range !34, !noalias !12757, !noundef !28 ; 3 uses
  %i.vv = icmp eq i64 %i.vu, -9223372036854775808
  %i.vw = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !12757 ; 3 uses
  br i1 %i.vv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !noalias !12757
  br label %bb.ei

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i, i64 112, i1 false), !noalias !12757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !noalias !12757
  store i64 %i.vu, ptr %i.ia, align 8, !noalias !12757
  store ptr %i.vw, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !12757
  %i.vx = load ptr, ptr %i.vr, align 8, !alias.scope !12763, !nonnull !28, !noundef !28 ; 2 uses
  %i.vy = load i64, ptr %i.vs, align 8, !alias.scope !12763, !noundef !28 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.vt, align 8, !noalias !12757 ; 3 uses
  %i.vz = and i64 %i.vy, -16                      ; 3 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.vz ; 2 uses
  %i.wb = icmp eq i64 %i.vz, 0
  br i1 %i.wb, label %._crit_edge3732, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader": ; preds = %bb.ec
  %i.wc = insertelement <16 x i32> poison, i32 %.val.i.i.i, i64 0
  %i.wd = shufflevector <16 x i32> %i.wc, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i"

bb.ed:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i"
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i3731, i64 64
  %i.wf = add i64 %.sroa.5.0.i.i.i.i3730, -16     ; 2 uses
  %i.wg = icmp eq i64 %i.wf, 0
  br i1 %i.wg, label %._crit_edge3732, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader", %bb.ed
  %.sroa.0.03.i.i.i.i3731 = phi ptr [ %i.we, %bb.ed ], [ %i.vx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i3730 = phi i64 [ %i.wf, %bb.ed ], [ %i.vz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader" ]
  %i.wh = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i3731, align 4, !alias.scope !12941, !noalias !12942
  %i.wi = icmp eq <16 x i32> %i.wh, %i.wd
  %i.wj = bitcast <16 x i1> %i.wi to i16
  %.not3752 = icmp eq i16 %i.wj, 0
  br i1 %.not3752, label %bb.ed, label %.loopexit.i.i.i

._crit_edge3732:                                  ; preds = %bb.ed, %bb.ec
  %i.wk = shl i64 %i.vy, 2
  %.idx3746 = and i64 %i.wk, 60                   ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.idx3746
  %.not.not.not.i.not.not.i.i.i.i3733 = icmp samesign eq i64 %.idx3746, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i3733, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph3735

bb.ee:                                            ; preds = %.lr.ph3735
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.wm, %i.wl
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph3735

.lr.ph3735:                                       ; preds = %._crit_edge3732, %bb.ee
  %i.wn = phi ptr [ %i.wm, %bb.ee ], [ %i.wa, %._crit_edge3732 ] ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %i.wn, align 4, !alias.scope !12941, !noalias !12943, !noundef !28
  %i.wo = icmp eq i32 %.val4.i.i.i.i.i, %.val.i.i.i
  br i1 %i.wo, label %.loopexit.i.i.i, label %bb.ee

bb.ef:                                            ; preds = %bb.ej, %bb.eh
  %i.wp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.ia) #43
          to label %.body.i.i.i unwind label %bb.em, !noalias !12940

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i": ; preds = %._crit_edge3732, %bb.ee
  %i.wq = load i32, ptr %i.oh, align 4, !alias.scope !12763, !noundef !28
  %.not30.i.i.i = icmp eq i32 %.val.i.i.i, %i.wq
  br i1 %.not30.i.i.i, label %bb.eg, label %bb.eh

.loopexit.i.i.i:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i", %.lr.ph3735
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.ia)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12769

bb.eg:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i, i64 112, i1 false), !noalias !12944
  br label %bb.ei
end_hunk_1
begin_hunk_2_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.abk)
          to label %.noexc28.i.i.i.i.i unwind label %bb.io

.noexc28.i.i.i.i.i:                               ; preds = %bb.il
  %i.aji = load ptr, ptr %i.gl, align 8, !noalias !13052, !nonnull !28, !align !35, !noundef !28
  %i.ajj = load i8, ptr %i.abw, align 8, !range !42, !noalias !13052, !noundef !28
  %.val20.i.i.i.i.i.i.i103 = load ptr, ptr %i.aji, align 8, !noalias !13215 ; 5 uses
  %i.ajk = icmp eq i8 %i.ajj, 0
  br i1 %i.ajk, label %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.i.i.i.i, label %bb.im

bb.im:                                            ; preds = %.noexc28.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i103) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13216)
  call void @llvm.experimental.noalias.scope.decl(metadata !13217)
  call void @llvm.experimental.noalias.scope.decl(metadata !13218)
  call void @llvm.experimental.noalias.scope.decl(metadata !13219)
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i103, i64 16 ; 3 uses
  %i.ajm = load i64, ptr %i.ajl, align 8, !alias.scope !13220, !noalias !13221, !noundef !28 ; 3 uses
  %i.ajn = load i64, ptr %.val20.i.i.i.i.i.i.i103, align 8, !range !29, !alias.scope !13220, !noalias !13221, !noundef !28
  %i.ajo = icmp eq i64 %i.ajn, %i.ajm
  br i1 %i.ajo, label %bb.in, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i104, !prof !30

bb.in:                                            ; preds = %bb.im
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i103, i64 noundef %i.ajm, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc29.i.i.i.i.i unwind label %bb.io, !noalias !13070

.noexc29.i.i.i.i.i:                               ; preds = %bb.in
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i183 = load i64, ptr %i.ajl, align 8, !alias.scope !13222, !noalias !13221
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i104

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i104: ; preds = %.noexc29.i.i.i.i.i, %bb.im
  %i.ajp = phi i64 [ %i.ajm, %bb.im ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i183, %.noexc29.i.i.i.i.i ] ; 3 uses
  %i.ajq = icmp sgt i64 %i.ajp, -1
  call void @llvm.assume(i1 %i.ajq)
  %i.ajr = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i103, i64 8
  %i.ajs = load ptr, ptr %i.ajr, align 8, !alias.scope !13222, !noalias !13221, !nonnull !28, !noundef !28
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ajp
  store i8 125, ptr %i.ajt, align 1, !noalias !13223
  %i.aju = add nuw i64 %i.ajp, 1
  store i64 %i.aju, ptr %i.ajl, align 8, !alias.scope !13222, !noalias !13221
  br label %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.i.i.i.i

bb.io:                                            ; preds = %bb.ho, %bb.il, %bb.ig, %bb.hq, %bb.hr, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i25", %bb.hh, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i37", %bb.hk, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i44", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i97", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.in, %bb.ik, %bb.ih, %bb.if, %bb.hy, %bb.hx, %bb.hv, %bb.hu, %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i.i85", %bb.hn, %bb.hm, %bb.hl, %bb.hj, %bb.hi, %bb.hg
  %i.ajv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13224)
  %.val.i.i.i.i.i.i26 = load i64, ptr %i.gn, align 8, !range !29, !alias.scope !13224, !noalias !13044, !noundef !28 ; 2 uses
  %i.ajw = icmp eq i64 %.val.i.i.i.i.i.i26, 0
  br i1 %i.ajw, label %.body.i.i.i28, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %.val1.i.i.i.i.i.i27 = load ptr, ptr %i.abu, align 8, !alias.scope !13224, !noalias !13044, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i27, i64 noundef %.val.i.i.i.i.i.i26, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13225
  br label %.body.i.i.i28

bb.iq:                                            ; preds = %.noexc15.i.i.i.i.i88, %.noexc14.i.i.i.i.i52
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ael, %.noexc15.i.i.i.i.i88 ], [ %i.aei, %.noexc14.i.i.i.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !13118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !noalias !13052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !13049
  call void @llvm.experimental.noalias.scope.decl(metadata !13226)
  %.val.i30.i.i.i.i.i = load i64, ptr %i.gn, align 8, !range !29, !alias.scope !13226, !noalias !13044, !noundef !28 ; 2 uses
  %i.ajx = icmp eq i64 %.val.i30.i.i.i.i.i, 0
  br i1 %i.ajx, label %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.thread.i.i.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.val1.i31.i.i.i.i.i = load ptr, ptr %i.abu, align 8, !alias.scope !13226, !noalias !13044, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i31.i.i.i.i.i, i64 noundef %.val.i30.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13227
  br label %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.thread.i.i.i.i: ; preds = %bb.ir, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !noalias !13044
  br label %bb.is

_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i104, %.noexc28.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !noalias !13052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !13049
  %.sroa.013.0.copyload.i.i.i.i105 = load i64, ptr %i.gn, align 8, !noalias !13228 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i106 = load ptr, ptr %i.abu, align 8, !noalias !13228 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i107 = load i64, ptr %i.abv, align 8, !noalias !13228 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !noalias !13044
  %i.ajy = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i105, -9223372036854775808
  br i1 %i.ajy, label %bb.is, label %bb.iv

bb.is:                                            ; preds = %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i54 = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i106, %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i54) ]
  %i.ajz = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i54)
          to label %bb.jp unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13046

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115": ; preds = %bb.jb, %bb.ja, %bb.iu
  %.pn.i.i.i.i116 = phi { ptr, i32 } [ %i.akb, %bb.iu ], [ %i.akp, %bb.ja ], [ %i.akp, %bb.jb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13229)
  call void @llvm.experimental.noalias.scope.decl(metadata !13230)
  %.val.i.i55.i.i.i.i117 = load i64, ptr %i.gs, align 8, !range !29, !alias.scope !13231, !noalias !13042, !noundef !28 ; 2 uses
  %i.aka = icmp eq i64 %.val.i.i55.i.i.i.i117, 0
  br i1 %i.aka, label %.body.i.i.i28, label %bb.it

bb.it:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115"
  %.val1.i.i56.i.i.i.i118 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i108, align 8, !alias.scope !13231, !noalias !13042, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i118, i64 noundef %.val.i.i55.i.i.i.i117, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13232
  br label %.body.i.i.i28

bb.iu:                                            ; preds = %.invoke.i.i.i.i131, %bb.jh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i129", %bb.ix, %bb.iw
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115"

bb.iv:                                            ; preds = %_ZN10serde_json3ser6to_vec17hec2ea8c7835503e2E.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i105, ptr %i.gs, align 8, !noalias !13042
  %.sroa.4.0..sroa_idx.i.i.i.i108 = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i106, ptr %.sroa.4.0..sroa_idx.i.i.i.i108, align 8, !noalias !13042
  %.sroa.5.0..sroa_idx.i.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i107, ptr %.sroa.5.0..sroa_idx.i.i.i.i109, align 8, !noalias !13042
  %i.akc = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !13042 ; 2 uses
  %i.akd = icmp ult i64 %i.akc, 6
  call void @llvm.assume(i1 %i.akd)
  %i.ake = icmp samesign ugt i64 %i.akc, 3
  br i1 %i.ake, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iy, %bb.iv
  %i.akf = phi i64 [ %.pre.i.i.i.i182, %bb.iy ], [ %.sroa.9.0.copyload.i.i.i.i107, %bb.iv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !noalias !13042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !noalias !13042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !noalias !13042
  store i64 %i.akf, ptr %i.go, align 8, !noalias !13042
  %i.akg = icmp sgt i64 %i.akf, -1
  call void @llvm.assume(i1 %i.akg)
  store ptr %i.go, ptr %i.gp, align 8, !noalias !13042
  %.sroa.442.0..sroa_idx.i.i.i.i110 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i110, align 8, !noalias !13042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !13233
  store ptr @390, ptr %i.gh, align 8, !noalias !13234
  %.sroa.48.0..sroa_idx.i.i.i.i111 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i111, align 8, !noalias !13234
  %.sroa.5.0..sroa_idx9.i.i.i.i112 = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gp, ptr %.sroa.5.0..sroa_idx9.i.i.i.i112, align 8, !noalias !13234
  %.sroa.610.0..sroa_idx.i.i.i.i113 = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i113, align 8, !noalias !13234
  %.sroa.711.0..sroa_idx.i.i.i.i114 = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i114, align 8, !noalias !13234
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.gh)
          to label %bb.iz unwind label %bb.iu, !noalias !13235

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !noalias !13042
  store ptr %i.gs, ptr %i.gr, align 8, !noalias !13042
  %.sroa.438.0..sroa_idx.i.i.i.i171 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i171, align 8, !noalias !13042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !noalias !13236
  %i.akh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store i64 4, ptr %i.akh, align 8, !noalias !13236
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i172, align 8, !noalias !13236
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i173 = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i173, align 8, !noalias !13236
  %i.aki = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  store ptr @387, ptr %i.aki, align 8, !noalias !13236
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %i.gg, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i174, align 8, !noalias !13236
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i175 = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  store ptr %i.gr, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i175, align 8, !noalias !13236
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i176 = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i176, align 8, !noalias !13236
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i177 = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i177, align 8, !noalias !13236
  store i64 0, ptr %i.gg, align 8, !noalias !13236
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i178, align 8, !noalias !13236
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i179 = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i179, align 8, !noalias !13236
  %i.akj = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i64 0, ptr %i.akj, align 8, !noalias !13236
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i180 = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i180, align 8, !noalias !13236
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i181, align 8, !noalias !13236
  %i.akk = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  store i32 1, ptr %i.akk, align 8, !noalias !13236
  %i.akl = getelementptr inbounds nuw i8, ptr %i.gg, i64 76
  store i32 302, ptr %i.akl, align 4, !noalias !13236
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gg)
          to label %bb.iy unwind label %bb.iu, !noalias !13235

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg), !noalias !13236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !13042
  %.pre.i.i.i.i182 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i109, align 8, !noalias !13042
  br label %bb.iw

bb.iz:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !13233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !13042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !13042
  %.sroa.06.0.copyload.i.i.i.i119 = load i64, ptr %i.gq, align 8, !noalias !13042 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i120 = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.sroa.7.0.copyload.i.i.i.i121 = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i120, align 8, !noalias !13042, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i122 = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %.sroa.11.0.copyload.i.i.i.i123 = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i122, align 8, !noalias !13042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !13042
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i23), "nonnull"(ptr %.val33.i.i.i24) ]
  %i.akm = getelementptr inbounds nuw i8, ptr %.val33.i.i.i24, i64 56
  %i.akn = load ptr, ptr %i.akm, align 8, !invariant.load !28, !noalias !13235, !nonnull !28 ; 2 uses
  %i.ako = invoke noundef ptr %i.akn(ptr noundef nonnull align 1 %.val32.i.i.i23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i121, i64 noundef %.sroa.11.0.copyload.i.i.i.i123)
          to label %bb.jc unwind label %bb.ja, !noalias !13235 ; 2 uses

bb.ja:                                            ; preds = %bb.jd, %bb.iz
  %i.akp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akq = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i119, 0
  br i1 %i.akq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115", label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i121, i64 noundef %.sroa.06.0.copyload.i.i.i.i119, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13237
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115"

bb.jc:                                            ; preds = %bb.iz
  %.not.i.i.i.i124 = icmp eq ptr %i.ako, null
  br i1 %.not.i.i.i.i124, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.akr = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ako)
          to label %bb.jm unwind label %bb.ja, !noalias !13235 ; 2 uses

bb.je:                                            ; preds = %bb.jc
  %i.aks = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i119, 0
  br i1 %i.aks, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i129", label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i121, i64 noundef %.sroa.06.0.copyload.i.i.i.i119, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13238
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i129"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i129": ; preds = %bb.jf, %bb.je
  %i.akt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i108, align 8, !noalias !13042, !nonnull !28, !noundef !28
  %i.aku = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i109, align 8, !noalias !13042, !noundef !28
  %i.akv = invoke noundef ptr %i.akn(ptr noundef nonnull align 1 %.val32.i.i.i23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.akt, i64 noundef %i.aku)
          to label %bb.jg unwind label %bb.iu, !noalias !13235 ; 2 uses

bb.jg:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i129"
  %.not48.i.i.i.i130 = icmp eq ptr %i.akv, null
  br i1 %.not48.i.i.i.i130, label %bb.jh, label %.invoke.i.i.i.i131

bb.jh:                                            ; preds = %bb.jg
  %i.akw = getelementptr inbounds nuw i8, ptr %.val33.i.i.i24, i64 48
  %i.akx = load ptr, ptr %i.akw, align 8, !invariant.load !28, !noalias !13235, !nonnull !28
  %i.aky = invoke noundef ptr %i.akx(ptr noundef nonnull align 1 %.val32.i.i.i23)
          to label %bb.ji unwind label %bb.iu, !noalias !13235 ; 2 uses

bb.ji:                                            ; preds = %bb.jh
  %.not50.i.i.i.i132 = icmp eq ptr %i.aky, null
  br i1 %.not50.i.i.i.i132, label %bb.jj, label %.invoke.i.i.i.i131

.invoke.i.i.i.i131:                               ; preds = %bb.ji, %bb.jg
  %i.akz = phi ptr [ %i.akv, %bb.jg ], [ %i.aky, %bb.ji ]
  %i.ala = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.akz)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125" unwind label %bb.iu, !noalias !13235

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.experimental.noalias.scope.decl(metadata !13239)
  call void @llvm.experimental.noalias.scope.decl(metadata !13240)
  %.val.i.i66.i.i.i.i133 = load i64, ptr %i.gs, align 8, !range !29, !alias.scope !13241, !noalias !13042, !noundef !28 ; 2 uses
  %i.alb = icmp eq i64 %.val.i.i66.i.i.i.i133, 0
  br i1 %i.alb, label %bb.jo, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %.val1.i.i67.i.i.i.i134 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i108, align 8, !alias.scope !13241, !noalias !13042, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i134, i64 noundef %.val.i.i66.i.i.i.i133, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13242
  br label %bb.jo

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125": ; preds = %bb.jn, %bb.jm, %.invoke.i.i.i.i131
  %.sroa.0.1.i.i.i.i126 = phi ptr [ %i.akr, %bb.jm ], [ %i.ala, %.invoke.i.i.i.i131 ], [ %i.akr, %bb.jn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13243)
  call void @llvm.experimental.noalias.scope.decl(metadata !13244)
  %.val.i.i70.i.i.i.i127 = load i64, ptr %i.gs, align 8, !range !29, !alias.scope !13245, !noalias !13042, !noundef !28 ; 2 uses
  %i.alc = icmp eq i64 %.val.i.i70.i.i.i.i127, 0
  br i1 %i.alc, label %bb.jp, label %bb.jl

bb.jl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125"
  %.val1.i.i71.i.i.i.i128 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i108, align 8, !alias.scope !13245, !noalias !13042, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i128, i64 noundef %.val.i.i70.i.i.i.i127, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13246
  br label %bb.jp

bb.jm:                                            ; preds = %bb.jd
  %i.ald = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i119, 0
  br i1 %i.ald, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125", label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i121, i64 noundef %.sroa.06.0.copyload.i.i.i.i119, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13247
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125"

.body.i.i.i28:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jw, %bb.it, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115", %bb.ip, %bb.io
  %.pn.i.i.i29 = phi { ptr, i32 } [ %i.amc, %bb.jw ], [ %.pn.i.i.i.i116, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i115" ], [ %i.ajv, %bb.io ], [ %i.ajv, %bb.ip ], [ %.pn.i.i.i.i116, %bb.it ], [ %lpad.loopexit.split-lp3845, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..Completion$GT$$GT$17hf54b9ad73177d354E"(ptr noalias noundef align 8 dereferenceable(216) %i.gx) #43, !noalias !13248
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i159, %bb.jq, %bb.kb, %bb.is, %bb.hf
  %lpad.loopexit.split-lp3845 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i28

bb.jo:                                            ; preds = %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !noalias !13042
  %.sroa.518.0..sroa_idx.i.i.i135 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.sroa.619.0..sroa_idx.i.i.i136 = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %.sroa.415.0..sroa_idx.i.i.i137 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.sroa.516.0..sroa_idx.i.i.i138 = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.alg = getelementptr inbounds nuw i8, ptr %i.gw, i64 120 ; 2 uses
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jl, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125", %bb.is
  %.sroa.0.0.i.ph.i.i.i57 = phi ptr [ %i.ajz, %bb.is ], [ %.sroa.0.1.i.i.i.i126, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i125" ], [ %.sroa.0.1.i.i.i.i126, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !noalias !13042
  br label %bb.ke

bb.jq:                                            ; preds = %bb.kc, %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !13039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !13039
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.jr unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13248

bb.jr:                                            ; preds = %bb.jq
  %i.alh = load i64, ptr %i.gv, align 8, !range !34, !noalias !13039, !noundef !28 ; 3 uses
  %i.ali = icmp eq i64 %i.alh, -9223372036854775808
  %i.alj = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i135, align 8, !noalias !13039 ; 3 uses
  br i1 %i.ali, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !13039
  br label %bb.jz

bb.jt:                                            ; preds = %bb.jr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i138, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i136, i64 112, i1 false), !noalias !13039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !13039
  store i64 %i.alh, ptr %i.gw, align 8, !noalias !13039
  store ptr %i.alj, ptr %.sroa.415.0..sroa_idx.i.i.i137, align 8, !noalias !13039
  %i.alk = load ptr, ptr %i.ale, align 8, !alias.scope !13038, !nonnull !28, !noundef !28 ; 2 uses
  %i.all = load i64, ptr %i.alf, align 8, !alias.scope !13038, !noundef !28 ; 2 uses
  %.val.i.i.i139 = load i32, ptr %i.alg, align 8, !noalias !13039 ; 3 uses
  %i.alm = and i64 %i.all, -16                    ; 3 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %i.alm ; 2 uses
  %i.alo = icmp eq i64 %i.alm, 0
  br i1 %i.alo, label %._crit_edge3696, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142.preheader": ; preds = %bb.jt
  %i.alp = insertelement <16 x i32> poison, i32 %.val.i.i.i139, i64 0
  %i.alq = shufflevector <16 x i32> %i.alp, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142"

bb.ju:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142"
  %i.alr = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i1413695, i64 64
  %i.als = add i64 %.sroa.5.0.i.i.i.i1403694, -16 ; 2 uses
  %i.alt = icmp eq i64 %i.als, 0
  br i1 %i.alt, label %._crit_edge3696, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142.preheader", %bb.ju
  %.sroa.0.03.i.i.i.i1413695 = phi ptr [ %i.alr, %bb.ju ], [ %i.alk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i1403694 = phi i64 [ %i.als, %bb.ju ], [ %i.alm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142.preheader" ]
  %i.alu = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i1413695, align 4, !alias.scope !13249, !noalias !13250
  %i.alv = icmp eq <16 x i32> %i.alu, %i.alq
  %i.alw = bitcast <16 x i1> %i.alv to i16
  %.not3751 = icmp eq i16 %i.alw, 0
  br i1 %.not3751, label %bb.ju, label %.loopexit.i.i.i159

._crit_edge3696:                                  ; preds = %bb.ju, %bb.jt
  %i.alx = shl i64 %i.all, 2
  %.idx3745 = and i64 %i.alx, 60                  ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.aln, i64 %.idx3745
  %.not.not.not.i.not.not.i.i.i.i1603697 = icmp samesign eq i64 %.idx3745, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i1603697, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i162", label %.lr.ph3699

bb.jv:                                            ; preds = %.lr.ph3699
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ama, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i160 = icmp eq ptr %i.alz, %i.aly
  br i1 %.not.not.not.i.not.not.i.i.i.i160, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i162", label %.lr.ph3699

.lr.ph3699:                                       ; preds = %._crit_edge3696, %bb.jv
  %i.ama = phi ptr [ %i.alz, %bb.jv ], [ %i.aln, %._crit_edge3696 ] ; 2 uses
  %.val4.i.i.i.i.i161 = load i32, ptr %i.ama, align 4, !alias.scope !13249, !noalias !13251, !noundef !28
  %i.amb = icmp eq i32 %.val4.i.i.i.i.i161, %.val.i.i.i139
  br i1 %i.amb, label %.loopexit.i.i.i159, label %bb.jv

bb.jw:                                            ; preds = %bb.ka, %bb.jy
  %i.amc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.gw) #43
          to label %.body.i.i.i28 unwind label %bb.kd, !noalias !13248

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i162": ; preds = %._crit_edge3696, %bb.jv
  %i.amd = load i32, ptr %i.abi, align 4, !alias.scope !13038, !noundef !28
  %.not30.i.i.i163 = icmp eq i32 %.val.i.i.i139, %i.amd
  br i1 %.not30.i.i.i163, label %bb.jx, label %bb.jy

.loopexit.i.i.i159:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i142", %.lr.ph3699
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.gw)
          to label %bb.kc unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13046

bb.jx:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i162"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.i.i22, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i138, i64 112, i1 false), !noalias !13252
  br label %bb.jz
end_hunk_2
begin_hunk_3_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !13423
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.bak)
          to label %.noexc34.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34.i.i.i.i.i:                               ; preds = %bb.rs
  %i.blf = load ptr, ptr %i.ez, align 8, !noalias !13357, !nonnull !28, !align !35, !noundef !28
  %i.blg = load i8, ptr %i.baw, align 8, !range !42, !noalias !13357, !noundef !28
  %.val20.i.i.i.i.i.i.i284 = load ptr, ptr %i.blf, align 8, !noalias !13556 ; 5 uses
  %i.blh = icmp eq i8 %i.blg, 0
  br i1 %i.blh, label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i, label %bb.rt

bb.rt:                                            ; preds = %.noexc34.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i284) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13557)
  call void @llvm.experimental.noalias.scope.decl(metadata !13558)
  call void @llvm.experimental.noalias.scope.decl(metadata !13559)
  call void @llvm.experimental.noalias.scope.decl(metadata !13560)
  %i.bli = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i284, i64 16 ; 3 uses
  %i.blj = load i64, ptr %i.bli, align 8, !alias.scope !13561, !noalias !13562, !noundef !28 ; 3 uses
  %i.blk = load i64, ptr %.val20.i.i.i.i.i.i.i284, align 8, !range !29, !alias.scope !13561, !noalias !13562, !noundef !28
  %i.bll = icmp eq i64 %i.blk, %i.blj
  br i1 %i.bll, label %bb.ru, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285, !prof !30

bb.ru:                                            ; preds = %bb.rt
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i284, i64 noundef %i.blj, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13375

.noexc35.i.i.i.i.i:                               ; preds = %bb.ru
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i364 = load i64, ptr %i.bli, align 8, !alias.scope !13563, !noalias !13562
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285: ; preds = %.noexc35.i.i.i.i.i, %bb.rt
  %i.blm = phi i64 [ %i.blj, %bb.rt ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i364, %.noexc35.i.i.i.i.i ] ; 3 uses
  %i.bln = icmp sgt i64 %i.blm, -1
  call void @llvm.assume(i1 %i.bln)
  %i.blo = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i284, i64 8
  %i.blp = load ptr, ptr %i.blo, align 8, !alias.scope !13563, !noalias !13562, !nonnull !28, !noundef !28
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 %i.blm
  store i8 125, ptr %i.blq, align 1, !noalias !13564
  %i.blr = add nuw i64 %i.blm, 1
  store i64 %i.blr, ptr %i.bli, align 8, !alias.scope !13563, !noalias !13562
  br label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.rk, %bb.rj, %bb.rb, %bb.ra, %bb.qx, %bb.qw, %bb.qn, %bb.qt, %bb.rs, %.noexc19.i.i.i.i.i274, %bb.rl, %bb.rm, %bb.rn, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i281", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i208", %bb.qg, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i221", %bb.qj, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i228", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i270", %bb.ru, %bb.rr, %bb.rp, %bb.qs, %bb.qr, %bb.qq, %bb.qm, %bb.ql, %bb.qk, %bb.qi, %bb.qh, %bb.qf
  %lpad.loopexit.split-lp3872 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13565)
  %.val.i.i.i.i.i.i210 = load i64, ptr %i.fb, align 8, !range !29, !alias.scope !13565, !noalias !13349, !noundef !28 ; 2 uses
  %i.bls = icmp eq i64 %.val.i.i.i.i.i.i210, 0
  br i1 %i.bls, label %.body.i.i.i212, label %bb.rv

bb.rv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i.i.i.i211 = load ptr, ptr %i.bau, align 8, !alias.scope !13565, !noalias !13349, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i211, i64 noundef %.val.i.i.i.i.i.i210, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13566
  br label %.body.i.i.i212

bb.rw:                                            ; preds = %.noexc14.i.i.i.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !13423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !13357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !13354
  call void @llvm.experimental.noalias.scope.decl(metadata !13567)
  %.val.i36.i.i.i.i.i = load i64, ptr %i.fb, align 8, !range !29, !alias.scope !13567, !noalias !13349, !noundef !28 ; 2 uses
  %i.blt = icmp eq i64 %.val.i36.i.i.i.i.i, 0
  br i1 %i.blt, label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %.val1.i37.i.i.i.i.i = load ptr, ptr %i.bau, align 8, !alias.scope !13567, !noalias !13349, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i37.i.i.i.i.i, i64 noundef %.val.i36.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13568
  br label %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i: ; preds = %bb.rx, %bb.rw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !13349
  br label %bb.ry

_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i285, %.noexc34.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !13357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !13354
  %.sroa.013.0.copyload.i.i.i.i286 = load i64, ptr %i.fb, align 8, !noalias !13569 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i287 = load ptr, ptr %i.bau, align 8, !noalias !13569 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i288 = load i64, ptr %i.bav, align 8, !noalias !13569 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !13349
  %i.blu = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i286, -9223372036854775808
  br i1 %i.blu, label %bb.ry, label %bb.sb

bb.ry:                                            ; preds = %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i236 = phi ptr [ %i.bdi, %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i287, %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i236) ]
  %i.blv = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i236)
          to label %bb.sv unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13351

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296": ; preds = %bb.sh, %bb.sg, %bb.sa
  %.pn.i.i.i.i297 = phi { ptr, i32 } [ %i.blx, %bb.sa ], [ %i.bml, %bb.sg ], [ %i.bml, %bb.sh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13570)
  call void @llvm.experimental.noalias.scope.decl(metadata !13571)
  %.val.i.i55.i.i.i.i298 = load i64, ptr %i.fg, align 8, !range !29, !alias.scope !13572, !noalias !13347, !noundef !28 ; 2 uses
  %i.blw = icmp eq i64 %.val.i.i55.i.i.i.i298, 0
  br i1 %i.blw, label %.body.i.i.i212, label %bb.rz

bb.rz:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296"
  %.val1.i.i56.i.i.i.i299 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i289, align 8, !alias.scope !13572, !noalias !13347, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i299, i64 noundef %.val.i.i55.i.i.i.i298, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13573
  br label %.body.i.i.i212

bb.sa:                                            ; preds = %.invoke.i.i.i.i312, %bb.sn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i310", %bb.sd, %bb.sc
  %i.blx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296"

bb.sb:                                            ; preds = %_ZN10serde_json3ser6to_vec17hbb7b1d4d92036ef9E.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i286, ptr %i.fg, align 8, !noalias !13347
  %.sroa.4.0..sroa_idx.i.i.i.i289 = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i287, ptr %.sroa.4.0..sroa_idx.i.i.i.i289, align 8, !noalias !13347
  %.sroa.5.0..sroa_idx.i.i.i.i290 = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i288, ptr %.sroa.5.0..sroa_idx.i.i.i.i290, align 8, !noalias !13347
  %i.bly = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !13347 ; 2 uses
  %i.blz = icmp ult i64 %i.bly, 6
  call void @llvm.assume(i1 %i.blz)
  %i.bma = icmp samesign ugt i64 %i.bly, 3
  br i1 %i.bma, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.se, %bb.sb
  %i.bmb = phi i64 [ %.pre.i.i.i.i363, %bb.se ], [ %.sroa.9.0.copyload.i.i.i.i288, %bb.sb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe), !noalias !13347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !13347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !13347
  store i64 %i.bmb, ptr %i.fc, align 8, !noalias !13347
  %i.bmc = icmp sgt i64 %i.bmb, -1
  call void @llvm.assume(i1 %i.bmc)
  store ptr %i.fc, ptr %i.fd, align 8, !noalias !13347
  %.sroa.442.0..sroa_idx.i.i.i.i291 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i291, align 8, !noalias !13347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !13574
  store ptr @390, ptr %i.ev, align 8, !noalias !13575
  %.sroa.48.0..sroa_idx.i.i.i.i292 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i292, align 8, !noalias !13575
  %.sroa.5.0..sroa_idx9.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.fd, ptr %.sroa.5.0..sroa_idx9.i.i.i.i293, align 8, !noalias !13575
  %.sroa.610.0..sroa_idx.i.i.i.i294 = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i294, align 8, !noalias !13575
  %.sroa.711.0..sroa_idx.i.i.i.i295 = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i295, align 8, !noalias !13575
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ev)
          to label %bb.sf unwind label %bb.sa, !noalias !13576

bb.sd:                                            ; preds = %bb.sb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff), !noalias !13347
  store ptr %i.fg, ptr %i.ff, align 8, !noalias !13347
  %.sroa.438.0..sroa_idx.i.i.i.i352 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i352, align 8, !noalias !13347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !13577
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store i64 4, ptr %i.bmd, align 8, !noalias !13577
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i353 = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i353, align 8, !noalias !13577
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i354 = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i354, align 8, !noalias !13577
  %i.bme = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  store ptr @387, ptr %i.bme, align 8, !noalias !13577
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i355 = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i355, align 8, !noalias !13577
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i356 = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  store ptr %i.ff, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i356, align 8, !noalias !13577
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i357 = getelementptr inbounds nuw i8, ptr %i.eu, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i357, align 8, !noalias !13577
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i358 = getelementptr inbounds nuw i8, ptr %i.eu, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i358, align 8, !noalias !13577
  store i64 0, ptr %i.eu, align 8, !noalias !13577
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i359 = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i359, align 8, !noalias !13577
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i360 = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i360, align 8, !noalias !13577
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store i64 0, ptr %i.bmf, align 8, !noalias !13577
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i361 = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i361, align 8, !noalias !13577
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i362 = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i362, align 8, !noalias !13577
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  store i32 1, ptr %i.bmg, align 8, !noalias !13577
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.eu, i64 76
  store i32 302, ptr %i.bmh, align 4, !noalias !13577
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.eu)
          to label %bb.se unwind label %bb.sa, !noalias !13576

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !noalias !13577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !13347
  %.pre.i.i.i.i363 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i290, align 8, !noalias !13347
  br label %bb.sc

bb.sf:                                            ; preds = %bb.sc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !13347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !13347
  %.sroa.06.0.copyload.i.i.i.i300 = load i64, ptr %i.fe, align 8, !noalias !13347 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i301 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.7.0.copyload.i.i.i.i302 = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i301, align 8, !noalias !13347, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i303 = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.sroa.11.0.copyload.i.i.i.i304 = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i303, align 8, !noalias !13347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !13347
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i206), "nonnull"(ptr %.val33.i.i.i207) ]
  %i.bmi = getelementptr inbounds nuw i8, ptr %.val33.i.i.i207, i64 56
  %i.bmj = load ptr, ptr %i.bmi, align 8, !invariant.load !28, !noalias !13576, !nonnull !28 ; 2 uses
  %i.bmk = invoke noundef ptr %i.bmj(ptr noundef nonnull align 1 %.val32.i.i.i206, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i302, i64 noundef %.sroa.11.0.copyload.i.i.i.i304)
          to label %bb.si unwind label %bb.sg, !noalias !13576 ; 2 uses

bb.sg:                                            ; preds = %bb.sj, %bb.sf
  %i.bml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bmm = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i300, 0
  br i1 %i.bmm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296", label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i302, i64 noundef %.sroa.06.0.copyload.i.i.i.i300, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13578
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296"

bb.si:                                            ; preds = %bb.sf
  %.not.i.i.i.i305 = icmp eq ptr %i.bmk, null
  br i1 %.not.i.i.i.i305, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bmn = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.bmk)
          to label %bb.ss unwind label %bb.sg, !noalias !13576 ; 2 uses

bb.sk:                                            ; preds = %bb.si
  %i.bmo = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i300, 0
  br i1 %i.bmo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i310", label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i302, i64 noundef %.sroa.06.0.copyload.i.i.i.i300, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13579
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i310"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i310": ; preds = %bb.sl, %bb.sk
  %i.bmp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i289, align 8, !noalias !13347, !nonnull !28, !noundef !28
  %i.bmq = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i290, align 8, !noalias !13347, !noundef !28
  %i.bmr = invoke noundef ptr %i.bmj(ptr noundef nonnull align 1 %.val32.i.i.i206, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bmp, i64 noundef %i.bmq)
          to label %bb.sm unwind label %bb.sa, !noalias !13576 ; 2 uses

bb.sm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i310"
  %.not48.i.i.i.i311 = icmp eq ptr %i.bmr, null
  br i1 %.not48.i.i.i.i311, label %bb.sn, label %.invoke.i.i.i.i312

bb.sn:                                            ; preds = %bb.sm
  %i.bms = getelementptr inbounds nuw i8, ptr %.val33.i.i.i207, i64 48
  %i.bmt = load ptr, ptr %i.bms, align 8, !invariant.load !28, !noalias !13576, !nonnull !28
  %i.bmu = invoke noundef ptr %i.bmt(ptr noundef nonnull align 1 %.val32.i.i.i206)
          to label %bb.so unwind label %bb.sa, !noalias !13576 ; 2 uses

bb.so:                                            ; preds = %bb.sn
  %.not50.i.i.i.i313 = icmp eq ptr %i.bmu, null
  br i1 %.not50.i.i.i.i313, label %bb.sp, label %.invoke.i.i.i.i312

.invoke.i.i.i.i312:                               ; preds = %bb.so, %bb.sm
  %i.bmv = phi ptr [ %i.bmr, %bb.sm ], [ %i.bmu, %bb.so ]
  %i.bmw = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.bmv)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306" unwind label %bb.sa, !noalias !13576

bb.sp:                                            ; preds = %bb.so
  call void @llvm.experimental.noalias.scope.decl(metadata !13580)
  call void @llvm.experimental.noalias.scope.decl(metadata !13581)
  %.val.i.i66.i.i.i.i314 = load i64, ptr %i.fg, align 8, !range !29, !alias.scope !13582, !noalias !13347, !noundef !28 ; 2 uses
  %i.bmx = icmp eq i64 %.val.i.i66.i.i.i.i314, 0
  br i1 %i.bmx, label %bb.su, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %.val1.i.i67.i.i.i.i315 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i289, align 8, !alias.scope !13582, !noalias !13347, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i315, i64 noundef %.val.i.i66.i.i.i.i314, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13583
  br label %bb.su

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306": ; preds = %bb.st, %bb.ss, %.invoke.i.i.i.i312
  %.sroa.0.1.i.i.i.i307 = phi ptr [ %i.bmn, %bb.ss ], [ %i.bmw, %.invoke.i.i.i.i312 ], [ %i.bmn, %bb.st ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13584)
  call void @llvm.experimental.noalias.scope.decl(metadata !13585)
  %.val.i.i70.i.i.i.i308 = load i64, ptr %i.fg, align 8, !range !29, !alias.scope !13586, !noalias !13347, !noundef !28 ; 2 uses
  %i.bmy = icmp eq i64 %.val.i.i70.i.i.i.i308, 0
  br i1 %i.bmy, label %bb.sv, label %bb.sr

bb.sr:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306"
  %.val1.i.i71.i.i.i.i309 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i289, align 8, !alias.scope !13586, !noalias !13347, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i309, i64 noundef %.val.i.i70.i.i.i.i308, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13587
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sj
  %i.bmz = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i300, 0
  br i1 %i.bmz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306", label %bb.st

bb.st:                                            ; preds = %bb.ss
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i302, i64 noundef %.sroa.06.0.copyload.i.i.i.i300, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13588
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306"

.body.i.i.i212:                                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.tc, %bb.rz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296", %bb.rv, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i213 = phi { ptr, i32 } [ %i.bny, %bb.tc ], [ %.pn.i.i.i.i297, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i296" ], [ %lpad.loopexit.split-lp3872, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3872, %bb.rv ], [ %.pn.i.i.i.i297, %bb.rz ], [ %lpad.loopexit.split-lp3860, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..Formatting$GT$$GT$17h36e1c4435e08ffc2E"(ptr noalias noundef align 8 dereferenceable(208) %i.fl) #43, !noalias !13589
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i340, %bb.sw, %bb.th, %bb.ry, %bb.qe
  %lpad.loopexit.split-lp3860 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i212

bb.su:                                            ; preds = %bb.sq, %bb.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !13347
  %.sroa.518.0..sroa_idx.i.i.i316 = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.sroa.619.0..sroa_idx.i.i.i317 = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %.sroa.415.0..sroa_idx.i.i.i318 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.516.0..sroa_idx.i.i.i319 = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bnb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.fk, i64 120 ; 2 uses
  br label %bb.sw

bb.sv:                                            ; preds = %bb.sr, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306", %bb.ry
  %.sroa.0.0.i.ph.i.i.i239 = phi ptr [ %i.blv, %bb.ry ], [ %.sroa.0.1.i.i.i.i307, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i306" ], [ %.sroa.0.1.i.i.i.i307, %bb.sr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !13347
  br label %bb.tk

bb.sw:                                            ; preds = %bb.ti, %bb.su
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !13339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !13339
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.fj, ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.sx unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13589

bb.sx:                                            ; preds = %bb.sw
  %i.bnd = load i64, ptr %i.fj, align 8, !range !34, !noalias !13339, !noundef !28 ; 3 uses
  %i.bne = icmp eq i64 %i.bnd, -9223372036854775808
  %i.bnf = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i316, align 8, !noalias !13339 ; 3 uses
  br i1 %i.bne, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !13339
  br label %bb.tf

bb.sz:                                            ; preds = %bb.sx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i319, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i317, i64 112, i1 false), !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !13339
  store i64 %i.bnd, ptr %i.fk, align 8, !noalias !13339
  store ptr %i.bnf, ptr %.sroa.415.0..sroa_idx.i.i.i318, align 8, !noalias !13339
  %i.bng = load ptr, ptr %i.bna, align 8, !alias.scope !13345, !nonnull !28, !noundef !28 ; 2 uses
  %i.bnh = load i64, ptr %i.bnb, align 8, !alias.scope !13345, !noundef !28 ; 2 uses
  %.val.i.i.i320 = load i32, ptr %i.bnc, align 8, !noalias !13339 ; 3 uses
  %i.bni = and i64 %i.bnh, -16                    ; 3 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.bng, i64 %i.bni ; 2 uses
  %i.bnk = icmp eq i64 %i.bni, 0
  br i1 %i.bnk, label %._crit_edge3683, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323.preheader": ; preds = %bb.sz
  %i.bnl = insertelement <16 x i32> poison, i32 %.val.i.i.i320, i64 0
  %i.bnm = shufflevector <16 x i32> %i.bnl, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323"

bb.ta:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323"
  %i.bnn = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i3223682, i64 64
  %i.bno = add i64 %.sroa.5.0.i.i.i.i3213681, -16 ; 2 uses
  %i.bnp = icmp eq i64 %i.bno, 0
  br i1 %i.bnp, label %._crit_edge3683, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323.preheader", %bb.ta
  %.sroa.0.03.i.i.i.i3223682 = phi ptr [ %i.bnn, %bb.ta ], [ %i.bng, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i3213681 = phi i64 [ %i.bno, %bb.ta ], [ %i.bni, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323.preheader" ]
  %i.bnq = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i3223682, align 4, !alias.scope !13590, !noalias !13591
  %i.bnr = icmp eq <16 x i32> %i.bnq, %i.bnm
  %i.bns = bitcast <16 x i1> %i.bnr to i16
  %.not3750 = icmp eq i16 %i.bns, 0
  br i1 %.not3750, label %bb.ta, label %.loopexit.i.i.i340

._crit_edge3683:                                  ; preds = %bb.ta, %bb.sz
  %i.bnt = shl i64 %i.bnh, 2
  %.idx3744 = and i64 %i.bnt, 60                  ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnj, i64 %.idx3744
  %.not.not.not.i.not.not.i.i.i.i3413684 = icmp samesign eq i64 %.idx3744, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i3413684, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i343", label %.lr.ph3686

bb.tb:                                            ; preds = %.lr.ph3686
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnw, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i341 = icmp eq ptr %i.bnv, %i.bnu
  br i1 %.not.not.not.i.not.not.i.i.i.i341, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i343", label %.lr.ph3686

.lr.ph3686:                                       ; preds = %._crit_edge3683, %bb.tb
  %i.bnw = phi ptr [ %i.bnv, %bb.tb ], [ %i.bnj, %._crit_edge3683 ] ; 2 uses
  %.val4.i.i.i.i.i342 = load i32, ptr %i.bnw, align 4, !alias.scope !13590, !noalias !13592, !noundef !28
  %i.bnx = icmp eq i32 %.val4.i.i.i.i.i342, %.val.i.i.i320
  br i1 %i.bnx, label %.loopexit.i.i.i340, label %bb.tb

bb.tc:                                            ; preds = %bb.tg, %bb.te
  %i.bny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.fk) #43
          to label %.body.i.i.i212 unwind label %bb.tj, !noalias !13589

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i343": ; preds = %._crit_edge3683, %bb.tb
  %i.bnz = load i32, ptr %i.bai, align 4, !alias.scope !13345, !noundef !28
  %.not30.i.i.i344 = icmp eq i32 %.val.i.i.i320, %i.bnz
  br i1 %.not30.i.i.i344, label %bb.td, label %bb.te

.loopexit.i.i.i340:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i323", %.lr.ph3686
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.fk)
          to label %bb.ti unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13351

bb.td:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i343"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.i.i205, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i319, i64 112, i1 false), !noalias !13593
  br label %bb.tf
end_hunk_3
begin_hunk_4_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.bqv)
          to label %.noexc18.i.i.i.i.i521 unwind label %bb.vt

.noexc18.i.i.i.i.i521:                            ; preds = %bb.vq
  %i.bum = load ptr, ptr %i.dz, align 8, !noalias !13654, !nonnull !28, !align !35, !noundef !28
  %i.bun = load i8, ptr %i.brh, align 8, !range !42, !noalias !13654, !noundef !28
  %.val20.i.i.i.i.i.i.i522 = load ptr, ptr %i.bum, align 8, !noalias !13742 ; 5 uses
  %i.buo = icmp eq i8 %i.bun, 0
  br i1 %i.buo, label %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.i.i.i.i, label %bb.vr

bb.vr:                                            ; preds = %.noexc18.i.i.i.i.i521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i522) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13743)
  call void @llvm.experimental.noalias.scope.decl(metadata !13744)
  call void @llvm.experimental.noalias.scope.decl(metadata !13745)
  call void @llvm.experimental.noalias.scope.decl(metadata !13746)
  %i.bup = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i522, i64 16 ; 3 uses
  %i.buq = load i64, ptr %i.bup, align 8, !alias.scope !13747, !noalias !13748, !noundef !28 ; 3 uses
  %i.bur = load i64, ptr %.val20.i.i.i.i.i.i.i522, align 8, !range !29, !alias.scope !13747, !noalias !13748, !noundef !28
  %i.bus = icmp eq i64 %i.bur, %i.buq
  br i1 %i.bus, label %bb.vs, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i523, !prof !30

bb.vs:                                            ; preds = %bb.vr
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i522, i64 noundef %i.buq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc19.i.i.i.i.i602 unwind label %bb.vt, !noalias !13672

.noexc19.i.i.i.i.i602:                            ; preds = %bb.vs
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i603 = load i64, ptr %i.bup, align 8, !alias.scope !13749, !noalias !13748
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i523

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i523: ; preds = %.noexc19.i.i.i.i.i602, %bb.vr
  %i.but = phi i64 [ %i.buq, %bb.vr ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i603, %.noexc19.i.i.i.i.i602 ] ; 3 uses
  %i.buu = icmp sgt i64 %i.but, -1
  call void @llvm.assume(i1 %i.buu)
  %i.buv = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i522, i64 8
  %i.buw = load ptr, ptr %i.buv, align 8, !alias.scope !13749, !noalias !13748, !nonnull !28, !noundef !28
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 %i.but
  store i8 125, ptr %i.bux, align 1, !noalias !13750
  %i.buy = add nuw i64 %i.but, 1
  store i64 %i.buy, ptr %i.bup, align 8, !alias.scope !13749, !noalias !13748
  br label %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.i.i.i.i

bb.vt:                                            ; preds = %bb.vl, %bb.vq, %bb.vn, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i391", %bb.ve, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i403", %bb.vh, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i410", %bb.vs, %bb.vp, %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i.i513", %bb.vk, %bb.vj, %bb.vi, %bb.vg, %bb.vf, %bb.vd
  %i.buz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13751)
  %.val.i.i.i.i.i.i392 = load i64, ptr %i.eb, align 8, !range !29, !alias.scope !13751, !noalias !13646, !noundef !28 ; 2 uses
  %i.bva = icmp eq i64 %.val.i.i.i.i.i.i392, 0
  br i1 %i.bva, label %.body.i.i.i394, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %.val1.i.i.i.i.i.i393 = load ptr, ptr %i.brf, align 8, !alias.scope !13751, !noalias !13646, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i393, i64 noundef %.val.i.i.i.i.i.i392, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13752
  br label %.body.i.i.i394

bb.vv:                                            ; preds = %.noexc15.i.i.i.i.i516, %.noexc14.i.i.i.i.i418
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i420 = phi ptr [ %i.btw, %.noexc15.i.i.i.i.i516 ], [ %i.btt, %.noexc14.i.i.i.i.i418 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !13720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !13654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !13651
  call void @llvm.experimental.noalias.scope.decl(metadata !13753)
  %.val.i20.i.i.i.i.i = load i64, ptr %i.eb, align 8, !range !29, !alias.scope !13753, !noalias !13646, !noundef !28 ; 2 uses
  %i.bvb = icmp eq i64 %.val.i20.i.i.i.i.i, 0
  br i1 %i.bvb, label %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.thread.i.i.i.i, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %.val1.i21.i.i.i.i.i = load ptr, ptr %i.brf, align 8, !alias.scope !13753, !noalias !13646, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i21.i.i.i.i.i, i64 noundef %.val.i20.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13754
  br label %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.thread.i.i.i.i: ; preds = %bb.vw, %bb.vv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !13646
  br label %bb.vx

_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i523, %.noexc18.i.i.i.i.i521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !13654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !13651
  %.sroa.013.0.copyload.i.i.i.i524 = load i64, ptr %i.eb, align 8, !noalias !13755 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i525 = load ptr, ptr %i.brf, align 8, !noalias !13755 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i526 = load i64, ptr %i.brg, align 8, !noalias !13755 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !13646
  %i.bvc = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i524, -9223372036854775808
  br i1 %i.bvc, label %bb.vx, label %bb.wa

bb.vx:                                            ; preds = %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i421 = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i420, %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i525, %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i421) ]
  %i.bvd = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i421)
          to label %bb.wu unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13648

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534": ; preds = %bb.wg, %bb.wf, %bb.vz
  %.pn.i.i.i.i535 = phi { ptr, i32 } [ %i.bvf, %bb.vz ], [ %i.bvt, %bb.wf ], [ %i.bvt, %bb.wg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13756)
  call void @llvm.experimental.noalias.scope.decl(metadata !13757)
  %.val.i.i55.i.i.i.i536 = load i64, ptr %i.eg, align 8, !range !29, !alias.scope !13758, !noalias !13644, !noundef !28 ; 2 uses
  %i.bve = icmp eq i64 %.val.i.i55.i.i.i.i536, 0
  br i1 %i.bve, label %.body.i.i.i394, label %bb.vy

bb.vy:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534"
  %.val1.i.i56.i.i.i.i537 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i527, align 8, !alias.scope !13758, !noalias !13644, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i537, i64 noundef %.val.i.i55.i.i.i.i536, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13759
  br label %.body.i.i.i394

bb.vz:                                            ; preds = %.invoke.i.i.i.i550, %bb.wm, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i548", %bb.wc, %bb.wb
  %i.bvf = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534"

bb.wa:                                            ; preds = %_ZN10serde_json3ser6to_vec17h4632a599b3a91314E.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i524, ptr %i.eg, align 8, !noalias !13644
  %.sroa.4.0..sroa_idx.i.i.i.i527 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i525, ptr %.sroa.4.0..sroa_idx.i.i.i.i527, align 8, !noalias !13644
  %.sroa.5.0..sroa_idx.i.i.i.i528 = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i526, ptr %.sroa.5.0..sroa_idx.i.i.i.i528, align 8, !noalias !13644
  %i.bvg = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !13644 ; 2 uses
  %i.bvh = icmp ult i64 %i.bvg, 6
  call void @llvm.assume(i1 %i.bvh)
  %i.bvi = icmp samesign ugt i64 %i.bvg, 3
  br i1 %i.bvi, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wd, %bb.wa
  %i.bvj = phi i64 [ %.pre.i.i.i.i601, %bb.wd ], [ %.sroa.9.0.copyload.i.i.i.i526, %bb.wa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !13644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !13644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !13644
  store i64 %i.bvj, ptr %i.ec, align 8, !noalias !13644
  %i.bvk = icmp sgt i64 %i.bvj, -1
  call void @llvm.assume(i1 %i.bvk)
  store ptr %i.ec, ptr %i.ed, align 8, !noalias !13644
  %.sroa.442.0..sroa_idx.i.i.i.i529 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i529, align 8, !noalias !13644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !13760
  store ptr @390, ptr %i.dx, align 8, !noalias !13761
  %.sroa.48.0..sroa_idx.i.i.i.i530 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i530, align 8, !noalias !13761
  %.sroa.5.0..sroa_idx9.i.i.i.i531 = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.ed, ptr %.sroa.5.0..sroa_idx9.i.i.i.i531, align 8, !noalias !13761
  %.sroa.610.0..sroa_idx.i.i.i.i532 = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i532, align 8, !noalias !13761
  %.sroa.711.0..sroa_idx.i.i.i.i533 = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i533, align 8, !noalias !13761
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.dx)
          to label %bb.we unwind label %bb.vz, !noalias !13762

bb.wc:                                            ; preds = %bb.wa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !13644
  store ptr %i.eg, ptr %i.ef, align 8, !noalias !13644
  %.sroa.438.0..sroa_idx.i.i.i.i590 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i590, align 8, !noalias !13644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !13763
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store i64 4, ptr %i.bvl, align 8, !noalias !13763
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i591 = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i591, align 8, !noalias !13763
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i592, align 8, !noalias !13763
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  store ptr @387, ptr %i.bvm, align 8, !noalias !13763
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i593 = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i593, align 8, !noalias !13763
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i594 = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store ptr %i.ef, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i594, align 8, !noalias !13763
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i595 = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i595, align 8, !noalias !13763
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i596 = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i596, align 8, !noalias !13763
  store i64 0, ptr %i.dw, align 8, !noalias !13763
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i597 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i597, align 8, !noalias !13763
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i598 = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i598, align 8, !noalias !13763
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 0, ptr %i.bvn, align 8, !noalias !13763
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i599 = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i599, align 8, !noalias !13763
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i600 = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i600, align 8, !noalias !13763
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  store i32 1, ptr %i.bvo, align 8, !noalias !13763
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.dw, i64 76
  store i32 302, ptr %i.bvp, align 4, !noalias !13763
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dw)
          to label %bb.wd unwind label %bb.vz, !noalias !13762

bb.wd:                                            ; preds = %bb.wc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !13763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !13644
  %.pre.i.i.i.i601 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i528, align 8, !noalias !13644
  br label %bb.wb

bb.we:                                            ; preds = %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !13760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !13644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !13644
  %.sroa.06.0.copyload.i.i.i.i538 = load i64, ptr %i.ee, align 8, !noalias !13644 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i539 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.7.0.copyload.i.i.i.i540 = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i539, align 8, !noalias !13644, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i541 = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.11.0.copyload.i.i.i.i542 = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i541, align 8, !noalias !13644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !13644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i389), "nonnull"(ptr %.val33.i.i.i390) ]
  %i.bvq = getelementptr inbounds nuw i8, ptr %.val33.i.i.i390, i64 56
  %i.bvr = load ptr, ptr %i.bvq, align 8, !invariant.load !28, !noalias !13762, !nonnull !28 ; 2 uses
  %i.bvs = invoke noundef ptr %i.bvr(ptr noundef nonnull align 1 %.val32.i.i.i389, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i540, i64 noundef %.sroa.11.0.copyload.i.i.i.i542)
          to label %bb.wh unwind label %bb.wf, !noalias !13762 ; 2 uses

bb.wf:                                            ; preds = %bb.wi, %bb.we
  %i.bvt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bvu = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i538, 0
  br i1 %i.bvu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534", label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i540, i64 noundef %.sroa.06.0.copyload.i.i.i.i538, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13764
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534"

bb.wh:                                            ; preds = %bb.we
  %.not.i.i.i.i543 = icmp eq ptr %i.bvs, null
  br i1 %.not.i.i.i.i543, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.bvv = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.bvs)
          to label %bb.wr unwind label %bb.wf, !noalias !13762 ; 2 uses

bb.wj:                                            ; preds = %bb.wh
  %i.bvw = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i538, 0
  br i1 %i.bvw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i548", label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i540, i64 noundef %.sroa.06.0.copyload.i.i.i.i538, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13765
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i548"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i548": ; preds = %bb.wk, %bb.wj
  %i.bvx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i527, align 8, !noalias !13644, !nonnull !28, !noundef !28
  %i.bvy = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i528, align 8, !noalias !13644, !noundef !28
  %i.bvz = invoke noundef ptr %i.bvr(ptr noundef nonnull align 1 %.val32.i.i.i389, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bvx, i64 noundef %i.bvy)
          to label %bb.wl unwind label %bb.vz, !noalias !13762 ; 2 uses

bb.wl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i548"
  %.not48.i.i.i.i549 = icmp eq ptr %i.bvz, null
  br i1 %.not48.i.i.i.i549, label %bb.wm, label %.invoke.i.i.i.i550

bb.wm:                                            ; preds = %bb.wl
  %i.bwa = getelementptr inbounds nuw i8, ptr %.val33.i.i.i390, i64 48
  %i.bwb = load ptr, ptr %i.bwa, align 8, !invariant.load !28, !noalias !13762, !nonnull !28
  %i.bwc = invoke noundef ptr %i.bwb(ptr noundef nonnull align 1 %.val32.i.i.i389)
          to label %bb.wn unwind label %bb.vz, !noalias !13762 ; 2 uses

bb.wn:                                            ; preds = %bb.wm
  %.not50.i.i.i.i551 = icmp eq ptr %i.bwc, null
  br i1 %.not50.i.i.i.i551, label %bb.wo, label %.invoke.i.i.i.i550

.invoke.i.i.i.i550:                               ; preds = %bb.wn, %bb.wl
  %i.bwd = phi ptr [ %i.bvz, %bb.wl ], [ %i.bwc, %bb.wn ]
  %i.bwe = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.bwd)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544" unwind label %bb.vz, !noalias !13762

bb.wo:                                            ; preds = %bb.wn
  call void @llvm.experimental.noalias.scope.decl(metadata !13766)
  call void @llvm.experimental.noalias.scope.decl(metadata !13767)
  %.val.i.i66.i.i.i.i552 = load i64, ptr %i.eg, align 8, !range !29, !alias.scope !13768, !noalias !13644, !noundef !28 ; 2 uses
  %i.bwf = icmp eq i64 %.val.i.i66.i.i.i.i552, 0
  br i1 %i.bwf, label %bb.wt, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %.val1.i.i67.i.i.i.i553 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i527, align 8, !alias.scope !13768, !noalias !13644, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i553, i64 noundef %.val.i.i66.i.i.i.i552, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13769
  br label %bb.wt

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544": ; preds = %bb.ws, %bb.wr, %.invoke.i.i.i.i550
  %.sroa.0.1.i.i.i.i545 = phi ptr [ %i.bvv, %bb.wr ], [ %i.bwe, %.invoke.i.i.i.i550 ], [ %i.bvv, %bb.ws ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13770)
  call void @llvm.experimental.noalias.scope.decl(metadata !13771)
  %.val.i.i70.i.i.i.i546 = load i64, ptr %i.eg, align 8, !range !29, !alias.scope !13772, !noalias !13644, !noundef !28 ; 2 uses
  %i.bwg = icmp eq i64 %.val.i.i70.i.i.i.i546, 0
  br i1 %i.bwg, label %bb.wu, label %bb.wq

bb.wq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544"
  %.val1.i.i71.i.i.i.i547 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i527, align 8, !alias.scope !13772, !noalias !13644, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i547, i64 noundef %.val.i.i70.i.i.i.i546, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13773
  br label %bb.wu

bb.wr:                                            ; preds = %bb.wi
  %i.bwh = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i538, 0
  br i1 %i.bwh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544", label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i540, i64 noundef %.sroa.06.0.copyload.i.i.i.i538, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13774
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544"

.body.i.i.i394:                                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.xb, %bb.vy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534", %bb.vu, %bb.vt
  %.pn.i.i.i395 = phi { ptr, i32 } [ %i.bxg, %bb.xb ], [ %.pn.i.i.i.i535, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i534" ], [ %i.buz, %bb.vt ], [ %i.buz, %bb.vu ], [ %.pn.i.i.i.i535, %bb.vy ], [ %lpad.loopexit.split-lp4006, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..HoverRequest$GT$$GT$17hf5f6306f330fe89bE"(ptr noalias noundef align 8 dereferenceable(160) %i.el) #43, !noalias !13775
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i578, %bb.wv, %bb.xg, %bb.vx, %bb.vc
  %lpad.loopexit.split-lp4006 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i394

bb.wt:                                            ; preds = %bb.wp, %bb.wo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !13644
  %.sroa.518.0..sroa_idx.i.i.i554 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.619.0..sroa_idx.i.i.i555 = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.415.0..sroa_idx.i.i.i556 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.516.0..sroa_idx.i.i.i557 = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bwj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.ek, i64 120 ; 2 uses
  br label %bb.wv

bb.wu:                                            ; preds = %bb.wq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544", %bb.vx
  %.sroa.0.0.i.ph.i.i.i423 = phi ptr [ %i.bvd, %bb.vx ], [ %.sroa.0.1.i.i.i.i545, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i544" ], [ %.sroa.0.1.i.i.i.i545, %bb.wq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !13644
  br label %bb.xj

bb.wv:                                            ; preds = %bb.xh, %bb.wt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !13636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !13636
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ej, ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.ww unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13775

bb.ww:                                            ; preds = %bb.wv
  %i.bwl = load i64, ptr %i.ej, align 8, !range !34, !noalias !13636, !noundef !28 ; 3 uses
  %i.bwm = icmp eq i64 %i.bwl, -9223372036854775808
  %i.bwn = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i554, align 8, !noalias !13636 ; 3 uses
  br i1 %i.bwm, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !13636
  br label %bb.xe

bb.wy:                                            ; preds = %bb.ww
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i557, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i555, i64 112, i1 false), !noalias !13636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !13636
  store i64 %i.bwl, ptr %i.ek, align 8, !noalias !13636
  store ptr %i.bwn, ptr %.sroa.415.0..sroa_idx.i.i.i556, align 8, !noalias !13636
  %i.bwo = load ptr, ptr %i.bwi, align 8, !alias.scope !13642, !nonnull !28, !noundef !28 ; 2 uses
  %i.bwp = load i64, ptr %i.bwj, align 8, !alias.scope !13642, !noundef !28 ; 2 uses
  %.val.i.i.i558 = load i32, ptr %i.bwk, align 8, !noalias !13636 ; 3 uses
  %i.bwq = and i64 %i.bwp, -16                    ; 3 uses
  %i.bwr = getelementptr inbounds nuw [4 x i8], ptr %i.bwo, i64 %i.bwq ; 2 uses
  %i.bws = icmp eq i64 %i.bwq, 0
  br i1 %i.bws, label %._crit_edge3670, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561.preheader": ; preds = %bb.wy
  %i.bwt = insertelement <16 x i32> poison, i32 %.val.i.i.i558, i64 0
  %i.bwu = shufflevector <16 x i32> %i.bwt, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561"

bb.wz:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561"
  %i.bwv = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i5603669, i64 64
  %i.bww = add i64 %.sroa.5.0.i.i.i.i5593668, -16 ; 2 uses
  %i.bwx = icmp eq i64 %i.bww, 0
  br i1 %i.bwx, label %._crit_edge3670, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561.preheader", %bb.wz
  %.sroa.0.03.i.i.i.i5603669 = phi ptr [ %i.bwv, %bb.wz ], [ %i.bwo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i5593668 = phi i64 [ %i.bww, %bb.wz ], [ %i.bwq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561.preheader" ]
  %i.bwy = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i5603669, align 4, !alias.scope !13776, !noalias !13777
  %i.bwz = icmp eq <16 x i32> %i.bwy, %i.bwu
  %i.bxa = bitcast <16 x i1> %i.bwz to i16
  %.not3749 = icmp eq i16 %i.bxa, 0
  br i1 %.not3749, label %bb.wz, label %.loopexit.i.i.i578

._crit_edge3670:                                  ; preds = %bb.wz, %bb.wy
  %i.bxb = shl i64 %i.bwp, 2
  %.idx3743 = and i64 %i.bxb, 60                  ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwr, i64 %.idx3743
  %.not.not.not.i.not.not.i.i.i.i5793671 = icmp samesign eq i64 %.idx3743, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i5793671, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i581", label %.lr.ph3673

bb.xa:                                            ; preds = %.lr.ph3673
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxe, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i579 = icmp eq ptr %i.bxd, %i.bxc
  br i1 %.not.not.not.i.not.not.i.i.i.i579, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i581", label %.lr.ph3673

.lr.ph3673:                                       ; preds = %._crit_edge3670, %bb.xa
  %i.bxe = phi ptr [ %i.bxd, %bb.xa ], [ %i.bwr, %._crit_edge3670 ] ; 2 uses
  %.val4.i.i.i.i.i580 = load i32, ptr %i.bxe, align 4, !alias.scope !13776, !noalias !13778, !noundef !28
  %i.bxf = icmp eq i32 %.val4.i.i.i.i.i580, %.val.i.i.i558
  br i1 %i.bxf, label %.loopexit.i.i.i578, label %bb.xa

bb.xb:                                            ; preds = %bb.xf, %bb.xd
  %i.bxg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.ek) #43
          to label %.body.i.i.i394 unwind label %bb.xi, !noalias !13775

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i581": ; preds = %._crit_edge3670, %bb.xa
  %i.bxh = load i32, ptr %i.bqt, align 4, !alias.scope !13642, !noundef !28
  %.not30.i.i.i582 = icmp eq i32 %.val.i.i.i558, %i.bxh
  br i1 %.not30.i.i.i582, label %bb.xc, label %bb.xd

.loopexit.i.i.i578:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i561", %.lr.ph3673
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.ek)
          to label %bb.xh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13648

bb.xc:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i581"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.i.i387, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i557, i64 112, i1 false), !noalias !13779
  br label %bb.xe
end_hunk_4
begin_hunk_5_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !14148
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.clj)
          to label %.noexc18.i.i.i.i.i795 unwind label %bb.agm

.noexc18.i.i.i.i.i795:                            ; preds = %bb.agj
  %i.coz = load ptr, ptr %i.ay, align 8, !noalias !14082, !nonnull !28, !align !35, !noundef !28
  %i.cpa = load i8, ptr %i.clv, align 8, !range !42, !noalias !14082, !noundef !28
  %.val20.i.i.i.i.i.i.i796 = load ptr, ptr %i.coz, align 8, !noalias !14171 ; 5 uses
  %i.cpb = icmp eq i8 %i.cpa, 0
  br i1 %i.cpb, label %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.i.i.i.i, label %bb.agk

bb.agk:                                           ; preds = %.noexc18.i.i.i.i.i795
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i796) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14172)
  call void @llvm.experimental.noalias.scope.decl(metadata !14173)
  call void @llvm.experimental.noalias.scope.decl(metadata !14174)
  call void @llvm.experimental.noalias.scope.decl(metadata !14175)
  %i.cpc = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i796, i64 16 ; 3 uses
  %i.cpd = load i64, ptr %i.cpc, align 8, !alias.scope !14176, !noalias !14177, !noundef !28 ; 3 uses
  %i.cpe = load i64, ptr %.val20.i.i.i.i.i.i.i796, align 8, !range !29, !alias.scope !14176, !noalias !14177, !noundef !28
  %i.cpf = icmp eq i64 %i.cpe, %i.cpd
  br i1 %i.cpf, label %bb.agl, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i797, !prof !30

bb.agl:                                           ; preds = %bb.agk
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i796, i64 noundef %i.cpd, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc19.i.i.i.i.i877 unwind label %bb.agm, !noalias !14100

.noexc19.i.i.i.i.i877:                            ; preds = %bb.agl
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i878 = load i64, ptr %i.cpc, align 8, !alias.scope !14178, !noalias !14177
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i797

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i797: ; preds = %.noexc19.i.i.i.i.i877, %bb.agk
  %i.cpg = phi i64 [ %i.cpd, %bb.agk ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i878, %.noexc19.i.i.i.i.i877 ] ; 3 uses
  %i.cph = icmp sgt i64 %i.cpg, -1
  call void @llvm.assume(i1 %i.cph)
  %i.cpi = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i796, i64 8
  %i.cpj = load ptr, ptr %i.cpi, align 8, !alias.scope !14178, !noalias !14177, !nonnull !28, !noundef !28
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cpj, i64 %i.cpg
  store i8 125, ptr %i.cpk, align 1, !noalias !14179
  %i.cpl = add nuw i64 %i.cpg, 1
  store i64 %i.cpl, ptr %i.cpc, align 8, !alias.scope !14178, !noalias !14177
  br label %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.i.i.i.i

bb.agm:                                           ; preds = %bb.agd, %bb.agj, %bb.agf, %bb.agg, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i624", %bb.afw, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i636", %bb.afz, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i643", %bb.agl, %bb.agi, %bb.agc, %bb.agb, %bb.aga, %bb.afy, %bb.afx, %bb.afv
  %i.cpm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14180)
  %.val.i.i.i.i.i.i625 = load i64, ptr %i.ba, align 8, !range !29, !alias.scope !14180, !noalias !14074, !noundef !28 ; 2 uses
  %i.cpn = icmp eq i64 %.val.i.i.i.i.i.i625, 0
  br i1 %i.cpn, label %.body.i.i.i627, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  %.val1.i.i.i.i.i.i626 = load ptr, ptr %i.clt, align 8, !alias.scope !14180, !noalias !14074, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i626, i64 noundef %.val.i.i.i.i.i.i625, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14181
  br label %.body.i.i.i627

bb.ago:                                           ; preds = %.noexc14.i.i.i.i.i650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !14148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !14082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !14079
  call void @llvm.experimental.noalias.scope.decl(metadata !14182)
  %.val.i20.i.i.i.i.i652 = load i64, ptr %i.ba, align 8, !range !29, !alias.scope !14182, !noalias !14074, !noundef !28 ; 2 uses
  %i.cpo = icmp eq i64 %.val.i20.i.i.i.i.i652, 0
  br i1 %i.cpo, label %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.thread.i.i.i.i, label %bb.agp

bb.agp:                                           ; preds = %bb.ago
  %.val1.i21.i.i.i.i.i653 = load ptr, ptr %i.clt, align 8, !alias.scope !14182, !noalias !14074, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i21.i.i.i.i.i653, i64 noundef %.val.i20.i.i.i.i.i652, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14183
  br label %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.thread.i.i.i.i: ; preds = %bb.agp, %bb.ago
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !14074
  br label %bb.agq

_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i797, %.noexc18.i.i.i.i.i795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !14082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !14079
  %.sroa.013.0.copyload.i.i.i.i798 = load i64, ptr %i.ba, align 8, !noalias !14184 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i799 = load ptr, ptr %i.clt, align 8, !noalias !14184 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i800 = load i64, ptr %i.clu, align 8, !noalias !14184 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !14074
  %i.cpp = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i798, -9223372036854775808
  br i1 %i.cpp, label %bb.agq, label %bb.agt

bb.agq:                                           ; preds = %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i654 = phi ptr [ %i.coh, %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i799, %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i654) ]
  %i.cpq = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i654)
          to label %bb.ahn unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i655.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14076

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808": ; preds = %bb.agz, %bb.agy, %bb.ags
  %.pn.i.i.i.i809 = phi { ptr, i32 } [ %i.cps, %bb.ags ], [ %i.cqg, %bb.agy ], [ %i.cqg, %bb.agz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14185)
  call void @llvm.experimental.noalias.scope.decl(metadata !14186)
  %.val.i.i55.i.i.i.i810 = load i64, ptr %i.bf, align 8, !range !29, !alias.scope !14187, !noalias !14072, !noundef !28 ; 2 uses
  %i.cpr = icmp eq i64 %.val.i.i55.i.i.i.i810, 0
  br i1 %i.cpr, label %.body.i.i.i627, label %bb.agr

bb.agr:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808"
  %.val1.i.i56.i.i.i.i811 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i801, align 8, !alias.scope !14187, !noalias !14072, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i811, i64 noundef %.val.i.i55.i.i.i.i810, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14188
  br label %.body.i.i.i627

bb.ags:                                           ; preds = %.invoke.i.i.i.i824, %bb.ahf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i822", %bb.agv, %bb.agu
  %i.cps = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808"

bb.agt:                                           ; preds = %_ZN10serde_json3ser6to_vec17h1c68ff7e60506f6eE.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i798, ptr %i.bf, align 8, !noalias !14072
  %.sroa.4.0..sroa_idx.i.i.i.i801 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i799, ptr %.sroa.4.0..sroa_idx.i.i.i.i801, align 8, !noalias !14072
  %.sroa.5.0..sroa_idx.i.i.i.i802 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i800, ptr %.sroa.5.0..sroa_idx.i.i.i.i802, align 8, !noalias !14072
  %i.cpt = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !14072 ; 2 uses
  %i.cpu = icmp ult i64 %i.cpt, 6
  call void @llvm.assume(i1 %i.cpu)
  %i.cpv = icmp samesign ugt i64 %i.cpt, 3
  br i1 %i.cpv, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agw, %bb.agt
  %i.cpw = phi i64 [ %.pre.i.i.i.i876, %bb.agw ], [ %.sroa.9.0.copyload.i.i.i.i800, %bb.agt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !14072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !14072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !14072
  store i64 %i.cpw, ptr %i.bb, align 8, !noalias !14072
  %i.cpx = icmp sgt i64 %i.cpw, -1
  call void @llvm.assume(i1 %i.cpx)
  store ptr %i.bb, ptr %i.bc, align 8, !noalias !14072
  %.sroa.442.0..sroa_idx.i.i.i.i803 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i803, align 8, !noalias !14072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !14189
  store ptr @390, ptr %i.aw, align 8, !noalias !14190
  %.sroa.48.0..sroa_idx.i.i.i.i804 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i804, align 8, !noalias !14190
  %.sroa.5.0..sroa_idx9.i.i.i.i805 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx9.i.i.i.i805, align 8, !noalias !14190
  %.sroa.610.0..sroa_idx.i.i.i.i806 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i806, align 8, !noalias !14190
  %.sroa.711.0..sroa_idx.i.i.i.i807 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i807, align 8, !noalias !14190
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aw)
          to label %bb.agx unwind label %bb.ags, !noalias !14191

bb.agv:                                           ; preds = %bb.agt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !14072
  store ptr %i.bf, ptr %i.be, align 8, !noalias !14072
  %.sroa.438.0..sroa_idx.i.i.i.i865 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i865, align 8, !noalias !14072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !14192
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i64 4, ptr %i.cpy, align 8, !noalias !14192
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i866 = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i866, align 8, !noalias !14192
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i867 = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i867, align 8, !noalias !14192
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  store ptr @387, ptr %i.cpz, align 8, !noalias !14192
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i868 = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i868, align 8, !noalias !14192
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i869 = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  store ptr %i.be, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i869, align 8, !noalias !14192
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i870 = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i870, align 8, !noalias !14192
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i871 = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i871, align 8, !noalias !14192
  store i64 0, ptr %i.av, align 8, !noalias !14192
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i872 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i872, align 8, !noalias !14192
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i873 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i873, align 8, !noalias !14192
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 0, ptr %i.cqa, align 8, !noalias !14192
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i874 = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i874, align 8, !noalias !14192
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i875 = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i875, align 8, !noalias !14192
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i32 1, ptr %i.cqb, align 8, !noalias !14192
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.av, i64 76
  store i32 302, ptr %i.cqc, align 4, !noalias !14192
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.av)
          to label %bb.agw unwind label %bb.ags, !noalias !14191

bb.agw:                                           ; preds = %bb.agv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !14192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !14072
  %.pre.i.i.i.i876 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i802, align 8, !noalias !14072
  br label %bb.agu

bb.agx:                                           ; preds = %bb.agu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !14189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !14072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !14072
  %.sroa.06.0.copyload.i.i.i.i812 = load i64, ptr %i.bd, align 8, !noalias !14072 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i813 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.7.0.copyload.i.i.i.i814 = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i813, align 8, !noalias !14072, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i815 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.11.0.copyload.i.i.i.i816 = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i815, align 8, !noalias !14072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !14072
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i622), "nonnull"(ptr %.val33.i.i.i623) ]
  %i.cqd = getelementptr inbounds nuw i8, ptr %.val33.i.i.i623, i64 56
  %i.cqe = load ptr, ptr %i.cqd, align 8, !invariant.load !28, !noalias !14191, !nonnull !28 ; 2 uses
  %i.cqf = invoke noundef ptr %i.cqe(ptr noundef nonnull align 1 %.val32.i.i.i622, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i814, i64 noundef %.sroa.11.0.copyload.i.i.i.i816)
          to label %bb.aha unwind label %bb.agy, !noalias !14191 ; 2 uses

bb.agy:                                           ; preds = %bb.ahb, %bb.agx
  %i.cqg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cqh = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i812, 0
  br i1 %i.cqh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808", label %bb.agz

bb.agz:                                           ; preds = %bb.agy
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i814, i64 noundef %.sroa.06.0.copyload.i.i.i.i812, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14193
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808"

bb.aha:                                           ; preds = %bb.agx
  %.not.i.i.i.i817 = icmp eq ptr %i.cqf, null
  br i1 %.not.i.i.i.i817, label %bb.ahc, label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha
  %i.cqi = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.cqf)
          to label %bb.ahk unwind label %bb.agy, !noalias !14191 ; 2 uses

bb.ahc:                                           ; preds = %bb.aha
  %i.cqj = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i812, 0
  br i1 %i.cqj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i822", label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i814, i64 noundef %.sroa.06.0.copyload.i.i.i.i812, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14194
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i822"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i822": ; preds = %bb.ahd, %bb.ahc
  %i.cqk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i801, align 8, !noalias !14072, !nonnull !28, !noundef !28
  %i.cql = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i802, align 8, !noalias !14072, !noundef !28
  %i.cqm = invoke noundef ptr %i.cqe(ptr noundef nonnull align 1 %.val32.i.i.i622, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cqk, i64 noundef %i.cql)
          to label %bb.ahe unwind label %bb.ags, !noalias !14191 ; 2 uses

bb.ahe:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i822"
  %.not48.i.i.i.i823 = icmp eq ptr %i.cqm, null
  br i1 %.not48.i.i.i.i823, label %bb.ahf, label %.invoke.i.i.i.i824

bb.ahf:                                           ; preds = %bb.ahe
  %i.cqn = getelementptr inbounds nuw i8, ptr %.val33.i.i.i623, i64 48
  %i.cqo = load ptr, ptr %i.cqn, align 8, !invariant.load !28, !noalias !14191, !nonnull !28
  %i.cqp = invoke noundef ptr %i.cqo(ptr noundef nonnull align 1 %.val32.i.i.i622)
          to label %bb.ahg unwind label %bb.ags, !noalias !14191 ; 2 uses

bb.ahg:                                           ; preds = %bb.ahf
  %.not50.i.i.i.i825 = icmp eq ptr %i.cqp, null
  br i1 %.not50.i.i.i.i825, label %bb.ahh, label %.invoke.i.i.i.i824

.invoke.i.i.i.i824:                               ; preds = %bb.ahg, %bb.ahe
  %i.cqq = phi ptr [ %i.cqm, %bb.ahe ], [ %i.cqp, %bb.ahg ]
  %i.cqr = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.cqq)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818" unwind label %bb.ags, !noalias !14191

bb.ahh:                                           ; preds = %bb.ahg
  call void @llvm.experimental.noalias.scope.decl(metadata !14195)
  call void @llvm.experimental.noalias.scope.decl(metadata !14196)
  %.val.i.i66.i.i.i.i826 = load i64, ptr %i.bf, align 8, !range !29, !alias.scope !14197, !noalias !14072, !noundef !28 ; 2 uses
  %i.cqs = icmp eq i64 %.val.i.i66.i.i.i.i826, 0
  br i1 %i.cqs, label %bb.ahm, label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh
  %.val1.i.i67.i.i.i.i827 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i801, align 8, !alias.scope !14197, !noalias !14072, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i827, i64 noundef %.val.i.i66.i.i.i.i826, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14198
  br label %bb.ahm

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818": ; preds = %bb.ahl, %bb.ahk, %.invoke.i.i.i.i824
  %.sroa.0.1.i.i.i.i819 = phi ptr [ %i.cqi, %bb.ahk ], [ %i.cqr, %.invoke.i.i.i.i824 ], [ %i.cqi, %bb.ahl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14199)
  call void @llvm.experimental.noalias.scope.decl(metadata !14200)
  %.val.i.i70.i.i.i.i820 = load i64, ptr %i.bf, align 8, !range !29, !alias.scope !14201, !noalias !14072, !noundef !28 ; 2 uses
  %i.cqt = icmp eq i64 %.val.i.i70.i.i.i.i820, 0
  br i1 %i.cqt, label %bb.ahn, label %bb.ahj

bb.ahj:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818"
  %.val1.i.i71.i.i.i.i821 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i801, align 8, !alias.scope !14201, !noalias !14072, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i821, i64 noundef %.val.i.i70.i.i.i.i820, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14202
  br label %bb.ahn

bb.ahk:                                           ; preds = %bb.ahb
  %i.cqu = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i812, 0
  br i1 %i.cqu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818", label %bb.ahl

bb.ahl:                                           ; preds = %bb.ahk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i814, i64 noundef %.sroa.06.0.copyload.i.i.i.i812, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14203
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818"

.body.i.i.i627:                                   ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i655.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ahu, %bb.agr, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808", %bb.agn, %bb.agm
  %.pn.i.i.i628 = phi { ptr, i32 } [ %i.crt, %bb.ahu ], [ %.pn.i.i.i.i809, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i808" ], [ %i.cpm, %bb.agm ], [ %i.cpm, %bb.agn ], [ %.pn.i.i.i.i809, %bb.agr ], [ %lpad.loopexit.split-lp4351, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i655.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr103drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..DocumentSymbolRequest$GT$$GT$17h28b418615ee0d7d3E"(ptr noalias noundef align 8 dereferenceable(176) %i.bk) #43, !noalias !14204
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i655.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i852, %bb.aho, %bb.ahz, %bb.agq, %bb.afu
  %lpad.loopexit.split-lp4351 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i627

bb.ahm:                                           ; preds = %bb.ahi, %bb.ahh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !14072
  %.sroa.518.0..sroa_idx.i.i.i828 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.619.0..sroa_idx.i.i.i829 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.415.0..sroa_idx.i.i.i830 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.516.0..sroa_idx.i.i.i831 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.cqv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cqw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.bj, i64 120 ; 2 uses
  br label %bb.aho

bb.ahn:                                           ; preds = %bb.ahj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818", %bb.agq
  %.sroa.0.0.i.ph.i.i.i656 = phi ptr [ %i.cpq, %bb.agq ], [ %.sroa.0.1.i.i.i.i819, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i818" ], [ %.sroa.0.1.i.i.i.i819, %bb.ahj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !14072
  br label %bb.aic

bb.aho:                                           ; preds = %bb.aia, %bb.ahm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !14064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !14064
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.ahp unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i655.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14204

bb.ahp:                                           ; preds = %bb.aho
  %i.cqy = load i64, ptr %i.bi, align 8, !range !34, !noalias !14064, !noundef !28 ; 3 uses
  %i.cqz = icmp eq i64 %i.cqy, -9223372036854775808
  %i.cra = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i828, align 8, !noalias !14064 ; 3 uses
  br i1 %i.cqz, label %bb.ahq, label %bb.ahr

bb.ahq:                                           ; preds = %bb.ahp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !14064
  br label %bb.ahx

bb.ahr:                                           ; preds = %bb.ahp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i831, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i829, i64 112, i1 false), !noalias !14064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !14064
  store i64 %i.cqy, ptr %i.bj, align 8, !noalias !14064
  store ptr %i.cra, ptr %.sroa.415.0..sroa_idx.i.i.i830, align 8, !noalias !14064
  %i.crb = load ptr, ptr %i.cqv, align 8, !alias.scope !14070, !nonnull !28, !noundef !28 ; 2 uses
  %i.crc = load i64, ptr %i.cqw, align 8, !alias.scope !14070, !noundef !28 ; 2 uses
  %.val.i.i.i832 = load i32, ptr %i.cqx, align 8, !noalias !14064 ; 3 uses
  %i.crd = and i64 %i.crc, -16                    ; 3 uses
  %i.cre = getelementptr inbounds nuw [4 x i8], ptr %i.crb, i64 %i.crd ; 2 uses
  %i.crf = icmp eq i64 %i.crd, 0
  br i1 %i.crf, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835.preheader": ; preds = %bb.ahr
  %i.crg = insertelement <16 x i32> poison, i32 %.val.i.i.i832, i64 0
  %i.crh = shufflevector <16 x i32> %i.crg, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835"

bb.ahs:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835"
  %i.cri = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i8343659, i64 64
  %i.crj = add i64 %.sroa.5.0.i.i.i.i8333658, -16 ; 2 uses
  %i.crk = icmp eq i64 %i.crj, 0
  br i1 %i.crk, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835.preheader", %bb.ahs
  %.sroa.0.03.i.i.i.i8343659 = phi ptr [ %i.cri, %bb.ahs ], [ %i.crb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i8333658 = phi i64 [ %i.crj, %bb.ahs ], [ %i.crd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835.preheader" ]
  %i.crl = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i8343659, align 4, !alias.scope !14205, !noalias !14206
  %i.crm = icmp eq <16 x i32> %i.crl, %i.crh
  %i.crn = bitcast <16 x i1> %i.crm to i16
  %.not = icmp eq i16 %i.crn, 0
  br i1 %.not, label %bb.ahs, label %.loopexit.i.i.i852

._crit_edge:                                      ; preds = %bb.ahs, %bb.ahr
  %i.cro = shl i64 %i.crc, 2
  %.idx = and i64 %i.cro, 60                      ; 2 uses
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cre, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i8533660 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i8533660, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i855", label %.lr.ph

bb.aht:                                           ; preds = %.lr.ph
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crr, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i853 = icmp eq ptr %i.crq, %i.crp
  br i1 %.not.not.not.i.not.not.i.i.i.i853, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i855", label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.aht
  %i.crr = phi ptr [ %i.crq, %bb.aht ], [ %i.cre, %._crit_edge ] ; 2 uses
  %.val4.i.i.i.i.i854 = load i32, ptr %i.crr, align 4, !alias.scope !14205, !noalias !14207, !noundef !28
  %i.crs = icmp eq i32 %.val4.i.i.i.i.i854, %.val.i.i.i832
  br i1 %i.crs, label %.loopexit.i.i.i852, label %bb.aht

bb.ahu:                                           ; preds = %bb.ahy, %bb.ahw
  %i.crt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.bj) #43
          to label %.body.i.i.i627 unwind label %bb.aib, !noalias !14204

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i855": ; preds = %._crit_edge, %bb.aht
  %i.cru = load i32, ptr %i.clh, align 4, !alias.scope !14070, !noundef !28
  %.not30.i.i.i856 = icmp eq i32 %.val.i.i.i832, %i.cru
  br i1 %.not30.i.i.i856, label %bb.ahv, label %bb.ahw

.loopexit.i.i.i852:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i835", %.lr.ph
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.bj)
          to label %bb.aia unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i655.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14076

bb.ahv:                                           ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i855"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.i.i620, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i831, i64 112, i1 false), !noalias !14208
  br label %bb.ahx
end_hunk_5
begin_hunk_6_@_ZN11lsp_harness11TestHarness20get_eval_diagnostics17hc5b51bec4ad8b627E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15365
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.gw)
          to label %.noexc20.i.i.i.i.i unwind label %bb.df

.noexc20.i.i.i.i.i:                               ; preds = %bb.dc
  %i.kg = load ptr, ptr %i.y, align 8, !noalias !15299, !nonnull !28, !align !35, !noundef !28
  %i.kh = load i8, ptr %i.hg, align 8, !range !42, !noalias !15299, !noundef !28
  %.val20.i.i.i.i.i.i.i = load ptr, ptr %i.kg, align 8, !noalias !15386 ; 5 uses
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc20.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15387)
  call void @llvm.experimental.noalias.scope.decl(metadata !15388)
  call void @llvm.experimental.noalias.scope.decl(metadata !15389)
  call void @llvm.experimental.noalias.scope.decl(metadata !15390)
  %i.kj = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !15391, !noalias !15392, !noundef !28 ; 3 uses
  %i.kl = load i64, ptr %.val20.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !15391, !noalias !15392, !noundef !28
  %i.km = icmp eq i64 %i.kl, %i.kk
  br i1 %i.km, label %bb.de, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, !prof !30

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i, i64 noundef %i.kk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i.i unwind label %bb.df, !noalias !15317

.noexc21.i.i.i.i.i:                               ; preds = %bb.de
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !alias.scope !15393, !noalias !15392
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i, %bb.dd
  %i.kn = phi i64 [ %i.kk, %bb.dd ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i ] ; 3 uses
  %i.ko = icmp sgt i64 %i.kn, -1
  call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !15393, !noalias !15392, !nonnull !28, !noundef !28
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kn
  store i8 125, ptr %i.kr, align 1, !noalias !15394
  %i.ks = add nuw i64 %i.kn, 1
  store i64 %i.ks, ptr %i.kj, align 8, !alias.scope !15393, !noalias !15392
  br label %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.i.i.i.i

bb.df:                                            ; preds = %bb.cy, %bb.dc, %bb.cz, %.noexc15.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i", %bb.cr, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i", %bb.cu, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i", %bb.de, %bb.db, %bb.cx, %bb.cw, %bb.cv, %bb.ct, %bb.cs, %bb.cq
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15395)
  %.val.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !range !29, !alias.scope !15395, !noalias !15291, !noundef !28 ; 2 uses
  %i.ku = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ku, label %.body.i.i.i49, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val1.i.i.i.i.i.i48 = load ptr, ptr %i.he, align 8, !alias.scope !15395, !noalias !15291, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i48, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15396
  br label %.body.i.i.i49

bb.dh:                                            ; preds = %.noexc14.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15296
  call void @llvm.experimental.noalias.scope.decl(metadata !15397)
  %.val.i22.i.i.i.i.i = load i64, ptr %i.aa, align 8, !range !29, !alias.scope !15397, !noalias !15291, !noundef !28 ; 2 uses
  %i.kv = icmp eq i64 %.val.i22.i.i.i.i.i, 0
  br i1 %i.kv, label %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.thread.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.val1.i23.i.i.i.i.i = load ptr, ptr %i.he, align 8, !alias.scope !15397, !noalias !15291, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i23.i.i.i.i.i, i64 noundef %.val.i22.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15398
  br label %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.thread.i.i.i.i: ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15291
  br label %bb.dj

_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15296
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !15399 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i = load ptr, ptr %i.he, align 8, !noalias !15399 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = load i64, ptr %i.hf, align 8, !noalias !15399 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15291
  %i.kw = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.kw, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i = phi ptr [ %i.js, %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i, %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i) ]
  %i.kx = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i)
          to label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hf912e72b66f56e2dE.exit.thread.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15293

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i": ; preds = %bb.ds, %bb.dr, %bb.dl
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.kz, %bb.dl ], [ %i.ln, %bb.dr ], [ %i.ln, %bb.ds ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15400)
  call void @llvm.experimental.noalias.scope.decl(metadata !15401)
  %.val.i.i55.i.i.i.i = load i64, ptr %i.af, align 8, !range !29, !alias.scope !15402, !noalias !15289, !noundef !28 ; 2 uses
  %i.ky = icmp eq i64 %.val.i.i55.i.i.i.i, 0
  br i1 %i.ky, label %.body.i.i.i49, label %bb.dk

bb.dk:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"
  %.val1.i.i56.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15402, !noalias !15289, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i, i64 noundef %.val.i.i55.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15403
  br label %.body.i.i.i49

bb.dl:                                            ; preds = %.invoke.i.i.i.i, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", %bb.do, %bb.dn
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.dm:                                            ; preds = %_ZN10serde_json3ser6to_vec17h850a6d77aafbb1d9E.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i, ptr %i.af, align 8, !noalias !15289
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !15289
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !15289
  %i.la = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !15289 ; 2 uses
  %i.lb = icmp ult i64 %i.la, 6
  call void @llvm.assume(i1 %i.lb)
  %i.lc = icmp samesign ugt i64 %i.la, 3
  br i1 %i.lc, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %i.ld = phi i64 [ %.pre.i.i.i.i, %bb.dp ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15289
  store i64 %i.ld, ptr %i.ab, align 8, !noalias !15289
  %i.le = icmp sgt i64 %i.ld, -1
  call void @llvm.assume(i1 %i.le)
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !15289
  %.sroa.442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i, align 8, !noalias !15289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15404
  store ptr @390, ptr %i.w, align 8, !noalias !15405
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !15405
  %.sroa.5.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx9.i.i.i.i, align 8, !noalias !15405
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !noalias !15405
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 8, !noalias !15405
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w)
          to label %bb.dq unwind label %bb.dl, !noalias !15406

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15289
  store ptr %i.af, ptr %i.ae, align 8, !noalias !15289
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i, align 8, !noalias !15289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15407
  %i.lf = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 4, ptr %i.lf, align 8, !noalias !15407
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %i.lg = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr @387, ptr %i.lg, align 8, !noalias !15407
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store ptr %i.ae, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  store i64 0, ptr %i.v, align 8, !noalias !15407
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %i.lh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.lh, align 8, !noalias !15407
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i, align 8, !noalias !15407
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i, align 8, !noalias !15407
  %i.li = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store i32 1, ptr %i.li, align 8, !noalias !15407
  %i.lj = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  store i32 302, ptr %i.lj, align 4, !noalias !15407
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v)
          to label %bb.dp unwind label %bb.dl, !noalias !15406

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15289
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !15289
  br label %bb.dn

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15289
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !15289 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !15289, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.11.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !15289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15289
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i46), "nonnull"(ptr %.val33.i.i.i47) ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.val33.i.i.i47, i64 56
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !28, !noalias !15406, !nonnull !28 ; 2 uses
  %i.lm = invoke noundef ptr %i.ll(ptr noundef nonnull align 1 %.val32.i.i.i46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i.i)
          to label %bb.dt unwind label %bb.dr, !noalias !15406 ; 2 uses

bb.dr:                                            ; preds = %bb.du, %bb.dq
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.lo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i", label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15408
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.dt:                                            ; preds = %bb.dq
  %.not.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lp = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.lm)
          to label %bb.ed unwind label %bb.dr, !noalias !15406 ; 2 uses

bb.dv:                                            ; preds = %bb.dt
  %i.lq = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.lq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15409
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i": ; preds = %bb.dw, %bb.dv
  %i.lr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !15289, !nonnull !28, !noundef !28
  %i.ls = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !15289, !noundef !28
  %i.lt = invoke noundef ptr %i.ll(ptr noundef nonnull align 1 %.val32.i.i.i46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lr, i64 noundef %i.ls)
          to label %bb.dx unwind label %bb.dl, !noalias !15406 ; 2 uses

bb.dx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i"
  %.not48.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not48.i.i.i.i, label %bb.dy, label %.invoke.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.lu = getelementptr inbounds nuw i8, ptr %.val33.i.i.i47, i64 48
  %i.lv = load ptr, ptr %i.lu, align 8, !invariant.load !28, !noalias !15406, !nonnull !28
  %i.lw = invoke noundef ptr %i.lv(ptr noundef nonnull align 1 %.val32.i.i.i46)
          to label %bb.dz unwind label %bb.dl, !noalias !15406 ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %.not50.i.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not50.i.i.i.i, label %bb.ea, label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.dz, %bb.dx
  %i.lx = phi ptr [ %i.lt, %bb.dx ], [ %i.lw, %bb.dz ]
  %i.ly = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.lx)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i" unwind label %bb.dl, !noalias !15406

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !15410)
  call void @llvm.experimental.noalias.scope.decl(metadata !15411)
  %.val.i.i66.i.i.i.i = load i64, ptr %i.af, align 8, !range !29, !alias.scope !15412, !noalias !15289, !noundef !28 ; 2 uses
  %i.lz = icmp eq i64 %.val.i.i66.i.i.i.i, 0
  br i1 %i.lz, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val1.i.i67.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15412, !noalias !15289, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i, i64 noundef %.val.i.i66.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15413
  br label %bb.ef

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i": ; preds = %bb.ee, %bb.ed, %.invoke.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.lp, %bb.ed ], [ %i.ly, %.invoke.i.i.i.i ], [ %i.lp, %bb.ee ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15414)
  call void @llvm.experimental.noalias.scope.decl(metadata !15415)
  %.val.i.i70.i.i.i.i = load i64, ptr %i.af, align 8, !range !29, !alias.scope !15416, !noalias !15289, !noundef !28 ; 2 uses
  %i.ma = icmp eq i64 %.val.i.i70.i.i.i.i, 0
  br i1 %i.ma, label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hf912e72b66f56e2dE.exit.thread.i.i, label %bb.ec

bb.ec:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i"
  %.val1.i.i71.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15416, !noalias !15289, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i, i64 noundef %.val.i.i70.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15417
  br label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hf912e72b66f56e2dE.exit.thread.i.i

bb.ed:                                            ; preds = %bb.du
  %i.mb = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.mb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i", label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15418
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i"

.body.i.i.i49:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.em, %bb.dk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i", %bb.dg, %bb.df
  %.pn.i.i.i50 = phi { ptr, i32 } [ %i.na, %bb.em ], [ %.pn.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i" ], [ %i.kt, %bb.df ], [ %i.kt, %bb.dg ], [ %.pn.i.i.i.i, %bb.dk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr107drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..DocumentDiagnosticRequest$GT$$GT$17h7219cf6275cfaf71E"(ptr noalias noundef align 8 dereferenceable(224) %i.ak) #43, !noalias !15419
  br label %.body42

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i78, %bb.eg, %bb.ep, %bb.dj, %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i49

bb.ef:                                            ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !15289
  %.sroa.518.0..sroa_idx.i.i.i54 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.619.0..sroa_idx.i.i.i55 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.415.0..sroa_idx.i.i.i56 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.516.0..sroa_idx.i.i.i57 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.me = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 2 uses
  br label %bb.eg

_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hf912e72b66f56e2dE.exit.thread.i.i: ; preds = %bb.ec, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i", %bb.dj
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.kx, %bb.dj ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !15289
  br label %bb.es

bb.eg:                                            ; preds = %bb.eq, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !15286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !15286
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15419

bb.eh:                                            ; preds = %bb.eg
  %i.mf = load i64, ptr %i.ai, align 8, !range !34, !noalias !15286, !noundef !28 ; 13 uses
  %i.mg = icmp eq i64 %i.mf, -9223372036854775808
  %i.mh = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i54, align 8, !noalias !15286 ; 8 uses
  br i1 %i.mg, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !15286
  br label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hf912e72b66f56e2dE.exit.thread45.i.i

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i57, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i55, i64 112, i1 false), !noalias !15286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !15286
  store i64 %i.mf, ptr %i.aj, align 8, !noalias !15286
  store ptr %i.mh, ptr %.sroa.415.0..sroa_idx.i.i.i56, align 8, !noalias !15286
  %i.mi = load ptr, ptr %i.mc, align 8, !alias.scope !15285, !nonnull !28, !noundef !28 ; 2 uses
  %i.mj = load i64, ptr %i.md, align 8, !alias.scope !15285, !noundef !28 ; 2 uses
  %.val.i.i.i58 = load i32, ptr %i.me, align 8, !noalias !15286 ; 3 uses
  %i.mk = and i64 %i.mj, -16                      ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mk ; 2 uses
  %i.mm = icmp eq i64 %i.mk, 0
  br i1 %i.mm, label %._crit_edge329, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61.preheader": ; preds = %bb.ej
  %i.mn = insertelement <16 x i32> poison, i32 %.val.i.i.i58, i64 0
  %i.mo = shufflevector <16 x i32> %i.mn, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61"

bb.ek:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61"
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i60328, i64 64
  %i.mq = add i64 %.sroa.5.0.i.i.i.i59327, -16    ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %._crit_edge329, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61.preheader", %bb.ek
  %.sroa.0.03.i.i.i.i60328 = phi ptr [ %i.mp, %bb.ek ], [ %i.mi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i59327 = phi i64 [ %i.mq, %bb.ek ], [ %i.mk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61.preheader" ]
  %i.ms = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i60328, align 4, !alias.scope !15420, !noalias !15421
  %i.mt = icmp eq <16 x i32> %i.ms, %i.mo
  %i.mu = bitcast <16 x i1> %i.mt to i16
  %.not341 = icmp eq i16 %i.mu, 0
  br i1 %.not341, label %bb.ek, label %.loopexit.i.i.i78

._crit_edge329:                                   ; preds = %bb.ek, %bb.ej
  %i.mv = shl i64 %i.mj, 2
  %.idx340 = and i64 %i.mv, 60                    ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx340
  %.not.not.not.i.not.not.i.i.i.i79330 = icmp samesign eq i64 %.idx340, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i79330, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i81", label %.lr.ph332

bb.el:                                            ; preds = %.lr.ph332
  %i.mx = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i79 = icmp eq ptr %i.mx, %i.mw
  br i1 %.not.not.not.i.not.not.i.i.i.i79, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i81", label %.lr.ph332

.lr.ph332:                                        ; preds = %._crit_edge329, %bb.el
  %i.my = phi ptr [ %i.mx, %bb.el ], [ %i.ml, %._crit_edge329 ] ; 2 uses
  %.val4.i.i.i.i.i80 = load i32, ptr %i.my, align 4, !alias.scope !15420, !noalias !15422, !noundef !28
  %i.mz = icmp eq i32 %.val4.i.i.i.i.i80, %.val.i.i.i58
  br i1 %i.mz, label %.loopexit.i.i.i78, label %bb.el

bb.em:                                            ; preds = %bb.eo, %bb.en
  %i.na = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.aj) #43
          to label %.body.i.i.i49 unwind label %bb.er, !noalias !15419

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i81": ; preds = %._crit_edge329, %bb.el
  %i.nb = load i32, ptr %i.da, align 4, !alias.scope !15285, !noundef !28
  %.not30.i.i.i82 = icmp eq i32 %.val.i.i.i58, %i.nb
  br i1 %.not30.i.i.i82, label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hf912e72b66f56e2dE.exit.i.i, label %bb.en

.loopexit.i.i.i78:                                ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i61", %.lr.ph332
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.aj)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i53.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15293

bb.en:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i81"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15286
  store ptr %i.da, ptr %i.ag, align 8, !noalias !15286
end_hunk_6
begin_hunk_7_@_ZN11lsp_harness11TestHarness7request17h1ba4336a03dace2fE:bb.a
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.cn)
          to label %.noexc19.i.i.i.i unwind label %bb.s

.noexc19.i.i.i.i:                                 ; preds = %bb.p
  %i.gg = load ptr, ptr %i.bt, align 8, !noalias !16680, !nonnull !28, !align !35, !noundef !28
  %i.gh = load i8, ptr %i.cz, align 8, !range !42, !noalias !16680, !noundef !28
  %.val20.i.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !noalias !16769 ; 5 uses
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc19.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16770)
  call void @llvm.experimental.noalias.scope.decl(metadata !16771)
  call void @llvm.experimental.noalias.scope.decl(metadata !16772)
  call void @llvm.experimental.noalias.scope.decl(metadata !16773)
  %i.gj = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !16774, !noalias !16775, !noundef !28 ; 3 uses
  %i.gl = load i64, ptr %.val20.i.i.i.i.i.i, align 8, !range !29, !alias.scope !16774, !noalias !16775, !noundef !28
  %i.gm = icmp eq i64 %i.gl, %i.gk
  br i1 %i.gm, label %bb.r, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i, !prof !30

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i, i64 noundef %i.gk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc20.i.i.i.i unwind label %bb.s, !noalias !16698

.noexc20.i.i.i.i:                                 ; preds = %bb.r
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !16776, !noalias !16775
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i, %bb.q
  %i.gn = phi i64 [ %i.gk, %bb.q ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i, %.noexc20.i.i.i.i ] ; 3 uses
  %i.go = icmp sgt i64 %i.gn, -1
  call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !16776, !noalias !16775, !nonnull !28, !noundef !28
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn
  store i8 125, ptr %i.gr, align 1, !noalias !16777
  %i.gs = add nuw i64 %i.gn, 1
  store i64 %i.gs, ptr %i.gj, align 8, !alias.scope !16776, !noalias !16775
  br label %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.i.i.i

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.p, %bb.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i", %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i", %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i", %bb.r, %bb.o, %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i", %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16778)
  %.val.i.i.i.i.i = load i64, ptr %i.bv, align 8, !range !29, !alias.scope !16778, !noalias !16672, !noundef !28 ; 2 uses
  %i.gu = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.gu, label %.body.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val1.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !16778, !noalias !16672, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16779
  br label %.body.i.i

bb.u:                                             ; preds = %.noexc15.i.i.i.i, %.noexc14.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.noexc15.i.i.i.i ], [ %i.fl, %.noexc14.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !16746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !16680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !16677
  call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  %.val.i21.i.i.i.i = load i64, ptr %i.bv, align 8, !range !29, !alias.scope !16780, !noalias !16672, !noundef !28 ; 2 uses
  %i.gv = icmp eq i64 %.val.i21.i.i.i.i, 0
  br i1 %i.gv, label %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i22.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !16780, !noalias !16672, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i22.i.i.i.i, i64 noundef %.val.i21.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16781
  br label %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.thread.i.i.i

_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.thread.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !16672
  br label %bb.w

_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !16680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !16677
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.bv, align 8, !noalias !16782 ; 2 uses
  %.sroa.614.0.copyload.i.i.i = load ptr, ptr %i.cx, align 8, !noalias !16782 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load i64, ptr %i.cy, align 8, !noalias !16782 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !16672
  %i.gw = icmp eq i64 %.sroa.013.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.gw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.i.i.i, %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.thread.i.i.i
  %.sroa.614.019.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.thread.i.i.i ], [ %.sroa.614.0.copyload.i.i.i, %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i) ]
  %i.gx = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16674

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i": ; preds = %bb.af, %bb.ae, %bb.y
  %.pn.i.i.i = phi { ptr, i32 } [ %i.gz, %bb.y ], [ %i.hn, %bb.ae ], [ %i.hn, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16783)
  call void @llvm.experimental.noalias.scope.decl(metadata !16784)
  %.val.i.i55.i.i.i = load i64, ptr %i.ca, align 8, !range !29, !alias.scope !16785, !noalias !16670, !noundef !28 ; 2 uses
  %i.gy = icmp eq i64 %.val.i.i55.i.i.i, 0
  br i1 %i.gy, label %.body.i.i, label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"
  %.val1.i.i56.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16785, !noalias !16670, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i, i64 noundef %.val.i.i55.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16786
  br label %.body.i.i

bb.y:                                             ; preds = %.invoke.i.i.i, %bb.al, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", %bb.ab, %bb.aa
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.z:                                             ; preds = %_ZN10serde_json3ser6to_vec17h4fe303cd886ce046E.exit.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i, ptr %i.ca, align 8, !noalias !16670
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16670
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16670
  %i.ha = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !16670 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 3
  br i1 %i.hc, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.hd = phi i64 [ %.pre.i.i.i, %bb.ac ], [ %.sroa.9.0.copyload.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !16670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !16670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !16670
  store i64 %i.hd, ptr %i.bw, align 8, !noalias !16670
  %i.he = icmp sgt i64 %i.hd, -1
  call void @llvm.assume(i1 %i.he)
  store ptr %i.bw, ptr %i.bx, align 8, !noalias !16670
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !16670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !16787
  store ptr @390, ptr %i.br, align 8, !noalias !16788
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !16788
  %.sroa.5.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bx, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !16788
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !noalias !16788
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i, align 8, !noalias !16788
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.br)
          to label %bb.ad unwind label %bb.y, !noalias !16789

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !16670
  store ptr %i.ca, ptr %i.bz, align 8, !noalias !16670
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i, align 8, !noalias !16670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !16790
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i64 4, ptr %i.hf, align 8, !noalias !16790
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  store ptr @387, ptr %i.hg, align 8, !noalias !16790
  %.sroa.449.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %.sroa.550.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  store ptr %i.bz, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %.sroa.651.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %.sroa.752.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  store i64 0, ptr %i.bq, align 8, !noalias !16790
  %.sroa.462.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %.sroa.563.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 0, ptr %i.hh, align 8, !noalias !16790
  %.sroa.524.0..sroa_idx25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i, align 8, !noalias !16790
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i, align 8, !noalias !16790
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store i32 1, ptr %i.hi, align 8, !noalias !16790
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bq, i64 76
  store i32 302, ptr %i.hj, align 4, !noalias !16790
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bq)
          to label %bb.ac unwind label %bb.y, !noalias !16789

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !16790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !16670
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16670
  br label %bb.aa

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !16787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !16670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !16670
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.by, align 8, !noalias !16670 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !16670, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !16670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !16670
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i), "nonnull"(ptr %.val33.i.i) ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 56
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !28, !noalias !16789, !nonnull !28 ; 2 uses
  %i.hm = invoke noundef ptr %i.hl(ptr noundef nonnull align 1 %.val32.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i)
          to label %bb.ag unwind label %bb.ae, !noalias !16789 ; 2 uses

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.ho, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16791
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.ag:                                            ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.hm)
          to label %bb.aq unwind label %bb.ae, !noalias !16789 ; 2 uses

bb.ai:                                            ; preds = %bb.ag
  %i.hq = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.hq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16792
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i": ; preds = %bb.aj, %bb.ai
  %i.hr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16670, !nonnull !28, !noundef !28
  %i.hs = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16670, !noundef !28
  %i.ht = invoke noundef ptr %i.hl(ptr noundef nonnull align 1 %.val32.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hr, i64 noundef %i.hs)
          to label %bb.ak unwind label %bb.y, !noalias !16789 ; 2 uses

bb.ak:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"
  %.not48.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not48.i.i.i, label %bb.al, label %.invoke.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.hu = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !invariant.load !28, !noalias !16789, !nonnull !28
  %i.hw = invoke noundef ptr %i.hv(ptr noundef nonnull align 1 %.val32.i.i)
          to label %bb.am unwind label %bb.y, !noalias !16789 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %.not50.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not50.i.i.i, label %bb.an, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.am, %bb.ak
  %i.hx = phi ptr [ %i.ht, %bb.ak ], [ %i.hw, %bb.am ]
  %i.hy = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.hx)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" unwind label %bb.y, !noalias !16789

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !16793)
  call void @llvm.experimental.noalias.scope.decl(metadata !16794)
  %.val.i.i66.i.i.i = load i64, ptr %i.ca, align 8, !range !29, !alias.scope !16795, !noalias !16670, !noundef !28 ; 2 uses
  %i.hz = icmp eq i64 %.val.i.i66.i.i.i, 0
  br i1 %i.hz, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val1.i.i67.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16795, !noalias !16670, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i, i64 noundef %.val.i.i66.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16796
  br label %bb.as

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i": ; preds = %bb.ar, %bb.aq, %.invoke.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.hp, %bb.aq ], [ %i.hy, %.invoke.i.i.i ], [ %i.hp, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16797)
  call void @llvm.experimental.noalias.scope.decl(metadata !16798)
  %.val.i.i70.i.i.i = load i64, ptr %i.ca, align 8, !range !29, !alias.scope !16799, !noalias !16670, !noundef !28 ; 2 uses
  %i.ia = icmp eq i64 %.val.i.i70.i.i.i, 0
  br i1 %i.ia, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"
  %.val1.i.i71.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16799, !noalias !16670, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i, i64 noundef %.val.i.i70.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16800
  br label %bb.at

bb.aq:                                            ; preds = %bb.ah
  %i.ib = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.ib, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16801
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"

common.resume:                                    ; preds = %bb.gl, %.body.i.i, %bb.gd, %bb.ge, %bb.gh, %bb.gj, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.qx, %bb.gd ], [ %.pn.i.i, %.body.i.i ], [ %i.qx, %bb.ge ], [ %.pn.i, %bb.gj ], [ %.pn.i, %bb.gh ], [ %i.rd, %bb.gl ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ba, %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", %bb.t, %bb.s
  %.pn.i.i = phi { ptr, i32 } [ %i.ja, %bb.ba ], [ %.pn.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i" ], [ %i.gt, %bb.s ], [ %i.gt, %bb.t ], [ %.pn.i.i.i, %bb.x ], [ %lpad.loopexit.split-lp1831, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..Rename$GT$$GT$17ha9d66d6fa1f4a07cE"(ptr noalias noundef align 8 dereferenceable(184) %i.cf) #43, !noalias !16802
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.au, %bb.bf, %bb.w, %bb.b
  %lpad.loopexit.split-lp1831 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.as:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !16670
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ce, i64 120 ; 2 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ap, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", %bb.w
  %.sroa.0.0.i.ph.i.i = phi ptr [ %i.gx, %bb.w ], [ %.sroa.0.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" ], [ %.sroa.0.1.i.i.i, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !16670
  br label %bb.bi

bb.au:                                            ; preds = %bb.bg, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !16667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !16667
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16802

bb.av:                                            ; preds = %bb.au
  %i.if = load i64, ptr %i.cd, align 8, !range !34, !noalias !16667, !noundef !28 ; 3 uses
  %i.ig = icmp eq i64 %i.if, -9223372036854775808
  %i.ih = load ptr, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !16667 ; 3 uses
  br i1 %i.ig, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !16667
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i, i64 112, i1 false), !noalias !16667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !16667
  store i64 %i.if, ptr %i.ce, align 8, !noalias !16667
  store ptr %i.ih, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !16667
  %i.ii = load ptr, ptr %i.ic, align 8, !alias.scope !16666, !nonnull !28, !noundef !28 ; 2 uses
  %i.ij = load i64, ptr %i.id, align 8, !alias.scope !16666, !noundef !28 ; 2 uses
  %.val.i.i = load i32, ptr %i.ie, align 8, !noalias !16667 ; 3 uses
  %i.ik = and i64 %i.ij, -16                      ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ik ; 2 uses
  %i.im = icmp eq i64 %i.ik, 0
  br i1 %i.im, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.preheader": ; preds = %bb.ax
  %i.in = insertelement <16 x i32> poison, i32 %.val.i.i, i64 0
  %i.io = shufflevector <16 x i32> %i.in, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i"

bb.ay:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i"
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i1381, i64 64
  %i.iq = add i64 %.sroa.5.0.i.i.i1380, -16       ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.preheader", %bb.ay
  %.sroa.0.03.i.i.i1381 = phi ptr [ %i.ip, %bb.ay ], [ %i.ii, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i1380 = phi i64 [ %i.iq, %bb.ay ], [ %i.ik, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.preheader" ]
  %i.is = load <16 x i32>, ptr %.sroa.0.03.i.i.i1381, align 4, !alias.scope !16803, !noalias !16804
  %i.it = icmp eq <16 x i32> %i.is, %i.io
  %i.iu = bitcast <16 x i1> %i.it to i16
  %.not = icmp eq i16 %i.iu, 0
  br i1 %.not, label %bb.ay, label %.loopexit.i.i

._crit_edge:                                      ; preds = %bb.ay, %bb.ax
  %i.iv = shl i64 %i.ij, 2
  %.idx = and i64 %i.iv, 60                       ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 %.idx
  %.not.not.not.i.not.not.i.i.i1382 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i1382, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i", label %.lr.ph

bb.az:                                            ; preds = %.lr.ph
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iy, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i = icmp eq ptr %i.ix, %i.iw
  br i1 %.not.not.not.i.not.not.i.i.i, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.az
  %i.iy = phi ptr [ %i.ix, %bb.az ], [ %i.il, %._crit_edge ] ; 2 uses
  %.val4.i.i.i.i = load i32, ptr %i.iy, align 4, !alias.scope !16803, !noalias !16805, !noundef !28
  %i.iz = icmp eq i32 %.val4.i.i.i.i, %.val.i.i
  br i1 %i.iz, label %.loopexit.i.i, label %bb.az

bb.ba:                                            ; preds = %bb.be, %bb.bc
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.ce) #43
          to label %.body.i.i unwind label %bb.bh, !noalias !16802

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i": ; preds = %._crit_edge, %bb.az
  %i.jb = load i32, ptr %i.cl, align 4, !alias.scope !16666, !noundef !28
  %.not30.i.i = icmp eq i32 %.val.i.i, %i.jb
  br i1 %.not30.i.i, label %bb.bb, label %bb.bc

.loopexit.i.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i", %.lr.ph
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.ce)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16674
end_hunk_7
begin_hunk_8_@_ZN11lsp_harness7jsonrpc6Server12replace_file17hf488ee301c2a4e91E:bb.a

.noexc39.i.i.i:                                   ; preds = %bb.ap
  %.pre.i.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ih, align 8, !alias.scope !21017, !noalias !21016
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc39.i.i.i, %bb.ao
  %i.il = phi i64 [ %i.ii, %bb.ao ], [ %.pre.i.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i, %.noexc39.i.i.i ] ; 3 uses
  %i.im = icmp sgt i64 %i.il, -1
  call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !21017, !noalias !21016, !nonnull !28, !noundef !28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.il
  store i8 125, ptr %i.ip, align 1, !noalias !21018
  %i.iq = add nuw i64 %i.il, 1
  store i64 %i.iq, ptr %i.ih, align 8, !alias.scope !21017, !noalias !21016
  %.val17.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !20781, !noalias !20779, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21019)
  call void @llvm.experimental.noalias.scope.decl(metadata !21020)
  call void @llvm.experimental.noalias.scope.decl(metadata !21021)
  call void @llvm.experimental.noalias.scope.decl(metadata !21022)
  %i.ir = getelementptr inbounds nuw i8, ptr %.val17.i.i.i.i.i, i64 16 ; 3 uses
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !21023, !noalias !21024, !noundef !28 ; 3 uses
  %i.it = load i64, ptr %.val17.i.i.i.i.i, align 8, !range !29, !alias.scope !21023, !noalias !21024, !noundef !28
  %i.iu = icmp eq i64 %i.it, %i.is
  br i1 %i.iu, label %bb.ar, label %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.i.i, !prof !30

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val17.i.i.i.i.i, i64 noundef %i.is, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !20775

.noexc40.i.i.i:                                   ; preds = %bb.ar
  %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i = load i64, ptr %i.ir, align 8, !alias.scope !21025, !noalias !21024
  br label %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc19.i.i.i, %.noexc35.i.i.i, %bb.ak, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i", %bb.j, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i", %bb.m, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i31.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h67bc725ed6568927E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i17.i.i.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.am, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.ar, %bb.ap, %bb.an, %bb.y, %bb.x, %bb.w, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21026)
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !range !29, !alias.scope !21026, !noalias !20775, !noundef !28 ; 2 uses
  %i.iv = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.iv, label %bb.b, label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !21026, !noalias !20775, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21027
  br label %bb.b

bb.at:                                            ; preds = %.noexc33.i.i.i, %.noexc32.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gs, %.noexc32.i.i.i ], [ %i.gv, %.noexc33.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20779
  call void @llvm.experimental.noalias.scope.decl(metadata !21028)
  %.val.i41.i.i.i = load i64, ptr %i.h, align 8, !range !29, !alias.scope !21028, !noalias !20775, !noundef !28 ; 2 uses
  %i.iw = icmp eq i64 %.val.i41.i.i.i, 0
  br i1 %i.iw, label %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val1.i42.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !21028, !noalias !20775, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i42.i.i.i, i64 noundef %.val.i41.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21029
  br label %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.thread.i.i

_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.thread.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20775
  br label %bb.av

_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.i.i: ; preds = %.noexc40.i.i.i, %bb.aq
  %i.ix = phi i64 [ %i.is, %bb.aq ], [ %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i, %.noexc40.i.i.i ] ; 3 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = getelementptr inbounds nuw i8, ptr %.val17.i.i.i.i.i, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !21025, !noalias !21024, !nonnull !28, !noundef !28
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ix
  store i8 125, ptr %i.jb, align 1, !noalias !21030
  %i.jc = add nuw i64 %i.ix, 1
  store i64 %i.jc, ptr %i.ir, align 8, !alias.scope !21025, !noalias !21024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20779
  %.sroa.013.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !21031 ; 2 uses
  %.sroa.614.0.copyload.i.i = load ptr, ptr %i.ae, align 8, !noalias !21031 ; 2 uses
  %.sroa.9.0.copyload.i.i = load i64, ptr %i.af, align 8, !noalias !21031 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20775
  %i.jd = icmp eq i64 %.sroa.013.0.copyload.i.i, -9223372036854775808
  br i1 %i.jd, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.i.i, %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.thread.i.i
  %.sroa.614.019.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.thread.i.i ], [ %.sroa.614.0.copyload.i.i, %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i) ]
  %i.je = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i)
          to label %bb.bq unwind label %bb.bp, !noalias !20769

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i": ; preds = %bb.be, %bb.bd, %bb.ax
  %.pn.i.i = phi { ptr, i32 } [ %i.jg, %bb.ax ], [ %i.ju, %bb.bd ], [ %i.ju, %bb.be ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21032)
  call void @llvm.experimental.noalias.scope.decl(metadata !21033)
  %.val.i.i55.i.i = load i64, ptr %i.m, align 8, !range !29, !alias.scope !21034, !noalias !20773, !noundef !28 ; 2 uses
  %i.jf = icmp eq i64 %.val.i.i55.i.i, 0
  br i1 %i.jf, label %bb.b, label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"
  %.val1.i.i56.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !21034, !noalias !20773, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i, i64 noundef %.val.i.i55.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21035
  br label %bb.b

bb.ax:                                            ; preds = %.invoke.i.i, %bb.bk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i", %bb.ba, %bb.az
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"

bb.ay:                                            ; preds = %_ZN10serde_json3ser6to_vec17h239bc7688b642b9eE.exit.i.i
  store i64 %.sroa.013.0.copyload.i.i, ptr %i.m, align 8, !noalias !20773
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %.sroa.614.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20773
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !20773
  %i.jh = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !20773 ; 2 uses
  %i.ji = icmp ult i64 %i.jh, 6
  call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp samesign ugt i64 %i.jh, 3
  br i1 %i.jj, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.jk = phi i64 [ %.pre.i.i, %bb.bb ], [ %.sroa.9.0.copyload.i.i, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20773
  store i64 %i.jk, ptr %i.i, align 8, !noalias !20773
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  store ptr %i.i, ptr %i.j, align 8, !noalias !20773
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !20773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21036
  store ptr @390, ptr %i.c, align 8, !noalias !21037
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !21037
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !21037
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !21037
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !21037
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.bc unwind label %bb.ax, !noalias !20773

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20773
  store ptr %i.m, ptr %i.l, align 8, !noalias !20773
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i, align 8, !noalias !20773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21038
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.jm, align 8, !noalias !21038
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %.sroa.532.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @387, ptr %i.jn, align 8, !noalias !21038
  %.sroa.449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %.sroa.550.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.l, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %.sroa.651.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %.sroa.752.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  store i64 0, ptr %i.b, align 8, !noalias !21038
  %.sroa.462.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %.sroa.563.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i, align 8, !noalias !21038
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.jo, align 8, !noalias !21038
  %.sroa.524.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i, align 8, !noalias !21038
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i, align 8, !noalias !21038
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.jp, align 8, !noalias !21038
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 302, ptr %i.jq, align 4, !noalias !21038
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.bb unwind label %bb.ax, !noalias !20773

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20773
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !20773
  br label %bb.az

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20773
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.k, align 8, !noalias !20773 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !20773, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !20773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20773
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13), "nonnull"(ptr %.val14) ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.val14, i64 56
  %i.js = load ptr, ptr %i.jr, align 8, !invariant.load !28, !noalias !20773, !nonnull !28 ; 2 uses
  %i.jt = invoke noundef ptr %i.js(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.11.0.copyload.i.i)
          to label %bb.bf unwind label %bb.bd, !noalias !20773 ; 2 uses

bb.bd:                                            ; preds = %bb.bg, %bb.bc
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.jv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21039
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"

bb.bf:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jw = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.jt)
          to label %bb.bn unwind label %bb.bd, !noalias !20773 ; 2 uses

bb.bh:                                            ; preds = %bb.bf
  %i.jx = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.jx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21040
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i": ; preds = %bb.bi, %bb.bh
  %i.jy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20773, !nonnull !28, !noundef !28
  %i.jz = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !20773, !noundef !28
  %i.ka = invoke noundef ptr %i.js(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jy, i64 noundef %i.jz)
          to label %bb.bj unwind label %bb.ax, !noalias !20773 ; 2 uses

bb.bj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i"
  %.not48.i.i = icmp eq ptr %i.ka, null
  br i1 %.not48.i.i, label %bb.bk, label %.invoke.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.kb = getelementptr inbounds nuw i8, ptr %.val14, i64 48
  %i.kc = load ptr, ptr %i.kb, align 8, !invariant.load !28, !noalias !20773, !nonnull !28
  %i.kd = invoke noundef ptr %i.kc(ptr noundef nonnull align 1 %.val13)
          to label %bb.bl unwind label %bb.ax, !noalias !20773 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %.not50.i.i = icmp eq ptr %i.kd, null
  br i1 %.not50.i.i, label %bb.bm, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.bl, %bb.bj
  %i.ke = phi ptr [ %i.ka, %bb.bj ], [ %i.kd, %bb.bl ]
  %i.kf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ke)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" unwind label %bb.ax, !noalias !20773

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i66.i.i = load i64, ptr %i.m, align 8, !range !29, !alias.scope !21041, !noalias !20773, !noundef !28 ; 2 uses
  %i.kg = icmp eq i64 %.val.i.i66.i.i, 0
  br i1 %i.kg, label %bb.bq, label %.sink.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i": ; preds = %bb.bo, %bb.bn, %.invoke.i.i
  %.sroa.0.1.i.i = phi ptr [ %i.jw, %bb.bn ], [ %i.kf, %.invoke.i.i ], [ %i.jw, %bb.bo ] ; 2 uses
  %.val.i.i70.i.i = load i64, ptr %i.m, align 8, !range !29, !alias.scope !21042, !noalias !20773, !noundef !28 ; 2 uses
  %i.kh = icmp eq i64 %.val.i.i70.i.i, 0
  br i1 %i.kh, label %bb.bq, label %.sink.split.i

bb.bn:                                            ; preds = %bb.bg
  %i.ki = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.ki, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21043
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i"

bb.bp:                                            ; preds = %bb.av, %bb.h
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.sink.split.i:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", %bb.bm
  %.val.i.i70.i.sink.i = phi i64 [ %.val.i.i66.i.i, %bb.bm ], [ %.val.i.i70.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ]
  %.sroa.0.0.i.ph.i = phi ptr [ null, %bb.bm ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ]
  %.val1.i.i71.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20773, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i, i64 noundef %.val.i.i70.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20773
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", %bb.bm, %bb.av
  %.sroa.0.0.i.i = phi ptr [ null, %bb.bm ], [ %i.je, %bb.av ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ], [ %.sroa.0.0.i.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20773
  call void @llvm.experimental.noalias.scope.decl(metadata !21044)
  call void @llvm.experimental.noalias.scope.decl(metadata !21045)
  %.val.i.i.i = load i64, ptr %i.n, align 8, !range !29, !alias.scope !21046, !noalias !20769, !noundef !28 ; 2 uses
  %i.kk = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.kk, label %"_ZN4core3ptr63drop_in_place$LT$lsp_types..VersionedTextDocumentIdentifier$GT$17h67a9057b06a04683E.exit.i.i.i", label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val1.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !21047, !noalias !20769, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21048
  br label %"_ZN4core3ptr63drop_in_place$LT$lsp_types..VersionedTextDocumentIdentifier$GT$17h67a9057b06a04683E.exit.i.i.i"

"_ZN4core3ptr63drop_in_place$LT$lsp_types..VersionedTextDocumentIdentifier$GT$17h67a9057b06a04683E.exit.i.i.i": ; preds = %bb.br, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !21049)
  %.val8.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !range !29, !alias.scope !21050, !noalias !21051, !noundef !28 ; 2 uses
  %i.kl = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.kl, label %"_ZN4core3ptr62drop_in_place$LT$lsp_types..TextDocumentContentChangeEvent$GT$17hf67c3cac28d3b9f7E.exit.i.i.i.i.i.i", label %bb.bs

bb.bs:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$lsp_types..VersionedTextDocumentIdentifier$GT$17h67a9057b06a04683E.exit.i.i.i"
  %.val9.i.i.i.i.i.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa.022.0..sroa_idx, align 8, !alias.scope !21049, !noalias !21051, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21052
  br label %"_ZN4core3ptr62drop_in_place$LT$lsp_types..TextDocumentContentChangeEvent$GT$17hf67c3cac28d3b9f7E.exit.i.i.i.i.i.i"

"_ZN4core3ptr62drop_in_place$LT$lsp_types..TextDocumentContentChangeEvent$GT$17hf67c3cac28d3b9f7E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr63drop_in_place$LT$lsp_types..VersionedTextDocumentIdentifier$GT$17h67a9057b06a04683E.exit.i.i.i", %bb.bs
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !21051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20769
  ret ptr %.sroa.0.0.i.i

bb.bt:                                            ; preds = %bb.c
  unreachable

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit": ; preds = %bb.bv, %bb.bu, %bb.b
  %.pn32 = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.b ], [ %.pn33, %bb.bu ], [ %.pn33, %bb.bv ]
  resume { ptr, i32 } %.pn32

bb.bu:                                            ; preds = %.thread34, %.thread
  %.pn33 = phi { ptr, i32 } [ %i.v, %.thread ], [ %i.q, %.thread34 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21055)
  %.val.i.i.i15 = load i64, ptr %1, align 8, !range !29, !alias.scope !21056, !noundef !28 ; 2 uses
  %i.km = icmp eq i64 %.val.i.i.i15, 0
  br i1 %i.km, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit", label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i16 = load ptr, ptr %i.kn, align 8, !alias.scope !21056, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i16, i64 noundef %.val.i.i.i15, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21056
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11lsp_harness7jsonrpc6Server12send_request17h809029bcf4505f99E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(144) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 13 uses
  %.sroa.19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.27.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.1086.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 5 uses
  %.sroa.9.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 4 uses
  %.sroa.18.i.i.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 7 uses
  %.sroa.21.i.i.i.i.i.i.i.i.i.i = alloca [12 x i8], align 8 ; 8 uses
  %.sroa.27.i.i.i.i.i.i.i.i.i.i = alloca [12 x i8], align 8 ; 8 uses
  %.sroa.12.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.13.i.i.i.i.i.i.i = alloca [12 x i8], align 8 ; 6 uses
  %.sroa.15.i.i.i.i.i.i.i = alloca [12 x i8], align 8 ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [104 x i8], align 8               ; 8 uses
  %i.r = alloca [104 x i8], align 8               ; 8 uses
  %i.s = alloca [104 x i8], align 8               ; 7 uses
  %i.t = alloca [104 x i8], align 8               ; 10 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 15 uses
  %.sroa.12.i.i.i = alloca [88 x i8], align 8     ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [128 x i8], align 8               ; 19 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 10 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 16 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [128 x i8], align 8              ; 7 uses
  %i.al = alloca [128 x i8], align 8              ; 10 uses
  %i.am = alloca [184 x i8], align 8              ; 20 uses
  %.sroa.11 = alloca [88 x i8], align 8           ; 5 uses
  %i.an = alloca [128 x i8], align 8              ; 7 uses
  %i.ao = alloca [64 x i8], align 8               ; 5 uses
  %.sroa.13 = alloca [112 x i8], align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21614)
end_hunk_8
begin_hunk_9_@_ZN11lsp_harness7jsonrpc6Server12send_request17h809029bcf4505f99E:bb.a
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.ar)
          to label %.noexc19.i.i.i unwind label %bb.t

.noexc19.i.i.i:                                   ; preds = %bb.q
  %i.ek = load ptr, ptr %i.aa, align 8, !noalias !21627, !nonnull !28, !align !35, !noundef !28
  %i.el = load i8, ptr %i.bd, align 8, !range !42, !noalias !21627, !noundef !28
  %.val20.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !noalias !21715 ; 5 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc19.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !21716)
  call void @llvm.experimental.noalias.scope.decl(metadata !21717)
  call void @llvm.experimental.noalias.scope.decl(metadata !21718)
  call void @llvm.experimental.noalias.scope.decl(metadata !21719)
  %i.en = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i, i64 16 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !21720, !noalias !21721, !noundef !28 ; 3 uses
  %i.ep = load i64, ptr %.val20.i.i.i.i.i, align 8, !range !29, !alias.scope !21720, !noalias !21721, !noundef !28
  %i.eq = icmp eq i64 %i.ep, %i.eo
  br i1 %i.eq, label %bb.s, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, !prof !30

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i, i64 noundef %i.eo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc20.i.i.i unwind label %bb.t, !noalias !21620

.noexc20.i.i.i:                                   ; preds = %bb.s
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i = load i64, ptr %i.en, align 8, !alias.scope !21722, !noalias !21721
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i, %bb.r
  %i.er = phi i64 [ %i.eo, %bb.r ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i, %.noexc20.i.i.i ] ; 3 uses
  %i.es = icmp sgt i64 %i.er, -1
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !21722, !noalias !21721, !nonnull !28, !noundef !28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.er
  store i8 125, ptr %i.ev, align 1, !noalias !21723
  %i.ew = add nuw i64 %i.er, 1
  store i64 %i.ew, ptr %i.en, align 8, !alias.scope !21722, !noalias !21721
  br label %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.i.i

bb.t:                                             ; preds = %bb.k, %bb.q, %bb.m, %bb.n, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i", %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i", %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i", %bb.s, %bb.p, %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i", %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21724)
  %.val.i.i.i.i = load i64, ptr %i.ac, align 8, !range !29, !alias.scope !21724, !noalias !21620, !noundef !28 ; 2 uses
  %i.ey = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ey, label %.body.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !21724, !noalias !21620, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21725
  br label %.body.i

bb.v:                                             ; preds = %.noexc15.i.i.i, %.noexc14.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.noexc15.i.i.i ], [ %i.dp, %.noexc14.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !21692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21624
  call void @llvm.experimental.noalias.scope.decl(metadata !21726)
  %.val.i21.i.i.i = load i64, ptr %i.ac, align 8, !range !29, !alias.scope !21726, !noalias !21620, !noundef !28 ; 2 uses
  %i.ez = icmp eq i64 %.val.i21.i.i.i, 0
  br i1 %i.ez, label %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i22.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !21726, !noalias !21620, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i22.i.i.i, i64 noundef %.val.i21.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21727
  br label %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.thread.i.i

_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.thread.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !21620
  br label %bb.x

_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21624
  %.sroa.013.0.copyload.i.i = load i64, ptr %i.ac, align 8, !noalias !21728 ; 2 uses
  %.sroa.614.0.copyload.i.i = load ptr, ptr %i.bb, align 8, !noalias !21728 ; 2 uses
  %.sroa.9.0.copyload.i.i = load i64, ptr %i.bc, align 8, !noalias !21728 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !21620
  %i.fa = icmp eq i64 %.sroa.013.0.copyload.i.i, -9223372036854775808
  br i1 %i.fa, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.i.i, %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.thread.i.i
  %.sroa.614.019.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.thread.i.i ], [ %.sroa.614.0.copyload.i.i, %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i) ]
  %i.fb = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21615

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i": ; preds = %bb.ag, %bb.af, %bb.z
  %.pn.i.i = phi { ptr, i32 } [ %i.fd, %bb.z ], [ %i.fr, %bb.af ], [ %i.fr, %bb.ag ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21729)
  call void @llvm.experimental.noalias.scope.decl(metadata !21730)
  %.val.i.i55.i.i = load i64, ptr %i.ah, align 8, !range !29, !alias.scope !21731, !noalias !21618, !noundef !28 ; 2 uses
  %i.fc = icmp eq i64 %.val.i.i55.i.i, 0
  br i1 %i.fc, label %.body.i, label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"
  %.val1.i.i56.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !21731, !noalias !21618, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i, i64 noundef %.val.i.i55.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21732
  br label %.body.i

bb.z:                                             ; preds = %.invoke.i.i, %bb.am, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i", %bb.ac, %bb.ab
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"

bb.aa:                                            ; preds = %_ZN10serde_json3ser6to_vec17h96cc3f580c8ea010E.exit.i.i
  store i64 %.sroa.013.0.copyload.i.i, ptr %i.ah, align 8, !noalias !21618
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21618
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !21618
  %i.fe = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !21618 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, 6
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp samesign ugt i64 %i.fe, 3
  br i1 %i.fg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.fh = phi i64 [ %.pre.i.i, %bb.ad ], [ %.sroa.9.0.copyload.i.i, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !21618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !21618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !21618
  store i64 %i.fh, ptr %i.ad, align 8, !noalias !21618
  %i.fi = icmp sgt i64 %i.fh, -1
  call void @llvm.assume(i1 %i.fi)
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !21618
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !21618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !21733
  store ptr @390, ptr %i.y, align 8, !noalias !21734
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !21734
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !21734
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !21734
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !21734
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y)
          to label %bb.ae unwind label %bb.z, !noalias !21618

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !21618
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !21618
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i, align 8, !noalias !21618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21735
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 4, ptr %i.fj, align 8, !noalias !21735
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %.sroa.532.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %i.fk = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store ptr @387, ptr %i.fk, align 8, !noalias !21735
  %.sroa.449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %.sroa.550.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store ptr %i.ag, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %.sroa.651.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %.sroa.752.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  store i64 0, ptr %i.x, align 8, !noalias !21735
  %.sroa.462.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %.sroa.563.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i, align 8, !noalias !21735
  %i.fl = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.fl, align 8, !noalias !21735
  %.sroa.524.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i, align 8, !noalias !21735
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i, align 8, !noalias !21735
  %i.fm = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i32 1, ptr %i.fm, align 8, !noalias !21735
  %i.fn = getelementptr inbounds nuw i8, ptr %i.x, i64 76
  store i32 302, ptr %i.fn, align 4, !noalias !21735
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.x)
          to label %bb.ad unwind label %bb.z, !noalias !21618

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !21735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !21618
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !21618
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !21733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21618
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.af, align 8, !noalias !21618 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !21618, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !21618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !21618
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i), "nonnull"(ptr %.val32.i) ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.val32.i, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !invariant.load !28, !noalias !21618, !nonnull !28 ; 2 uses
  %i.fq = invoke noundef ptr %i.fp(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.11.0.copyload.i.i)
          to label %bb.ah unwind label %bb.af, !noalias !21618 ; 2 uses

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.fs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21736
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"

bb.ah:                                            ; preds = %bb.ae
  %.not.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.fq)
          to label %bb.ar unwind label %bb.af, !noalias !21618 ; 2 uses

bb.aj:                                            ; preds = %bb.ah
  %i.fu = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.fu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21737
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i": ; preds = %bb.ak, %bb.aj
  %i.fv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21618, !nonnull !28, !noundef !28
  %i.fw = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !21618, !noundef !28
  %i.fx = invoke noundef ptr %i.fp(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fv, i64 noundef %i.fw)
          to label %bb.al unwind label %bb.z, !noalias !21618 ; 2 uses

bb.al:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i"
  %.not48.i.i = icmp eq ptr %i.fx, null
  br i1 %.not48.i.i, label %bb.am, label %.invoke.i.i

bb.am:                                            ; preds = %bb.al
  %i.fy = getelementptr inbounds nuw i8, ptr %.val32.i, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !invariant.load !28, !noalias !21618, !nonnull !28
  %i.ga = invoke noundef ptr %i.fz(ptr noundef nonnull align 1 %.val.i)
          to label %bb.an unwind label %bb.z, !noalias !21618 ; 2 uses

bb.an:                                            ; preds = %bb.am
  %.not50.i.i = icmp eq ptr %i.ga, null
  br i1 %.not50.i.i, label %bb.ao, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.an, %bb.al
  %i.gb = phi ptr [ %i.fx, %bb.al ], [ %i.ga, %bb.an ]
  %i.gc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.gb)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" unwind label %bb.z, !noalias !21618

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !21738)
  call void @llvm.experimental.noalias.scope.decl(metadata !21739)
  %.val.i.i66.i.i = load i64, ptr %i.ah, align 8, !range !29, !alias.scope !21740, !noalias !21618, !noundef !28 ; 2 uses
  %i.gd = icmp eq i64 %.val.i.i66.i.i, 0
  br i1 %i.gd, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i67.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !21740, !noalias !21618, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i, i64 noundef %.val.i.i66.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21741
  br label %bb.at

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i": ; preds = %bb.as, %bb.ar, %.invoke.i.i
  %.sroa.0.1.i.i = phi ptr [ %i.ft, %bb.ar ], [ %i.gc, %.invoke.i.i ], [ %i.ft, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21742)
  call void @llvm.experimental.noalias.scope.decl(metadata !21743)
  %.val.i.i70.i.i = load i64, ptr %i.ah, align 8, !range !29, !alias.scope !21744, !noalias !21618, !noundef !28 ; 2 uses
  %i.ge = icmp eq i64 %.val.i.i70.i.i, 0
  br i1 %i.ge, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i"
  %.val1.i.i71.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !21744, !noalias !21618, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i, i64 noundef %.val.i.i70.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21745
  br label %bb.au

bb.ar:                                            ; preds = %bb.ai
  %i.gf = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.gf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21746
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i"

common.resume:                                    ; preds = %bb.gf, %bb.gh, %bb.gb, %bb.gc, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.tu, %bb.gc ], [ %.pn, %bb.gh ], [ %.pn, %bb.gf ], [ %i.tu, %bb.gb ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb, %bb.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", %bb.u, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.he, %bb.bb ], [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i" ], [ %i.ex, %bb.t ], [ %i.ex, %bb.u ], [ %.pn.i.i, %bb.y ], [ %lpad.loopexit.split-lp507, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..GotoDefinition$GT$$GT$17hb86b37ec548218b3E"(ptr noalias noundef align 8 dereferenceable(184) %i.am) #43, !noalias !21747
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i, %bb.av, %bb.bg, %bb.x, %bb.b
  %lpad.loopexit.split-lp507 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.at:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !21618
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.aq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", %bb.x
  %.sroa.0.0.i.ph.i = phi ptr [ %i.fb, %bb.x ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ], [ %.sroa.0.1.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !21618
  br label %bb.bj

bb.av:                                            ; preds = %bb.bh, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !21615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !21615
  invoke void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21747

bb.aw:                                            ; preds = %bb.av
  %i.gj = load i64, ptr %i.ak, align 8, !range !34, !noalias !21615, !noundef !28 ; 3 uses
  %i.gk = icmp eq i64 %i.gj, -9223372036854775808
  %i.gl = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !21615 ; 3 uses
  br i1 %i.gk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !21615
  br label %bb.be

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i, i64 112, i1 false), !noalias !21615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !21615
  store i64 %i.gj, ptr %i.al, align 8, !noalias !21615
  store ptr %i.gl, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !21615
  %i.gm = load ptr, ptr %i.gg, align 8, !alias.scope !21614, !nonnull !28, !noundef !28 ; 2 uses
  %i.gn = load i64, ptr %i.gh, align 8, !alias.scope !21614, !noundef !28 ; 2 uses
  %.val33.i = load i32, ptr %i.gi, align 8, !noalias !21615 ; 3 uses
  %i.go = and i64 %i.gn, -16                      ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.go ; 2 uses
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.preheader": ; preds = %bb.ay
  %i.gr = insertelement <16 x i32> poison, i32 %.val33.i, i64 0
  %i.gs = shufflevector <16 x i32> %i.gr, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i"

bb.az:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i"
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i425, i64 64
  %i.gu = add i64 %.sroa.5.0.i.i424, -16          ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.preheader", %bb.az
  %.sroa.0.03.i.i425 = phi ptr [ %i.gt, %bb.az ], [ %i.gm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.preheader" ] ; 2 uses
  %.sroa.5.0.i.i424 = phi i64 [ %i.gu, %bb.az ], [ %i.go, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.preheader" ]
  %i.gw = load <16 x i32>, ptr %.sroa.0.03.i.i425, align 4, !alias.scope !21748, !noalias !21749
  %i.gx = icmp eq <16 x i32> %i.gw, %i.gs
  %i.gy = bitcast <16 x i1> %i.gx to i16
  %.not = icmp eq i16 %i.gy, 0
  br i1 %.not, label %bb.az, label %.loopexit.i

._crit_edge:                                      ; preds = %bb.az, %bb.ay
  %i.gz = shl i64 %i.gn, 2
  %.idx = and i64 %i.gz, 60                       ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx
  %.not.not.not.i.not.not.i.i426 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i426, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i", label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %i.hb = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i = icmp eq ptr %i.hb, %i.ha
  br i1 %.not.not.not.i.not.not.i.i, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.ba
  %i.hc = phi ptr [ %i.hb, %bb.ba ], [ %i.gp, %._crit_edge ] ; 2 uses
  %.val4.i.i.i = load i32, ptr %i.hc, align 4, !alias.scope !21748, !noalias !21750, !noundef !28
  %i.hd = icmp eq i32 %.val4.i.i.i, %.val33.i
  br i1 %i.hd, label %.loopexit.i, label %bb.ba

bb.bb:                                            ; preds = %bb.bf, %bb.bd
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.al) #43
          to label %.body.i unwind label %bb.bi, !noalias !21747

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i": ; preds = %._crit_edge, %bb.ba
  %i.hf = load i32, ptr %i.ap, align 4, !alias.scope !21614, !noundef !28
  %.not30.i = icmp eq i32 %.val33.i, %i.hf
  br i1 %.not30.i, label %bb.bc, label %bb.bd

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i", %.lr.ph
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.al)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21615
end_hunk_9
begin_hunk_10_@_ZN11lsp_harness7jsonrpc6Server16new_with_options17h320fa5d3e58007b4E:bb.a
          to label %.noexc13.i.i.i.i unwind label %bb.gu, !noalias !22864

.noexc13.i.i.i.i:                                 ; preds = %bb.gq
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i45.i = load i64, ptr %i.qb, align 8, !alias.scope !22920, !noalias !22914
  %.pre1.i.i.i.i.i = load ptr, ptr %i.qa, align 8, !alias.scope !22920, !noalias !22914
  %.pre2.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !22921, !noalias !22922
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc13.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i
  %i.rs = phi i64 [ %i.rl, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i, %.noexc13.i.i.i.i ] ; 3 uses
  %i.rt = phi ptr [ %i.ro, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i ], [ %.pre1.i.i.i.i.i, %.noexc13.i.i.i.i ] ; 2 uses
  %i.ru = phi i64 [ %i.rq, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i45.i, %.noexc13.i.i.i.i ] ; 3 uses
  %i.rv = icmp sgt i64 %i.ru, -1
  call void @llvm.assume(i1 %i.rv)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.ru
  store i8 123, ptr %i.rw, align 1, !noalias !22923
  %i.rx = add nuw i64 %i.ru, 1                    ; 3 uses
  store i64 %i.rx, ptr %i.qb, align 8, !alias.scope !22920, !noalias !22914
  call void @llvm.experimental.noalias.scope.decl(metadata !22924)
  call void @llvm.experimental.noalias.scope.decl(metadata !22925)
  call void @llvm.experimental.noalias.scope.decl(metadata !22926)
  call void @llvm.experimental.noalias.scope.decl(metadata !22927)
  %i.ry = icmp eq i64 %i.rs, %i.rx
  br i1 %i.ry, label %bb.gr, label %bb.gs, !prof !30

bb.gr:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.rs, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i.i.i43.i unwind label %bb.gu, !noalias !22864

.noexc14.i.i.i43.i:                               ; preds = %bb.gr
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qb, align 8, !alias.scope !22928, !noalias !22922
  %.pre3.i.i.i.i.i = load ptr, ptr %i.qa, align 8, !alias.scope !22928, !noalias !22922
  %.pre.i.i.i44.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !22929, !noalias !22930
  br label %bb.gs

bb.gs:                                            ; preds = %.noexc14.i.i.i43.i, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rz = phi i64 [ %i.rs, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i44.i, %.noexc14.i.i.i43.i ] ; 2 uses
  %i.sa = phi ptr [ %i.rt, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %.noexc14.i.i.i43.i ]
  %i.sb = phi i64 [ %i.rx, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc14.i.i.i43.i ] ; 3 uses
  %i.sc = icmp sgt i64 %i.sb, -1
  call void @llvm.assume(i1 %i.sc)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sb
  store i8 125, ptr %i.sd, align 1, !noalias !22931
  %i.se = add nuw i64 %i.sb, 1                    ; 3 uses
  store i64 %i.se, ptr %i.qb, align 8, !alias.scope !22928, !noalias !22922
  call void @llvm.experimental.noalias.scope.decl(metadata !22932)
  call void @llvm.experimental.noalias.scope.decl(metadata !22933)
  call void @llvm.experimental.noalias.scope.decl(metadata !22934)
  call void @llvm.experimental.noalias.scope.decl(metadata !22935)
  %i.sf = icmp eq i64 %i.rz, %i.se
  br i1 %i.sf, label %bb.gt, label %_ZN10serde_json3ser6to_vec17he66211053956e6acE.exit.i.i.i, !prof !30

bb.gt:                                            ; preds = %bb.gs
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.rz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i.i.i.i unwind label %bb.gu, !noalias !22864

.noexc15.i.i.i.i:                                 ; preds = %bb.gt
  %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i.i = load i64, ptr %i.qb, align 8, !alias.scope !22936, !noalias !22930
  br label %_ZN10serde_json3ser6to_vec17he66211053956e6acE.exit.i.i.i

bb.gu:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i", %bb.gk, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i.i", %bb.gn, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i31.i.i.i.i.i.i", %bb.gt, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gm, %bb.gl, %bb.gj
  %i.sg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22937)
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !22937, !noalias !22864, !noundef !28 ; 2 uses
  %i.sh = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.sh, label %.body49, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.val1.i.i.i.i.i = load ptr, ptr %i.qa, align 8, !alias.scope !22937, !noalias !22864, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22938
  br label %.body49

_ZN10serde_json3ser6to_vec17he66211053956e6acE.exit.i.i.i: ; preds = %.noexc15.i.i.i.i, %bb.gs
  %i.si = phi i64 [ %i.se, %bb.gs ], [ %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i.i, %.noexc15.i.i.i.i ] ; 3 uses
  %i.sj = icmp sgt i64 %i.si, -1
  call void @llvm.assume(i1 %i.sj)
  %i.sk = load ptr, ptr %i.qa, align 8, !alias.scope !22936, !noalias !22930, !nonnull !28, !noundef !28 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.si
  store i8 125, ptr %i.sl, align 1, !noalias !22939
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !22940 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22864
  %i.sm = icmp eq i64 %.sroa.013.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.sm, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %_ZN10serde_json3ser6to_vec17he66211053956e6acE.exit.i.i.i
  %i.sn = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %i.sk)
          to label %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread83 unwind label %bb.hs

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i": ; preds = %bb.hf, %bb.he, %bb.gy
  %.pn.i.i41.i = phi { ptr, i32 } [ %i.sp, %bb.gy ], [ %i.te, %bb.he ], [ %i.te, %bb.hf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22941)
  call void @llvm.experimental.noalias.scope.decl(metadata !22942)
  %.val.i.i55.i.i.i = load i64, ptr %i.i, align 8, !range !29, !alias.scope !22943, !noalias !22863, !noundef !28 ; 2 uses
  %i.so = icmp eq i64 %.val.i.i55.i.i.i, 0
  br i1 %i.so, label %.body49, label %bb.gx

bb.gx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"
  %.val1.i.i56.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i39.i, align 8, !alias.scope !22943, !noalias !22863, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i, i64 noundef %.val.i.i55.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22944
  br label %.body49

bb.gy:                                            ; preds = %.invoke.i.i.i, %bb.hl, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", %bb.hb, %bb.ha
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.gz:                                            ; preds = %_ZN10serde_json3ser6to_vec17he66211053956e6acE.exit.i.i.i
  %i.sq = add nuw i64 %i.si, 1                    ; 2 uses
  store i64 %.sroa.013.0.copyload.i.i.i, ptr %i.i, align 8, !noalias !22863
  %.sroa.4.0..sroa_idx.i.i39.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr %i.sk, ptr %.sroa.4.0..sroa_idx.i.i39.i, align 8, !noalias !22863
  %.sroa.5.0..sroa_idx.i.i40.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 %i.sq, ptr %.sroa.5.0..sroa_idx.i.i40.i, align 8, !noalias !22863
  %i.sr = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !22863 ; 2 uses
  %i.ss = icmp ult i64 %i.sr, 6
  call void @llvm.assume(i1 %i.ss)
  %i.st = icmp samesign ugt i64 %i.sr, 3
  br i1 %i.st, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.hc, %bb.gz
  %i.su = phi i64 [ %.pre.i.i.i, %bb.hc ], [ %i.sq, %bb.gz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22863
  store i64 %i.su, ptr %i.e, align 8, !noalias !22863
  %i.sv = icmp sgt i64 %i.su, -1
  call void @llvm.assume(i1 %i.sv)
  store ptr %i.e, ptr %i.f, align 8, !noalias !22863
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !22863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22945
  store ptr @390, ptr %i.c, align 8, !noalias !22946
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !22946
  %.sroa.5.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !22946
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !noalias !22946
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i, align 8, !noalias !22946
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.hd unwind label %bb.gy, !noalias !22863

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22863
  store ptr %i.i, ptr %i.h, align 8, !noalias !22863
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i, align 8, !noalias !22863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22947
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.sw, align 8, !noalias !22947
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @387, ptr %i.sx, align 8, !noalias !22947
  %.sroa.449.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %.sroa.550.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %.sroa.651.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %.sroa.752.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  store i64 0, ptr %i.b, align 8, !noalias !22947
  %.sroa.462.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %.sroa.563.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.sy, align 8, !noalias !22947
  %.sroa.524.0..sroa_idx25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i, align 8, !noalias !22947
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i, align 8, !noalias !22947
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.sz, align 8, !noalias !22947
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 302, ptr %i.ta, align 4, !noalias !22947
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.hc unwind label %bb.gy, !noalias !22863

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22863
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i40.i, align 8, !noalias !22863
  br label %bb.ha

bb.hd:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22863
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.g, align 8, !noalias !22863 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i42.i, align 8, !noalias !22863, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !22863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22863
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i48), "nonnull"(ptr %.val37.i) ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.val37.i, i64 56
  %i.tc = load ptr, ptr %i.tb, align 8, !invariant.load !28, !noalias !22863, !nonnull !28 ; 2 uses
  %i.td = invoke noundef ptr %i.tc(ptr noundef nonnull align 1 %.val.i48, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i)
          to label %bb.hg unwind label %bb.he, !noalias !22863 ; 2 uses

bb.he:                                            ; preds = %bb.hh, %bb.hd
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tf = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.tf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22948
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.hg:                                            ; preds = %bb.hd
  %.not.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.tg = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.td)
          to label %bb.hq unwind label %bb.he, !noalias !22863 ; 2 uses

bb.hi:                                            ; preds = %bb.hg
  %i.th = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.th, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22949
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i": ; preds = %bb.hj, %bb.hi
  %i.ti = load ptr, ptr %.sroa.4.0..sroa_idx.i.i39.i, align 8, !noalias !22863, !nonnull !28, !noundef !28
  %i.tj = load i64, ptr %.sroa.5.0..sroa_idx.i.i40.i, align 8, !noalias !22863, !noundef !28
  %i.tk = invoke noundef ptr %i.tc(ptr noundef nonnull align 1 %.val.i48, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ti, i64 noundef %i.tj)
          to label %bb.hk unwind label %bb.gy, !noalias !22863 ; 2 uses

bb.hk:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"
  %.not48.i.i.i = icmp eq ptr %i.tk, null
  br i1 %.not48.i.i.i, label %bb.hl, label %.invoke.i.i.i

bb.hl:                                            ; preds = %bb.hk
  %i.tl = getelementptr inbounds nuw i8, ptr %.val37.i, i64 48
  %i.tm = load ptr, ptr %i.tl, align 8, !invariant.load !28, !noalias !22863, !nonnull !28
  %i.tn = invoke noundef ptr %i.tm(ptr noundef nonnull align 1 %.val.i48)
          to label %bb.hm unwind label %bb.gy, !noalias !22863 ; 2 uses

bb.hm:                                            ; preds = %bb.hl
  %.not50.i.i.i = icmp eq ptr %i.tn, null
  br i1 %.not50.i.i.i, label %bb.hn, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.hm, %bb.hk
  %i.to = phi ptr [ %i.tk, %bb.hk ], [ %i.tn, %bb.hm ]
  %i.tp = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.to)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" unwind label %bb.gy, !noalias !22863

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.experimental.noalias.scope.decl(metadata !22950)
  call void @llvm.experimental.noalias.scope.decl(metadata !22951)
  %.val.i.i66.i.i.i = load i64, ptr %i.i, align 8, !range !29, !alias.scope !22952, !noalias !22863, !noundef !28 ; 2 uses
  %i.tq = icmp eq i64 %.val.i.i66.i.i.i, 0
  br i1 %i.tq, label %bb.hu, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.val1.i.i67.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i39.i, align 8, !alias.scope !22952, !noalias !22863, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i, i64 noundef %.val.i.i66.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22953
  br label %bb.hu

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i": ; preds = %bb.hr, %bb.hq, %.invoke.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.tg, %bb.hq ], [ %i.tp, %.invoke.i.i.i ], [ %i.tg, %bb.hr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22954)
  call void @llvm.experimental.noalias.scope.decl(metadata !22955)
  %.val.i.i70.i.i.i = load i64, ptr %i.i, align 8, !range !29, !alias.scope !22956, !noalias !22863, !noundef !28 ; 2 uses
  %i.tr = icmp eq i64 %.val.i.i70.i.i.i, 0
  br i1 %i.tr, label %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread83, label %bb.hp

bb.hp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"
  %.val1.i.i71.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i39.i, align 8, !alias.scope !22956, !noalias !22863, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i, i64 noundef %.val.i.i70.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22957
  br label %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread83

bb.hq:                                            ; preds = %bb.hh
  %i.ts = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.ts, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22958
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"

bb.hs:                                            ; preds = %bb.gw, %bb.gi, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit32.i.i", %bb.cb, %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hd8f91e1cfa9a1624E.exit.i.i
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.body49:                                          ; preds = %.body.i.i.i, %bb.fu, %bb.fv, %bb.fy, %bb.ga, %bb.gc, %bb.gu, %bb.gv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", %bb.gx, %bb.hs
  %eh.lpad-body50 = phi { ptr, i32 } [ %i.tt, %bb.hs ], [ %i.pg, %bb.fu ], [ %i.pm, %bb.gc ], [ %.pn.i.i.i, %.body.i.i.i ], [ %i.pg, %bb.fv ], [ %.pn.i.i, %bb.ga ], [ %.pn.i.i, %bb.fy ], [ %i.sg, %bb.gu ], [ %i.sg, %bb.gv ], [ %.pn.i.i41.i, %bb.gx ], [ %.pn.i.i41.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$lsp_harness..jsonrpc..Server$GT$17he775e820b9722f51E"(ptr noalias noundef align 8 dereferenceable(112) %i.ba) #43
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59" unwind label %bb.hv

_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread83: ; preds = %bb.hp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", %bb.gw
  %.sroa.0.0.i.i.i.ph = phi ptr [ %i.sn, %bb.gw ], [ %.sroa.0.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" ], [ %.sroa.0.1.i.i.i, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22863
  br label %bb.ht

bb.ht:                                            ; preds = %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread83, %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread
  %.sroa.0.0.i82 = phi ptr [ %.sroa.846.0.ph.i, %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread ], [ %.sroa.0.0.i.i.i.ph, %_ZN11lsp_harness7jsonrpc6Server10initialize17hf21bf9a0fc971cedE.exit.thread83 ]
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i82, ptr %i.tu, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$lsp_harness..jsonrpc..Server$GT$17he775e820b9722f51E"(ptr noalias noundef align 8 dereferenceable(112) %i.ba)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.sink.split" unwind label %bb.ia

bb.hu:                                            ; preds = %bb.ho, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i64 112, i1 false)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.sink.split"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.sink.split": ; preds = %bb.ht, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.sink.split", %bb.hz, %.thread93
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h5b47f7d3d6d503a3E"(ptr noalias noundef align 8 dereferenceable(200) %1)
  ret void

bb.hv:                                            ; preds = %bb.ib, %.body, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59", %.body49
  %i.tv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.hw:                                            ; preds = %bb.j
  %i.tw = landingpad { ptr, i32 }
          cleanup
  %i.tx = call noundef i32 @close(i32 noundef %i.bk) #41, !noalias !22959 ; 0 uses
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..process..Child$GT$17ha82a52479169a4c9E"(ptr noalias noundef align 4 dereferenceable(28) %i.az) #43
  %i.ty = call noundef i32 @close(i32 noundef %i.bm) #41 ; 0 uses
  br label %.thread94

bb.hx:                                            ; preds = %bb.k
  %i.tz = landingpad { ptr, i32 }
          cleanup
  %i.ua = call noundef i32 @close(i32 noundef %i.bk) #41, !noalias !22960 ; 0 uses
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.g
  %.pn31.pn.pn.ph = phi { ptr, i32 } [ %i.bn, %bb.g ], [ %i.tz, %bb.hx ]
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..process..Child$GT$17ha82a52479169a4c9E"(ptr noalias noundef align 4 dereferenceable(28) %i.az) #43
  br label %.thread94

.thread93:                                        ; preds = %bb.c
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.ub, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %i.uc = load i8, ptr %2, align 8, !range !45, !alias.scope !22961, !noundef !28
  %i.ud = icmp eq i8 %i.uc, 6
  br i1 %i.ud, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit", label %bb.hz

bb.hz:                                            ; preds = %.thread93
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %2)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit" unwind label %bb.ia

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59": ; preds = %.body49, %.thread94, %bb.ib, %bb.ia
  %.pn37 = phi { ptr, i32 } [ %i.ue, %bb.ia ], [ %.pn3568, %.thread94 ], [ %.pn3568, %bb.ib ], [ %eh.lpad-body50, %.body49 ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h5b47f7d3d6d503a3E"(ptr noalias noundef align 8 dereferenceable(200) %1) #43
          to label %bb.ic unwind label %bb.hv

bb.ia:                                            ; preds = %bb.ht, %bb.hz
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59"

.thread94:                                        ; preds = %.body39, %bb.hy, %bb.hw, %.thread
  %.pn3568 = phi { ptr, i32 } [ %i.bc, %.thread ], [ %.pn31.pn.pn.ph, %bb.hy ], [ %eh.lpad-body, %.body39 ], [ %i.tw, %bb.hw ] ; 2 uses
  %i.uf = load i8, ptr %2, align 8, !range !45, !alias.scope !22962, !noundef !28
  %i.ug = icmp eq i8 %i.uf, 6
  br i1 %i.ug, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59", label %bb.ib

bb.ib:                                            ; preds = %.thread94
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %2)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59" unwind label %bb.hv

bb.ic:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59"
  resume { ptr, i32 } %.pn37
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11lsp_harness7jsonrpc6Server3new17ha4d00c7defcb2c4fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 6, ptr %i.a, align 8
  call void @_ZN11lsp_harness7jsonrpc6Server16new_with_options17h320fa5d3e58007b4E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11lsp_harness7jsonrpc6Server4recv17h4e15249262e49441E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr %.64.val, ptr nofree readonly captures(none) %.72.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.598.i.i.i.i = alloca [56 x i8], align 8  ; 5 uses
  %.sroa.592.i.i.i.i = alloca [31 x i8], align 1  ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [64 x i8], align 8                ; 25 uses
  %i.r = alloca [32 x i8], align 8                ; 26 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [64 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.632.sroa.5.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 12 uses
  %i.ad = alloca [128 x i8], align 8              ; 12 uses
  %i.ae = alloca [136 x i8], align 8              ; 9 uses
  %i.af = alloca [128 x i8], align 8              ; 12 uses
  %i.ag = alloca [136 x i8], align 8              ; 9 uses
  %.sroa.19.i.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.18.i.i.i115 = alloca [112 x i8], align 8 ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i116 = alloca [112 x i8], align 8     ; 7 uses
  %i.ai = alloca [128 x i8], align 8              ; 8 uses
  %i.aj = alloca [56 x i8], align 8               ; 21 uses
  %i.ak = alloca [128 x i8], align 8              ; 19 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 10 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 24 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 9 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 10 uses
  %i.bg = alloca [80 x i8], align 8               ; 14 uses
  %i.bh = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.34.i.i.i = alloca [7 x i8], align 1      ; 6 uses
  %.sroa.36.i.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.bi = alloca [80 x i8], align 8               ; 14 uses
  %i.bj = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.184.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.20.i.i.i = alloca [16 x i8], align 8     ; 6 uses
  %.sroa.18.i.i.i = alloca [64 x i8], align 8     ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i = alloca [64 x i8], align 8         ; 5 uses
  %i.bl = alloca [80 x i8], align 8               ; 11 uses
  %i.bm = alloca [56 x i8], align 8               ; 20 uses
  %i.bn = alloca [56 x i8], align 8               ; 9 uses
  %i.bo = alloca [48 x i8], align 8               ; 4 uses
  %i.bp = alloca [48 x i8], align 8               ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [104 x i8], align 8              ; 15 uses
  %i.bs = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.1029 = alloca [112 x i8], align 8        ; 6 uses
  %i.bt = alloca [80 x i8], align 8               ; 17 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 12 uses
  %i.bw = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i64 0, ptr %i.bw, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.64.val), "nonnull"(ptr %.72.val) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.72.val, i64 128
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !28, !nonnull !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 72 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer"

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge": ; preds = %bb.av, %bb.ay, %.preheader53.i
  %.sroa.7.0.ph.be = phi i64 [ %i.kk, %bb.ay ], [ 0, %.preheader53.i ], [ %i.kb, %bb.av ]
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer"

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge", %bb.a
  %.sroa.7.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.7.0.ph.be, %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge" ] ; 15 uses
  %.sroa.0.0.ph = phi i1 [ false, %bb.a ], [ true, %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge" ]
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit"

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.backedge", %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer"
  store i64 0, ptr %.sroa.545.0..sroa_idx, align 8
  %i.cj = invoke { i64, ptr } %i.by(ptr noundef nonnull align 1 %.64.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread63:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mz, %bb.my, %.body112, %bb.br, %bb.bp, %bb.bo, %bb.bl, %bb.bk
  %.pn75 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.mz ], [ %eh.lpad-body113, %.body112 ], [ %lpad.thr_comm, %bb.my ], [ %i.lf, %bb.bp ], [ %i.la, %bb.bl ], [ %i.la, %bb.bk ], [ %i.lf, %bb.bo ], [ %eh.lpad-body113, %bb.br ], [ %lpad.loopexit.split-lp4071, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23507)
  call void @llvm.experimental.noalias.scope.decl(metadata !23508)
  %.val.i.i = load i64, ptr %i.bw, align 8, !range !29, !alias.scope !23509, !noundef !28 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i, 0
  br i1 %i.ck, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.b

bb.b:                                             ; preds = %.thread63
  %.val1.i.i = load ptr, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !23509, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !23509
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.c:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit"
  %i.cl = extractvalue { i64, ptr } %i.cj, 0
  %i.cm = extractvalue { i64, ptr } %i.cj, 1      ; 2 uses
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.co = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.cm)
          to label %bb.na unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.cp = icmp eq ptr %i.cm, null
  br i1 %i.cp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %.sroa.444.0..sroa_idx, align 8 ; 3 uses
  %.val79 = load i64, ptr %.sroa.545.0..sroa_idx, align 8, !noundef !28 ; 2 uses
  %.not.i = icmp eq i64 %.val79, 2
  br i1 %.not.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

bb.g:                                             ; preds = %bb.e, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  br i1 %.sroa.0.0.ph, label %bb.bc, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bs)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.cq = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hd1a9549722c5cff0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bs)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.cr = load i16, ptr %.val, align 1
  %i.cs = icmp ne i16 %i.cr, 2573
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.g, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread": ; preds = %bb.f, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  %i.cv = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h3636e70087827363E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val79) ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0      ; 4 uses
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !23510
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.br, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cx, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @379, i64 noundef 2)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  call void @llvm.experimental.noalias.scope.decl(metadata !23511)
  %i.cy = load i64, ptr %i.br, align 8, !range !43, !alias.scope !23511, !noalias !23510, !noundef !28
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.noexc84
  %i.da = load i8, ptr %i.ca, align 2, !range !33, !alias.scope !23512, !noalias !23510, !noundef !28
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit.thread", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.bz, align 8, !alias.scope !23511, !noalias !23510 ; 16 uses
  %i.dc = load ptr, ptr %i.cc, align 8, !alias.scope !23512, !noalias !23510, !nonnull !28, !align !37, !noundef !28 ; 5 uses
  %i.dd = load i64, ptr %i.cd, align 8, !alias.scope !23512, !noalias !23510, !noundef !28 ; 16 uses
  %.promoted26.i.i = load i8, ptr %i.cb, align 8, !alias.scope !23512, !noalias !23510
  %i.de = trunc nuw i8 %.promoted26.i.i to i1     ; 2 uses
  %i.df = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.df, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %i.dd
  br i1 %.not.i.i.i.peel.i, label %bb.j, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.i
  %i.dg = icmp eq i64 %.promoted.i.i, %i.dd
  br i1 %i.dg, label %bb.k, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.promoted.i.i
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !23513, !noalias !23514, !noundef !28
  %i.dj = icmp sgt i8 %i.di, -65
  br i1 %i.dj, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.promoted.i.i ; 4 uses
  %i.dl = icmp samesign eq i64 %.promoted.i.i, %i.dd
  br i1 %i.dl, label %.loopexit119.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = load i8, ptr %i.dk, align 1, !noalias !23515, !noundef !28 ; 5 uses
  %i.dn = icmp sgt i8 %i.dm, -1
  br i1 %i.dn, label %bb.m, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i": ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dp = and i8 %i.dm, 31
  %i.dq = zext nneg i8 %i.dp to i32               ; 3 uses
  %i.dr = add nuw nsw i64 %.promoted.i.i, 1
  %i.ds = icmp samesign ne i64 %i.dr, %i.dd
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load i8, ptr %i.do, align 1, !noalias !23515, !noundef !28
  %i.du = shl nuw nsw i32 %i.dq, 6
  %i.dv = and i8 %i.dt, 63
  %i.dw = zext nneg i8 %i.dv to i32               ; 2 uses
  %i.dx = or disjoint i32 %i.du, %i.dw
  %i.dy = icmp samesign ugt i8 %i.dm, -33
  br i1 %i.dy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i"
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.ea = add nuw nsw i64 %.promoted.i.i, 2
  %i.eb = icmp samesign ne i64 %i.ea, %i.dd
  call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dz, align 1, !noalias !23515, !noundef !28
  %i.ed = shl nuw nsw i32 %i.dw, 6
  %i.ee = and i8 %i.ec, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ed, %i.ef            ; 2 uses
  %i.eh = shl nuw nsw i32 %i.dq, 12
  %i.ei = or disjoint i32 %i.eg, %i.eh
  %i.ej = icmp samesign ugt i8 %i.dm, -17
  br i1 %i.ej, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  %i.el = add nuw nsw i64 %.promoted.i.i, 3
  %i.em = icmp samesign ne i64 %i.el, %i.dd
  call void @llvm.assume(i1 %i.em)
  %i.en = load i8, ptr %i.ek, align 1, !noalias !23515, !noundef !28
  %i.eo = shl nuw nsw i32 %i.dq, 18
  %i.ep = and i32 %i.eo, 1835008
  %i.eq = shl nuw nsw i32 %i.eg, 6
  %i.er = and i8 %i.en, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = or disjoint i32 %i.et, %i.ep
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ev = zext nneg i8 %i.dm to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i"
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ei, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i" ], [ %i.eu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i" ], [ %i.dx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i" ], [ %i.ev, %bb.m ] ; 4 uses
  %i.ew = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.ew)
  br i1 %i.de, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.ex, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.ey, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ez, i64 3, i64 4
  br label %bb.s
end_hunk_10
begin_hunk_11_@_ZN11lsp_harness7jsonrpc6Server4send17h0f2670fecb7a5d35E:bb.a
.noexc21.i:                                       ; preds = %bb.q
  %i.dt = load ptr, ptr %i.e, align 8, !noalias !24072, !nonnull !28, !align !35, !noundef !28
  %i.du = load i8, ptr %i.q, align 8, !range !42, !noalias !24072, !noundef !28
  %.val20.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !24182 ; 5 uses
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit, label %bb.r

bb.r:                                             ; preds = %.noexc21.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24183)
  call void @llvm.experimental.noalias.scope.decl(metadata !24184)
  call void @llvm.experimental.noalias.scope.decl(metadata !24185)
  call void @llvm.experimental.noalias.scope.decl(metadata !24186)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val20.i.i.i, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !24187, !noalias !24188, !noundef !28 ; 3 uses
  %i.dy = load i64, ptr %.val20.i.i.i, align 8, !range !29, !alias.scope !24187, !noalias !24188, !noundef !28
  %i.dz = icmp eq i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.s, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i, !prof !30

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i, i64 noundef %i.dx, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22.i unwind label %bb.t, !noalias !24065

.noexc22.i:                                       ; preds = %bb.s
  %.pre.i.i.i.i.i.i.i.i38.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !24189, !noalias !24188
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i: ; preds = %.noexc22.i, %bb.r
  %i.ea = phi i64 [ %i.dx, %bb.r ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i, %.noexc22.i ] ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val20.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !24189, !noalias !24188, !nonnull !28, !noundef !28
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  store i8 125, ptr %i.ee, align 1, !noalias !24190
  %i.ef = add nuw i64 %i.ea, 1
  store i64 %i.ef, ptr %i.dw, align 8, !alias.scope !24189, !noalias !24188
  br label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit

bb.t:                                             ; preds = %bb.k, %bb.q, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i", %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i", %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i", %bb.s, %bb.p, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10bf954709f4ce16E.exit.i.i.i.i.i.i.i, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24191)
  %.val.i.i = load i64, ptr %i.g, align 8, !range !29, !alias.scope !24191, !noalias !24065, !noundef !28 ; 2 uses
  %i.eh = icmp eq i64 %.val.i.i, 0
  br i1 %i.eh, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !24191, !noalias !24065, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24192
  br label %common.resume

bb.v:                                             ; preds = %.noexc18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24069
  call void @llvm.experimental.noalias.scope.decl(metadata !24193)
  %.val.i23.i = load i64, ptr %i.g, align 8, !range !29, !alias.scope !24193, !noalias !24065, !noundef !28 ; 2 uses
  %i.ei = icmp eq i64 %.val.i23.i, 0
  br i1 %i.ei, label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i24.i = load ptr, ptr %i.o, align 8, !alias.scope !24193, !noalias !24065, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i24.i, i64 noundef %.val.i23.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24194
  br label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61", %bb.y, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.eg, %bb.u ], [ %.pn, %bb.y ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61" ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24065
  br label %bb.x

_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit: ; preds = %.noexc21.i, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24069
  %.sroa.013.0.copyload = load i64, ptr %i.g, align 8, !noalias !24064 ; 2 uses
  %.sroa.614.0.copyload = load ptr, ptr %i.o, align 8, !noalias !24064 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %i.p, align 8, !noalias !24064 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24065
  %i.ej = icmp eq i64 %.sroa.013.0.copyload, -9223372036854775808
  br i1 %i.ej, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit, %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread
  %.sroa.614.019 = phi ptr [ %i.de, %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread ], [ %.sroa.614.0.copyload, %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019) ]
  %i.ek = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61": ; preds = %bb.ag, %bb.af, %bb.z
  %.pn = phi { ptr, i32 } [ %i.em, %bb.z ], [ %i.fa, %bb.af ], [ %i.fa, %bb.ag ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24195)
  call void @llvm.experimental.noalias.scope.decl(metadata !24196)
  %.val.i.i55 = load i64, ptr %i.l, align 8, !range !29, !alias.scope !24197, !noundef !28 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i55, 0
  br i1 %i.el, label %common.resume, label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61"
  %.val1.i.i56 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24197, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56, i64 noundef %.val.i.i55, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24197
  br label %common.resume

bb.z:                                             ; preds = %.invoke, %bb.ac, %bb.ab, %bb.am, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65"
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61"

bb.aa:                                            ; preds = %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit
  store i64 %.sroa.013.0.copyload, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.en = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8 ; 2 uses
  %i.eo = icmp ult i64 %i.en, 6
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ugt i64 %i.en, 3
  br i1 %i.ep, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.eq = phi i64 [ %.pre, %bb.ad ], [ %.sroa.9.0.copyload, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.eq, ptr %i.h, align 8
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24198
  store ptr @390, ptr %i.c, align 8, !noalias !24199
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx, align 8, !noalias !24199
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx9, align 8, !noalias !24199
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx, align 8, !noalias !24199
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx, align 8, !noalias !24199
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ae unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24200
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.es, align 8, !noalias !24200
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !24200
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !24200
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @387, ptr %i.et, align 8, !noalias !24200
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !24200
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.k, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !24200
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !24200
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !24200
  store i64 0, ptr %i.b, align 8, !noalias !24200
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !24200
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !24200
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.eu, align 8, !noalias !24200
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !24200
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !24200
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ev, align 8, !noalias !24200
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 302, ptr %i.ew, align 4, !noalias !24200
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.06.0.copyload = load i64, ptr %i.j, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val), "nonnull"(ptr %.56.val) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.56.val, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !invariant.load !28, !nonnull !28 ; 2 uses
  %i.ez = invoke noundef ptr %i.ey(ptr noundef nonnull align 1 %.48.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.11.0.copyload)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.fb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24201
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61"

bb.ah:                                            ; preds = %bb.ae
  %.not = icmp eq ptr %i.ez, null
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ez)
          to label %bb.ar unwind label %bb.af     ; 2 uses

bb.aj:                                            ; preds = %bb.ah
  %i.fd = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24202
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65": ; preds = %bb.ak, %bb.aj
  %i.fe = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !28, !noundef !28
  %i.ff = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !28
  %i.fg = invoke noundef ptr %i.ey(ptr noundef nonnull align 1 %.48.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %bb.al unwind label %bb.z      ; 2 uses

bb.al:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65"
  %.not48 = icmp eq ptr %i.fg, null
  br i1 %.not48, label %bb.am, label %.invoke

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr inbounds nuw i8, ptr %.56.val, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !invariant.load !28, !nonnull !28
  %i.fj = invoke noundef ptr %i.fi(ptr noundef nonnull align 1 %.48.val)
          to label %bb.an unwind label %bb.z      ; 2 uses

bb.an:                                            ; preds = %bb.am
  %.not50 = icmp eq ptr %i.fj, null
  br i1 %.not50, label %bb.ao, label %.invoke

.invoke:                                          ; preds = %bb.an, %bb.al
  %i.fk = phi ptr [ %i.fg, %bb.al ], [ %i.fj, %bb.an ]
  %i.fl = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.fk)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77" unwind label %bb.z

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !24203)
  call void @llvm.experimental.noalias.scope.decl(metadata !24204)
  %.val.i.i66 = load i64, ptr %i.l, align 8, !range !29, !alias.scope !24205, !noundef !28 ; 2 uses
  %i.fm = icmp eq i64 %.val.i.i66, 0
  br i1 %i.fm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i67 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24205, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67, i64 noundef %.val.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24205
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73": ; preds = %bb.ap, %bb.ao, %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77", %bb.aq
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.aq ], [ %i.ek, %bb.x ], [ %.sroa.0.1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77" ], [ null, %bb.ao ], [ null, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret ptr %.sroa.0.0

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77": ; preds = %.invoke, %bb.ar, %bb.as
  %.sroa.0.1 = phi ptr [ %i.fc, %bb.ar ], [ %i.fl, %.invoke ], [ %i.fc, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24206)
  call void @llvm.experimental.noalias.scope.decl(metadata !24207)
  %.val.i.i70 = load i64, ptr %i.l, align 8, !range !29, !alias.scope !24208, !noundef !28 ; 2 uses
  %i.fn = icmp eq i64 %.val.i.i70, 0
  br i1 %i.fn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73", label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77"
  %.val1.i.i71 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24208, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71, i64 noundef %.val.i.i70, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24208
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73"

bb.ar:                                            ; preds = %bb.ai
  %i.fo = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.fo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24209
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77"
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11lsp_harness7jsonrpc6Server8goto_def17h9394786cb4e4a1c6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 -9223372036854775807, ptr %i.c, align 8
  call fastcc void @_ZN11lsp_harness7jsonrpc6Server12send_request17h809029bcf4505f99E(ptr noalias noundef align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_ZN11lsp_harness7jsonrpc6Server9send_file17h7202c2f29dc839fbE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 31 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [176 x i8], align 8               ; 17 uses
  %.sroa.010.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.512.0.copyload = load ptr, ptr %.sroa.512.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24528
  %i.m = tail call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #41, !noalias !24528 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit" ], [ %i.p, %bb.e ] ; 2 uses
  %i.o = icmp eq i64 %.sroa.010.0.copyload, 0
  br i1 %i.o, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.512.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.0.copyload, i64 noundef %.sroa.010.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24529
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) @391, i64 6, i1 false), !noalias !24530
  %i.q = icmp slt i64 %3, 0
  br i1 %i.q, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  %i.r = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24531
  %i.s = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #41, !noalias !24531 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc7 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

.noexc7:                                          ; preds = %bb.h
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24532
  br label %bb.c

bb.i:                                             ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !24533
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.09.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, i64 72, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.w, align 8            ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 144
end_hunk_11
begin_hunk_12_@_ZN11lsp_harness7jsonrpc6Server9send_file17h7202c2f29dc839fbE:bb.a
  %i.dm = add nuw i64 %i.dh, 1
  store i64 %i.dm, ptr %i.dd, align 8, !alias.scope !24648, !noalias !24647
  br label %bb.x

bb.x:                                             ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24618
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !24650, !noalias !24651, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24652)
  call void @llvm.experimental.noalias.scope.decl(metadata !24653)
  call void @llvm.experimental.noalias.scope.decl(metadata !24654)
  call void @llvm.experimental.noalias.scope.decl(metadata !24655)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !24656, !noalias !24657, !noundef !28 ; 3 uses
  %i.dp = load i64, ptr %.val.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !24656, !noalias !24657, !noundef !28
  %i.dq = icmp eq i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.y, label %bb.z, !prof !30

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.do, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i unwind label %bb.ab, !noalias !24538

.noexc24.i.i.i:                                   ; preds = %bb.y
  %.pre.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !24658, !noalias !24657
  br label %bb.z

bb.z:                                             ; preds = %.noexc24.i.i.i, %bb.x
  %i.dr = phi i64 [ %i.do, %bb.x ], [ %.pre.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i ] ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !24658, !noalias !24657, !nonnull !28, !noundef !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr
  store i8 125, ptr %i.dv, align 1, !noalias !24659
  %i.dw = add nuw i64 %i.dr, 1
  store i64 %i.dw, ptr %i.dn, align 8, !alias.scope !24658, !noalias !24657
  %.val17.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !24544, !noalias !24542, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24660)
  call void @llvm.experimental.noalias.scope.decl(metadata !24661)
  call void @llvm.experimental.noalias.scope.decl(metadata !24662)
  call void @llvm.experimental.noalias.scope.decl(metadata !24663)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val17.i.i.i.i.i, i64 16 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !24664, !noalias !24665, !noundef !28 ; 3 uses
  %i.dz = load i64, ptr %.val17.i.i.i.i.i, align 8, !range !29, !alias.scope !24664, !noalias !24665, !noundef !28
  %i.ea = icmp eq i64 %i.dz, %i.dy
  br i1 %i.ea, label %bb.aa, label %_ZN10serde_json3ser6to_vec17h4e15a809679b6e52E.exit.i.i, !prof !30

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val17.i.i.i.i.i, i64 noundef %i.dy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i.i.i unwind label %bb.ab, !noalias !24538

.noexc25.i.i.i:                                   ; preds = %bb.aa
  %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !24666, !noalias !24665
  br label %_ZN10serde_json3ser6to_vec17h4e15a809679b6e52E.exit.i.i

bb.ab:                                            ; preds = %.noexc20.i.i.i, %.noexc19.i.i.i, %.noexc21.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i", %bb.l, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i", %bb.o, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i31.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h67bc725ed6568927E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aa, %bb.y, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24667)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !range !29, !alias.scope !24667, !noalias !24538, !noundef !28 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ec, label %.body.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !24667, !noalias !24538, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24668
  br label %.body.i

_ZN10serde_json3ser6to_vec17h4e15a809679b6e52E.exit.i.i: ; preds = %.noexc25.i.i.i, %bb.z
  %i.ed = phi i64 [ %i.dy, %bb.z ], [ %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i, %.noexc25.i.i.i ] ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, -1
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.val17.i.i.i.i.i, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !24666, !noalias !24665, !nonnull !28, !noundef !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ed
  store i8 125, ptr %i.eh, align 1, !noalias !24669
  %i.ei = add nuw i64 %i.ed, 1
  store i64 %i.ei, ptr %i.dx, align 8, !alias.scope !24666, !noalias !24665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24542
  %.sroa.013.0.copyload.i.i = load i64, ptr %i.f, align 8, !noalias !24670 ; 2 uses
  %.sroa.514.0.copyload.i.i = load ptr, ptr %i.ad, align 8, !noalias !24670 ; 3 uses
  %.sroa.715.0.copyload.i.i = load i64, ptr %i.ae, align 8, !noalias !24670 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24538
  %i.ej = icmp eq i64 %.sroa.013.0.copyload.i.i, -9223372036854775808
  br i1 %i.ej, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN10serde_json3ser6to_vec17h4e15a809679b6e52E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload.i.i) ]
  %i.ek = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.514.0.copyload.i.i)
          to label %bb.ay unwind label %bb.ax, !noalias !24534

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i": ; preds = %bb.am, %bb.al, %bb.af
  %.pn.i.i = phi { ptr, i32 } [ %i.em, %bb.af ], [ %i.fa, %bb.al ], [ %i.fa, %bb.am ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24671)
  call void @llvm.experimental.noalias.scope.decl(metadata !24672)
  %.val.i.i55.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !24673, !noalias !24536, !noundef !28 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i55.i.i, 0
  br i1 %i.el, label %.body.i, label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"
  %.val1.i.i56.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !24673, !noalias !24536, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i, i64 noundef %.val.i.i55.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24674
  br label %.body.i

bb.af:                                            ; preds = %.invoke.i.i, %bb.as, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i", %bb.ai, %bb.ah
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"

bb.ag:                                            ; preds = %_ZN10serde_json3ser6to_vec17h4e15a809679b6e52E.exit.i.i
  store i64 %.sroa.013.0.copyload.i.i, ptr %i.k, align 8, !noalias !24536
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  store ptr %.sroa.514.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !24536
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 %.sroa.715.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !24536
  %i.en = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !24536 ; 2 uses
  %i.eo = icmp ult i64 %i.en, 6
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ugt i64 %i.en, 3
  br i1 %i.ep, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.eq = phi i64 [ %.pre.i.i, %bb.aj ], [ %.sroa.715.0.copyload.i.i, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !24536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !24536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24536
  store i64 %i.eq, ptr %i.g, align 8, !noalias !24536
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  store ptr %i.g, ptr %i.h, align 8, !noalias !24536
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !24536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24675
  store ptr @390, ptr %i.c, align 8, !noalias !24676
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !24676
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !24676
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !24676
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !24676
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ak unwind label %bb.af, !noalias !24536

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !24536
  store ptr %i.k, ptr %i.j, align 8, !noalias !24536
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i, align 8, !noalias !24536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24677
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.es, align 8, !noalias !24677
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %.sroa.532.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @387, ptr %i.et, align 8, !noalias !24677
  %.sroa.449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %.sroa.550.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.j, ptr %.sroa.550.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %.sroa.651.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %.sroa.752.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  store i64 0, ptr %i.b, align 8, !noalias !24677
  %.sroa.462.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %.sroa.563.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i, align 8, !noalias !24677
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.eu, align 8, !noalias !24677
  %.sroa.524.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i, align 8, !noalias !24677
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i, align 8, !noalias !24677
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ev, align 8, !noalias !24677
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 302, ptr %i.ew, align 4, !noalias !24677
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.aj unwind label %bb.af, !noalias !24536

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !24536
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !24536
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !24536
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !24536 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !24536, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !24536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !24536
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val4) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.val4, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !invariant.load !28, !noalias !24536, !nonnull !28 ; 2 uses
  %i.ez = invoke noundef ptr %i.ey(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.11.0.copyload.i.i)
          to label %bb.an unwind label %bb.al, !noalias !24536 ; 2 uses

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.fb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24678
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i"

bb.an:                                            ; preds = %bb.ak
  %.not.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ez)
          to label %bb.av unwind label %bb.al, !noalias !24536 ; 2 uses

bb.ap:                                            ; preds = %bb.an
  %i.fd = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24679
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i": ; preds = %bb.aq, %bb.ap
  %i.fe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !24536, !nonnull !28, !noundef !28
  %i.ff = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !24536, !noundef !28
  %i.fg = invoke noundef ptr %i.ey(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %bb.ar unwind label %bb.af, !noalias !24536 ; 2 uses

bb.ar:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i"
  %.not48.i.i = icmp eq ptr %i.fg, null
  br i1 %.not48.i.i, label %bb.as, label %.invoke.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %.val4, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !invariant.load !28, !noalias !24536, !nonnull !28
  %i.fj = invoke noundef ptr %i.fi(ptr noundef nonnull align 1 %.val)
          to label %bb.at unwind label %bb.af, !noalias !24536 ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.not50.i.i = icmp eq ptr %i.fj, null
  br i1 %.not50.i.i, label %bb.au, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.at, %bb.ar
  %i.fk = phi ptr [ %i.fg, %bb.ar ], [ %i.fj, %bb.at ]
  %i.fl = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.fk)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" unwind label %bb.af, !noalias !24536

bb.au:                                            ; preds = %bb.at
  %.val.i.i66.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !24680, !noalias !24536, !noundef !28 ; 2 uses
  %i.fm = icmp eq i64 %.val.i.i66.i.i, 0
  br i1 %i.fm, label %bb.ay, label %.sink.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i": ; preds = %bb.aw, %bb.av, %.invoke.i.i
  %.sroa.0.1.i.i = phi ptr [ %i.fc, %bb.av ], [ %i.fl, %.invoke.i.i ], [ %i.fc, %bb.aw ] ; 2 uses
  %.val.i.i70.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !24681, !noalias !24536, !noundef !28 ; 2 uses
  %i.fn = icmp eq i64 %.val.i.i70.i.i, 0
  br i1 %i.fn, label %bb.ay, label %.sink.split.i

bb.av:                                            ; preds = %bb.ao
  %i.fo = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.fo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24682
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i"

bb.ax:                                            ; preds = %bb.ad, %bb.j
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %bb.c, %bb.d, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn, %bb.d ], [ %.pn, %bb.c ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.ax, %bb.ae, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", %bb.ac, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fp, %bb.ax ], [ %i.eb, %bb.ab ], [ %i.eb, %bb.ac ], [ %.pn.i.i, %bb.ae ], [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i" ]
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$lsp_harness..jsonrpc..SendNotification$LT$lsp_types..notification..DidOpenTextDocument$GT$$GT$17h21205c08a8d8e5cbE"(ptr noalias noundef align 8 dereferenceable(176) %i.l) #43, !noalias !24534
  br label %common.resume

.sink.split.i:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", %bb.au
  %.val.i.i70.i.sink.i = phi i64 [ %.val.i.i66.i.i, %bb.au ], [ %.val.i.i70.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ]
  %.sroa.0.0.i.ph.i = phi ptr [ null, %bb.au ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ]
  %.val1.i.i71.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !24536, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i, i64 noundef %.val.i.i70.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24536
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i", %bb.au, %bb.ad
  %.sroa.0.0.i.i = phi ptr [ null, %bb.au ], [ %i.ek, %bb.ad ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i" ], [ %.sroa.0.0.i.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !24536
  %i.fq = icmp eq i64 %.sroa.010.0.copyload, 0
  br i1 %i.fq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.0.copyload, i64 noundef %.sroa.010.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24683
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4.i.i.i.i": ; preds = %bb.az, %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24684
  br i1 %i.r, label %_ZN11lsp_harness7jsonrpc6Server17send_notification17hf85934c6360034cbE.exit, label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24685
  br label %_ZN11lsp_harness7jsonrpc6Server17send_notification17hf85934c6360034cbE.exit

_ZN11lsp_harness7jsonrpc6Server17send_notification17hf85934c6360034cbE.exit: ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4.i.i.i.i", %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24534
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN124_$LT$$LT$url..Url$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..UrlVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h3535ceb92d335992E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.i, align 8
  store ptr null, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.j, align 8
  call void @_ZN3url12ParseOptions5parse17h74e3c645b5edb3a6E(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = load i64, ptr %i.f, align 8, !range !34, !noundef !28
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !70, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.n, ptr %i.d, align 1, !noalias !24741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24741
  store ptr %i.d, ptr %i.b, align 8, !noalias !24741
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN62_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h8011906dcd6db6f2E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24741
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.o, align 8, !noalias !24741
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b3e6938c0ce4661E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !24741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24742
  store ptr @392, ptr %i.a, align 8, !noalias !24743
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !24743
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !24743
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !24743
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !24743
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24741
  call void @llvm.experimental.noalias.scope.decl(metadata !24745)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !24745, !noalias !24741, !nonnull !28, !noundef !28 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !alias.scope !24745, !noalias !24741, !noundef !28 ; 12 uses
  %i.r = icmp slt i64 %.val1.i.i, 0
  br i1 %i.r, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.s = icmp eq i64 %.val1.i.i, 0
  br i1 %i.s, label %_ZN4toml2de5error5Error6custom17h951d8016464d6b21E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24746
  %i.t = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1.i.i, i64 noundef range(i64 1, 9) 1) #41, !noalias !24746 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.val1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc.i.i unwind label %bb.e, !noalias !24747

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@"_ZN70_$LT$lsp_harness..jsonrpc..Server$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39071a175fa167e9E":bb.a
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i6.i.i27.i.i.i.i.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !36186, !noalias !36185, !nonnull !28, !noundef !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 58, ptr %i.br, align 1, !noalias !36187
  %i.bs = add nuw i64 %i.bn, 1
  store i64 %i.bs, ptr %i.bj, align 8, !alias.scope !36186, !noalias !36185
  %.val11.i.i.i28.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !36148, !noalias !36179, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i.i.i28.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @375, i64 noundef 8)
          to label %.noexc9.i.i.i.i.i unwind label %bb.i

.noexc9.i.i.i.i.i:                                ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h48d3bc05710a598aE.exit31.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd29b57a22a727d33E"(ptr noalias noundef align 8 dereferenceable(16) %i.o)
          to label %.noexc10.i.i.i.i.i unwind label %bb.i

.noexc10.i.i.i.i.i:                               ; preds = %.noexc9.i.i.i.i.i
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %i.ah)
          to label %.noexc11.i.i.i.i.i unwind label %bb.i

.noexc11.i.i.i.i.i:                               ; preds = %.noexc10.i.i.i.i.i
  %i.bt = load ptr, ptr %i.o, align 8, !noalias !36149, !nonnull !28, !align !35, !noundef !28
  %i.bu = load i8, ptr %i.ao, align 8, !range !42, !noalias !36149, !noundef !28
  %.val20.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !36188 ; 5 uses
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %_ZN10serde_json3ser6to_vec17h49d35843f387c18eE.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc11.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36189)
  call void @llvm.experimental.noalias.scope.decl(metadata !36190)
  call void @llvm.experimental.noalias.scope.decl(metadata !36191)
  call void @llvm.experimental.noalias.scope.decl(metadata !36192)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !36193, !noalias !36194, !noundef !28 ; 3 uses
  %i.by = load i64, ptr %.val20.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !36193, !noalias !36194, !noundef !28
  %i.bz = icmp eq i64 %i.by, %i.bx
  br i1 %i.bz, label %bb.h, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i, i64 noundef %i.bx, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc12.i.i.i.i.i unwind label %bb.i, !noalias !36144

.noexc12.i.i.i.i.i:                               ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i.i32.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !36195, !noalias !36194
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i.i, %bb.g
  %i.ca = phi i64 [ %i.bx, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i32.i.i.i.i.i.i.i, %.noexc12.i.i.i.i.i ] ; 3 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !36195, !noalias !36194, !nonnull !28, !noundef !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  store i8 125, ptr %i.ce, align 1, !noalias !36196
  %i.cf = add nuw i64 %i.ca, 1
  store i64 %i.cf, ptr %i.bw, align 8, !alias.scope !36195, !noalias !36194
  br label %_ZN10serde_json3ser6to_vec17h49d35843f387c18eE.exit.i.i.i.i

bb.i:                                             ; preds = %.noexc9.i.i.i.i.i, %.noexc10.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i", %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h48d3bc05710a598aE.exit31.i.i.i.i.i.i.i", %bb.h, %bb.f, %bb.e, %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36197)
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !29, !alias.scope !36197, !noalias !36144, !noundef !28 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ch, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !36197, !noalias !36144, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36198
  br label %common.resume

common.resume:                                    ; preds = %bb.cu, %bb.i, %bb.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i", %bb.l, %bb.aj, %bb.bg, %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i", %bb.bk, %bb.bt, %bb.bu, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", %bb.bw
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i" ], [ %.pn.i.i, %bb.bk ], [ %i.eo, %bb.aj ], [ %.pn.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i" ], [ %i.cg, %bb.i ], [ %i.cg, %bb.j ], [ %.pn.i.i.i.i, %bb.l ], [ %i.fs, %bb.bh ], [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i" ], [ %i.fs, %bb.bg ], [ %i.hs, %bb.bt ], [ %i.hs, %bb.bu ], [ %.pn.i.i.i, %bb.bw ], [ %i.jg, %bb.cu ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json3ser6to_vec17h49d35843f387c18eE.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36147
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !36199 ; 2 uses
  %.sroa.514.0.copyload.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !36199 ; 3 uses
  %.sroa.715.0.copyload.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !36199 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36144
  %i.ci = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.ci, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN10serde_json3ser6to_vec17h49d35843f387c18eE.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload.i.i.i.i) ]
  %i.cj = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.514.0.copyload.i.i.i.i), !noalias !36143
  br label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17h99ac65b433fe21d7E.exit.thread.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i": ; preds = %bb.t, %bb.s, %bb.m
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.m ], [ %i.cz, %bb.s ], [ %i.cz, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36200)
  call void @llvm.experimental.noalias.scope.decl(metadata !36201)
  %.val.i.i55.i.i.i.i = load i64, ptr %i.v, align 8, !range !29, !alias.scope !36202, !noalias !36143, !noundef !28 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i55.i.i.i.i, 0
  br i1 %i.ck, label %common.resume, label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"
  %.val1.i.i56.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36202, !noalias !36143, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i, i64 noundef %.val.i.i55.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36203
  br label %common.resume

bb.m:                                             ; preds = %.invoke.i.i.i.i, %bb.z, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", %bb.p, %bb.o
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.n:                                             ; preds = %_ZN10serde_json3ser6to_vec17h49d35843f387c18eE.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i, ptr %i.v, align 8, !noalias !36143
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store ptr %.sroa.514.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !36143
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 %.sroa.715.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !36143
  %i.cm = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !36143 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 6
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp samesign ugt i64 %i.cm, 3
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.cp = phi i64 [ %.pre.i.i.i.i, %bb.q ], [ %.sroa.715.0.copyload.i.i.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !36143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !36143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !36143
  store i64 %i.cp, ptr %i.r, align 8, !noalias !36143
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  store ptr %i.r, ptr %i.s, align 8, !noalias !36143
  %.sroa.442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i, align 8, !noalias !36143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36204
  store ptr @390, ptr %i.n, align 8, !noalias !36205
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !36205
  %.sroa.5.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx9.i.i.i.i, align 8, !noalias !36205
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !noalias !36205
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 8, !noalias !36205
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.r unwind label %bb.m, !noalias !36143

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !36143
  store ptr %i.v, ptr %i.u, align 8, !noalias !36143
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i, align 8, !noalias !36143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36206
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 4, ptr %i.cr, align 8, !noalias !36206
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr @387, ptr %i.cs, align 8, !noalias !36206
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.u, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  store i64 0, ptr %i.m, align 8, !noalias !36206
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ct, align 8, !noalias !36206
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i, align 8, !noalias !36206
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i, align 8, !noalias !36206
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 1, ptr %i.cu, align 8, !noalias !36206
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  store i32 302, ptr %i.cv, align 4, !noalias !36206
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.m)
          to label %bb.q unwind label %bb.m, !noalias !36143

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !36143
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !36143
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36143
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !36143 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !36143, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.11.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !36143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !36143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i.i), "nonnull"(ptr %.val33.i.i.i) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val33.i.i.i, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !28, !noalias !36143, !nonnull !28 ; 2 uses
  %i.cy = invoke noundef ptr %i.cx(ptr noundef nonnull align 1 %.val32.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i.i)
          to label %bb.u unwind label %bb.s, !noalias !36143 ; 2 uses

bb.s:                                             ; preds = %bb.v, %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.da, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36207
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.u:                                             ; preds = %bb.r
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.cy)
          to label %bb.ae unwind label %bb.s, !noalias !36143 ; 2 uses

bb.w:                                             ; preds = %bb.u
  %i.dc = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.dc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36208
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i": ; preds = %bb.x, %bb.w
  %i.dd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !36143, !nonnull !28, !noundef !28
  %i.de = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !36143, !noundef !28
  %i.df = invoke noundef ptr %i.cx(ptr noundef nonnull align 1 %.val32.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dd, i64 noundef %i.de)
          to label %bb.y unwind label %bb.m, !noalias !36143 ; 2 uses

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i"
  %.not48.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not48.i.i.i.i, label %bb.z, label %.invoke.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.val33.i.i.i, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !invariant.load !28, !noalias !36143, !nonnull !28
  %i.di = invoke noundef ptr %i.dh(ptr noundef nonnull align 1 %.val32.i.i.i)
          to label %bb.aa unwind label %bb.m, !noalias !36143 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.not50.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not50.i.i.i.i, label %bb.ab, label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.aa, %bb.y
  %i.dj = phi ptr [ %i.df, %bb.y ], [ %i.di, %bb.aa ]
  %i.dk = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.dj)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i" unwind label %bb.m, !noalias !36143

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !36209)
  call void @llvm.experimental.noalias.scope.decl(metadata !36210)
  %.val.i.i66.i.i.i.i = load i64, ptr %i.v, align 8, !range !29, !alias.scope !36211, !noalias !36143, !noundef !28 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i66.i.i.i.i, 0
  br i1 %i.dl, label %_ZN11lsp_harness7jsonrpc6Server4send17h585aaa4ef8b0adfdE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1.i.i67.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36211, !noalias !36143, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i.i, i64 noundef %.val.i.i66.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36212
  br label %_ZN11lsp_harness7jsonrpc6Server4send17h585aaa4ef8b0adfdE.exit.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i": ; preds = %bb.af, %bb.ae, %.invoke.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.db, %bb.ae ], [ %i.dk, %.invoke.i.i.i.i ], [ %i.db, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36213)
  call void @llvm.experimental.noalias.scope.decl(metadata !36214)
  %.val.i.i70.i.i.i.i = load i64, ptr %i.v, align 8, !range !29, !alias.scope !36215, !noalias !36143, !noundef !28 ; 2 uses
  %i.dm = icmp eq i64 %.val.i.i70.i.i.i.i, 0
  br i1 %i.dm, label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17h99ac65b433fe21d7E.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i"
  %.val1.i.i71.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36215, !noalias !36143, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i.i, i64 noundef %.val.i.i70.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36216
  br label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17h99ac65b433fe21d7E.exit.thread.i.i

bb.ae:                                            ; preds = %bb.v
  %i.dn = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.dn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36217
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i"

_ZN11lsp_harness7jsonrpc6Server4send17h585aaa4ef8b0adfdE.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !36143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !36218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !36218
  call void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(112) %0), !noalias !36219
  %i.do = load i64, ptr %i.y, align 8, !range !34, !noalias !36218, !noundef !28 ; 2 uses
  %i.dp = icmp eq i64 %i.do, -9223372036854775808
  br i1 %i.dp, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11lsp_harness7jsonrpc6Server4send17h585aaa4ef8b0adfdE.exit.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 120 ; 2 uses
  br label %bb.ag

_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17h99ac65b433fe21d7E.exit.thread.i.i: ; preds = %bb.ad, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i", %bb.k
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i.i" ], [ %i.cj, %bb.k ], [ %.sroa.0.1.i.i.i.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !36143
  br label %bb.ao

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.i, %_ZN11lsp_harness7jsonrpc6Server4send17h585aaa4ef8b0adfdE.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !36218, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !36218
  br label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17h99ac65b433fe21d7E.exit.thread41.i.i

bb.ag:                                            ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %i.dv = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %i.eq, %.loopexit.i.i.i ] ; 12 uses
  %.sroa.518.0.copyload.i.i.i = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !36218 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.619.0..sroa_idx.i.i.i, i64 112, i1 false), !noalias !36218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !36218
  store i64 %i.dv, ptr %i.z, align 8, !noalias !36218
  store ptr %.sroa.518.0.copyload.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !36218
  %i.dw = load ptr, ptr %i.dq, align 8, !alias.scope !36142, !nonnull !28, !noundef !28 ; 2 uses
  %i.dx = load i64, ptr %i.dr, align 8, !alias.scope !36142, !noundef !28 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.ds, align 8, !noalias !36218 ; 3 uses
  %i.dy = and i64 %i.dx, -16                      ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dy ; 2 uses
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader": ; preds = %bb.ag
  %i.eb = insertelement <16 x i32> poison, i32 %.val.i.i.i, i64 0
  %i.ec = shufflevector <16 x i32> %i.eb, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i"

bb.ah:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i"
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i49, i64 64
  %i.ee = add i64 %.sroa.5.0.i.i.i.i48, -16       ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader", %bb.ah
  %.sroa.0.03.i.i.i.i49 = phi ptr [ %i.ed, %bb.ah ], [ %i.dw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader" ] ; 2 uses
  %.sroa.5.0.i.i.i.i48 = phi i64 [ %i.ee, %bb.ah ], [ %i.dy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i.preheader" ]
  %i.eg = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i49, align 4, !alias.scope !36220, !noalias !36221
  %i.eh = icmp eq <16 x i32> %i.eg, %i.ec
  %i.ei = bitcast <16 x i1> %i.eh to i16
  %.not = icmp eq i16 %i.ei, 0
  br i1 %.not, label %bb.ah, label %.loopexit.i.i.i

._crit_edge:                                      ; preds = %bb.ah, %bb.ag
  %i.ej = shl i64 %i.dx, 2
  %.idx = and i64 %i.ej, 60                       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i50 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i50, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph

bb.ai:                                            ; preds = %.lr.ph
  %i.el = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.el, %i.ek
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.ai
  %i.em = phi ptr [ %i.el, %bb.ai ], [ %i.dz, %._crit_edge ] ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %i.em, align 4, !alias.scope !36220, !noalias !36222, !noundef !28
  %i.en = icmp eq i32 %.val4.i.i.i.i.i, %.val.i.i.i
  br i1 %i.en, label %.loopexit.i.i.i, label %bb.ai

bb.aj:                                            ; preds = %bb.al, %bb.ak
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.z) #43
          to label %common.resume unwind label %bb.an, !noalias !36219

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i": ; preds = %._crit_edge, %bb.ai
  %i.ep = load i32, ptr %i.af, align 4, !alias.scope !36142, !noundef !28
  %.not30.i.i.i = icmp eq i32 %.val.i.i.i, %i.ep
  br i1 %.not30.i.i.i, label %bb.ap, label %bb.ak

.loopexit.i.i.i:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he7ee5c0882bee6e2E.exit.i.i.i.i", %.lr.ph
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$lsp_harness..jsonrpc..Response$GT$17h5a02c361a0765225E"(ptr noalias noundef align 8 dereferenceable(128) %i.z), !noalias !36218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !36218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !36218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !36218
  call void @_ZN11lsp_harness7jsonrpc6Server13recv_response17he02c2bc897327b58E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(112) %0), !noalias !36219
  %i.eq = load i64, ptr %i.y, align 8, !range !34, !noalias !36218, !noundef !28 ; 2 uses
  %i.er = icmp eq i64 %i.eq, -9223372036854775808
  br i1 %i.er, label %._crit_edge.i.i.i, label %bb.ag

bb.ak:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !36218
  store ptr %i.af, ptr %i.w, align 8, !noalias !36218
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !36218
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ds, ptr %i.es, align 8, !noalias !36218
end_hunk_13
begin_hunk_14_@"_ZN70_$LT$lsp_harness..jsonrpc..Server$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39071a175fa167e9E":bb.a

.noexc8.i.i.i.i:                                  ; preds = %bb.bq
  %.pre.i.i.i.i.i.i.i7.i.i25.i.i.i.i.i.i = load i64, ptr %i.gv, align 8, !alias.scope !36276, !noalias !36275
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h48d3bc05710a598aE.exit27.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h48d3bc05710a598aE.exit27.i.i.i.i.i.i": ; preds = %.noexc8.i.i.i.i, %.noexc7.i.i.i.i
  %i.gz = phi i64 [ %i.gw, %.noexc7.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i25.i.i.i.i.i.i, %.noexc8.i.i.i.i ] ; 3 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i6.i.i23.i.i.i.i.i.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !36276, !noalias !36275, !nonnull !28, !noundef !28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gz
  store i8 58, ptr %i.hd, align 1, !noalias !36277
  %i.he = add nuw i64 %i.gz, 1
  store i64 %i.he, ptr %i.gv, align 8, !alias.scope !36276, !noalias !36275
  %.val11.i.i.i24.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !36238, !noalias !36269, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i.i.i24.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @363, i64 noundef 4)
          to label %.noexc9.i.i.i.i unwind label %bb.bt

.noexc9.i.i.i.i:                                  ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h48d3bc05710a598aE.exit27.i.i.i.i.i.i"
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd29b57a22a727d33E"(ptr noalias noundef align 8 dereferenceable(16) %i.d)
          to label %.noexc10.i.i.i.i unwind label %bb.bt

.noexc10.i.i.i.i:                                 ; preds = %.noexc9.i.i.i.i
  %i.hf = load ptr, ptr %i.d, align 8, !noalias !36239, !nonnull !28, !align !35, !noundef !28
  %i.hg = load i8, ptr %i.ga, align 8, !range !42, !noalias !36239, !noundef !28
  %.val17.i.i.i.i.i.i = load ptr, ptr %i.hf, align 8, !noalias !36278 ; 5 uses
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %_ZN10serde_json3ser6to_vec17h0247b4fb89c66abdE.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc10.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36279)
  call void @llvm.experimental.noalias.scope.decl(metadata !36280)
  call void @llvm.experimental.noalias.scope.decl(metadata !36281)
  call void @llvm.experimental.noalias.scope.decl(metadata !36282)
  %i.hi = getelementptr inbounds nuw i8, ptr %.val17.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !36283, !noalias !36284, !noundef !28 ; 3 uses
  %i.hk = load i64, ptr %.val17.i.i.i.i.i.i, align 8, !range !29, !alias.scope !36283, !noalias !36284, !noundef !28
  %i.hl = icmp eq i64 %i.hk, %i.hj
  br i1 %i.hl, label %bb.bs, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i, !prof !30

bb.bs:                                            ; preds = %bb.br
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val17.i.i.i.i.i.i, i64 noundef %i.hj, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i.i.i unwind label %bb.bt, !noalias !36234

.noexc11.i.i.i.i:                                 ; preds = %bb.bs
  %.pre.i.i.i.i.i.i.i.i28.i.i.i.i.i.i = load i64, ptr %i.hi, align 8, !alias.scope !36285, !noalias !36284
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i, %bb.br
  %i.hm = phi i64 [ %i.hj, %bb.br ], [ %.pre.i.i.i.i.i.i.i.i28.i.i.i.i.i.i, %.noexc11.i.i.i.i ] ; 3 uses
  %i.hn = icmp sgt i64 %i.hm, -1
  call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %.val17.i.i.i.i.i.i, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !36285, !noalias !36284, !nonnull !28, !noundef !28
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hm
  store i8 125, ptr %i.hq, align 1, !noalias !36286
  %i.hr = add nuw i64 %i.hm, 1
  store i64 %i.hr, ptr %i.hi, align 8, !alias.scope !36285, !noalias !36284
  br label %_ZN10serde_json3ser6to_vec17h0247b4fb89c66abdE.exit.i.i.i

bb.bt:                                            ; preds = %.noexc9.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i", %bb.bo, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h48d3bc05710a598aE.exit27.i.i.i.i.i.i", %bb.bs, %bb.bq, %bb.bp, %bb.bn
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36287)
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !29, !alias.scope !36287, !noalias !36234, !noundef !28 ; 2 uses
  %i.ht = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ht, label %common.resume, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val1.i.i.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !36287, !noalias !36234, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36288
  br label %common.resume

_ZN10serde_json3ser6to_vec17h0247b4fb89c66abdE.exit.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36237
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !36289 ; 2 uses
  %.sroa.514.0.copyload.i.i.i = load ptr, ptr %i.fy, align 8, !noalias !36289 ; 3 uses
  %.sroa.715.0.copyload.i.i.i = load i64, ptr %i.fz, align 8, !noalias !36289 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36234
  %i.hu = icmp eq i64 %.sroa.013.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.hu, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %_ZN10serde_json3ser6to_vec17h0247b4fb89c66abdE.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload.i.i.i) ]
  %i.hv = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.514.0.copyload.i.i.i), !noalias !36233
  br label %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i": ; preds = %bb.ce, %bb.cd, %bb.bx
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hx, %bb.bx ], [ %i.il, %bb.cd ], [ %i.il, %bb.ce ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36290)
  call void @llvm.experimental.noalias.scope.decl(metadata !36291)
  %.val.i.i55.i.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !36292, !noalias !36233, !noundef !28 ; 2 uses
  %i.hw = icmp eq i64 %.val.i.i55.i.i.i, 0
  br i1 %i.hw, label %common.resume, label %bb.bw

bb.bw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"
  %.val1.i.i56.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !36292, !noalias !36233, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i, i64 noundef %.val.i.i55.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36293
  br label %common.resume

bb.bx:                                            ; preds = %.invoke.i.i.i, %bb.ck, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", %bb.ca, %bb.bz
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.by:                                            ; preds = %_ZN10serde_json3ser6to_vec17h0247b4fb89c66abdE.exit.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i, ptr %i.k, align 8, !noalias !36233
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %.sroa.514.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !36233
  %.sroa.5.0..sroa_idx.i.i10.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 %.sroa.715.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i10.i, align 8, !noalias !36233
  %i.hy = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !36233 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 6
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp samesign ugt i64 %i.hy, 3
  br i1 %i.ia, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %bb.by
  %i.ib = phi i64 [ %.pre.i.i.i, %bb.cb ], [ %.sroa.715.0.copyload.i.i.i, %bb.by ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36233
  store i64 %i.ib, ptr %i.g, align 8, !noalias !36233
  %i.ic = icmp sgt i64 %i.ib, -1
  call void @llvm.assume(i1 %i.ic)
  store ptr %i.g, ptr %i.h, align 8, !noalias !36233
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !36233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36294
  store ptr @390, ptr %i.c, align 8, !noalias !36295
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !36295
  %.sroa.5.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !36295
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !noalias !36295
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i, align 8, !noalias !36295
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.cc unwind label %bb.bx, !noalias !36233

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36233
  store ptr %i.k, ptr %i.j, align 8, !noalias !36233
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i, align 8, !noalias !36233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36296
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.id, align 8, !noalias !36296
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @387, ptr %i.ie, align 8, !noalias !36296
  %.sroa.449.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %.sroa.550.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.j, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %.sroa.651.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %.sroa.752.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  store i64 0, ptr %i.b, align 8, !noalias !36296
  %.sroa.462.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %.sroa.563.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.if, align 8, !noalias !36296
  %.sroa.524.0..sroa_idx25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i, align 8, !noalias !36296
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i, align 8, !noalias !36296
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ig, align 8, !noalias !36296
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 302, ptr %i.ih, align 4, !noalias !36296
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.cb unwind label %bb.bx, !noalias !36233

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36233
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i10.i, align 8, !noalias !36233
  br label %bb.bz

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36233
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.i, align 8, !noalias !36233 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i11.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i11.i, align 8, !noalias !36233, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !36233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !36233
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i), "nonnull"(ptr %.val9.i) ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.ij = load ptr, ptr %i.ii, align 8, !invariant.load !28, !noalias !36233, !nonnull !28 ; 2 uses
  %i.ik = invoke noundef ptr %i.ij(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i)
          to label %bb.cf unwind label %bb.cd, !noalias !36233 ; 2 uses

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.im, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36297
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.cf:                                            ; preds = %bb.cc
  %.not.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.in = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ik)
          to label %bb.cp unwind label %bb.cd, !noalias !36233 ; 2 uses

bb.ch:                                            ; preds = %bb.cf
  %i.io = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.io, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36298
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i": ; preds = %bb.ci, %bb.ch
  %i.ip = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !36233, !nonnull !28, !noundef !28
  %i.iq = load i64, ptr %.sroa.5.0..sroa_idx.i.i10.i, align 8, !noalias !36233, !noundef !28
  %i.ir = invoke noundef ptr %i.ij(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ip, i64 noundef %i.iq)
          to label %bb.cj unwind label %bb.bx, !noalias !36233 ; 2 uses

bb.cj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"
  %.not48.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not48.i.i.i, label %bb.ck, label %.invoke.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.is = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !invariant.load !28, !noalias !36233, !nonnull !28
  %i.iu = invoke noundef ptr %i.it(ptr noundef nonnull align 1 %.val.i)
          to label %bb.cl unwind label %bb.bx, !noalias !36233 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %.not50.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not50.i.i.i, label %bb.cm, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.cl, %bb.cj
  %i.iv = phi ptr [ %i.ir, %bb.cj ], [ %i.iu, %bb.cl ]
  %i.iw = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.iv)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" unwind label %bb.bx, !noalias !36233

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !36299)
  call void @llvm.experimental.noalias.scope.decl(metadata !36300)
  %.val.i.i66.i.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !36301, !noalias !36233, !noundef !28 ; 2 uses
  %i.ix = icmp eq i64 %.val.i.i66.i.i.i, 0
  br i1 %i.ix, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val1.i.i67.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !36301, !noalias !36233, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i, i64 noundef %.val.i.i66.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36302
  br label %bb.cr

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i": ; preds = %bb.cq, %bb.cp, %.invoke.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.in, %bb.cp ], [ %i.iw, %.invoke.i.i.i ], [ %i.in, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36303)
  call void @llvm.experimental.noalias.scope.decl(metadata !36304)
  %.val.i.i70.i.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !36305, !noalias !36233, !noundef !28 ; 2 uses
  %i.iy = icmp eq i64 %.val.i.i70.i.i.i, 0
  br i1 %i.iy, label %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i, label %bb.co

bb.co:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"
  %.val1.i.i71.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !36305, !noalias !36233, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i, i64 noundef %.val.i.i70.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36306
  br label %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i

bb.cp:                                            ; preds = %bb.cg
  %i.iz = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.iz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36307
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"

_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i: ; preds = %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", %bb.bv
  %.sroa.0.0.i.i.ph.i = phi ptr [ %.sroa.0.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" ], [ %i.hv, %bb.bv ], [ %.sroa.0.1.i.i.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36233
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !36138
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN3std7process5Child4wait17hac923c975d932daeE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 4 dereferenceable(28) %i.ja)
  %i.jb = load i32, ptr %i.ad, align 8, !range !51, !noalias !36138, !noundef !28
  %i.jc = trunc nuw i32 %i.jb to i1
  br i1 %i.jc, label %bb.cs, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h895319dd689b2473E.exit"

bb.cs:                                            ; preds = %bb.cr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !36138, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !36138
  %i.jf = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.je)
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN11lsp_harness7jsonrpc6Server12send_request17ha68b3451b165e780E.exit.thread.i, %bb.cs, %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0.0.i.i.ph.i, %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i ], [ %i.jf, %bb.cs ], [ %.sroa.0.1.i.ph.i, %_ZN11lsp_harness7jsonrpc6Server12send_request17ha68b3451b165e780E.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !36308
  store ptr %.sroa.0.0.i.ph, ptr %i.ae, align 8, !noalias !36308
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @842, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1008) #42
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hb615d6e29474b63bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %common.resume unwind label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h895319dd689b2473E.exit": ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !36138
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6152ea0e6555cc6cE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !36317
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !36317
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !36317, !noundef !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
end_hunk_14
