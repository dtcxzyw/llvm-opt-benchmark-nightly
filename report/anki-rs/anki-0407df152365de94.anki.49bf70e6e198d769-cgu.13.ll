Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN21pulldown_cmark_escape11escape_href17h1a326d5cb724d161E:bb.a
  ]

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.ae = sub nuw i64 %.sroa.015.051, %.sroa.01.052
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.052
  %i.ag = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef %i.ae)
  br i1 %i.ag, label %.loopexit, label %bb.l

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.052, i64 noundef %.sroa.015.051, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #39
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 0, ptr %i.h, align 1
  store i8 37, ptr %i.c, align 1
  %i.ah = load ptr, ptr @_ZN21pulldown_cmark_escape9HEX_CHARS17h855614f0c1d146f9E, align 8, !nonnull !3, !align !221, !noundef !3 ; 2 uses
  %i.ai = zext i8 %i.p to i64                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noundef !3
  store i8 %i.al, ptr %i.d, align 1
  %i.am = and i64 %i.ai, 15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noundef !3
  store i8 %i.ao, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 3)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.ap = load i64, ptr %i.b, align 8, !range !5, !alias.scope !1358, !noundef !3
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.p, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit", !prof !37

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @768, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @769, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #39, !noalias !1358
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit": ; preds = %bb.o
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !1358, !nonnull !3, !align !221, !noundef !3
  %i.as = load i64, ptr %i.g, align 8, !alias.scope !1358, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.at, label %.loopexit, label %bb.h

bb.q:                                             ; preds = %bb.l
  %i.au = load ptr, ptr @_ZN21pulldown_cmark_escape10AMP_ESCAPE17hc88b6a5597d5d236E, align 8, !nonnull !3, !align !221, !noundef !3
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN21pulldown_cmark_escape10AMP_ESCAPE17hc88b6a5597d5d236E, i64 8), align 8, !noundef !3
  %i.aw = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef %i.av)
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.r:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr @_ZN21pulldown_cmark_escape19SINGLE_QUOTE_ESCAPE17h5a939c1e760eb6ffE, align 8, !nonnull !3, !align !221, !noundef !3
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN21pulldown_cmark_escape19SINGLE_QUOTE_ESCAPE17h5a939c1e760eb6ffE, i64 8), align 8, !noundef !3
  %i.az = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.ay)
  br i1 %i.az, label %.loopexit, label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN21pulldown_cmark_escape18escape_html_scalar17h9933c27a34ba07ddE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 1 captures(none) dereferenceable(256) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.01.068 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.r ] ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.068 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %gepdiff = sub nuw nsw i64 %2, %.sroa.01.068
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.02.09.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.c = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.val7.i = load i8, ptr %i.c, align 1, !noalias !1364, !noundef !3
  %i.d = zext i8 %.val7.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !1361, !noalias !1366, !noundef !3
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.h = add nuw i64 %.sroa.02.09.i, 1
  %i.i = icmp eq ptr %i.g, %i.a
  br i1 %i.i, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %.sroa.01.068, 0
  br i1 %i.j, label %bb.f, label %.thread51

.thread:                                          ; preds = %bb.r, %bb.a
  %.sroa.01.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %bb.r ] ; 2 uses
  %i.k = icmp eq i64 %.sroa.01.0.lcssa, %2
  br i1 %i.k, label %bb.f, label %bb.g

.thread51:                                        ; preds = %bb.d
  %i.l = load i8, ptr %i.b, align 1, !alias.scope !1367, !noundef !3
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = icmp ult i64 %.sroa.02.09.i, %gepdiff
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add i64 %.sroa.02.09.i, %.sroa.01.068    ; 7 uses
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.i, label %bb.h

bb.f:                                             ; preds = %.thread, %.thread51, %bb.d
  %.sroa.01.060 = phi i64 [ %2, %.thread ], [ %.sroa.01.068, %.thread51 ], [ 0, %bb.d ] ; 2 uses
  %i.q = sub nuw i64 %2, %.sroa.01.060
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.060
  %i.s = tail call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.q)
  br label %.loopexit

bb.g:                                             ; preds = %.thread, %.thread51
  %.sroa.01.061 = phi i64 [ %.sroa.01.0.lcssa, %.thread ], [ %.sroa.01.068, %.thread51 ]
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.061, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #39
  unreachable

.loopexit:                                        ; preds = %bb.o, %bb.q, %bb.f
  %.sroa.0.0 = phi i1 [ %i.s, %bb.f ], [ true, %bb.q ], [ true, %bb.o ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.o, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #39
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noundef !3  ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !3  ; 2 uses
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = icmp ult i8 %i.x, 6
  br i1 %i.z, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @_ZN21pulldown_cmark_escape12HTML_ESCAPES17h3aaea2376a7ac3b8E, i64 %i.y ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !3, !align !221, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  %.not.i36 = icmp ugt i64 %.sroa.01.068, %i.o
  br i1 %.not.i36, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp eq i64 %.sroa.01.068, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.af = icmp eq i64 %i.o, 0
  %i.ag = icmp sgt i8 %i.u, -65
  %or.cond53 = or i1 %i.af, %i.ag
  br i1 %or.cond53, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %i.b, align 1, !alias.scope !1370, !noundef !3
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.l, label %bb.p

bb.n:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.y, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #39
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.aj = tail call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %.sroa.02.09.i)
  br i1 %i.aj, label %.loopexit, label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.m, %bb.j
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.068, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #39
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ak = tail call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
  br i1 %i.ak, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = add nuw i64 %i.o, 1                     ; 3 uses
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.b, label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN3csv6writer15Writer$LT$W$GT$12write_record17h3129980add64bde7E"(ptr noalias noundef align 8 dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.0 = alloca i64, align 8                  ; 7 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 6 uses
  %i.h = alloca [136 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 5 uses
  %.sroa.6.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$16write_field_impl17ha72ae4a3f3cf3767E.exit", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1381
  %i.z = load i64, ptr %i.i, align 8, !range !1383, !alias.scope !1384, !noalias !1385, !noundef !3 ; 3 uses
  %.not.i.i = icmp eq i64 %i.z, -9223372036854775804
  br i1 %.not.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h04fa90aa3be57ea2E.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1396
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1402
  %.not.i.i.i.i.i = icmp eq i64 %i.z, -9223372036854775805
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1416
  %i.aa = load i64, ptr %i.j, align 8, !range !1418, !alias.scope !1419, !noalias !1420, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775805
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i, label %bb.e

_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775807 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, i64 -9223372036854775806, i64 -9223372036854775807
  store i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !1427, !noalias !1432
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !1437, !noalias !1420
  br label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.ab = load i64, ptr %i.k, align 8, !range !1441, !alias.scope !1442, !noalias !1445, !noundef !3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !1447, !noalias !1451
  br label %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.b, %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  store i64 -9223372036854775807, ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1452, !noalias !1451
  %.pr.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1453 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr230drop_in_place$LT$core..option..Option$LT$core..iter..adapters..chain..Chain$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$C$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$$GT$$GT$17h1811a00945632b04E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i unwind label %bb.h, !noalias !1420

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775805, ptr %i.j, align 8, !alias.scope !1419, !noalias !1420
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$17h0c7cb9b36eac21c3E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #40
          to label %.body unwind label %bb.i, !noalias !1420

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1420
  unreachable

_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  store i64 -9223372036854775805, ptr %i.j, align 8, !alias.scope !1419, !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %.pre.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !1441, !alias.scope !1461, !noalias !1464
  br label %bb.j

_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.ph.i.i.i.i.i.i.i = phi i64 [ %.pr.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  store i64 %.sroa.0.0.copyload.ph.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !1467, !noalias !1468
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i
  %i.ae = phi i64 [ %.pre.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i ], [ %i.z, %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 24, i1 false), !alias.scope !1470, !noalias !1474
  br label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.k ], [ %i.c, %bb.j ]
  store i64 -9223372036854775807, ptr %.sink.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1475, !noalias !1474
  %.pr.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !1402
  %.not6.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -9223372036854775807
  br i1 %.not6.i.i.i.i.i, label %bb.l, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.thread.i.i.i.i: ; preds = %bb.c
  store i64 -9223372036854775807, ptr %i.d, align 8, !alias.scope !1397, !noalias !1476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1402
  br label %bb.p

bb.l:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr343drop_in_place$LT$core..option..Option$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$C$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$$C$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$$GT$$GT$17hb38672034e50cb0eE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i)
          to label %bb.n unwind label %bb.m, !noalias !1477

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775805, ptr %i.i, align 8, !alias.scope !1478, !noalias !1477
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$17h0c7cb9b36eac21c3E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #40
          to label %.body unwind label %bb.o, !noalias !1477

bb.n:                                             ; preds = %bb.l
  store i64 -9223372036854775805, ptr %i.i, align 8, !alias.scope !1478, !noalias !1477
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1477
  unreachable

_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i: ; preds = %bb.n, %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1476
  %.pr.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1479, !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1402
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %.not.i1.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, -9223372036854775807
  br i1 %.not.i1.i.i.i.i, label %bb.p, label %_ZN4core3ops8function6FnOnce9call_once17h6a368dab6ebec888E.exit.i.i

bb.p:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.ah = load i8, ptr %i.m, align 8, !range !436, !alias.scope !1492, !noalias !1493, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ah, 3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h6a368dab6ebec888E.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
end_hunk_0
begin_hunk_1_@_ZN4anki14card_rendering15extract_av_tags17hab8ae3137e37a3e3E:bb.a

"_ZN4core3ptr116drop_in_place$LT$anki..card_rendering..extract_av_tags$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h30c721b0d5042d72E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

"_ZN4anki14card_rendering15extract_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17he2c7f649c0b6ff0aE.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$anki..card_rendering..CardNodes$GT$17h4f20cad390dbadc9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.k

bb.k:                                             ; preds = %"_ZN4anki14card_rendering15extract_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17he2c7f649c0b6ff0aE.exit"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.thread13 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %"_ZN4anki14card_rendering15extract_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17he2c7f649c0b6ff0aE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %"_ZN4core3ptr116drop_in_place$LT$anki..card_rendering..extract_av_tags$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h30c721b0d5042d72E.exit"

.body.thread13:                                   ; preds = %bb.k, %.body.thread
  %eh.lpad-body11 = phi { ptr, i32 } [ %eh.lpad-body12, %.body.thread ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body11

.body.thread:                                     ; preds = %bb.g, %.body.i, %.body.thread16
  %eh.lpad-body12 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread16 ], [ %i.o, %bb.g ], [ %i.l, %.body.i ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #40
          to label %.body.thread13 unwind label %bb.m

bb.m:                                             ; preds = %.body.thread
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki14card_rendering16prettify_av_tags17ha008223aef3dd988E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.g, align 8, !noundef !3
  invoke void @_ZN4anki14card_rendering18nodes_or_text_only17he76a072cfc5c615fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val2)
          to label %bb.b unwind label %.body.thread13

.body.thread13:                                   ; preds = %"_ZN4core3ptr52drop_in_place$LT$anki..card_rendering..CardNodes$GT$17h4f20cad390dbadc9E.exit.i", %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !range !996, !noundef !3
  %.not = icmp eq i64 %i.h, -9223372036854775808
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN4anki14card_rendering6writer5Write5write17h80b3e6d93514979aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %"_ZN4anki14card_rendering6writer49_$LT$impl$u20$anki..card_rendering..CardNodes$GT$25write_with_pretty_av_tags17h8e106ba1f15db1cfE.exit.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki..card_rendering..CardNodes$GT$17h4f20cad390dbadc9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #40
          to label %.body.thread unwind label %bb.g, !noalias !2188

"_ZN4anki14card_rendering6writer49_$LT$impl$u20$anki..card_rendering..CardNodes$GT$25write_with_pretty_av_tags17h8e106ba1f15db1cfE.exit.i": ; preds = %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde61aab516f19f61E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %"_ZN4core3ptr52drop_in_place$LT$anki..card_rendering..CardNodes$GT$17h4f20cad390dbadc9E.exit.i" unwind label %bb.e, !noalias !2188

bb.e:                                             ; preds = %"_ZN4anki14card_rendering6writer49_$LT$impl$u20$anki..card_rendering..CardNodes$GT$25write_with_pretty_av_tags17h8e106ba1f15db1cfE.exit.i"
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a06fa4d72c04f79E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.thread unwind label %bb.f, !noalias !2188

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2188
  unreachable

"_ZN4core3ptr52drop_in_place$LT$anki..card_rendering..CardNodes$GT$17h4f20cad390dbadc9E.exit.i": ; preds = %"_ZN4anki14card_rendering6writer49_$LT$impl$u20$anki..card_rendering..CardNodes$GT$25write_with_pretty_av_tags17h8e106ba1f15db1cfE.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a06fa4d72c04f79E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %"_ZN4anki14card_rendering16prettify_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17h6ea144d366e5cc2dE.exit" unwind label %.body.thread13

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2188
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %"_ZN4core3ptr117drop_in_place$LT$anki..card_rendering..prettify_av_tags$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4058876c2e84e1d0E.exit"

"_ZN4core3ptr117drop_in_place$LT$anki..card_rendering..prettify_av_tags$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4058876c2e84e1d0E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

"_ZN4anki14card_rendering16prettify_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17h6ea144d366e5cc2dE.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$anki..card_rendering..CardNodes$GT$17h4f20cad390dbadc9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.i

bb.i:                                             ; preds = %"_ZN4anki14card_rendering16prettify_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17h6ea144d366e5cc2dE.exit"
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread10 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %"_ZN4anki14card_rendering16prettify_av_tags28_$u7b$$u7b$closure$u7d$$u7d$17h6ea144d366e5cc2dE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %"_ZN4core3ptr117drop_in_place$LT$anki..card_rendering..prettify_av_tags$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4058876c2e84e1d0E.exit"

.body.thread10:                                   ; preds = %bb.i, %.body.thread
  %eh.lpad-body8 = phi { ptr, i32 } [ %eh.lpad-body9, %.body.thread ], [ %i.m, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body8

.body.thread:                                     ; preds = %bb.e, %bb.d, %.body.thread13
  %eh.lpad-body9 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread13 ], [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #40
          to label %.body.thread10 unwind label %bb.k

bb.k:                                             ; preds = %.body.thread
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki14card_rendering18nodes_or_text_only17he76a072cfc5c615fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [128 x i8], align 8               ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 10 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [40 x i8], align 8               ; 13 uses
  %.sroa.25.i.i.i = alloca [88 x i8], align 8     ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.72.i.i.i = alloca i64, align 8           ; 5 uses
  %.sroa.14.i.i.i = alloca i64, align 8           ; 5 uses
  %i.ag = alloca [48 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [128 x i8], align 8              ; 5 uses
  %i.am = alloca [144 x i8], align 8              ; 13 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2191
  store i64 0, ptr %i.an, align 8, !noalias !2191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !2191
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !noalias !2191
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.541.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.642.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.743.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.755.0..sroa_idx.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.7.0..sroa_idx.i.i44.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.553.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.654.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.755.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i46.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.741.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.215.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.517.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i10.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.13.sroa.7.0..sroa.517.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %.sroa.440.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.541.0..sroa_idx.i.i48.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.7.0..sroa_idx.i6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.4171.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5172.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.15.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.231.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.sroa.231.i.sroa.4.0..sroa.231.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.sroa.231.i.sroa.5.0..sroa.231.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %.sroa.231.i.sroa.6.0..sroa.231.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i53.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i.i54.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i55.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.7.0..sroa_idx.i.i56.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.574.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.590.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5106.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6107.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7108.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.691.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.792.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.675.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.776.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.495.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.596.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.419.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.520.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.523.sroa.6.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.523.sroa.7.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.523.sroa.8.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.sroa.523.sroa.9.0..sroa.523.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.624.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.725.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.11.16..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.15.16..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.222.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.524.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ch, %bb.a
  %.sroa.01.0.i = phi i8 [ 1, %bb.a ], [ %i.iy, %bb.ch ] ; 3 uses
  %.sroa.3.0.i = phi i64 [ %2, %bb.a ], [ %i.im, %bb.ch ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %1, %bb.a ], [ %i.in, %bb.ch ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2191
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.72.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2207
  store ptr @370, ptr %i.af, align 8, !noalias !2207
  store i64 7, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2207
  store ptr @77, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2207
  store i64 1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !2207
  store ptr @77, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !2207
  store i64 1, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !2207
  store i8 4, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !2207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2212
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
          to label %.noexc.i unwind label %.loopexit126.i, !noalias !2219

.noexc.i:                                         ; preds = %bb.b
  %i.cg = load i64, ptr %i.ae, align 8, !range !1313, !noalias !2212, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cg, 3
  %i.ch = load ptr, ptr %i.ar, align 8, !noalias !2212 ; 2 uses
  %i.ci = load i64, ptr %i.as, align 8, !noalias !2212 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %.sroa.7.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2212
  %i.cj = ptrtoint ptr %i.ch to i64
  br label %bb.h

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2220
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h12bb111ace18b312E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ch, i64 noundef %i.ci)
          to label %.noexc4.i unwind label %.loopexit126.i, !noalias !2219

.noexc4.i:                                        ; preds = %bb.d
  %i.ck = load i64, ptr %i.ad, align 8, !range !5, !noalias !2220, !noundef !3
  %i.cl = trunc nuw i64 %i.ck to i1
  %.sroa.040.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !noalias !2220 ; 2 uses
  %.sroa.541.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.541.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2220 ; 2 uses
  %.sroa.642.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.642.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2220 ; 2 uses
  %.sroa.743.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.743.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2220 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2220
  br i1 %i.cl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc4.i
  %i.cm = ptrtoint ptr %.sroa.040.0.copyload.i.i.i.i.i.i to i64
  %i.cn = ptrtoint ptr %.sroa.642.0.copyload.i.i.i.i.i.i to i64
  br label %bb.h

bb.f:                                             ; preds = %.noexc4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2220
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.040.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.541.0.copyload.i.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit126.i, !noalias !2219

.noexc5.i:                                        ; preds = %bb.f
  %i.co = load i64, ptr %i.ac, align 8, !range !1313, !noalias !2220, !noundef !3 ; 2 uses
  %.not.i12.i.i.i.i.i = icmp eq i64 %i.co, 3
  %i.cp = load ptr, ptr %i.au, align 8, !noalias !2220 ; 2 uses
  %i.cq = load i64, ptr %i.av, align 8, !noalias !2220 ; 2 uses
  br i1 %.not.i12.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc5.i
  %.sroa.755.0.copyload.i18.i.i.i.i.i = load i64, ptr %.sroa.755.0..sroa_idx.i17.i.i.i.i.i, align 8, !noalias !2220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2220
  %i.cr = ptrtoint ptr %i.cp to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.19.0.ph.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sroa.755.0.copyload.i18.i.i.i.i.i, %bb.g ], [ %.sroa.743.0.copyload.i.i.i.i.i.i, %bb.e ]
  %.sroa.15.0.ph.i.i.i.i.i = phi i64 [ %i.ci, %bb.c ], [ %i.cq, %bb.g ], [ %i.cn, %bb.e ]
  %.sroa.11.0.ph.i.i.i.i.i = phi i64 [ %i.cj, %bb.c ], [ %i.cr, %bb.g ], [ %.sroa.541.0.copyload.i.i.i.i.i.i, %bb.e ]
  %.sroa.6.0.ph.i.i.i.i.i = phi i64 [ %i.cg, %bb.c ], [ %i.co, %bb.g ], [ %i.cm, %bb.e ]
  store i64 %.sroa.11.0.ph.i.i.i.i.i, ptr %.sroa.14.i.i.i, align 8, !alias.scope !2225, !noalias !2226
  br label %_ZN4core3ops8function5FnMut8call_mut17hfac2f395625c6291E.exit.i.i.i

bb.i:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2220
  store i64 -9223372036854775806, ptr %.sroa.72.i.i.i, align 8, !alias.scope !2225, !noalias !2226
  %i.cs = ptrtoint ptr %.sroa.642.0.copyload.i.i.i.i.i.i to i64
  br label %_ZN4core3ops8function5FnMut8call_mut17hfac2f395625c6291E.exit.i.i.i

_ZN4core3ops8function5FnMut8call_mut17hfac2f395625c6291E.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.21.0.i.i.i = phi i64 [ %.sroa.19.0.ph.i.i.i.i.i, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.18.0.i.i.i = phi i64 [ %.sroa.15.0.ph.i.i.i.i.i, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.103.0.i.i.i = phi i64 [ %.sroa.6.0.ph.i.i.i.i.i, %bb.h ], [ %i.cs, %bb.i ] ; 3 uses
  %.sroa.5.0.i.i.i = phi i64 [ undef, %bb.h ], [ %i.cq, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ undef, %bb.h ], [ %i.cp, %bb.i ] ; 3 uses
  %.sink56.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.72.i.i.i, %bb.h ], [ %.sroa.14.i.i.i, %bb.i ]
  %.sink.i.i.i.i.i = phi i64 [ -9223372036854775805, %bb.h ], [ %.sroa.743.0.copyload.i.i.i.i.i.i, %bb.i ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink56.i.i.sroa.phi.i.i.i, align 8, !alias.scope !2225, !noalias !2226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2207
  %.sroa.72.i.i.i.0..sroa.72.i.i.i.0..sroa.72.i.i.i.0..sroa.72.i.i.0..sroa.72.i.i.0..sroa.72.i.0..sroa.72.i.0..sroa.72.0..sroa.72.0..sroa.72.16..i.i.i = load i64, ptr %.sroa.72.i.i.i, align 8, !range !1418, !noalias !2229, !noundef !3 ; 2 uses
  %i.ct = icmp eq i64 %.sroa.72.i.i.i.0..sroa.72.i.i.i.0..sroa.72.i.i.i.0..sroa.72.i.i.0..sroa.72.i.i.0..sroa.72.i.0..sroa.72.i.0..sroa.72.0..sroa.72.0..sroa.72.16..i.i.i, -9223372036854775805
  %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.32..sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.14.i.i.i, align 8, !noalias !2229 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.72.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  br i1 %i.ct, label %bb.j, label %_ZN4anki14card_rendering6parser4node17hf4aa6329a7ce95a2E.exit.thread122.i

_ZN4anki14card_rendering6parser4node17hf4aa6329a7ce95a2E.exit.thread122.i: ; preds = %_ZN4core3ops8function5FnMut8call_mut17hfac2f395625c6291E.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  store ptr %.sroa.0.0.i.i.i, ptr %i.am, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.103.0.i.i.i, ptr %i.aw, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.32..sroa.2.0.copyload.i.i.i, ptr %i.ax, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.18.0.i.i.i, ptr %i.ay, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.21.0.i.i.i, ptr %i.az, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.72.i.i.i.0..sroa.72.i.i.i.0..sroa.72.i.i.i.0..sroa.72.i.i.0..sroa.72.i.i.0..sroa.72.i.0..sroa.72.i.0..sroa.72.0..sroa.72.0..sroa.72.16..i.i.i, ptr %i.ba, align 8, !alias.scope !2230, !noalias !2231
  br label %bb.cd

bb.j:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17hfac2f395625c6291E.exit.i.i.i
  store i64 %.sroa.103.0.i.i.i, ptr %i.aw, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.32..sroa.2.0.copyload.i.i.i, ptr %i.ax, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.18.0.i.i.i, ptr %i.ay, align 8, !alias.scope !2230, !noalias !2231
  store i64 %.sroa.21.0.i.i.i, ptr %i.az, align 8, !alias.scope !2230, !noalias !2231
  store i64 -9223372036854775805, ptr %i.ba, align 8, !alias.scope !2230, !noalias !2231
  %i.cu = icmp eq i64 %.sroa.103.0.i.i.i, 1
  br i1 %i.cu, label %bb.k, label %"_ZN4anki14card_rendering6parser49_$LT$impl$u20$anki..card_rendering..CardNodes$GT$5parse17h705b0433c10fe586E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !2232
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2244
  store ptr @374, ptr %i.z, align 8, !noalias !2244
  store i64 6, ptr %i.bb, align 8, !noalias !2244
  store ptr @378, ptr %i.bc, align 8, !noalias !2244
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2244
  store i8 4, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2251
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
          to label %.noexc6.i unwind label %.loopexit126.i, !noalias !2219

.noexc6.i:                                        ; preds = %bb.k
  %i.cv = load i64, ptr %i.y, align 8, !range !1313, !noalias !2251, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cv, 3
  %i.cw = load ptr, ptr %i.bd, align 8, !noalias !2251 ; 2 uses
  %i.cx = load i64, ptr %i.be, align 8, !noalias !2251 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.i.i.i.i.i, label %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i

_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i: ; preds = %.noexc6.i
  %.sroa.7.0.copyload.i.i45.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i44.i.i.i.i.i, align 8, !noalias !2251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2251
  %i.cy = ptrtoint ptr %i.cw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2244
  %i.cz = inttoptr i64 %i.cv to ptr
  %i.da = inttoptr i64 %i.cx to ptr
  br label %bb.l

_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.i.i.i.i.i: ; preds = %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2251
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h12bb111ace18b312E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cx)
          to label %.noexc7.i unwind label %.loopexit126.i, !noalias !2219

.noexc7.i:                                        ; preds = %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.i.i.i.i.i
  %i.db = load i64, ptr %i.x, align 8, !range !5, !noalias !2251, !noundef !3
  %.sroa.052.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !noalias !2251
  %.sroa.553.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.553.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2251
  %.sroa.654.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.654.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2251 ; 8 uses
  %.sroa.755.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.755.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2251 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2244
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc7.i, %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i
  %.sroa.5.0189.i.i.i.i.i = phi ptr [ %i.cz, %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i ], [ %.sroa.052.0.copyload.i.i.i.i.i.i.i, %.noexc7.i ]
  %.sroa.8.0188.i.i.i.i.i = phi i64 [ %i.cy, %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i ], [ %.sroa.553.0.copyload.i.i.i.i.i.i.i, %.noexc7.i ]
  %.sroa.11.0187.i.i.i.i.i = phi ptr [ %i.da, %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i ], [ %.sroa.654.0.copyload.i.i.i.i.i.i.i, %.noexc7.i ]
  %.sroa.15.0186.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i45.i.i.i.i.i, %_ZN4anki14card_rendering6parser8tag_node4name17hf952c638eb1c5975E.exit.thread.i.i.i.i.i ], [ %.sroa.755.0.copyload.i.i.i.i.i.i.i, %.noexc7.i ]
  %i.dd = ptrtoint ptr %.sroa.5.0189.i.i.i.i.i to i64
  %i.de = ptrtoint ptr %.sroa.11.0187.i.i.i.i.i to i64
  br label %_ZN4core3ops8function5FnMut8call_mut17h96feae9d29381d91E.exit.thread.i.i.i

bb.m:                                             ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2256
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.654.0.copyload.i.i.i.i.i.i.i) ]
  store ptr @374, ptr %i.w, align 8, !noalias !2256
  store i64 6, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2256
  store ptr %.sroa.654.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2256
  store i64 %.sroa.755.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i46.i.i.i.i.i, align 8, !noalias !2256
  store ptr @77, ptr %i.bg, align 8, !noalias !2256
  store i64 1, ptr %i.bh, align 8, !noalias !2256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2263
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
          to label %.noexc8.i unwind label %.loopexit126.i, !noalias !2219

.noexc8.i:                                        ; preds = %bb.m
  %i.df = load i64, ptr %i.v, align 8, !range !1313, !noalias !2263, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 3
  %i.dg = load ptr, ptr %i.bi, align 8, !noalias !2263 ; 2 uses
  %i.dh = load i64, ptr %i.bj, align 8, !noalias !2263 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc8.i
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2263
  br label %bb.s

bb.o:                                             ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2272
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dg, i64 noundef %i.dh)
          to label %.noexc9.i unwind label %.loopexit126.i, !noalias !2219

.noexc9.i:                                        ; preds = %bb.o
  %i.di = load i64, ptr %i.u, align 8, !range !1313, !noalias !2272, !noundef !3 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq i64 %i.di, 3
  %i.dj = load ptr, ptr %i.bk, align 8, !noalias !2272 ; 2 uses
  %i.dk = load i64, ptr %i.bl, align 8, !noalias !2272 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc9.i
  %.sroa.7.0.copyload.i3.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i.i, align 8, !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2272
  br label %bb.s

bb.q:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2272
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h3ed9bb1579fd1d4cE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias noundef nonnull align 1 %i.bg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dj, i64 noundef %i.dk)
          to label %.noexc10.i unwind label %.loopexit126.i, !noalias !2219

.noexc10.i:                                       ; preds = %bb.q
  %i.dl = load i64, ptr %i.t, align 8, !range !1313, !noalias !2272, !noundef !3 ; 2 uses
  %.not49.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, 3
  %i.dm = load ptr, ptr %i.bm, align 8, !noalias !2272 ; 2 uses
  %i.dn = load i64, ptr %i.bn, align 8, !noalias !2272 ; 2 uses
  br i1 %.not49.i.i.i.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.noexc10.i
  %.sroa.741.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.741.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2272
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n
  %.sroa.17.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.741.0.copyload.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.7.0.copyload.i3.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, %bb.n ]
  %.sroa.12.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.dn, %bb.r ], [ %i.dk, %bb.p ], [ %i.dh, %bb.n ]
  %.sroa.7.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.dm, %bb.r ], [ %i.dj, %bb.p ], [ %i.dg, %bb.n ]
  %.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.dl, %bb.r ], [ %i.di, %bb.p ], [ %i.df, %bb.n ]
  %i.do = ptrtoint ptr %.sroa.7.0.ph.i.i.i.i.i.i.i to i64
  br label %bb.ag

bb.t:                                             ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2277
  store ptr @375, ptr %i.p, align 8, !noalias !2277
  store i64 1, ptr %i.bo, align 8, !noalias !2277
  invoke void @"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h410cb3dc7efdc9d0E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dm, i64 noundef %i.dn)
          to label %.noexc11.i unwind label %.loopexit126.i, !noalias !2219

.noexc11.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2277
  %i.dp = load i64, ptr %i.q, align 8, !range !5, !noalias !2287, !noundef !3
  %i.dq = trunc nuw i64 %i.dp to i1
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !2287 ; 4 uses
  %.sroa.215.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.215.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2287 ; 2 uses
  br i1 %i.dq, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.noexc11.i
  switch i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, label %bb.v [
    i64 0, label %bb.y
    i64 1, label %bb.w
    i64 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %.sroa.921.i.sroa.0.0.copyload42.i.i.i.i.i.i.i = load i64, ptr %.sroa.517.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2287
  %.sroa.921.i.sroa.5.0.copyload44.i.i.i.i.i.i.i = load i64, ptr %.sroa.13.sroa.7.0..sroa.517.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2287
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %.sroa.921.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.517.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2287
  %.sroa.921.i.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.13.sroa.7.0..sroa.517.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2287
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.921.i.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.u ], [ %.sroa.921.i.sroa.0.0.copyload42.i.i.i.i.i.i.i, %bb.w ], [ %.sroa.921.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.x ]
  %.sroa.921.i.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.u ], [ %.sroa.921.i.sroa.5.0.copyload44.i.i.i.i.i.i.i, %bb.w ], [ %.sroa.921.i.sroa.5.0.copyload.i.i.i.i.i.i.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2256
  br label %bb.ag

bb.z:                                             ; preds = %.noexc11.i
  %.sroa.7.0.copyload.i11.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i10.i.i.i.i.i.i.i, align 8, !noalias !2287 ; 2 uses
  %i.dr = icmp ne i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.dr)
  %.sroa.13.sroa.0.0.copyload35.i.i.i.i.i.i.i = load i64, ptr %.sroa.517.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2288 ; 2 uses
  %.sroa.13.sroa.7.0.copyload37.i.i.i.i.i.i.i = load i64, ptr %.sroa.13.sroa.7.0..sroa.517.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2288 ; 2 uses
  %i.ds = inttoptr i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2289
  store i64 %.sroa.13.sroa.0.0.copyload35.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !2289
  store i64 %.sroa.13.sroa.7.0.copyload37.i.i.i.i.i.i.i, ptr %.sroa.440.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2289
  store i64 %.sroa.7.0.copyload.i11.i.i.i.i.i.i.i, ptr %.sroa.541.0..sroa_idx.i.i48.i.i.i.i.i, align 8, !noalias !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2289
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ds, i64 noundef %.sroa.215.0.copyload.i.i.i.i.i.i.i.i)
          to label %bb.ab unwind label %bb.aa, !noalias !2294

bb.aa:                                            ; preds = %bb.z
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #40
          to label %.body.i unwind label %bb.af, !noalias !2294

bb.ab:                                            ; preds = %bb.z
  %i.du = load i64, ptr %i.r, align 8, !range !1313, !noalias !2289, !noundef !3 ; 2 uses
  %.not.i5.i.i.i.i.i.i.i = icmp eq i64 %i.du, 3
  %i.dv = load ptr, ptr %i.bq, align 8, !noalias !2289 ; 9 uses
  %i.dw = load i64, ptr %i.br, align 8, !noalias !2289 ; 5 uses
  br i1 %.not.i5.i.i.i.i.i.i.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.7.0.copyload.i7.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i6.i.i.i.i.i.i.i, align 8, !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2289
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52173f9f87d66349E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E.exit.i.i.i.i.i.i.i" unwind label %bb.ad, !noalias !2294

bb.ad:                                            ; preds = %bb.ac
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229188192f390fb0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.ae, !noalias !2294

bb.ae:                                            ; preds = %bb.ad
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2294
  unreachable

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E.exit.i.i.i.i.i.i.i": ; preds = %bb.ac
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229188192f390fb0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc12.i unwind label %.loopexit126.i, !noalias !2219

.noexc12.i:                                       ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E.exit.i.i.i.i.i.i.i"
  %i.dz = ptrtoint ptr %i.dv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2289
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2294
  unreachable

bb.ag:                                            ; preds = %.noexc12.i, %bb.y, %bb.s
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.do, %bb.s ], [ %i.dz, %.noexc12.i ], [ %.sroa.215.0.copyload.i.i.i.i.i.i.i.i, %bb.y ]
  %.sroa.5.0.ph.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i.i.i.i, %bb.s ], [ %i.du, %.noexc12.i ], [ %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, %bb.y ]
  %.sroa.12.0.ph.sink.i.ph.i.i.i.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i.i.i.i.i, %bb.s ], [ %i.dw, %.noexc12.i ], [ %.sroa.921.i.sroa.0.0.i.i.i.i.i.i.i, %bb.y ]
  %.sroa.17.0.ph.sink.i.ph.i.i.i.i.i.i = phi i64 [ %.sroa.17.0.ph.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.7.0.copyload.i7.i.i.i.i.i.i.i, %.noexc12.i ], [ %.sroa.921.i.sroa.5.0.i.i.i.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2256
  %i.eb = inttoptr i64 %.sroa.5.0.ph.i.i.i.i.i.i to ptr
  %i.ec = inttoptr i64 %.sroa.12.0.ph.sink.i.ph.i.i.i.i.i.i to ptr
  br label %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.thread.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2256
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2295
  store i64 %.sroa.13.sroa.0.0.copyload35.i.i.i.i.i.i.i, ptr %i.aa, align 8, !noalias !2295
  store i64 %.sroa.13.sroa.7.0.copyload37.i.i.i.i.i.i.i, ptr %.sroa.4171.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295
  store i64 %.sroa.7.0.copyload.i11.i.i.i.i.i.i.i, ptr %.sroa.5172.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2312
  store ptr %.sroa.654.0.copyload.i.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !2312
  store i64 %.sroa.755.0.copyload.i.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !2312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2315
  invoke void @"_ZN77_$LT$nom..multi..Many0$LT$F$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h7bebacee792a4dfaE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dv, i64 noundef %i.dw)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i, !noalias !2320

.noexc.i.i.i.i.i:                                 ; preds = %bb.ah
  %i.ed = load i64, ptr %i.n, align 8, !range !1313, !noalias !2315, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ed, 3
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %.noexc.i.i.i.i.i
  %i.ee = load ptr, ptr %i.bt, align 8, !noalias !2315, !nonnull !3, !align !221, !noundef !3 ; 3 uses
  %i.ef = load i64, ptr %i.bu, align 8, !noalias !2315, !noundef !3
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.dv to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 6 uses
  %i.ej = icmp eq ptr %i.ee, %i.dv
  br i1 %i.ej, label %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ei, %i.dw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %.split.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aj
  %i.ek = icmp eq i64 %i.ei, %i.dw
  br i1 %i.ek, label %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i", label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ei
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2321, !noalias !2326, !noundef !3
  %i.en = icmp sgt i8 %i.em, -65
  br i1 %i.en, label %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dv, i64 noundef %i.dw, i64 noundef 0, i64 noundef %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #39
          to label %.noexc52.i.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !2320

.noexc52.i.i.i.i.i:                               ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %.noexc.i.i.i.i.i
  %.sroa.9.8.copyload.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !2328
  %.sroa.12.8.copyload.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !noalias !2328
  %.sroa.15.8.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.15.8..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2312
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52173f9f87d66349E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E.exit.i.i.i.i.i" unwind label %bb.an, !noalias !2329

bb.an:                                            ; preds = %bb.am
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229188192f390fb0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.i unwind label %bb.ao, !noalias !2329

bb.ao:                                            ; preds = %bb.an
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2329
  unreachable

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E.exit.i.i.i.i.i": ; preds = %bb.am
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229188192f390fb0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc13.i unwind label %.loopexit126.i, !noalias !2219

.noexc13.i:                                       ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E.exit.i.i.i.i.i"
  %i.eq = inttoptr i64 %i.ed to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2295
  br label %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.thread.i.i.i.i.i"

.loopexit.i:                                      ; preds = %bb.ah
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.al
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$GT$17h79fb5c441e88a7f0E"(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #40
          to label %.body.i unwind label %bb.aq, !noalias !2329

bb.aq:                                            ; preds = %bb.ap
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2329
  unreachable

"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i": ; preds = %bb.ak, %.split.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2312
  %.sroa.0178.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !2295 ; 2 uses
  %.sroa.4179.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4171.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295 ; 2 uses
  %.sroa.5180.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5172.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2295 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2295
  %i.es = icmp eq i64 %.sroa.0178.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %i.es, label %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.thread.i.i.i.i.i", label %bb.ar

"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.thread.i.i.i.i.i": ; preds = %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i", %.noexc13.i, %bb.ag
  %.sroa.11102.0222.i.i.i.i.i = phi ptr [ %.sroa.4179.0.copyload.i.i.i.i.i, %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i" ], [ %i.eq, %.noexc13.i ], [ %i.eb, %bb.ag ]
  %.sroa.15104.0221.i.i.i.i.i = phi i64 [ %.sroa.5180.0.copyload.i.i.i.i.i, %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i" ], [ %.sroa.9.8.copyload.i.i.i.i.i.i, %.noexc13.i ], [ %.sroa.10.0.ph.i.i.i.i.i.i, %bb.ag ]
  %.sroa.17.0220.i.i.i.i.i = phi ptr [ %i.dv, %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i" ], [ %.sroa.12.8.copyload.i.i.i.i.i.i, %.noexc13.i ], [ %i.ec, %bb.ag ]
  %.sroa.19.0219.i.i.i.i.i = phi i64 [ %i.ei, %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i" ], [ %.sroa.15.8.copyload.i.i.i.i.i.i, %.noexc13.i ], [ %.sroa.17.0.ph.sink.i.ph.i.i.i.i.i.i, %bb.ag ]
  %i.et = ptrtoint ptr %.sroa.11102.0222.i.i.i.i.i to i64
  %i.eu = ptrtoint ptr %.sroa.17.0220.i.i.i.i.i to i64
  %i.ev = inttoptr i64 %.sroa.15104.0221.i.i.i.i.i to ptr
  br label %"_ZN89_$LT$nom..sequence..Terminated$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17hed6d61bbee623f36E.exit.thread.i.i.i.i.i"

bb.ar:                                            ; preds = %"_ZN82_$LT$nom..internal..And$LT$F$C$G$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h6eb3e79e765d9380E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2330
  store i64 %.sroa.0178.0.copyload.i.i.i.i.i, ptr %i.ab, align 8, !noalias !2330
  store ptr %.sroa.4179.0.copyload.i.i.i.i.i, ptr %.sroa.231.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2330
  store i64 %.sroa.5180.0.copyload.i.i.i.i.i, ptr %.sroa.231.i.sroa.4.0..sroa.231.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !2330
  store ptr %i.dv, ptr %.sroa.231.i.sroa.5.0..sroa.231.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !2330
  store i64 %i.ei, ptr %.sroa.231.i.sroa.6.0..sroa.231.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !2330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2331
  store ptr @373, ptr %i.m, align 8, !noalias !2331
  store i64 7, ptr %.sroa.4.0..sroa_idx.i.i53.i.i.i.i.i, align 8, !noalias !2331
  store ptr %.sroa.654.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i54.i.i.i.i.i, align 8, !noalias !2331
  store i64 %.sroa.755.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i55.i.i.i.i.i, align 8, !noalias !2331
  store ptr @77, ptr %.sroa.7.0..sroa_idx.i.i56.i.i.i.i.i, align 8, !noalias !2331
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2338
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17haa3a972d962beaf8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ee, i64 noundef %i.ef)
          to label %.noexc58.i.i.i.i.i unwind label %bb.ax, !noalias !2320

.noexc58.i.i.i.i.i:                               ; preds = %bb.ar
  %i.ew = load i64, ptr %i.l, align 8, !range !5, !noalias !2338, !noundef !3
  %i.ex = trunc nuw i64 %i.ew to i1
  %.sroa.073.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !2338 ; 2 uses
  %.sroa.574.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.574.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338 ; 2 uses
  br i1 %i.ex, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc58.i.i.i.i.i
  %.sroa.675.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.675.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338
  %.sroa.776.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.776.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2338
  br label %"_ZN4anki14card_rendering6parser8tag_node14closing_parser28_$u7b$$u7b$closure$u7d$$u7d$17h8b5045fd8a0e38cbE.exit.i.i.i.i.i.i"

bb.at:                                            ; preds = %.noexc58.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2338
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17haa3a972d962beaf8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i54.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.073.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.574.0.copyload.i.i.i.i.i.i.i.i.i)
          to label %.noexc59.i.i.i.i.i unwind label %bb.ax, !noalias !2320

.noexc59.i.i.i.i.i:                               ; preds = %bb.at
  %i.ey = load i64, ptr %i.k, align 8, !range !5, !noalias !2338, !noundef !3
  %i.ez = trunc nuw i64 %i.ey to i1
  %.sroa.089.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !noalias !2338 ; 2 uses
  %.sroa.590.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.590.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338 ; 2 uses
  br i1 %i.ez, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc59.i.i.i.i.i
  %.sroa.691.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.691.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338
  %.sroa.792.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.792.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2338
  br label %"_ZN4anki14card_rendering6parser8tag_node14closing_parser28_$u7b$$u7b$closure$u7d$$u7d$17h8b5045fd8a0e38cbE.exit.i.i.i.i.i.i"

bb.av:                                            ; preds = %.noexc59.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2338
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17haa3a972d962beaf8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i56.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.089.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.590.0.copyload.i.i.i.i.i.i.i.i.i)
          to label %.noexc60.i.i.i.i.i unwind label %bb.ax, !noalias !2320

.noexc60.i.i.i.i.i:                               ; preds = %bb.av
  %i.fa = load i64, ptr %i.j, align 8, !range !5, !noalias !2338, !noundef !3
  %i.fb = trunc nuw i64 %i.fa to i1
  %.sroa.0105.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !2338 ; 2 uses
  %.sroa.5106.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5106.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338 ; 2 uses
  br i1 %i.fb, label %bb.aw, label %"_ZN4anki14card_rendering6parser8tag_node14closing_parser28_$u7b$$u7b$closure$u7d$$u7d$17h8b5045fd8a0e38cbE.exit.thread.i.i.i.i.i.i"

bb.aw:                                            ; preds = %.noexc60.i.i.i.i.i
  %.sroa.6107.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6107.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338
  %.sroa.7108.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7108.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2338
  br label %"_ZN4anki14card_rendering6parser8tag_node14closing_parser28_$u7b$$u7b$closure$u7d$$u7d$17h8b5045fd8a0e38cbE.exit.i.i.i.i.i.i"

"_ZN4anki14card_rendering6parser8tag_node14closing_parser28_$u7b$$u7b$closure$u7d$$u7d$17h8b5045fd8a0e38cbE.exit.thread.i.i.i.i.i.i": ; preds = %.noexc60.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2338
  %i.fc = ptrtoint ptr %.sroa.0105.0.copyload.i.i.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2331
  br label %"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h583a5c1028e4c4e1E.exit.thread.i.i.i.i.i"

"_ZN4anki14card_rendering6parser8tag_node14closing_parser28_$u7b$$u7b$closure$u7d$$u7d$17h8b5045fd8a0e38cbE.exit.i.i.i.i.i.i": ; preds = %bb.aw, %bb.au, %bb.as
  %.sroa.21.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.7108.0.copyload.i.i.i.i.i.i.i.i.i, %bb.aw ], [ %.sroa.792.0.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.776.0.copyload.i.i.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.18.0.ph.i.i.i.i.i.i.i = phi ptr [ %.sroa.6107.0.copyload.i.i.i.i.i.i.i.i.i, %bb.aw ], [ %.sroa.691.0.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.675.0.copyload.i.i.i.i.i.i.i.i.i, %bb.as ]
  %.sroa.13.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.5106.0.copyload.i.i.i.i.i.i.i.i.i, %bb.aw ], [ %.sroa.590.0.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.574.0.copyload.i.i.i.i.i.i.i.i.i, %bb.as ] ; 2 uses
  %.sroa.7.0.ph.in.i.i.i.i.i.i.i = phi ptr [ %.sroa.0105.0.copyload.i.i.i.i.i.i.i.i.i, %bb.aw ], [ %.sroa.089.0.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.073.0.copyload.i.i.i.i.i.i.i.i.i, %bb.as ] ; 2 uses
  %i.fd = ptrtoint ptr %.sroa.18.0.ph.i.i.i.i.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2331
  %cond.i.i.i.i.i.i = icmp eq ptr %.sroa.7.0.ph.in.i.i.i.i.i.i.i, inttoptr (i64 3 to ptr)
end_hunk_1
