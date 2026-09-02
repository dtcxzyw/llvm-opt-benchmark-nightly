Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN4dump6writer29ChatCompletionsSettingsWriter13push_settings17ha22433ccec9c7d92E:bb.a
  store ptr %.sroa.0.0.i.i.i46, ptr %.sroa.49.0..sroa_idx, align 8
  %.val13 = load i32, ptr %i.i, align 4, !range !95, !noundef !21
  %i.cj = call noundef i32 @close(i32 noundef %.val13) #42 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  store i32 13, ptr %0, align 8
  %.val = load i32, ptr %i.i, align 4, !range !95, !noundef !21
  %i.ck = call noundef i32 @close(i32 noundef %.val) #42 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit22", %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit": ; preds = %bb.c, %.body, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4dump6writer9KeyWriter5flush17h52cd62b5ddd69143E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h9272ebfaaebffa24E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5flush17h35ba60089afe20ddE.exit" unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$std..fs..File$GT$$GT$17h31535d4c1710303cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr44drop_in_place$LT$dump..writer..KeyWriter$GT$17hed86d7ab4fceefa8E.exit" unwind label %bb.f

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5flush17h35ba60089afe20ddE.exit": ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5flush17h35ba60089afe20ddE.exit"
  store i32 11, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$5flush17h35ba60089afe20ddE.exit"
  store i32 13, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$std..fs..File$GT$$GT$17h31535d4c1710303cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable

"_ZN4core3ptr44drop_in_place$LT$dump..writer..KeyWriter$GT$17hed86d7ab4fceefa8E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4dump6writer9KeyWriter8push_key17h0165b7c412d83695E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4)) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81304
  store ptr %1, ptr %i.a, align 8, !noalias !81304
  %i.b = call fastcc noundef align 8 ptr @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h4286218b04cf77c9E"(ptr nonnull readonly %2, ptr noalias noundef align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81304
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 12, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !range !23, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !21 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1583, i64 noundef 1) ; 2 uses
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !81305)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !81305, !noalias !81306, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 10, ptr %i.l, align 1, !noalias !81305
  %i.m = add nuw i64 %i.e, 1
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !81305, !noalias !81306
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 11, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  store i32 13, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting11formattable6sealed6Sealed6format17h065728b92f5e76f5E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 14 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 32 uses
  store i64 0, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81453)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.val.i = load i8, ptr %i.f, align 2, !alias.scope !81452, !noalias !81454, !noundef !21 ; 3 uses
  %i.g = icmp sgt i8 %.val.i, -26
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp slt i8 %.val.i, 26
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val218.i = load i32, ptr %i.i, align 4, !range !75, !alias.scope !81452, !noalias !81454, !noundef !21 ; 5 uses
  %i.j = ashr i32 %.val218.i, 10                  ; 2 uses
  %spec.select.i.i = icmp ult i32 %i.j, 10000
  br i1 %spec.select.i.i, label %bb.b, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit48"

bb.b:                                             ; preds = %bb.a
  %.sroa.0133.0.i = tail call i8 @llvm.abs.i8(i8 %.val.i, i1 true) ; 2 uses
  %i.k = icmp samesign ugt i8 %.sroa.0133.0.i, 23
  br i1 %i.k, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit48", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.val220.i = load i8, ptr %i.l, align 4, !alias.scope !81452, !noalias !81454, !noundef !21 ; 3 uses
  %i.m = icmp sgt i8 %.val220.i, -60
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp slt i8 %.val220.i, 60
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i8 %.val220.i, 0
  br i1 %i.o, label %bb.d, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit48"

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h584d54ace5ab45afE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.j)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81458)
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !81459, !noalias !81460, !noundef !21 ; 3 uses
  %i.q = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81459, !noalias !81460, !noundef !21
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.e, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit.i", !prof !19

bb.e:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.p, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.e
  %.pre.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !81461, !noalias !81460
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit.i": ; preds = %.noexc18, %.noexc
  %i.s = phi i64 [ %i.p, %.noexc ], [ %.pre.i.i.i.i.i, %.noexc18 ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !81461, !noalias !81460, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 45, ptr %i.v, align 1, !noalias !81462
  %i.w = add nuw i64 %i.s, 1
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !81461, !noalias !81460
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.y = load i8, ptr %i.x, align 2, !range !81463, !alias.scope !81464, !noalias !81465, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"

bb.f:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit.i"
  %i.z = and i32 %.val218.i, 511                  ; 2 uses
  %i.aa = lshr i32 %.val218.i, 9
  %.lobit.i.i.i.i.i = and i32 %i.aa, 1
  %i.ab = add nuw nsw i32 %.lobit.i.i.i.i.i, 59   ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.z, %i.ab ; 2 uses
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i8 2, i8 0
  %.6.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.ab, i32 0
  %i.ac = sub nsw i32 %i.z, %.6.i.i.i.i.i
  %i.ad = mul nsw i32 %i.ac, 268
  %i.ae = add nsw i32 %i.ad, 8028
  %i.af = lshr i32 %i.ae, 13
  %3 = trunc i32 %i.af to i8
  %4 = add i8 %..i.i.i.i.i, %3                    ; 3 uses
  %i.ag = icmp ne i8 %4, 0
  tail call void @llvm.assume(i1 %i.ag)
  store i8 %4, ptr %i.x, align 2, !alias.scope !81464, !noalias !81465
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i": ; preds = %bb.f, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit.i"
  %i.ah = phi i8 [ %i.y, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit.i" ], [ %4, %bb.f ]
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %i.ah)
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81469)
  %i.ai = load i64, ptr %i.e, align 8, !alias.scope !81470, !noalias !81471, !noundef !21 ; 3 uses
  %i.aj = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81470, !noalias !81471, !noundef !21
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.g, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i", !prof !19

bb.g:                                             ; preds = %.noexc19
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.g
  %.pre.i.i.i.i230.i = load i64, ptr %i.e, align 8, !alias.scope !81472, !noalias !81471
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i": ; preds = %.noexc20, %.noexc19
  %i.al = phi i64 [ %i.ai, %.noexc19 ], [ %.pre.i.i.i.i230.i, %.noexc20 ] ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %i.d, align 8, !alias.scope !81472, !noalias !81471, !nonnull !21, !noundef !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 45, ptr %i.ao, align 1, !noalias !81473
  %i.ap = add nuw i64 %i.al, 1
  store i64 %i.ap, ptr %i.e, align 8, !alias.scope !81472, !noalias !81471
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !alias.scope !81474, !noalias !81465, !noundef !21 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i, label %bb.h, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

bb.h:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i"
  %i.as = and i32 %.val218.i, 511                 ; 2 uses
  %i.at = lshr i32 %.val218.i, 9
  %.lobit.i.i.i = and i32 %i.at, 1
  %i.au = add nuw nsw i32 %.lobit.i.i.i, 59       ; 2 uses
  %.not.i.i232.i = icmp samesign ugt i32 %i.as, %i.au ; 2 uses
  %..i.i.i = select i1 %.not.i.i232.i, i8 2, i8 0
  %.7.i.i.i = select i1 %.not.i.i232.i, i32 %i.au, i32 0
  %i.av = sub nsw i32 %i.as, %.7.i.i.i            ; 2 uses
  %i.aw = mul nsw i32 %i.av, 268
  %i.ax = add nsw i32 %i.aw, 8028
  %i.ay = lshr i32 %i.ax, 13                      ; 2 uses
  %5 = trunc i32 %i.ay to i8
  %6 = add i8 %..i.i.i, %5                        ; 3 uses
  %i.az = icmp ne i8 %6, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = mul nuw nsw i32 %i.ay, 3917
  %i.bb = add nuw nsw i32 %i.ba, 28902
  %i.bc = lshr i32 %i.bb, 7
  %i.bd = sub nsw i32 %i.av, %i.bc                ; 2 uses
  %i.be = and i32 %i.bd, 255
  %.sroa.54.0.extract.trunc.i.i = trunc i32 %i.bd to i8 ; 2 uses
  %i.bf = icmp ult i8 %6, 13
  tail call void @llvm.assume(i1 %i.bf)
  store i8 %6, ptr %i.x, align 2, !alias.scope !81474, !noalias !81465
  %i.bg = icmp ne i32 %i.be, 0
  tail call void @llvm.assume(i1 %i.bg)
  store i8 %.sroa.54.0.extract.trunc.i.i, ptr %i.aq, align 4, !alias.scope !81474, !noalias !81465
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i": ; preds = %bb.h, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i"
  %.sroa.0.0.i.i = phi i8 [ %.sroa.54.0.extract.trunc.i.i, %bb.h ], [ %i.ar, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i" ]
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.sroa.0.0.i.i)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81478)
  %i.bh = load i64, ptr %i.e, align 8, !alias.scope !81479, !noalias !81480, !noundef !21 ; 3 uses
  %i.bi = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81479, !noalias !81480, !noundef !21
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.i, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i", !prof !19

bb.i:                                             ; preds = %.noexc21
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.i
  %.pre.i.i.i.i233.i = load i64, ptr %i.e, align 8, !alias.scope !81481, !noalias !81480
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i": ; preds = %.noexc22, %.noexc21
  %i.bk = phi i64 [ %i.bh, %.noexc21 ], [ %.pre.i.i.i.i233.i, %.noexc22 ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load ptr, ptr %i.d, align 8, !alias.scope !81481, !noalias !81480, !nonnull !21, !noundef !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 84, ptr %i.bn, align 1, !noalias !81482
  %i.bo = add nuw i64 %i.bk, 1
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !81481, !noalias !81480
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.val223.i = load i8, ptr %i.bp, align 2, !alias.scope !81452, !noalias !81454, !noundef !21 ; 2 uses
  %i.bq = icmp ult i8 %.val223.i, 24
  tail call void @llvm.assume(i1 %i.bq)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.val223.i)
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81486)
  %i.br = load i64, ptr %i.e, align 8, !alias.scope !81487, !noalias !81488, !noundef !21 ; 3 uses
  %i.bs = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81487, !noalias !81488, !noundef !21
  %i.bt = icmp eq i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.j, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i", !prof !19

bb.j:                                             ; preds = %.noexc23
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.br, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.j
  %.pre.i.i.i.i235.i = load i64, ptr %i.e, align 8, !alias.scope !81489, !noalias !81488
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i": ; preds = %.noexc24, %.noexc23
  %i.bu = phi i64 [ %i.br, %.noexc23 ], [ %.pre.i.i.i.i235.i, %.noexc24 ] ; 3 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = load ptr, ptr %i.d, align 8, !alias.scope !81489, !noalias !81488, !nonnull !21, !noundef !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 58, ptr %i.bx, align 1, !noalias !81490
  %i.by = add nuw i64 %i.bu, 1
  store i64 %i.by, ptr %i.e, align 8, !alias.scope !81489, !noalias !81488
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val224.i = load i8, ptr %i.bz, align 1, !alias.scope !81452, !noalias !81454, !noundef !21 ; 2 uses
  %i.ca = icmp ult i8 %.val224.i, 60
  tail call void @llvm.assume(i1 %i.ca)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.val224.i)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81494)
  %i.cb = load i64, ptr %i.e, align 8, !alias.scope !81495, !noalias !81496, !noundef !21 ; 3 uses
  %i.cc = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81495, !noalias !81496, !noundef !21
  %i.cd = icmp eq i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.k, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i", !prof !19

bb.k:                                             ; preds = %.noexc25
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cb, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.k
  %.pre.i.i.i.i237.i = load i64, ptr %i.e, align 8, !alias.scope !81497, !noalias !81496
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i": ; preds = %.noexc26, %.noexc25
  %i.ce = phi i64 [ %i.cb, %.noexc25 ], [ %.pre.i.i.i.i237.i, %.noexc26 ] ; 3 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = load ptr, ptr %i.d, align 8, !alias.scope !81497, !noalias !81496, !nonnull !21, !noundef !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 58, ptr %i.ch, align 1, !noalias !81498
  %i.ci = add nuw i64 %i.ce, 1
  store i64 %i.ci, ptr %i.e, align 8, !alias.scope !81497, !noalias !81496
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val225.i = load i8, ptr %i.cj, align 4, !alias.scope !81452, !noalias !81454, !noundef !21 ; 2 uses
  %i.ck = icmp ult i8 %.val225.i, 60
  tail call void @llvm.assume(i1 %i.ck)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.val225.i)
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i"
  %.val226.i = load i32, ptr %1, align 4, !alias.scope !81452, !noalias !81454, !noundef !21 ; 15 uses
  %i.cl = icmp ult i32 %.val226.i, 1000000000
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i32 %.val226.i, 0
  br i1 %i.cm, label %.noexc32, label %bb.l

.noexc32:                                         ; preds = %bb.x, %bb.af, %bb.z, %bb.v, %bb.ad, %bb.ae, %bb.ab, %bb.t, %_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i, %.noexc27
  %.val227.i = load i24, ptr %i.l, align 4, !alias.scope !81452, !noalias !81454 ; 4 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i24 %.val227.i to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i.i = lshr i24 %.val227.i, 8
  %.sroa.01.1.extract.trunc.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i to i8 ; 4 uses
  %.sroa.01.2.extract.shift.i.i.i = lshr i24 %.val227.i, 16
  %.sroa.01.2.extract.trunc.i.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i.i to i8 ; 3 uses
  %i.cn = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i.i, -60
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp slt i8 %.sroa.01.0.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i, -60
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i.i, -26
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp slt i8 %.sroa.01.2.extract.trunc.i.i.i, 26
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i24 %.val227.i, 0
  br i1 %i.ct, label %bb.ah, label %bb.ag

bb.l:                                             ; preds = %.noexc27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81502)
  %i.cu = load i64, ptr %i.e, align 8, !alias.scope !81503, !noalias !81504, !noundef !21 ; 3 uses
  %i.cv = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81503, !noalias !81504, !noundef !21
  %i.cw = icmp eq i64 %i.cv, %i.cu
  br i1 %i.cw, label %bb.m, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i", !prof !19

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cu, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.m
  %.pre.i.i.i.i239.i = load i64, ptr %i.e, align 8, !alias.scope !81505, !noalias !81504
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i": ; preds = %.noexc28, %bb.l
  %i.cx = phi i64 [ %i.cu, %bb.l ], [ %.pre.i.i.i.i239.i, %.noexc28 ] ; 3 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = load ptr, ptr %i.d, align 8, !alias.scope !81505, !noalias !81504, !nonnull !21, !noundef !21 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 46, ptr %i.da, align 1, !noalias !81506
  %i.db = add nuw i64 %i.cx, 1                    ; 3 uses
  store i64 %i.db, ptr %i.e, align 8, !alias.scope !81505, !noalias !81504
  %i.dc = urem i32 %.val226.i, 10
  %i.dd = udiv i32 %.val226.i, 10                 ; 2 uses
  %i.de = icmp eq i32 %i.dc, 0
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i"
  %i.df = urem i32 %i.dd, 10
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.s, label %bb.t

bb.o:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81507)
  %i.dh = icmp samesign ugt i32 %.val226.i, 99999 ; 2 uses
  %i.di = udiv i32 %.val226.i, 100000
  %.sroa.03.0.i.i.i.i = select i1 %i.dh, i32 %i.di, i32 %.val226.i ; 4 uses
  %i.dj = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 393206
  %i.dk = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 524188
  %i.dl = and i32 %i.dj, %i.dk
  %i.dm = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 916504
  %i.dn = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 514288
  %i.do = and i32 %i.dm, %i.dn
  %i.dp = xor i32 %i.dl, %i.do
  %i.dq = lshr i32 %i.dp, 17
  %7 = trunc nuw nsw i32 %i.dq to i8
  %8 = select i1 %i.dh, i8 6, i8 1
  %9 = add nuw nsw i8 %8, %7                      ; 2 uses
  %.not.i241.i = icmp samesign ugt i8 %9, 8
  br i1 %.not.i241.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.o
  %.pre26.i.i = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81508, !noalias !81509
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %10 = sub nuw nsw i8 9, %9
  %wide.trip.count.i.i = zext nneg i8 %10 to i64
  %.pre24.i.i = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81510, !noalias !81511
  br label %bb.q

._crit_edge.i.i:                                  ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i", %.._crit_edge_crit_edge.i.i
  %i.dr = phi ptr [ %i.cz, %.._crit_edge_crit_edge.i.i ], [ %i.ec, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  %i.ds = phi i64 [ %.pre26.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.ed, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  %i.dt = phi i64 [ %i.db, %.._crit_edge_crit_edge.i.i ], [ %i.eh, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81512
  %i.du = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef range(i32 1, 0) %.val226.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a)
          to label %.noexc29 unwind label %.loopexit.split-lp ; 2 uses

.noexc29:                                         ; preds = %._crit_edge.i.i
  %i.dv = sub nuw i64 10, %i.du                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81513)
  call void @llvm.experimental.noalias.scope.decl(metadata !81514)
  call void @llvm.experimental.noalias.scope.decl(metadata !81515)
  call void @llvm.experimental.noalias.scope.decl(metadata !81516)
  %i.dw = sub i64 %i.ds, %i.dt
  %i.dx = icmp ugt i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.p, label %_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i, !prof !19

bb.p:                                             ; preds = %.noexc29
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.dt, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1)
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.p
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !81517, !noalias !81509
  %.pre7.i = load ptr, ptr %i.d, align 8, !alias.scope !81517, !noalias !81509
  br label %_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i

bb.q:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i", %.lr.ph.i.i
  %i.dy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.ec, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  %i.dz = phi i64 [ %.pre24.i.i, %.lr.ph.i.i ], [ %i.ed, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ] ; 3 uses
  %i.ea = phi i64 [ %i.db, %.lr.ph.i.i ], [ %i.eh, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ] ; 2 uses
  %.sroa.01.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ei, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81521)
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.r, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i", !prof !19

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.dz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.r
  %.pre.i.i.i.i18.i.i = load i64, ptr %i.e, align 8, !alias.scope !81522, !noalias !81511
  %.pre23.i.i = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81510, !noalias !81511
  %.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !81522, !noalias !81511
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i": ; preds = %.noexc31, %bb.q
  %i.ec = phi ptr [ %i.dy, %bb.q ], [ %.pre.i, %.noexc31 ] ; 3 uses
  %i.ed = phi i64 [ %i.dz, %bb.q ], [ %.pre23.i.i, %.noexc31 ] ; 2 uses
  %i.ee = phi i64 [ %i.ea, %bb.q ], [ %.pre.i.i.i.i18.i.i, %.noexc31 ] ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  store i8 48, ptr %i.eg, align 1, !noalias !81523
  %i.eh = add nuw i64 %i.ee, 1                    ; 3 uses
  store i64 %i.eh, ptr %i.e, align 8, !alias.scope !81522, !noalias !81511
  %i.ei = add nuw nsw i64 %.sroa.01.021.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ei, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.q

_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i: ; preds = %.noexc30, %.noexc29
  %i.ej = phi ptr [ %i.dr, %.noexc29 ], [ %.pre7.i, %.noexc30 ]
  %i.ek = phi i64 [ %i.dt, %.noexc29 ], [ %.pre.i.i.i.i.i.i, %.noexc30 ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.du
  %i.em = icmp sgt i64 %i.ek, -1
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull readonly align 1 %i.el, i64 %i.dv, i1 false), !noalias !81524
  %i.eo = add nuw i64 %i.ek, %i.dv
  store i64 %i.eo, ptr %i.e, align 8, !alias.scope !81517, !noalias !81509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81512
  br label %.noexc32

bb.s:                                             ; preds = %bb.n
  %i.ep = udiv i32 %.val226.i, 100                ; 2 uses
  %i.eq = urem i32 %i.ep, 10
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.n
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h469e6e0257bf7b18E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.dd)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.es = udiv i32 %.val226.i, 1000               ; 2 uses
  %i.et = urem i32 %i.es, 10
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h7aac6845c5dea833E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.ep)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  %i.ev = udiv i32 %.val226.i, 10000              ; 2 uses
  %i.ew = urem i32 %i.ev, 10
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17hec897a6c54cc1f2eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.es)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.w
  %i.ey = udiv i32 %.val226.i, 100000             ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ey to i16
  %i.ez = urem i16 %.lhs.trunc.i, 10
  %i.fa = icmp eq i16 %i.ez, 0
  br i1 %i.fa, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h82b0415902e99dc9E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.ev)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  %i.fb = udiv i32 %.val226.i, 1000000            ; 2 uses
  %.lhs.trunc1.i = trunc nuw nsw i32 %i.fb to i16
  %i.fc = urem i16 %.lhs.trunc1.i, 10
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h584d54ace5ab45afE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.ey)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.fe = udiv i32 %.val226.i, 10000000           ; 2 uses
  %.lhs.trunc3.i = trunc nuw nsw i32 %i.fe to i8
  %i.ff = urem i8 %.lhs.trunc3.i, 10
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h64c98f979a3d860bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fb)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  %i.fh = udiv i32 %.val226.i, 100000000
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h5edb1c99417a0908E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fh)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ac
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17hd1b89bde87d39a6bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fe)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %.noexc32
  %i.fi = or i8 %.sroa.01.1.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i
  %i.fj = or i8 %i.fi, %.sroa.01.2.extract.trunc.i.i.i
  %i.fk = icmp slt i8 %i.fj, 0
  %i.fl = load i64, ptr %i.e, align 8, !alias.scope !81451, !noalias !81525, !noundef !21 ; 3 uses
  %i.fm = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81451, !noalias !81525, !noundef !21
  %i.fn = icmp eq i64 %i.fm, %i.fl
  %. = select i1 %i.fk, i8 45, i8 43
  br i1 %i.fn, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.sink.split.i", label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.i", !prof !19

bb.ah:                                            ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !81526)
  call void @llvm.experimental.noalias.scope.decl(metadata !81527)
  call void @llvm.experimental.noalias.scope.decl(metadata !81528)
  call void @llvm.experimental.noalias.scope.decl(metadata !81529)
  %i.fo = load i64, ptr %i.e, align 8, !alias.scope !81530, !noalias !81531, !noundef !21 ; 3 uses
  %i.fp = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81530, !noalias !81531, !noundef !21
  %i.fq = icmp eq i64 %i.fp, %i.fo
  br i1 %i.fq, label %bb.ai, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit248.i", !prof !19

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.ai
  %.pre.i.i.i.i247.i = load i64, ptr %i.e, align 8, !alias.scope !81532, !noalias !81531
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit248.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit248.i": ; preds = %.noexc40, %bb.ah
  %i.fr = phi i64 [ %i.fo, %bb.ah ], [ %.pre.i.i.i.i247.i, %.noexc40 ] ; 3 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  call void @llvm.assume(i1 %i.fs)
  %i.ft = load ptr, ptr %i.d, align 8, !alias.scope !81532, !noalias !81531, !nonnull !21, !noundef !21 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fr
  store i8 90, ptr %i.fu, align 1, !noalias !81533
  %i.fv = add nuw i64 %i.fr, 1
  br label %"_ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.sink.split.i": ; preds = %bb.ag
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.sink.split.i"
  %.pre.i.i.i.i251.i = load i64, ptr %i.e, align 8, !alias.scope !81451, !noalias !81525
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.i": ; preds = %bb.ag, %.noexc41
  %.sink42.i = phi i64 [ %.pre.i.i.i.i251.i, %.noexc41 ], [ %i.fl, %bb.ag ] ; 3 uses
  %i.fw = icmp sgt i64 %.sink42.i, -1
  call void @llvm.assume(i1 %i.fw)
  %i.fx = load ptr, ptr %i.d, align 8, !alias.scope !81451, !noalias !81525, !nonnull !21, !noundef !21
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sink42.i
  store i8 %., ptr %i.fy, align 1, !noalias !81534
  %storemerge.i = add nuw i64 %.sink42.i, 1
  store i64 %storemerge.i, ptr %i.e, align 8, !alias.scope !81451, !noalias !81525
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.sroa.0133.0.i)
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !81535)
  call void @llvm.experimental.noalias.scope.decl(metadata !81536)
  call void @llvm.experimental.noalias.scope.decl(metadata !81537)
  call void @llvm.experimental.noalias.scope.decl(metadata !81538)
  %i.fz = load i64, ptr %i.e, align 8, !alias.scope !81539, !noalias !81540, !noundef !21 ; 3 uses
  %i.ga = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81539, !noalias !81540, !noundef !21
  %i.gb = icmp eq i64 %i.ga, %i.fz
  br i1 %i.gb, label %bb.aj, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i", !prof !19

bb.aj:                                            ; preds = %.noexc42
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.aj
  %.pre.i.i.i.i253.i = load i64, ptr %i.e, align 8, !alias.scope !81541, !noalias !81540
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i": ; preds = %.noexc43, %.noexc42
  %i.gc = phi i64 [ %i.fz, %.noexc42 ], [ %.pre.i.i.i.i253.i, %.noexc43 ] ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, -1
  call void @llvm.assume(i1 %i.gd)
  %i.ge = load ptr, ptr %i.d, align 8, !alias.scope !81541, !noalias !81540, !nonnull !21, !noundef !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 58, ptr %i.gf, align 1, !noalias !81542
  %i.gg = add nuw i64 %i.gc, 1
  store i64 %i.gg, ptr %i.e, align 8, !alias.scope !81541, !noalias !81540
  %.sroa.0208.0.i = call i8 @llvm.abs.i8(i8 %.sroa.01.1.extract.trunc.i.i.i, i1 true)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.sroa.0208.0.i)
          to label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i._ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit_crit_edge" unwind label %.loopexit.split-lp

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i._ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit_crit_edge": ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i"
  %.pre = load ptr, ptr %i.d, align 8
  %.pre23 = load i64, ptr %i.e, align 8
  br label %"_ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit"

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.x, %bb.af, %bb.z, %bb.v, %bb.ad, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i", %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i", %bb.ae, %bb.d, %bb.ab, %bb.t, %"_ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit", %bb.e, %bb.g, %bb.i, %bb.j, %bb.k, %bb.m, %._crit_edge.i.i, %bb.p, %bb.ai, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.sink.split.i", %bb.aj, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81543)
  %.val.i45 = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81543, !noundef !21 ; 2 uses
  %i.gh = icmp eq i64 %.val.i45, 0
  br i1 %i.gh, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !81543, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !81543
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit48": ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.15.0.ph = phi i64 [ 13, %bb.c ], [ 11, %bb.b ], [ 4, %bb.a ]
  %.sroa.9.0.ph = phi i64 [ ptrtoint (ptr @1589 to i64), %bb.c ], [ ptrtoint (ptr @1590 to i64), %bb.b ], [ ptrtoint (ptr @1588 to i64), %bb.a ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.gi, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.ph, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.0.ph, ptr %.sroa.313.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit53"

"_ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit": ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i._ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit_crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit248.i"
  %i.gj = phi i64 [ %.pre23, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i._ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit_crit_edge" ], [ %i.fv, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit248.i" ]
  %.val1.i52 = phi ptr [ %.pre, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit254.i._ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit_crit_edge" ], [ %i.ft, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit248.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val1.i52, i64 noundef %i.gj)
          to label %bb.am unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %"_ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17hff73500a526c5496E.exit"
  %i.gk = load i64, ptr %i.b, align 8, !range !34, !noundef !21 ; 2 uses
  %.not17 = icmp eq i64 %i.gk, -9223372036854775808
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.go = load i64, ptr %i.gn, align 8            ; 7 uses
  br i1 %.not17, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.gp = icmp slt i64 %i.go, 0
  br i1 %i.gp, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.an
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !81544
  %i.gr = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.go, i64 noundef range(i64 1, 9) 1) #42, !noalias !81544 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.ao ], [ 0, %bb.an ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.gr, %bb.ao ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.gm, i64 %i.go, i1 false), !noalias !81545
  br label %bb.ar

bb.ar:                                            ; preds = %bb.am, %bb.aq
  %.sroa.54.0 = phi ptr [ %.sroa.10.0.i.i, %bb.aq ], [ %i.gm, %bb.am ]
  %.sroa.02.0 = phi i64 [ %i.go, %bb.aq ], [ %i.gk, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %i.gt, align 8
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.54.0, ptr %.sroa.54.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.go, ptr %.sroa.6.0..sroa_idx7, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !81546)
  %.val.i51 = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81546, !noundef !21 ; 2 uses
  %i.gu = icmp eq i64 %.val.i51, 0
  br i1 %i.gu, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit53", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i52, i64 noundef %.val.i51, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !81546
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit53"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit53": ; preds = %bb.as, %bb.ar, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit48"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit": ; preds = %bb.al, %bb.ak
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h469e6e0257bf7b18E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 429496730) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 8, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 7
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81571, !noalias !81572
  %.pre26 = load i64, ptr %0, align 8, !range !23, !alias.scope !81571, !noalias !81572
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 7, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !81573, !noalias !81574
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81573, !noalias !81574
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81575)
  call void @llvm.experimental.noalias.scope.decl(metadata !81576)
  call void @llvm.experimental.noalias.scope.decl(metadata !81577)
  call void @llvm.experimental.noalias.scope.decl(metadata !81578)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.s, i64 noundef 1, i64 noundef 1), !noalias !81572
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !81579, !noalias !81572
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !81579, !noalias !81572, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 %i.s, i1 false), !noalias !81579
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !81579, !noalias !81572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81583)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81574
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !81584, !noalias !81574
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !81573, !noalias !81574
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !81584, !noalias !81574, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !81584
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !81584, !noalias !81574
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h584d54ace5ab45afE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 -2097152, 2097152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 99999                   ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 4, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 3
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81609, !noalias !81610
  %.pre26 = load i64, ptr %0, align 8, !range !23, !alias.scope !81609, !noalias !81610
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 3, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !81611, !noalias !81612
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81611, !noalias !81612
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81613)
  call void @llvm.experimental.noalias.scope.decl(metadata !81614)
  call void @llvm.experimental.noalias.scope.decl(metadata !81615)
  call void @llvm.experimental.noalias.scope.decl(metadata !81616)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.s, i64 noundef 1, i64 noundef 1), !noalias !81610
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !81617, !noalias !81610
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !81617, !noalias !81610, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 %i.s, i1 false), !noalias !81617
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !81617, !noalias !81610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81621)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81612
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !81622, !noalias !81612
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !81611, !noalias !81612
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !81622, !noalias !81612, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !81622
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !81622, !noalias !81612
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h5edb1c99417a0908E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 43) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81635)
  call void @llvm.experimental.noalias.scope.decl(metadata !81636)
  call void @llvm.experimental.noalias.scope.decl(metadata !81637)
  call void @llvm.experimental.noalias.scope.decl(metadata !81638)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !81639, !noalias !81640, !noundef !21 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !23, !alias.scope !81639, !noalias !81640, !noundef !21
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1), !noalias !81640
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !81641, !noalias !81640
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.k = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !81641, !noalias !81640, !nonnull !21, !noundef !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.j, i64 %i.c, i1 false), !noalias !81641
  %i.o = add nuw i64 %i.i, %i.c
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !81641, !noalias !81640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %.lr.ph.thread, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"

.lr.ph.thread:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.split

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit": ; preds = %bb.a
  %i.d = zext i8 %1 to i16                        ; 2 uses
  %i.e = add nuw nsw i16 %i.d, 758
  %i.f = add nuw nsw i16 %i.d, 412
  %i.g = and i16 %i.e, %i.f
  %.fr22 = freeze i16 %i.g
  %i.h = lshr i16 %.fr22, 8                       ; 2 uses
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = add i8 %i.i, -1
  %.not = icmp ult i8 %i.j, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %.not, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", label %.lr.ph

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge": ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %.pre26 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81666, !noalias !81667
  br label %bb.c

.lr.ph:                                           ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not23 = icmp eq i16 %i.h, 0
  br i1 %.not23, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81668, !noalias !81669
  %.pre25 = load i64, ptr %0, align 8, !range !23, !alias.scope !81668, !noalias !81669
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.us"
  %i.l = phi i64 [ %.pre25, %.lr.ph.split.us.preheader ], [ %i.o, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.us" ] ; 3 uses
  %i.m = phi i64 [ %.pre, %.lr.ph.split.us.preheader ], [ %i.t, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.us" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81673)
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.us", !prof !19

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81669
  %.pre.i.i.i.i18.us = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81674, !noalias !81669
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81668, !noalias !81669
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.us"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.us": ; preds = %bb.b, %.lr.ph.split.us
  %i.o = phi i64 [ %i.l, %.lr.ph.split.us ], [ %.pre24, %bb.b ]
  %i.p = phi i64 [ %i.m, %.lr.ph.split.us ], [ %.pre.i.i.i.i18.us, %bb.b ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !81674, !noalias !81669, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 48, ptr %i.s, align 1, !noalias !81674
  %i.t = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.t, ptr %.phi.trans.insert, align 8, !alias.scope !81674, !noalias !81669
  br label %.lr.ph.split.us

bb.c:                                             ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.u = phi i64 [ %i.ar, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ], [ %.pre26, %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.a) ; 2 uses
  %i.w = sub nuw i64 3, %i.v                      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81675)
  call void @llvm.experimental.noalias.scope.decl(metadata !81676)
  call void @llvm.experimental.noalias.scope.decl(metadata !81677)
  call void @llvm.experimental.noalias.scope.decl(metadata !81678)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %0, align 8, !range !23, !alias.scope !81666, !noalias !81667, !noundef !21
  %i.z = sub i64 %i.y, %i.u
  %i.aa = icmp ugt i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.w, i64 noundef 1, i64 noundef 1), !noalias !81667
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !81679, !noalias !81667
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i.i.i, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.ad = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !81679, !noalias !81667, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ac, i64 %i.w, i1 false), !noalias !81679
  %i.ah = add nuw i64 %i.ab, %i.w
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !81679, !noalias !81667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph
  %i.ai = phi ptr [ %i.c, %.lr.ph.thread ], [ %i.k, %.lr.ph ]
  %i.aj = phi ptr [ %i.b, %.lr.ph.thread ], [ %.phi.trans.insert, %.lr.ph ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81673)
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !81668, !noalias !81669, !noundef !21 ; 3 uses
  %i.al = load i64, ptr %0, align 8, !range !23, !alias.scope !81668, !noalias !81669, !noundef !21
  %i.am = icmp eq i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.e:                                             ; preds = %.lr.ph.split
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81669
  %.pre.i.i.i.i18 = load i64, ptr %i.aj, align 8, !alias.scope !81674, !noalias !81669
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %.lr.ph.split, %bb.e
  %i.an = phi i64 [ %i.ak, %.lr.ph.split ], [ %.pre.i.i.i.i18, %bb.e ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.ai, align 8, !alias.scope !81674, !noalias !81669, !nonnull !21, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 48, ptr %i.aq, align 1, !noalias !81674
  %i.ar = add nuw i64 %i.an, 1                    ; 2 uses
  store i64 %i.ar, ptr %i.aj, align 8, !alias.scope !81674, !noalias !81669
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h64c98f979a3d860bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 4295) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = add nuw nsw i32 %1, 393206
  %i.c = add nuw nsw i32 %1, 524188
  %i.d = and i32 %i.b, %i.c
  %i.e = add nuw nsw i32 %1, 392216
  %i.f = xor i32 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i32 %i.f, 17
  %i.h = trunc nuw nsw i32 %i.g to i8
  %i.i = add nuw nsw i8 %i.h, 1
  %i.j = tail call i8 @llvm.usub.sat.i8(i8 3, i8 %i.i)
  %.not = icmp samesign ugt i32 %i.f, 262143
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81704, !noalias !81705
  %.pre26 = load i64, ptr %0, align 8, !range !23, !alias.scope !81704, !noalias !81705
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.j, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 2, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !81706, !noalias !81707
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81706, !noalias !81707
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.m = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ad, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  %i.n = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ai, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.p = sub nuw i64 10, %i.o                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81708)
  call void @llvm.experimental.noalias.scope.decl(metadata !81709)
  call void @llvm.experimental.noalias.scope.decl(metadata !81710)
  call void @llvm.experimental.noalias.scope.decl(metadata !81711)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = sub i64 %i.m, %i.n
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef %i.p, i64 noundef 1, i64 noundef 1), !noalias !81705
  %.pre.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !81712, !noalias !81705
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.t = phi i64 [ %i.n, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !81712, !noalias !81705, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.u, i64 %i.p, i1 false), !noalias !81712
  %i.z = add nuw i64 %i.t, %i.p
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !81712, !noalias !81705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.aa = phi i64 [ %.pre24, %.lr.ph ], [ %i.ad, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.ai, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81716)
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81707
  %.pre.i.i.i.i18 = load i64, ptr %i.k, align 8, !alias.scope !81717, !noalias !81707
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !81706, !noalias !81707
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.aa, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ae = phi i64 [ %i.ab, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !81717, !noalias !81707, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 48, ptr %i.ah, align 1, !noalias !81717
  %i.ai = add nuw i64 %i.ae, 1                    ; 3 uses
  store i64 %i.ai, ptr %i.k, align 8, !alias.scope !81717, !noalias !81707
  %i.aj = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h7aac6845c5dea833E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 42949673) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 7, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 6
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81742, !noalias !81743
  %.pre26 = load i64, ptr %0, align 8, !range !23, !alias.scope !81742, !noalias !81743
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 6, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !81744, !noalias !81745
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81744, !noalias !81745
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81746)
  call void @llvm.experimental.noalias.scope.decl(metadata !81747)
  call void @llvm.experimental.noalias.scope.decl(metadata !81748)
  call void @llvm.experimental.noalias.scope.decl(metadata !81749)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.s, i64 noundef 1, i64 noundef 1), !noalias !81743
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !81750, !noalias !81743
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !81750, !noalias !81743, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 %i.s, i1 false), !noalias !81750
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !81750, !noalias !81743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81754)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81745
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !81755, !noalias !81745
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !81744, !noalias !81745
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !81755, !noalias !81745, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !81755
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !81755, !noalias !81745
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h82b0415902e99dc9E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 429497) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 5, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 4
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81780, !noalias !81781
  %.pre26 = load i64, ptr %0, align 8, !range !23, !alias.scope !81780, !noalias !81781
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 4, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !81782, !noalias !81783
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81782, !noalias !81783
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81784)
  call void @llvm.experimental.noalias.scope.decl(metadata !81785)
  call void @llvm.experimental.noalias.scope.decl(metadata !81786)
  call void @llvm.experimental.noalias.scope.decl(metadata !81787)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.s, i64 noundef 1, i64 noundef 1), !noalias !81781
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !81788, !noalias !81781
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !81788, !noalias !81781, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 %i.s, i1 false), !noalias !81788
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !81788, !noalias !81781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81792)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81783
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !81793, !noalias !81783
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !81782, !noalias !81783
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !81793, !noalias !81783, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !81793
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !81793, !noalias !81783
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17hd1b89bde87d39a6bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 430) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = add nuw nsw i32 %1, 393206
  %i.c = add nuw nsw i32 %1, 524188
  %i.d = and i32 %i.b, %i.c
  %.mask = and i32 %i.d, 393216
  %.not = icmp eq i32 %.mask, 262144
  br i1 %.not, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81818, !noalias !81819
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81823)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !81824, !noalias !81825, !noundef !21 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !23, !alias.scope !81824, !noalias !81825, !noundef !21
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

._crit_edge:                                      ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.j = phi i64 [ %.pre, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ab, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.l = sub nuw i64 10, %i.k                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81826)
  call void @llvm.experimental.noalias.scope.decl(metadata !81827)
  call void @llvm.experimental.noalias.scope.decl(metadata !81828)
  call void @llvm.experimental.noalias.scope.decl(metadata !81829)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %0, align 8, !range !23, !alias.scope !81818, !noalias !81819, !noundef !21
  %i.o = sub i64 %i.n, %i.j
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.l, i64 noundef 1, i64 noundef 1), !noalias !81819
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !81830, !noalias !81819
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.q = phi i64 [ %i.j, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.s = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !81830, !noalias !81819, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.r, i64 %i.l, i1 false), !noalias !81830
  %i.w = add nuw i64 %i.q, %i.l
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !81830, !noalias !81819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81825
  %.pre.i.i.i.i18 = load i64, ptr %i.e, align 8, !alias.scope !81831, !noalias !81825
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %.lr.ph, %bb.c
  %i.x = phi i64 [ %i.g, %.lr.ph ], [ %.pre.i.i.i.i18, %bb.c ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %i.f, align 8, !alias.scope !81831, !noalias !81825, !nonnull !21, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 48, ptr %i.aa, align 1, !noalias !81831
  %i.ab = add nuw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !81831, !noalias !81825
  br label %._crit_edge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17hec897a6c54cc1f2eE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 4294968) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 6, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 5
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !81856, !noalias !81857
  %.pre26 = load i64, ptr %0, align 8, !range !23, !alias.scope !81856, !noalias !81857
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 5, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !81858, !noalias !81859
  %.pre24 = load i64, ptr %0, align 8, !range !23, !alias.scope !81858, !noalias !81859
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81860)
  call void @llvm.experimental.noalias.scope.decl(metadata !81861)
  call void @llvm.experimental.noalias.scope.decl(metadata !81862)
  call void @llvm.experimental.noalias.scope.decl(metadata !81863)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit", !prof !19

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.s, i64 noundef 1, i64 noundef 1), !noalias !81857
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !81864, !noalias !81857
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !81864, !noalias !81857, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 %i.s, i1 false), !noalias !81864
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !81864, !noalias !81857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81868)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19", !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81859
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !81869, !noalias !81859
  %.pre23 = load i64, ptr %0, align 8, !range !23, !alias.scope !81858, !noalias !81859
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !81869, !noalias !81859, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !81869
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !81869, !noalias !81859
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !range !46, !noundef !21
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !21 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !81873, !noundef !21 ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) @1591, i64 noundef %i.j, i32 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1594)
  br label %bb.f

_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !81874)
  call void @llvm.experimental.noalias.scope.decl(metadata !81875)
  %i.m = urem i64 %i.j, 60
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60
  %i.p = udiv i64 %i.j, 3600
  %i.q = urem i64 %i.p, 24
  %i.r = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread
  %i.s = udiv i64 %i.j, 86400
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.t, i32 2440588) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.w = extractvalue { i32, i1 } %i.u, 0         ; 2 uses
  %i.x = add nsw i32 %i.w, -5373485
  %or.cond.i.i.i = icmp ult i32 %i.x, -7304484
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN4time4date4Date15checked_add_std17hbd73e657d08882e8E.exit.i, !prof !76

_ZN4time4date4Date15checked_add_std17hbd73e657d08882e8E.exit.i: ; preds = %bb.d
  %i.y = add nuw nsw i32 %i.w, 867409993          ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 3853261555        ; 2 uses
  %i.ab = lshr i64 %i.aa, 15
  %i.ac = lshr i64 %i.aa, 47
  %i.ad = trunc nuw nsw i64 %i.ac to i32          ; 3 uses
  %i.ae = trunc i64 %i.ab to i32
  %i.af = icmp ugt i32 %i.ae, 42920275
  %i.ag = and i32 %i.ad, 3
  %i.ah = icmp eq i32 %i.ag, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.af, %i.ah         ; 2 uses
  %i.ai = lshr i32 %i.ad, 2
  %i.aj = add nuw nsw i32 %i.y, %i.ad
  %i.ak = sub nuw nsw i32 %i.aj, %i.ai
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 3010298776       ; 2 uses
  %i.an = lshr i64 %i.am, 8
  %i.ao = lshr i64 %i.am, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32          ; 2 uses
  %i.aq = and i64 %i.an, 4294967295
  %i.ar = mul nuw nsw i64 %i.aq, 1461
  %i.as = lshr i64 %i.ar, 34
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.av = add nuw nsw i32 %i.at, %i.au
  %i.aw = and i32 %i.ap, 3
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = and i1 %.sroa.0.0.i.i.i.i, %i.ax
  %i.az = shl nuw i32 %i.ap, 10
  %i.ba = add nsw i32 %i.az, 1858256896
  %i.bb = select i1 %i.ay, i32 512, i32 0
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = or i32 %i.bc, %i.av
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %i.q, 48
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %i.o, 40
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %i.m, 32
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %i.l to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.be, ptr noundef nonnull align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @1591, i64 12), i64 3, i1 false), !alias.scope !81876
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %0, align 4, !alias.scope !81874, !noalias !81875
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !81874, !noalias !81875
  br label %bb.f

bb.e:                                             ; preds = %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread, %bb.d, %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1593) #41, !noalias !81876
  unreachable

bb.f:                                             ; preds = %_ZN4time4date4Date15checked_add_std17hbd73e657d08882e8E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN4time5serde7rfc33396option9serialize17he7c56a6f96b82f4dE(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
end_hunk_0
