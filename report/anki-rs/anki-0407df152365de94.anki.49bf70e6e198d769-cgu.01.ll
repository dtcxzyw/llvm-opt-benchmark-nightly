inline.NumInlined: 3177
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4anki4sync5media3zip24unzip_and_validate_files17h9407a8a40013c528E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.z

"_ZN4core3ptr110drop_in_place$LT$zip..read..zip_archive..ZipArchive$LT$std..io..cursor..Cursor$LT$$RF$$u5b$u8$u5d$$GT$$GT$$GT$17h6a16b7e445757240E.exit": ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync7version11SyncVersion16ensure_supported17hdbe08524247aac34E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = load i8, ptr %1, align 1, !noundef !4
  %i.f = add i8 %i.e, -12
  %or.cond = icmp ult i8 %i.f, -4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h71af0f1b11b0c758E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !921
  store ptr @91, ptr %i.a, align 8, !noalias !929
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !929
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !929
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !929
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !929
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN78_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17hcb8f63486d936646E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, i1 noundef zeroext false, i16 noundef 400, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  %i.g = load i64, ptr %i.d, align 8, !range !3, !noundef !4
  %.not = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.f:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @"_ZN4anki4sync7version1_89_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..sync..version..SyncVersion$GT$9serialize17h837b5eb795c4e36bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 7 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i8, ptr %0, align 1, !noundef !4  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.b = icmp ugt i8 %.val1, 99
  br i1 %i.b, label %.thread.i.i.i.i.i, label %bb.b

.thread.i.i.i.i.i:                                ; preds = %bb.a
  %i.c = urem i8 %.val1, 100
  %i.d = shl nuw i8 %i.c, 1
  %i.e = zext i8 %i.d to i64
  %i.f = udiv i8 %.val1, 100
  %i.g = getelementptr inbounds nuw i8, ptr @177, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.i = load i16, ptr %i.g, align 1, !noalias !931
  store i16 %i.i, ptr %i.h, align 1, !alias.scope !931
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.09.124.i.sroa.gep1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = icmp samesign ult i8 %.val1, 10
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw i8 %.val1, 1
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @177, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.o = load i16, ptr %i.m, align 1, !noalias !931
  store i16 %i.o, ptr %i.n, align 1, !alias.scope !931
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h00a33658820c524cE.exit"

bb.d:                                             ; preds = %bb.b, %.thread.i.i.i.i.i
  %.sroa.0.225.i.i.i.i.i = phi i8 [ %i.f, %.thread.i.i.i.i.i ], [ %.val1, %bb.b ]
  %.sroa.09.124.i.sroa.phi.i.i.i.i = phi ptr [ %i.a, %.thread.i.i.i.i.i ], [ %.sroa.09.124.i.sroa.gep1.i.i.i.i, %bb.b ]
  %.sroa.09.124.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.i ], [ 2, %bb.b ]
  %i.p = or disjoint i8 %.sroa.0.225.i.i.i.i.i, 48
  store i8 %i.p, ptr %.sroa.09.124.i.sroa.phi.i.i.i.i, align 1, !alias.scope !931
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h00a33658820c524cE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h00a33658820c524cE.exit": ; preds = %bb.c, %bb.d
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %.sroa.09.124.i.i.i.i.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.q = sub nuw nsw i64 3, %.sroa.09.2.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.2.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4anki4sync7version1_89_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..sync..version..SyncVersion$GT$9serialize17hb5d799fb73efa2d3E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @"_ZN96_$LT$serde_json..ser..RawValueStrEmitter$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h8c7b14979dd6973fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @92, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki4sync7version1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..version..SyncVersion$GT$11deserialize17h7ba0b577bab85e3fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !940
  call void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_u817hdafc2646e878092fE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !943
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noalias !940, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !940, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !940
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !943, !noalias !944
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$26deserialize_newtype_struct17h5053e43ee9fb24c0E.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !noalias !940, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !940
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !alias.scope !943, !noalias !944
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$26deserialize_newtype_struct17h5053e43ee9fb24c0E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$26deserialize_newtype_struct17h5053e43ee9fb24c0E.exit": ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge.i.i, ptr %0, align 8, !alias.scope !943, !noalias !944
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5decks4tree10add_counts17h7ab278accd1d2c72E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !945, !noalias !948, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = call noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha7801dd089d4ec1dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !956, !noalias !957, !noundef !4 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !956, !noalias !957, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.l      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !960 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.l
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.x = call noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hbd2a7232015fe09dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !noalias !963
  br i1 %i.x, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit", label %bb.d, !prof !21

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread", !prof !25

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit": ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = load <4 x i32>, ptr %i.af, align 4      ; 2 uses
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x i32> %i.ai, ptr %i.ag, align 4
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -8
  %2 = load i32, ptr %i.aj, align 4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %2, ptr %i.ak, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %4 = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %4, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %i.v, i64 -4
  %6 = load i32, ptr %5, align 4, !noundef !4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %6, ptr %7, align 8
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread": ; preds = %._crit_edge.i.i, %bb.a, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ao, 104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread", %.lr.ph
  %.sroa.01.09 = phi ptr [ %i.ar, %.lr.ph ], [ %i.am, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread" ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 104 ; 2 uses
  call void @_ZN4anki5decks4tree10add_counts17h7ab278accd1d2c72E(ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.01.09, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.as = icmp eq ptr %i.ar, %i.ap
  br i1 %i.as, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h091641c9d264fb72E.exit.thread"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki5decks4tree15add_child_nodes17hab4d5b073d6a102dE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.05 = alloca [104 x i8], align 8          ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [104 x i8], align 8               ; 11 uses
  %i.e = alloca [104 x i8], align 8               ; 13 uses
  %i.f = alloca [128 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 121
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.428.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.419.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.a

bb.a:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit49", %.split
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.z = load i64, ptr %i.h, align 8, !range !661, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h71a248d41a3ff9d6E.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.aa = load ptr, ptr %i.i, align 8, !alias.scope !977, !noalias !978, !nonnull !4, !noundef !4
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !977, !noalias !978, !nonnull !4, !noundef !4 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ad, ptr %i.j, align 8, !alias.scope !977, !noalias !978
  %.sroa.0.0.copyload4.i = load i64, ptr %i.ab, align 8, !noalias !981
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4.0.copyload6.i = load i64, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !981
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx7.i, i64 16, i1 false), !noalias !982
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.i = phi i64 [ %.sroa.4.0.copyload6.i, %bb.c ], [ -9223372036854775808, %bb.b ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload4.i, %bb.c ], [ undef, %bb.b ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !966, !noalias !969
  store i64 %.sroa.4.0.i, ptr %i.h, align 8, !alias.scope !966, !noalias !969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx13.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !969
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h71a248d41a3ff9d6E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h71a248d41a3ff9d6E.exit": ; preds = %bb.a, %bb.d
  %.sroa.419.0.copyload = phi i64 [ %i.z, %bb.a ], [ %.sroa.4.0.i, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not = icmp eq i64 %.sroa.419.0.copyload, -9223372036854775808
  br i1 %.not, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h71a248d41a3ff9d6E.exit", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit"
  ret void

.body:                                            ; preds = %.loopexit66, %.loopexit.split-lp, %bb.ab, %bb.n, %.body52
  %.pn = phi { ptr, i32 } [ %i.bo, %.body52 ], [ %i.az, %bb.n ], [ %i.by, %bb.ab ], [ %lpad.loopexit, %.loopexit66 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #44
          to label %common.resume unwind label %bb.ad

.loopexit66:                                      ; preds = %bb.l, %bb.x, %"_ZN4core3ptr72drop_in_place$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$17hccd9c0c1235a1683E.exit.i", %bb.k, %"_ZN4core3ptr72drop_in_place$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$17hccd9c0c1235a1683E.exit.i56"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h71a248d41a3ff9d6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = load ptr, ptr %.sroa.6.0..sroa_idx13.i, align 8, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %.sroa.05, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.05, i64 104, i1 false)
  store i64 0, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 %i.af, ptr %.sroa.57.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17he214f4857e19b720E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.f)
  %i.ag = load i64, ptr %i.l, align 8, !noundef !4 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 576460752303423488
  call void @llvm.assume(i1 %i.ah)
  %.sroa.0.0.i47 = call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 99)
  %i.ai = trunc nuw nsw i64 %.sroa.0.0.i47 to i32 ; 2 uses
  %i.aj = load i32, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.not41 = icmp ult i32 %i.aj, %i.ai
  br i1 %.not41, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = add nuw nsw i32 %i.aj, 1
  %i.al = icmp eq i32 %i.ak, %i.ai
  br i1 %i.al, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.e
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable

common.resume:                                    ; preds = %.body, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.am, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h96ff6694a0368f13E.exit": ; preds = %bb.g
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %.not42 = icmp eq i64 %i.ao, 0
  br i1 %.not42, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ap = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr [16 x i8], ptr %i.aq, i64 %i.ag ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !align !20, !noundef !4
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !983
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.av, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc50 unwind label %.loopexit66
end_hunk_0
