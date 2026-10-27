Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.05?download=true
inline.NumInlined: 368
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h875486b43746f7e0E"
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h875486b43746f7e0E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17had2d2f9af79a4d9fE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17had2d2f9af79a4d9fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h324f0b5aec611653E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h13f850fe721de605E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #23
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha93c37eeff7ceae9E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hbeb40b064fcb1225E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hbeb40b064fcb1225E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he32da28ff2a5ec04E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$anki_process..Error$GT$17h26ae52623872fcf9E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) #23
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17h78ead9b3c9c45fefE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @135, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17h8fbe9360b32d6191E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17hce556aad0c19ba6aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h49dc6a2fb4f99c1eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !542, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !542, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e650b66fbb4b18aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !542
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he8a4216ada5d0a5eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd701820e3d31e314E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$17decode_hex_escape17h05faa2c410adab60E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(104) %1)
  %i.f = load i8, ptr %i.e, align 8, !range !8, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !5, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(104) %1)
  %i.m = load i8, ptr %i.d, align 8, !range !8, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !5, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(104) %1)
  %i.t = load i8, ptr %i.c, align 8, !range !8, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !5, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(104) %1)
  %i.aa = load i8, ptr %i.b, align 8, !range !8, !noundef !4
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = tail call { i16, i16 } @_ZN10serde_json4read22decode_four_hex_digits17h9f6ce83b7a60285bE(i8 noundef %i.l, i8 noundef %i.s, i8 noundef %i.z, i8 noundef %i.ag) ; 2 uses
  %i.ai = extractvalue { i16, i16 } %i.ah, 0
  %i.aj = trunc i16 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = extractvalue { i16, i16 } %i.ah, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ak, ptr %i.al, align 2
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load i64, ptr %i.am, align 8, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val2 = load i64, ptr %i.an, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  store i64 12, ptr %i.a, align 8, !noalias !546
  %i.ao = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val2), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !546
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.j
  %.sink = phi i16 [ 0, %bb.j ], [ 1, %bb.k ]
  store i16 %.sink, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b, %bb.f, %bb.h, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17ha0f21837affd4280E"(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.e = load i8, ptr %i.d, align 1
  store i8 0, ptr %i.a, align 8
  %i.f = load i64, ptr %0, align 8, !range !7     ; 2 uses
  %.not = icmp ne i64 %i.f, -9223372036854775808
  %or.cond.not = select i1 %i.c, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2ddd9c8d56896988E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !550, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2ddd9c8d56896988E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2ddd9c8d56896988E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2ddd9c8d56896988E.exit": ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !550, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 %i.e, ptr %i.l, align 1
  %i.m = add i64 %i.h, 1
  store i64 %i.m, ptr %i.g, align 8, !alias.scope !550
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h879e77937007f71aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !592
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(104) %1), !noalias !593
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noalias !592, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !592, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !592
  br label %"_ZN10serde_json4read15IoRead$LT$R$GT$15parse_str_bytes17he60bd86fccda42caE.exit.thread"

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.o = load i8, ptr %i.i, align 1, !noalias !592, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !592
  switch i8 %i.o, label %bb.c [
    i8 34, label %bb.e
    i8 92, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ult i8 %i.o, 32
  br i1 %i.p, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.k, align 8, !alias.scope !594, !noundef !4 ; 3 uses
  %i.r = load i64, ptr %2, align 8, !range !11, !alias.scope !594, !noundef !4
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

.backedge.sink.split.sink.split.i:                ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.d
  %.sink19.ph.i = phi i64 [ %i.bi, %bb.q ], [ %i.bf, %bb.p ], [ %i.bc, %bb.o ], [ %i.az, %bb.n ], [ %i.aw, %bb.m ], [ %i.at, %bb.l ], [ %i.aq, %bb.k ], [ %i.an, %bb.j ], [ %i.q, %bb.d ]
  %.sink.ph.i = phi i8 [ 9, %bb.q ], [ 13, %bb.p ], [ 10, %bb.o ], [ 12, %bb.n ], [ 8, %bb.m ], [ 47, %bb.l ], [ 92, %bb.k ], [ 34, %bb.j ], [ %i.o, %bb.d ]
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !595
  br label %.backedge.sink.split.i

.backedge.sink.split.i:                           ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.backedge.sink.split.sink.split.i, %bb.d
  %.sink19.i = phi i64 [ %i.aq, %bb.k ], [ %i.at, %bb.l ], [ %i.aw, %bb.m ], [ %i.az, %bb.n ], [ %i.bc, %bb.o ], [ %i.bf, %bb.p ], [ %i.bi, %bb.q ], [ %i.an, %bb.j ], [ %i.q, %bb.d ], [ %.sink19.ph.i, %.backedge.sink.split.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 92, %bb.k ], [ 47, %bb.l ], [ 8, %bb.m ], [ 12, %bb.n ], [ 10, %bb.o ], [ 13, %bb.p ], [ 9, %bb.q ], [ 34, %bb.j ], [ %i.o, %bb.d ], [ %.sink.ph.i, %.backedge.sink.split.sink.split.i ]
  %i.t = load ptr, ptr %i.l, align 8, !alias.scope !591, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink19.i
  store i8 %.sink.i, ptr %i.u, align 1, !noalias !595
  %i.v = add i64 %.sink19.i, 1
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !591
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZN10serde_json4read12parse_escape17h3a5a826807273eb7E.exit.i, %.backedge.sink.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !592
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(104) %1), !noalias !595
  %i.w = load i8, ptr %i.f, align 8, !range !8, !noalias !592, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %._crit_edge.i, label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.l, align 8, !alias.scope !591, !nonnull !4, !noundef !4
  %i.z = load i64, ptr %i.k, align 8, !alias.scope !591, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val8.i = load i64, ptr %i.aa, align 8, !alias.scope !590
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val9.i = load i64, ptr %i.ab, align 8, !alias.scope !590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !596
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %i.z), !noalias !597
  %i.ac = load i64, ptr %i.e, align 8, !range !19, !noalias !596, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %"_ZN10serde_json4read15IoRead$LT$R$GT$15parse_str_bytes17he60bd86fccda42caE.exit.thread4", label %bb.s

"_ZN10serde_json4read15IoRead$LT$R$GT$15parse_str_bytes17he60bd86fccda42caE.exit.thread4": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !598
  store i64 15, ptr %i.d, align 8, !noalias !599
  %i.ae = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.val8.i, i64 noundef %.val9.i), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !596
  br label %"_ZN10serde_json4read15IoRead$LT$R$GT$15parse_str_bytes17he60bd86fccda42caE.exit.thread"

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !603
  call fastcc void @_ZN10serde_json4read11next_or_eof17h50070f4cb3702041E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(104) %1), !noalias !604
  %i.af = load i8, ptr %i.c, align 8, !range !8, !noalias !603, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !603, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !603
  br label %"_ZN10serde_json4read15IoRead$LT$R$GT$15parse_str_bytes17he60bd86fccda42caE.exit.thread"

bb.h:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.j, align 1, !noalias !603, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !603
  switch i8 %i.aj, label %bb.i [
    i8 34, label %bb.j
    i8 92, label %bb.k
    i8 47, label %bb.l
    i8 98, label %bb.m
    i8 102, label %bb.n
    i8 110, label %bb.o
    i8 114, label %bb.p
    i8 116, label %bb.q
    i8 117, label %_ZN10serde_json4read12parse_escape17h3a5a826807273eb7E.exit.i
  ], !prof !605

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load i64, ptr %i.ak, align 8, !alias.scope !606, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val1.i.i = load i64, ptr %i.al, align 8, !alias.scope !606, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !607
  store i64 12, ptr %i.b, align 8, !noalias !603
  %i.am = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val.i.i, i64 noundef %.val1.i.i), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !607
  br label %"_ZN10serde_json4read15IoRead$LT$R$GT$15parse_str_bytes17he60bd86fccda42caE.exit.thread"

bb.j:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.k, align 8, !alias.scope !609, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %2, align 8, !range !11, !alias.scope !609, !noundef !4
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.k, align 8, !alias.scope !610, !noundef !4 ; 3 uses
  %i.ar = load i64, ptr %2, align 8, !range !11, !alias.scope !610, !noundef !4
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.at = load i64, ptr %i.k, align 8, !alias.scope !611, !noundef !4 ; 3 uses
  %i.au = load i64, ptr %2, align 8, !range !11, !alias.scope !611, !noundef !4
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.m:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.k, align 8, !alias.scope !612, !noundef !4 ; 3 uses
  %i.ax = load i64, ptr %2, align 8, !range !11, !alias.scope !612, !noundef !4
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.n:                                             ; preds = %bb.h
  %i.az = load i64, ptr %i.k, align 8, !alias.scope !613, !noundef !4 ; 3 uses
  %i.ba = load i64, ptr %2, align 8, !range !11, !alias.scope !613, !noundef !4
end_hunk_0
