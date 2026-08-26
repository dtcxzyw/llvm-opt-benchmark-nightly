Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4531
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field17h7707fcc67b550e7fE:bb.a
  %.not.i2 = icmp eq i64 %i.ak, -9223372036854775808
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3800, !noalias !3797, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !3800, !noalias !3797, !noundef !4 ; 2 uses
  br i1 %.not.i2, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4anki4text17html_to_text_line17he90180383edb1484E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.ao, i1 noundef zeroext false)
          to label %"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit.i" unwind label %bb.u, !noalias !3800

bb.u:                                             ; preds = %bb.ab, %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #51
          to label %.body unwind label %bb.ac, !noalias !3797

"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit.i": ; preds = %bb.t
  %i.aq = load i64, ptr %i.h, align 8, !range !53, !alias.scope !3797, !noalias !3800, !noundef !4
  %.not11.i10 = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not11.i10, label %bb.v, label %"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17hfbcaeb0d7c17c2dbE.exit"

bb.v:                                             ; preds = %"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit14.i", %"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !alias.scope !3802
  br label %"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17hfbcaeb0d7c17c2dbE.exit"

bb.w:                                             ; preds = %"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit14.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.z unwind label %bb.x, !noalias !3797

bb.x:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i6 = load i64, ptr %i.j, align 8, !alias.scope !3803, !noalias !3797 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i.i.i6, 0
  br i1 %i.as, label %.body, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val3.i.i.i.i7 = load ptr, ptr %i.al, align 8, !alias.scope !3812, !noalias !3797, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i7, i64 noundef %.val2.i.i.i.i6, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !3813
  br label %.body

bb.z:                                             ; preds = %bb.w
  %.val.i.i.i.i8 = load i64, ptr %i.j, align 8, !alias.scope !3803, !noalias !3797 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i.i.i8, 0
  br i1 %i.at, label %"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17hfbcaeb0d7c17c2dbE.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i.i.i.i9 = load ptr, ptr %i.al, align 8, !alias.scope !3812, !noalias !3797, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i9, i64 noundef %.val.i.i.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !3816
  br label %"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17hfbcaeb0d7c17c2dbE.exit"

bb.ab:                                            ; preds = %bb.s
  invoke void @_ZN4anki4text17html_to_text_line17he90180383edb1484E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.ao, i1 noundef zeroext false)
          to label %"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit14.i" unwind label %bb.u, !noalias !3800

"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit14.i": ; preds = %bb.ab
  %i.au = load i64, ptr %i.h, align 8, !range !53, !alias.scope !3797, !noalias !3800, !noundef !4
  %.not12.i5 = icmp eq i64 %i.au, -9223372036854775808
  br i1 %.not12.i5, label %bb.v, label %bb.w

bb.ac:                                            ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !3797
  unreachable

bb.ad:                                            ; preds = %"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17hfbcaeb0d7c17c2dbE.exit", %bb.d
  invoke void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.c

"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17hfbcaeb0d7c17c2dbE.exit": ; preds = %"_ZN4anki13import_export4text3csv6export30rendered_nodes_to_record_field28_$u7b$$u7b$closure$u7d$$u7d$17h8f397d95f0c70e1fE.exit.i", %bb.aa, %bb.z, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ad

bb.ae:                                            ; preds = %bb.ad
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !3819 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ax, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3826, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !3827
  br label %common.resume

bb.ah:                                            ; preds = %bb.ae
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !3819 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i, 0
  br i1 %i.ay, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3826, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !3830
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

common.resume:                                    ; preds = %.body, %bb.af, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.af ], [ %i.aw, %bb.ag ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.aj:                                            ; preds = %.body
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki13import_export4text6import35_$LT$impl$u20$anki..notes..Note$GT$20first_field_stripped17hb4851bd16dc81b8fE"(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3833
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4text15HTML_MEDIA_TAGS17hf865529b890251b7E, i64 32) acquire, align 8, !noalias !3833
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4anki4text37strip_html_preserving_media_filenames17h85b2376b613e4cc7E.exit, label %bb.c, !prof !230

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3833
  store ptr @_ZN4anki4text15HTML_MEDIA_TAGS17hf865529b890251b7E, ptr %i.b, align 8, !noalias !3833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3833
  store ptr %i.b, ptr %i.a, align 8, !noalias !3833
  call void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki4text15HTML_MEDIA_TAGS17hf865529b890251b7E, i64 32), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75), !noalias !3833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3833
  br label %_ZN4anki4text37strip_html_preserving_media_filenames17h85b2376b613e4cc7E.exit

_ZN4anki4text37strip_html_preserving_media_filenames17h85b2376b613e4cc7E.exit: ; preds = %bb.b, %bb.c
  call fastcc void @_ZN5regex5regex6string5Regex8replacen17hffe933b165317b06E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_ZN4anki4text15HTML_MEDIA_TAGS17hf865529b890251b7E, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @297, i64 noundef 14)
  call fastcc void @"_ZN79_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$anki..text..CowMapping$LT$B$GT$$GT$7map_cow17h47cede70a5e918dfE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3833
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..media..SafeMediaEntry$GT$13uniquify_name17hbe910c154ccd6b5bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 4
  %i.h = trunc nuw i8 %.sroa.0.0.copyload to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !230

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4.0..sroa_idx, i64 20, i1 false)
  call void @_ZN4anki5media5files28add_hash_suffix_to_file_stem17he51cfa5dcf2c21eaE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(20) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @167, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..media..SafeMediaEntry$GT$15ensure_sha1_set17h07a7037e56060b6bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [65536 x i8], align 1             ; 8 uses
  %i.d = alloca [104 x i8], align 8               ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.69 = alloca [20 x i8], align 8           ; 6 uses
  %i.h = alloca [240 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [112 x i8], align 8           ; 6 uses
  %i.i = alloca [240 x i8], align 8               ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !range !217, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.v, %bb.a
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_ZN4anki13import_export7package5media14SafeMediaEntry10fetch_file17hd8f539140c26e94cE(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.m = load i64, ptr %i.h, align 8, !range !84, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.618.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, i64 112, i1 false)
  store i64 %i.m, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3840
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 5 uses
  invoke void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  store i64 0, ptr %i.d, align 8, !alias.scope !3842, !noalias !3840
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3842, !noalias !3840
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !3842, !noalias !3840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.c, i8 0, i64 65536, i1 false), !noalias !3840
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.noexc
  %i.r = invoke { i64, ptr } @"_ZN61_$LT$zip..read..ZipFile$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h0dfb823cc3f232e6E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.i, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 65536)
          to label %.noexc35 unwind label %.loopexit ; 2 uses

.noexc35:                                         ; preds = %.backedge.i
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 6 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 6 uses
  %i.v = trunc nuw i64 %i.s to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc35
  %i.w = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr %i.t), !noalias !3837
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.p, label %bb.q

bb.g:                                             ; preds = %.noexc35
  %i.y = icmp eq ptr %i.t, null
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !3840
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  invoke fastcc void @_ZN6digest11FixedOutput14finalize_fixed17hd84f18d069fadc41E(ptr noalias noundef align 1 captures(address) dereferenceable(20) %i.z, ptr noalias noundef readonly align 8 captures(address) dereferenceable(104) %i.a)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3840
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp ult ptr %i.t, inttoptr (i64 65537 to ptr)
  br i1 %i.aa, label %bb.k, label %bb.j, !prof !222

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.u, i64 noundef 65536, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #50
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  call void @llvm.experimental.noalias.scope.decl(metadata !3848)
  call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  call void @llvm.experimental.noalias.scope.decl(metadata !3854)
  %i.ab = load i8, ptr %i.q, align 8, !alias.scope !3856, !noalias !3859, !noundef !4 ; 3 uses
  %i.ac = zext nneg i8 %i.ab to i64               ; 4 uses
  %i.ad = icmp ult i8 %i.ab, 64
  call void @llvm.assume(i1 %i.ad)
  %i.ae = sub nuw nsw i64 64, %i.ac               ; 4 uses
  %i.af = icmp samesign ugt i64 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i8 %i.ab, 0
  br i1 %i.ag, label %.noexc.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i"

.noexc.i:                                         ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i", %bb.l
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.u, %bb.l ], [ %i.am, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.c, %bb.l ], [ %i.an, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i" ] ; 2 uses
  %i.ah = lshr i64 %.sroa.7.0.i.i.i.i, 6          ; 3 uses
  %i.ai = and i64 %.sroa.7.0.i.i.i.i, -64
  %i.aj = and i64 %.sroa.7.0.i.i.i.i, 63          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.ai
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %.noexc4.i, label %bb.m

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i": ; preds = %bb.l
  %i.am = sub nuw nsw i64 %i.u, %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %i.c, i64 %i.ae, i1 false), !alias.scope !3861, !noalias !3865
  %i.ap = load i64, ptr %i.d, align 8, !alias.scope !3867, !noalias !3870, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.d, align 8, !alias.scope !3867, !noalias !3870
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.p, i64 noundef range(i64 1, 0) 1)
          to label %.noexc.i unwind label %.loopexit

bb.m:                                             ; preds = %.noexc.i
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !3874, !noalias !3877, !noundef !4
  %i.as = add i64 %i.ar, %i.ah
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !3874, !noalias !3877
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, 0) %i.ah)
          to label %.noexc4.i unwind label %.loopexit

.noexc4.i:                                        ; preds = %bb.m, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.p, ptr nonnull readonly align 1 %i.ak, i64 %i.aj, i1 false), !alias.scope !3881, !noalias !3885
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.c, i64 %i.u, i1 false), !alias.scope !3887, !noalias !3891
  %i.au = add nuw nsw i64 %i.ac, %i.u
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc4.i
  %storemerge.in.i.i.i.i = phi i64 [ %i.aj, %.noexc4.i ], [ %i.au, %bb.n ]
  %storemerge.i.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i.i to i8
  store i8 %storemerge.i.i.i.i, ptr %i.q, align 8, !alias.scope !3856, !noalias !3859
  br label %.backedge.i.backedge

bb.p:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3840
  store ptr %i.t, ptr %i.b, align 8, !noalias !3840
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc40 unwind label %.loopexit

.noexc40:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3840
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.noexc40, %bb.o
  br label %.backedge.i

bb.q:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.t, ptr %i.av, align 8, !alias.scope !3837, !noalias !3893
  br label %bb.s

.loopexit:                                        ; preds = %.backedge.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i", %bb.m, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.s, %bb.e, %bb.h, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.i) #51
          to label %bb.z unwind label %bb.y

bb.s:                                             ; preds = %bb.q, %.noexc36
  %storemerge.i = phi i8 [ 0, %.noexc36 ], [ 1, %bb.q ]
  store i8 %storemerge.i, ptr %i.f, align 8, !alias.scope !3837, !noalias !3893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.aw, align 8
  store i64 -9223372036854775807, ptr %i.e, align 8
  invoke void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17hb05bff3844a105d9E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ax = load i64, ptr %i.g, align 8, !range !53, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ax, -9223372036854775808
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(20) %i.ay, i64 20, i1 false)
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.631.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.624.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.69, i64 20, i1 false)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.i)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.56.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.69, i64 20, i1 false)
  store i8 1, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.b

bb.w:                                             ; preds = %bb.x, %bb.b
  ret void

bb.x:                                             ; preds = %bb.u, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

bb.y:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.z:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..media..SafeMediaEntry$GT$9is_static17ha24b745a24a6d11aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 95, ptr %i.a, align 4
  %i.f = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd671bd7262d5b917E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd671bd7262d5b917E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @171, i64 noundef 6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package5media11MediaCopier4copy17hafac7f82e10fcf54E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(65560) initializes((16, 65552)) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(296) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [104 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.k)
  store i64 0, ptr %i.j, align 8, !alias.scope !3894
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3894
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3894
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.l, i8 0, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 65552
  %i.n = load i8, ptr %i.m, align 8, !range !217, !alias.scope !3897, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %1, align 8, !range !101, !alias.scope !3897, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3897
  store i64 2, ptr %1, align 8, !alias.scope !3897
  %.not.i = icmp eq i64 %i.p, 2
  br i1 %.not.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3897
  call void @_ZN4zstd6stream3raw7Encoder15with_dictionary17h4d2073b702ccfdcdE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i32 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !3897
  call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  %i.s = load i64, ptr %i.b, align 8, !range !101, !alias.scope !3900, !noalias !3897, !noundef !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i", !prof !190

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3903
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3900, !noalias !3897, !nonnull !4, !noundef !4
  store ptr %i.v, ptr %i.a, align 8, !noalias !3903
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @563, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @566, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #50
          to label %bb.f unwind label %bb.e, !noalias !3903

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %common.resume unwind label %bb.g, !noalias !3903

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !3903
  unreachable

common.resume:                                    ; preds = %.thread, %.thread74, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn73, %.thread ], [ %i.au, %.thread74 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i": ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3900, !noalias !3897, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3897
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i", %bb.b
  %.sroa.3.0.i.ph = phi ptr [ %i.r, %bb.b ], [ %i.z, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i" ]
  %.sroa.0.0.i.ph = phi i64 [ %i.p, %bb.b ], [ %i.s, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN4zstd6stream3zio6writer19Writer$LT$W$C$D$GT$17new_with_capacity17h07c63813f3dd95b9E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(296) %3, i64 noundef %.sroa.0.0.i.ph, ptr noundef %.sroa.3.0.i.ph, i64 noundef 32768)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %3, ptr %i.aa, align 8
  store i64 2, ptr %i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val61 = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val62 = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !142, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val62, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !4, !noalias !3904, !nonnull !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.ad, %bb.j
  %.sroa.0.0.ph = phi i64 [ %i.ay, %bb.ad ], [ 0, %bb.j ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.t
  %i.af = invoke { i64, ptr } %i.ad(ptr noundef nonnull align 1 %.val61, ptr noalias noundef nonnull align 1 %i.l, i64 noundef 65536)
          to label %"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit" unwind label %.thread78.loopexit.loopexit, !inline_history !3907 ; 2 uses

.thread78.loopexit.loopexit:                      ; preds = %bb.k
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread78.loopexit.loopexit.split-lp:             ; preds = %bb.aa, %bb.y, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread78.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit": ; preds = %bb.k
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 6 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit"
  %i.aj = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr %i.ah)
  %i.ak = icmp eq i8 %i.aj, 35
  br i1 %i.ak, label %bb.s, label %.thread81

bb.m:                                             ; preds = %"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit"
  %i.al = ptrtoint ptr %i.ah to i64               ; 8 uses
  %i.am = icmp eq ptr %i.ah, null
  br i1 %i.am, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @"_ZN4anki13import_export7package6colpkg6export27MaybeEncodedWriter$LT$W$GT$6finish17h82d301d09674bd25E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = load i64, ptr %i.f, align 8, !range !3492, !noundef !4 ; 2 uses
  %.not58 = icmp eq i64 %i.an, -9223372036854775773
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  br i1 %.not58, label %bb.p, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN4anki13import_export7package5media14SafeMediaEntry11from_legacy17h8d1af1b6d5773d0bE:bb.a
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.ae, align 8, !alias.scope !4092 ; 2 uses
  %i.an = icmp eq i64 %.val2.i.i, 0
  br i1 %i.an, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val3.i.i = load ptr, ptr %i.af, align 8, !alias.scope !4099, !nonnull !4, !noundef !4
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4100
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  %.val.i.i = load i64, ptr %i.ae, align 8, !alias.scope !4092 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i, 0
  br i1 %i.ao, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i = load ptr, ptr %i.af, align 8, !alias.scope !4099, !nonnull !4, !noundef !4
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4103
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

common.resume:                                    ; preds = %bb.i, %bb.t, %bb.u, %bb.n, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ar, %bb.u ], [ %i.ad, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.l
  %.sroa.013.0.copyload14 = load i64, ptr %i.ae, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload14, ptr %i.ap, align 8
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %.sroa.10.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.1153.0, ptr %.sroa.10.0..sroa_idx21, align 8
  %.sroa.12.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.12.0..sroa_idx23, align 8
  %.sroa.14.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %.sroa.14.0..sroa_idx25, align 4
  store i64 -9223372036854775773, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.w, %bb.v, %bb.q, %bb.p, %bb.r
  ret void

bb.s:                                             ; preds = %bb.k, %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !4106 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.as, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !4115, !nonnull !4, !noundef !4
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4116
  br label %common.resume

bb.v:                                             ; preds = %bb.s
  %.val.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !4106 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.au, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !4115, !nonnull !4, !noundef !4
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4119
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

bb.x:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN4anki13import_export7package5media14SafeMediaEntry17has_size_equal_to17h4d97618962eef299E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std2fs8metadata17hede2fc8136e73ffdE(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !101, !alias.scope !4122, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4532e9b2c05dc3eeE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i32, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !4122
  %i.e = zext i32 %.val to i64
  %i.f = icmp eq i64 %.sroa.2.0.copyload.i, %i.e
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9is_ok_and17h76e97804af0523ffE.exit"

"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4532e9b2c05dc3eeE.exit.i": ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9is_ok_and17h76e97804af0523ffE.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$9is_ok_and17h76e97804af0523ffE.exit": ; preds = %bb.b, %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4532e9b2c05dc3eeE.exit.i"
  %.sroa.0.04.i = phi i1 [ false, %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4532e9b2c05dc3eeE.exit.i" ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.04.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package5media14SafeMediaEntry21has_checksum_equal_to17h9fef489d02b796abE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 5 uses
  %i.b = alloca [20 x i8], align 1                ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @"_ZN89_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnMut$LT$Args$GT$$GT$8call_mut17hcd98702ecf1482fbE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.g)
  %i.h = load i64, ptr %i.c, align 8, !range !3492, !noundef !4
  %.not = icmp eq i64 %i.h, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload = load i8, ptr %i.i, align 8
  %i.j = trunc nuw i8 %.sroa.0.0.copyload to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.2.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.02.0.copyload = load i8, ptr %i.k, align 4
  %i.l = trunc nuw i8 %.sroa.02.0.copyload to i1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !230

bb.e:                                             ; preds = %bb.c, %bb.f
  %.sroa.01.0 = phi i8 [ %i.ab, %bb.f ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.01.0, ptr %i.m, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4.0..sroa_idx, i64 20, i1 false)
  %i.n = load i128, ptr %i.b, align 1
  %i.o = load i128, ptr %i.a, align 1
  %i.p = xor i128 %i.n, %i.o
  %i.q = getelementptr i8, ptr %i.b, i64 16
  %i.r = getelementptr i8, ptr %i.a, i64 16
  %i.s = load i32, ptr %i.q, align 1
  %i.t = load i32, ptr %i.r, align 1
  %i.u = zext i32 %i.s to i128
  %i.v = zext i32 %i.t to i128
  %i.w = xor i128 %i.u, %i.v
  %i.x = or i128 %i.p, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @167, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #50
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package5media14SafeMediaEntry24copy_and_ensure_sha1_set17h82ddae564779e80cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef align 8 dereferenceable(65560) %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [104 x i8], align 8               ; 14 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [56 x i8], align 8                ; 6 uses
  %i.n = alloca [112 x i8], align 8               ; 19 uses
  %.sroa.820 = alloca [20 x i8], align 8          ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.67 = alloca [32 x i8], align 8           ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 16 uses
  %i.q = alloca [240 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [112 x i8], align 8           ; 6 uses
  %i.r = alloca [240 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_ZN4anki13import_export7package5media14SafeMediaEntry10fetch_file17hd8f539140c26e94cE(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.s = load i64, ptr %i.q, align 8, !range !84, !noundef !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false)
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.633.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, i64 112, i1 false)
  store i64 %i.s, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_ZN7anki_io15new_tempfile_in17hc9fb56fe82f5b396E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.e unwind label %bb.d

.body113:                                         ; preds = %bb.at, %bb.au, %bb.ay, %bb.ax, %bb.bd, %bb.bc, %bb.d, %bb.bl, %.thread118
  %.pn93 = phi { ptr, i32 } [ %i.ct, %bb.bd ], [ %eh.lpad-body121, %.thread118 ], [ %i.v, %bb.d ], [ %i.cx, %bb.bl ], [ %i.cq, %bb.ay ], [ %i.ct, %bb.bc ], [ %i.cq, %bb.ax ], [ %i.cj, %bb.at ], [ %i.co, %bb.au ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.r) #51
          to label %bb.bm unwind label %bb.bh

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.e:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.o, align 8, !range !53, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.w, -9223372036854775808
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.646.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.639.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, i64 32, i1 false)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %.sroa.444.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  br i1 %6, label %bb.am, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !4125)
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4130
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  invoke void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.y)
          to label %.noexc unwind label %.thread125

.noexc:                                           ; preds = %bb.h
  store i64 0, ptr %i.j, align 8, !alias.scope !4133, !noalias !4130
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4133, !noalias !4130
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !4133, !noalias !4130
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.z, i8 0, i64 65536, i1 false), !alias.scope !4128, !noalias !4136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4130
  call void @llvm.experimental.noalias.scope.decl(metadata !4137)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 65552
  %i.ab = load i8, ptr %i.aa, align 8, !range !217, !alias.scope !4140, !noalias !4136, !noundef !4
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %5, align 8, !range !101, !alias.scope !4140, !noalias !4136, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !4140, !noalias !4136
  store i64 2, ptr %5, align 8, !alias.scope !4140, !noalias !4136
  %.not.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4141
  invoke void @_ZN4zstd6stream3raw7Encoder15with_dictionary17h4d2073b702ccfdcdE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i32 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %.noexc95 unwind label %.thread125

.noexc95:                                         ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  %i.ag = load i64, ptr %i.b, align 8, !range !101, !alias.scope !4142, !noalias !4141, !noundef !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.k, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i", !prof !190

bb.k:                                             ; preds = %.noexc95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4145
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !4142, !noalias !4141, !nonnull !4, !noundef !4
  store ptr %i.aj, ptr %i.a, align 8, !noalias !4145
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @563, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @566, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #50
          to label %bb.m unwind label %bb.l, !noalias !4146

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %.thread118 unwind label %bb.n, !noalias !4146

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !4146
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i": ; preds = %.noexc95
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !4142, !noalias !4141, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4141
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i", %bb.i
  %.sroa.3.0.i.ph.i = phi ptr [ %i.af, %bb.i ], [ %i.an, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i" ]
  %.sroa.0.0.i.ph.i = phi i64 [ %i.ad, %bb.i ], [ %i.ag, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4130
  invoke void @"_ZN4zstd6stream3zio6writer19Writer$LT$W$C$D$GT$17new_with_capacity17hb16bd1c33e4b0068E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %.sroa.0.0.i.ph.i, ptr noundef %.sroa.3.0.i.ph.i, i64 noundef 32768)
          to label %.noexc96 unwind label %.thread125

.noexc96:                                         ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !4130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4130
  br label %bb.q

bb.p:                                             ; preds = %.noexc
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.ao, align 8, !noalias !4130
  store i64 2, ptr %i.i, align 8, !noalias !4130
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %bb.q
  %i.aq = invoke { i64, ptr } @"_ZN61_$LT$zip..read..ZipFile$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h0dfb823cc3f232e6E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.r, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 65536)
          to label %bb.r unwind label %.thread76.loopexit.loopexit.i, !noalias !4125 ; 2 uses

.thread76.loopexit.loopexit.i:                    ; preds = %.outer.i
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread76.loopexit.loopexit.split-lp.i:           ; preds = %bb.af, %bb.ad, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i"
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread76.loopexit.split-lp.i:                    ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.r:                                             ; preds = %.outer.i
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 6 uses
  %i.at = trunc nuw i64 %i.ar to i1
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr %i.as), !noalias !4125
  %i.av = icmp eq i8 %i.au, 35
  br i1 %i.av, label %bb.x, label %.thread79.i

end_hunk_1
begin_hunk_2_@_ZN4anki13import_export7package5media14SafeMediaEntry24copy_and_ensure_sha1_set17h82ddae564779e80cE:bb.a
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !4128, !noalias !4136
  br label %.thread118

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i": ; preds = %bb.w, %bb.v
  store i64 %i.ba, ptr %5, align 8, !alias.scope !4128, !noalias !4136
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bc, ptr %i.bg, align 8, !alias.scope !4128, !noalias !4136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !4130
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  invoke fastcc void @_ZN6digest11FixedOutput14finalize_fixed17hd84f18d069fadc41E(ptr noalias noundef align 1 captures(address) dereferenceable(20) %.sroa.421.0..sroa_idx.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(104) %i.d)
          to label %.thread128 unwind label %.thread125

.thread128:                                       ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4130
  br label %bb.ap

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4130
  store ptr %i.as, ptr %i.h, align 8, !noalias !4130
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.y unwind label %.thread80.i, !noalias !4125

.thread80.i:                                      ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4130
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.y, %bb.ai
  br label %.outer.i

.thread79.i:                                      ; preds = %bb.s
  store i64 -9223372036854775805, ptr %i.n, align 8, !alias.scope !4125, !noalias !4147
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !4125, !noalias !4147
  %.sroa.427.sroa.0.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.sroa.0.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4125, !noalias !4147
  %.sroa.427.sroa.0.sroa.0.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %.sroa.427.sroa.0.sroa.0.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4125, !noalias !4147
  %.sroa.427.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 -9223372036854775795, ptr %.sroa.427.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4125, !noalias !4147
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.as, ptr %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4125, !noalias !4147
  br label %bb.ak

bb.z:                                             ; preds = %bb.t
  %i.bi = icmp ult ptr %i.as, inttoptr (i64 65537 to ptr)
  br i1 %i.bi, label %bb.ab, label %bb.aa, !prof !222

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.aw, i64 noundef 65536, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #50
          to label %bb.aj unwind label %.thread76.loopexit.split-lp.i, !noalias !4125

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !4151)
  call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  %i.bj = load i8, ptr %i.ap, align 8, !alias.scope !4162, !noalias !4165, !noundef !4 ; 3 uses
  %i.bk = zext nneg i8 %i.bj to i64               ; 4 uses
  %i.bl = icmp ult i8 %i.bj, 64
  call void @llvm.assume(i1 %i.bl)
  %i.bm = sub nuw nsw i64 64, %i.bk               ; 4 uses
  %i.bn = icmp ugt i64 %i.bm, %i.aw
  br i1 %i.bn, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = icmp eq i8 %i.bj, 0
  br i1 %i.bo, label %.noexc61.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i"

.noexc61.i:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i", %bb.ac
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.aw, %bb.ac ], [ %i.bu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.z, %bb.ac ], [ %i.bv, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i" ] ; 2 uses
  %i.bp = lshr i64 %.sroa.7.0.i.i.i.i, 6          ; 3 uses
  %i.bq = and i64 %.sroa.7.0.i.i.i.i, -64
  %i.br = and i64 %.sroa.7.0.i.i.i.i, 63          ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.bq
  %i.bt = icmp eq i64 %i.bp, 0
  br i1 %i.bt, label %.noexc62.i, label %bb.ad

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i": ; preds = %bb.ac
  %i.bu = sub nuw i64 %i.aw, %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull readonly align 8 %i.z, i64 %i.bm, i1 false), !alias.scope !4167, !noalias !4171
  %i.bx = load i64, ptr %i.j, align 8, !alias.scope !4173, !noalias !4176, !noundef !4
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.j, align 8, !alias.scope !4173, !noalias !4176
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.y, i64 noundef range(i64 1, 0) 1)
          to label %.noexc61.i unwind label %.thread76.loopexit.loopexit.split-lp.i, !noalias !4125

bb.ad:                                            ; preds = %.noexc61.i
  %i.bz = load i64, ptr %i.j, align 8, !alias.scope !4180, !noalias !4183, !noundef !4
  %i.ca = add i64 %i.bz, %i.bp
  store i64 %i.ca, ptr %i.j, align 8, !alias.scope !4180, !noalias !4183
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, 0) %i.bp)
          to label %.noexc62.i unwind label %.thread76.loopexit.loopexit.split-lp.i, !noalias !4125

.noexc62.i:                                       ; preds = %bb.ad, %.noexc61.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.y, ptr nonnull readonly align 1 %i.bs, i64 %i.br, i1 false), !alias.scope !4187, !noalias !4191
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 8 %i.z, i64 %i.aw, i1 false), !alias.scope !4193, !noalias !4197
  %i.cc = add nuw nsw i64 %i.bk, %i.aw
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc62.i
  %storemerge.in.i.i.i.i = phi i64 [ %i.br, %.noexc62.i ], [ %i.cc, %bb.ae ]
  %storemerge.i.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i.i to i8
  store i8 %storemerge.i.i.i.i, ptr %i.ap, align 8, !alias.scope !4162, !noalias !4165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4130
  invoke void @"_ZN4anki13import_export7package6colpkg6export27MaybeEncodedWriter$LT$W$GT$5write17hdc06387d7259577fE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.aw)
          to label %bb.ag unwind label %.thread76.loopexit.loopexit.split-lp.i, !noalias !4125

bb.ag:                                            ; preds = %bb.af
  %i.cd = load i64, ptr %i.g, align 8, !range !3492, !noalias !4130, !noundef !4
  %.not59.i = icmp eq i64 %i.cd, -9223372036854775773
  br i1 %.not59.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !4147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4130
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4130
  br label %.outer.i.backedge

bb.aj:                                            ; preds = %bb.aa
  unreachable

bb.ak:                                            ; preds = %bb.ah, %.thread79.i
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$anki..import_export..package..colpkg..export..MaybeEncodedWriter$LT$tempfile..file..NamedTempFile$GT$$GT$17h97acb92641ef5963E"(ptr noalias noundef align 8 dereferenceable(64) %i.i)
          to label %bb.an unwind label %.thread125

bb.al:                                            ; preds = %.thread.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !4125
  unreachable

.thread.i:                                        ; preds = %.thread80.i, %.thread76.loopexit.split-lp.i, %.thread76.loopexit.loopexit.split-lp.i, %.thread76.loopexit.loopexit.i
  %.pn71.i = phi { ptr, i32 } [ %i.bh, %.thread80.i ], [ %lpad.loopexit.split-lp.i, %.thread76.loopexit.split-lp.i ], [ %lpad.loopexit83.i, %.thread76.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp84.i, %.thread76.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$anki..import_export..package..colpkg..export..MaybeEncodedWriter$LT$tempfile..file..NamedTempFile$GT$$GT$17h97acb92641ef5963E"(ptr noalias noundef align 8 dereferenceable(64) %i.i) #51
          to label %.thread118 unwind label %bb.al, !noalias !4125

bb.am:                                            ; preds = %bb.g
  %i.cf = invoke noundef ptr @_ZN4zstd6stream9functions11copy_decode17h92e039d689277911E(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.ar unwind label %.thread125 ; 2 uses

.thread125:                                       ; preds = %bb.am, %bb.h, %bb.j, %bb.o, %bb.u, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i", %bb.ak
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread118

bb.an:                                            ; preds = %bb.ak
  %.pr = load i64, ptr %i.n, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4130
  %.not89 = icmp eq i64 %.pr, -9223372036854775773
  br i1 %.not89, label %bb.ap, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.sroa.576.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.576.0.copyload.pre = load i64, ptr %.sroa.576.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %.thread130
  %.sroa.576.0.copyload = phi i64 [ %i.ba, %.thread130 ], [ %.sroa.576.0.copyload.pre, %._crit_edge ]
  %i.ch = phi i64 [ %i.ay, %.thread130 ], [ %.pr, %._crit_edge ]
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.677.0..sroa_idx, i64 20, i1 false)
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %.sroa.778.0.copyload = load i32, ptr %.sroa.778.0..sroa_idx, align 4
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.584.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.879.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.382.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, i64 20, i1 false)
  store i64 %i.ch, ptr %0, align 8
  %.sroa.281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.576.0.copyload, ptr %.sroa.281.0..sroa_idx, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.778.0.copyload, ptr %.sroa.483.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.820)
  br label %.critedge

bb.ap:                                            ; preds = %.thread128, %bb.an
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.567.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.820)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.ci, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_ZN3std4path4Path4join17h8c81efceb1fc5784E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit unwind label %bb.at

bb.ar:                                            ; preds = %bb.am
  %.not90 = icmp eq ptr %i.cf, null
  br i1 %.not90, label %bb.aq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.448.sroa.0.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.448.sroa.0.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.0.sroa.0.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.448.sroa.0.sroa.0.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775795, ptr %.sroa.448.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.cf, ptr %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  br label %.critedge

bb.at:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #51
          to label %.body113 unwind label %bb.bh

_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit: ; preds = %bb.aq
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !4
  invoke void @_ZN7anki_io13atomic_rename17ha25d6f3c54704e8cE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cl, i64 noundef %i.cn, i1 noundef zeroext false)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #51
          to label %.body113 unwind label %bb.bh

bb.av:                                            ; preds = %_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cp = load i64, ptr %i.m, align 8, !range !53, !noundef !4
  %.not91 = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %.not91, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775805, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.az unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4199 ; 2 uses
  %i.cr = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cr, label %.body113, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val3.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !4210, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4211
  br label %.body113

bb.az:                                            ; preds = %bb.aw
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4199 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !4210, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4214
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit"

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i104 = load i64, ptr %i.k, align 8, !alias.scope !4217 ; 2 uses
  %i.cu = icmp eq i64 %.val2.i.i.i.i104, 0
  br i1 %i.cu, label %.body113, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val3.i.i.i.i105 = load ptr, ptr %i.ck, align 8, !alias.scope !4228, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i105, i64 noundef %.val2.i.i.i.i104, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4229
  br label %.body113

bb.be:                                            ; preds = %bb.bb
  %.val.i.i.i.i107 = load i64, ptr %i.k, align 8, !alias.scope !4217 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i.i107, 0
  br i1 %i.cv, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val1.i.i.i.i108 = load ptr, ptr %i.ck, align 8, !alias.scope !4228, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i108, i64 noundef %.val.i.i.i.i107, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4232
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112": ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.r)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.b, %bb.bi, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit": ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bi

bb.bh:                                            ; preds = %.thread118, %bb.au, %bb.at, %.body113
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.bi:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE.exit", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.r)
  br label %bb.bg

.critedge:                                        ; preds = %bb.as, %bb.ao
  invoke void @"_ZN66_$LT$tempfile..file..TempPath$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07d53728ee77f0b0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %.critedge
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val3.i.i = load i64, ptr %i.cy, align 8, !alias.scope !4235, !noundef !4 ; 2 uses
  %i.cz = icmp eq i64 %.val3.i.i, 0
  br i1 %i.cz, label %bb.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i": ; preds = %bb.bj
  %.val2.i.i = load ptr, ptr %i.p, align 8, !alias.scope !4235, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #52
  br label %bb.bl

bb.bk:                                            ; preds = %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i = load i64, ptr %i.da, align 8, !alias.scope !4235, !noundef !4 ; 2 uses
  %i.db = icmp eq i64 %.val1.i.i, 0
  br i1 %i.db, label %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i4.i.i": ; preds = %bb.bk
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !4235, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #52
  br label %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE.exit"

bb.bl:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i", %bb.bj
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4240)
  %.val.i1.i = load i32, ptr %i.dc, align 8, !range !411, !alias.scope !4243, !noundef !4
  %i.dd = call noundef i32 @close(i32 noundef %.val.i1.i) #52, !noalias !4240 ; 0 uses
  br label %.body113

"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE.exit": ; preds = %bb.bk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i4.i.i"
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  %.val.i2.i = load i32, ptr %i.de, align 8, !range !411, !alias.scope !4247, !noundef !4
  %i.df = call noundef i32 @close(i32 noundef %.val.i2.i) #52, !noalias !4244 ; 0 uses
  br label %bb.bi

.thread118:                                       ; preds = %bb.l, %.thread72.i, %.thread.i, %.thread125
  %eh.lpad-body121 = phi { ptr, i32 } [ %i.cg, %.thread125 ], [ %i.bf, %.thread72.i ], [ %.pn71.i, %.thread.i ], [ %i.ak, %bb.l ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE"(ptr noalias noundef align 8 dereferenceable(32) %i.p) #51
          to label %.body113 unwind label %bb.bh

bb.bm:                                            ; preds = %.body113
  resume { ptr, i32 } %.pn93
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_ZN3std4path4Path4join17h8c81efceb1fc5784E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package5media15new_media_entry17h4bdeb79213fca7dcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(20) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
end_hunk_2
