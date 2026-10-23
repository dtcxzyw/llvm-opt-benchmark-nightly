Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN5insta7content4yaml8vendored6parser15Parser$LT$T$GT$10parse_node17h5f3a0a7485d2bd12E":bb.a
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.698.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 6, ptr %i.ed, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.496.0..sroa_idx, align 8
  br label %.critedge

bb.bo:                                            ; preds = %bb.bi
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 9, ptr %i.ef, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4103.0..sroa_idx, align 8
  br label %.critedge

bb.bp:                                            ; preds = %bb.bl
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 8, ptr %i.eh, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.466.0..sroa_idx, align 8
  br label %.critedge

.thread299:                                       ; preds = %.invoke318, %bb.by, %bb.bs
  %lpad.thr_comm297 = landingpad { ptr, i32 }
          cleanup
  br label %.thread291

bb.bq:                                            ; preds = %bb.bm
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ej = add i64 %i.ea, -1                       ; 3 uses
  store i64 %i.ej, ptr %i.dz, align 8, !alias.scope !10795
  %i.ek = load i64, ptr %i.ei, align 8, !range !20, !alias.scope !10795, !noundef !17
  %i.el = icmp ult i64 %i.ej, %i.ek
  tail call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !10795, !nonnull !17, !noundef !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ej
  %i.ep = load i8, ptr %i.eo, align 1, !range !48, !noalias !10795, !noundef !17
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 %i.ep, ptr %i.eq, align 8, !alias.scope !10795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %.sroa.0184.0.copyload = load i8, ptr %i.er, align 8 ; 3 uses
  store i8 21, ptr %i.er, align 8
  %.not213 = icmp eq i8 %.sroa.0184.0.copyload, 21
  br i1 %.not213, label %bb.bs, label %bb.br, !prof !22

bb.br:                                            ; preds = %bb.bq
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 377
  store i8 %.sroa.0184.0.copyload, ptr %i.c, align 8
  %.sroa.5186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5186.0..sroa_idx187, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5186.0..sroa_idx, i64 79, i1 false)
  %i.es = icmp eq i8 %.sroa.0184.0.copyload, 20
  br i1 %i.es, label %bb.bu, label %bb.bt, !prof !23

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @398, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #54
          to label %bb.l unwind label %.thread299

bb.bt:                                            ; preds = %bb.br
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #54
          to label %bb.l unwind label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.777.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  %i.eu = load i8, ptr %.sroa.5186.0..sroa_idx187, align 1, !range !37, !noundef !17
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.069, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  %.sroa.069.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.069, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.069.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.069, i64 80, i1 false)
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.eu, ptr %.sroa.575.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit222"

bb.bv:                                            ; preds = %bb.bt
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$insta..content..yaml..vendored..scanner..TokenType$GT$17hefa11f1e5a344395E"(ptr noalias noundef align 8 dereferenceable(56) %i.c) #55
  br label %.thread291

bb.bw:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10796)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !10796, !noundef !17 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.invoke318, label %bb.cb, !prof !22

bb.bx:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10797
  %i.fa = tail call noundef dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, 17) 1) #51, !noalias !10797 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 56, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc232 unwind label %.thread299

.noexc232:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.fa, ptr noundef nonnull readonly align 1 dereferenceable(56) @408, i64 56, i1 false), !noalias !10798
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6254.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 56, ptr %i.fc, align 8
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fa, ptr %.sroa.4252.0..sroa_idx, align 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 56, ptr %.sroa.5253.0..sroa_idx, align 8
  store i64 -9223372036854775798, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.bz, %bb.bn, %bb.bo, %bb.bj, %bb.bk, %bb.bp
  %i.fd = load i8, ptr %i.q, align 8, !range !48, !alias.scope !10799, !noundef !17
  %i.fe = icmp eq i8 %i.fd, 21
  br i1 %i.fe, label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit222", label %bb.ca

bb.ca:                                            ; preds = %.critedge
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$insta..content..yaml..vendored..scanner..TokenType$GT$17hefa11f1e5a344395E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.q)
  br label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit222"

bb.cb:                                            ; preds = %bb.bw
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.fg = add i64 %i.ey, -1                       ; 3 uses
  store i64 %i.fg, ptr %i.ex, align 8, !alias.scope !10796
  %i.fh = load i64, ptr %i.ff, align 8, !range !20, !alias.scope !10796, !noundef !17
  %i.fi = icmp ult i64 %i.fg, %i.fh
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !10796, !nonnull !17, !noundef !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fg
  %i.fm = load i8, ptr %i.fl, align 1, !range !48, !noalias !10796, !noundef !17
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 %i.fm, ptr %i.fn, align 8, !alias.scope !10796
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6247.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4245.0..sroa_idx, align 8
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5246.0..sroa_idx, align 8
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %.sroa.7248.0..sroa_idx, align 8
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.8249.0..sroa_idx, align 8
  br label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit222"

"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit222": ; preds = %bb.cb, %bb.bu, %.critedge, %bb.ca, %bb.be, %bb.bd, %bb.aa, %bb.z, %bb.an, %bb.y, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit.sink.split": ; preds = %.thread, %.thread291
  %.pn214.pn.ph = phi { ptr, i32 } [ %.pn214294, %.thread291 ], [ %.pn209, %.thread ]
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$insta..content..yaml..vendored..scanner..TokenType$GT$17hefa11f1e5a344395E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.q)
  br label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit"

"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit": ; preds = %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit.sink.split", %.thread291, %.thread
  %.pn214.pn = phi { ptr, i32 } [ %.pn209, %.thread ], [ %.pn214294, %.thread291 ], [ %.pn214.pn.ph, %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit.sink.split" ]
  resume { ptr, i32 } %.pn214.pn

.thread291:                                       ; preds = %bb.bv, %.thread299
  %.pn214294 = phi { ptr, i32 } [ %lpad.thr_comm297, %.thread299 ], [ %i.ew, %bb.bv ] ; 2 uses
  %i.fo = load i8, ptr %i.q, align 8, !range !48, !alias.scope !10800, !noundef !17
  %i.fp = icmp eq i8 %i.fo, 21
  br i1 %i.fp, label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit", label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$insta..content..yaml..vendored..scanner..TokenType$GT$$GT$17h2a6cd0af01bad37dE.exit.sink.split"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5insta7content4yaml8vendored6parser15Parser$LT$T$GT$10peek_token17h4289ab7ac21fc77cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [80 x i8], align 8                ; 17 uses
  %.sroa.914.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %.sroa.30.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 12 uses
  %i.j = alloca [80 x i8], align 8                ; 6 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [56 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 4 uses
  %i.q = alloca [56 x i8], align 8                ; 4 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 6 uses
  %i.t = alloca [56 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [48 x i8], align 8                ; 31 uses
  %.sroa.10.i.i.i = alloca [24 x i8], align 8     ; 10 uses
  %.sroa.4.i.sroa.0.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.4.i.sroa.7.i.i = alloca [24 x i8], align 1 ; 6 uses
  %.sroa.4.i.sroa.8.i.i = alloca [24 x i8], align 1 ; 6 uses
  %.sroa.7.i.i = alloca [7 x i8], align 1         ; 5 uses
  %.sroa.13.i.i = alloca [24 x i8], align 8       ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7.i = alloca [7 x i8], align 1           ; 5 uses
  %.sroa.11.i = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.12.i = alloca [24 x i8], align 8         ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 4 uses
  %.sroa.68.sroa.0 = alloca [7 x i8], align 1     ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !48, !noundef !17
  %.not = icmp eq i8 %i.ac, 21
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.kd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11347)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11348)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !30, !alias.scope !11347, !noundef !17
  %.not.i.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  br label %bb.jw

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11349)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.8.i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 225 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !range !21, !alias.scope !11350, !noundef !17
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$10next_token17hd7247b80a7564d18E.exit.thread24.i.i", label %bb.e

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$10next_token17hd7247b80a7564d18E.exit.thread24.i.i": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.8.i.i)
  br label %"_ZN116_$LT$insta..content..yaml..vendored..scanner..Scanner$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7e798194217aaef3E.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 227 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !21, !alias.scope !11350, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.jq, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11351)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 35 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 29 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 36 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 61 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 85 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 17 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 34 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 22 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 226 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 30 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 228 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5205.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6206.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.630.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.28.40..sroa.630.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5208.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6209.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.643.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.28.40..sroa.643.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.520.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 4 uses
  %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.419.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.419.sroa.7.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.419.sroa.8.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.419.sroa.9.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.25.32..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.28.32..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.633.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.20.20..sroa.633.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.21.20..sroa.633.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.21.i.sroa.7.0..sroa.21.20..sroa.633.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.21.i.sroa.8.0..sroa.21.20..sroa.633.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.20.20..sroa.646.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.21.20..sroa.646.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.21.i.sroa.7.0..sroa.21.20..sroa.646.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.21.i.sroa.8.0..sroa.21.20..sroa.646.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.914.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.8.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.262.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 9 uses
  %.sroa.363.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.sroa.464.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 7 uses
  %.sroa.565.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.666.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.472.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4194.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5195.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7196.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5191.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8192.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  br label %bb.g

bb.g:                                             ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$16fetch_next_token17h8bb6e9764c080431E.exit.thread.i.i.i.i", %bb.f
  %i.bn = load i64, ptr %i.am, align 8, !alias.scope !11352, !noundef !17
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.loopexit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !11353)
  %i.bp = load ptr, ptr %i.an, align 8, !alias.scope !11354, !nonnull !17, !noundef !17 ; 2 uses
  %i.bq = load i64, ptr %i.ao, align 8, !alias.scope !11354, !noundef !17 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.bq, 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.i.i.i
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %i.bt = load i64, ptr %i.aq, align 8, !alias.scope !11354
  %i.bu = load i64, ptr %i.ap, align 8, !alias.scope !11354
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.sroa.01.02.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.bv, %bb.j ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i.i.i.i.i, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i.i.i.i.i, i64 32 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !21, !noalias !11355, !noundef !17
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.l, %bb.i
  %i.bz = icmp eq ptr %i.bv, %i.br
  br i1 %i.bz, label %.loopexit35.i.i.i.i, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i.i.i.i.i, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !11355, !noundef !17
  %i.cc = icmp ult i64 %i.cb, %i.bt
  br i1 %i.cc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i.i.i.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !11355, !noundef !17
  %i.cf = add i64 %i.ce, 1024
  %i.cg = icmp ult i64 %i.cf, %i.bu
  br i1 %i.cg, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i.i.i.i.i, i64 33
  %i.ci = load i8, ptr %i.ch, align 1, !range !21, !noalias !11355, !noundef !17
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.bw, align 8, !noalias !11355
  br label %bb.j

bb.o:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11356
  %i.ck = call noundef dereferenceable_or_null(21) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 21, i64 noundef range(i64 1, 17) 1) #51, !noalias !11356 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.p, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$17fetch_more_tokens17h140515eb5e4d47b8E.exit.thread31.i.i.i"

bb.p:                                             ; preds = %bb.o
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !11357
  unreachable

.loopexit.i.i.i.i:                                ; preds = %bb.jp, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11358
  call void @llvm.experimental.noalias.scope.decl(metadata !11359)
  call void @llvm.experimental.noalias.scope.decl(metadata !11360)
  %i.cm = load i64, ptr %i.at, align 8, !alias.scope !11361, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11362)
  call void @llvm.experimental.noalias.scope.decl(metadata !11363)
  %i.cn = load ptr, ptr %i.au, align 8, !alias.scope !11364, !nonnull !17, !noundef !17 ; 6 uses
  %i.co = load ptr, ptr %i.av, align 8, !alias.scope !11364, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 3 uses
  store ptr %i.cp, ptr %i.au, align 8, !alias.scope !11364
  %i.cq = load i8, ptr %i.cn, align 1, !noalias !11365, !noundef !17 ; 5 uses
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.q
  %i.cs = and i8 %i.cq, 31
  %i.ct = zext nneg i8 %i.cs to i32               ; 3 uses
  %i.cu = icmp ne ptr %i.cp, %i.co
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 2 ; 3 uses
  store ptr %i.cv, ptr %i.au, align 8, !alias.scope !11366
  %i.cw = load i8, ptr %i.cp, align 1, !noalias !11365, !noundef !17
  %i.cx = shl nuw nsw i32 %i.ct, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32               ; 2 uses
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = icmp samesign ugt i8 %i.cq, -33
  br i1 %i.db, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

bb.r:                                             ; preds = %bb.q
  %i.dc = zext nneg i8 %i.cq to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i"
  %i.dd = icmp ne ptr %i.cv, %i.co
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 3 ; 3 uses
  store ptr %i.de, ptr %i.au, align 8, !alias.scope !11367
  %i.df = load i8, ptr %i.cv, align 1, !noalias !11365, !noundef !17
  %i.dg = shl nuw nsw i32 %i.cz, 6
  %i.dh = and i8 %i.df, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di            ; 2 uses
  %i.dk = shl nuw nsw i32 %i.ct, 12
  %i.dl = or disjoint i32 %i.dj, %i.dk
  %i.dm = icmp samesign ugt i8 %i.cq, -17
  br i1 %i.dm, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i"
  %i.dn = icmp ne ptr %i.de, %i.co
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store ptr %i.do, ptr %i.au, align 8, !alias.scope !11368
  %i.dp = load i8, ptr %i.de, align 1, !noalias !11365, !noundef !17
  %i.dq = shl nuw nsw i32 %i.ct, 18
  %i.dr = and i32 %i.dq, 1835008
  %i.ds = shl nuw nsw i32 %i.dj, 6
  %i.dt = and i8 %i.dp, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = or disjoint i32 %i.dv, %i.dr
  %.fr.i.i.i.i.i.i = freeze i32 %i.dw             ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 1114112
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i", %bb.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i"
  %i.dx = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i" ], [ %.fr.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.dl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i" ], [ %i.da, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i" ], [ %i.dc, %bb.r ]
  %i.dy = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11369, !noundef !17 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.s, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i.i.i.i.i.i"

bb.s:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h7e45e2cfd1818014E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565), !noalias !11370
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11369
  %.pre1.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11369
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i.i.i.i.i.i": ; preds = %bb.s, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"
  %i.ea = phi i64 [ %.pre1.i.i.i.i.i.i.i, %bb.s ], [ %i.dy, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.eb = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.s ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.at, align 8, !alias.scope !11369
  %i.ed = load i64, ptr %i.aw, align 8, !alias.scope !11369, !noundef !17
  %i.ee = add i64 %i.ed, %i.eb                    ; 2 uses
  %.not.i7.i.i.i.i.i.i = icmp ult i64 %i.ee, %i.ea
  %i.ef = select i1 %.not.i7.i.i.i.i.i.i, i64 0, i64 %i.ea
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.ee, %i.ef
  %i.eg = load ptr, ptr %i.ax, align 8, !alias.scope !11369, !nonnull !17, !noundef !17
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.sroa.0.0.i.i.i.i.i.i.i
  store i32 %i.dx, ptr %i.eh, align 4, !noalias !11370
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i.i.i.i.i.i", %.loopexit.i.i.i.i
  %i.ei = load i8, ptr %i.ay, align 8, !range !21, !alias.scope !11371, !noundef !17
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %.preheader.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !11372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !11370
  store i64 -1, ptr %i.bb, align 8, !alias.scope !11374
  store i8 1, ptr %i.ay, align 8, !alias.scope !11374
  store i8 1, ptr %i.az, align 2, !alias.scope !11374
end_hunk_0
begin_hunk_1_@"_ZN5insta7content4yaml8vendored6parser15Parser$LT$T$GT$10peek_token17h4289ab7ac21fc77cE":bb.a
  %i.zj = zext nneg i8 %i.zi to i32               ; 2 uses
  %i.zk = or disjoint i32 %i.zh, %i.zj
  %i.zl = icmp samesign ugt i8 %i.za, -33
  br i1 %i.zl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i79.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i"

bb.eb:                                            ; preds = %bb.ea
  %i.zm = zext nneg i8 %i.za to i32
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i79.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i71.i.i.i.i.i.i.i.i"
  %i.zn = icmp ne ptr %i.zf, %i.yy
  call void @llvm.assume(i1 %i.zn)
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yx, i64 3 ; 3 uses
  store ptr %i.zo, ptr %i.au, align 8, !alias.scope !11529
  %i.zp = load i8, ptr %i.zf, align 1, !noalias !11527, !noundef !17
  %i.zq = shl nuw nsw i32 %i.zj, 6
  %i.zr = and i8 %i.zp, 63
  %i.zs = zext nneg i8 %i.zr to i32
  %i.zt = or disjoint i32 %i.zq, %i.zs            ; 2 uses
  %i.zu = shl nuw nsw i32 %i.zd, 12
  %i.zv = or disjoint i32 %i.zt, %i.zu
  %i.zw = icmp samesign ugt i8 %i.za, -17
  br i1 %i.zw, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i80.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i80.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i79.i.i.i.i.i.i.i.i"
  %i.zx = icmp ne ptr %i.zo, %i.yy
  call void @llvm.assume(i1 %i.zx)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  store ptr %i.zy, ptr %i.au, align 8, !alias.scope !11530
  %i.zz = load i8, ptr %i.zo, align 1, !noalias !11527, !noundef !17
  %i.aaa = shl nuw nsw i32 %i.zd, 18
  %i.aab = and i32 %i.aaa, 1835008
  %i.aac = shl nuw nsw i32 %i.zt, 6
  %i.aad = and i8 %i.zz, 63
  %i.aae = zext nneg i8 %i.aad to i32
  %i.aaf = or disjoint i32 %i.aac, %i.aae
  %i.aag = or disjoint i32 %i.aaf, %i.aab
  %.fr.i81.i.i.i.i.i.i.i.i = freeze i32 %i.aag    ; 2 uses
  %.not6.i82.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i81.i.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i82.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i83.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i83.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i80.i.i.i.i.i.i.i.i", %.lr.ph.i68.i.i.i.i.i.i.i.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i83.i.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i80.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i79.i.i.i.i.i.i.i.i", %bb.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i71.i.i.i.i.i.i.i.i"
  %i.aah = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i83.i.i.i.i.i.i.i.i" ], [ %.fr.i81.i.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i80.i.i.i.i.i.i.i.i" ], [ %i.zv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i79.i.i.i.i.i.i.i.i" ], [ %i.zk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i71.i.i.i.i.i.i.i.i" ], [ %i.zm, %bb.eb ]
  store i64 %i.xb, ptr %i.at, align 8, !alias.scope !11531
  %.not.i7.i74.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.01.0.i57.i.i.i.i.i.i.i.i, %i.xd
  %i.aai = select i1 %.not.i7.i74.i.i.i.i.i.i.i.i, i64 0, i64 %i.xd
  %.sroa.0.0.i.i75.i.i.i.i.i.i.i.i = sub nuw i64 %.sroa.01.0.i57.i.i.i.i.i.i.i.i, %i.aai
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.sroa.0.0.i.i75.i.i.i.i.i.i.i.i
  store i32 %i.aah, ptr %i.aaj, align 4, !noalias !11511
  %.pre92.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11510
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit84.i.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit84.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i", %bb.dz
  %i.aak = phi i64 [ %.pre92.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i73.i.i.i.i.i.i.i.i" ], [ %i.ym, %bb.dz ] ; 2 uses
  %.not.i91.i.i.i.i.i.i.i = icmp eq i64 %i.aak, 0
  br i1 %.not.i91.i.i.i.i.i.i.i, label %._crit_edge.i148.invoke.i.i.i.i.i.i.i, label %bb.dk

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp476.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.fp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit114.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp789, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit114.i.i.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i.i.i, %bb.fp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp476.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aal = icmp eq ptr %.sroa.7287.8.copyload289.i.i.i.i.i.i.i, null
  br i1 %i.aal, label %common.resume.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.body.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ww, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11532
  br label %common.resume.i.i.i.i.i

.loopexit.split-lp476.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dl, %bb.du, %bb.em, %._crit_edge.i148.invoke.i.i.i.i.i.i.i, %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.ed:                                            ; preds = %bb.dv, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i, %bb.dm
  %.sroa.21.i.sroa.0.0.i.i.i.i.i.i = phi i64 [ %.sroa.21.i.sroa.0.0.copyload68.i.i.i.i.i.i, %bb.dv ], [ %.sroa.21.i.sroa.0.0.copyload67.i.i.i.i.i.i, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.21.i.sroa.0.0.copyload.i.i.i.i.i.i, %bb.dm ]
  %.sroa.21.i.sroa.7.0.i.i.i.i.i.i = phi ptr [ %.sroa.21.i.sroa.7.0.copyload71.i.i.i.i.i.i, %bb.dv ], [ %.sroa.21.i.sroa.7.0.copyload70.i.i.i.i.i.i, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.21.i.sroa.7.0.copyload.i.i.i.i.i.i, %bb.dm ]
  %.sroa.21.i.sroa.8.0.i.i.i.i.i.i = phi i64 [ %.sroa.21.i.sroa.8.0.copyload74.i.i.i.i.i.i, %bb.dv ], [ %.sroa.21.i.sroa.8.0.copyload73.i.i.i.i.i.i, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.21.i.sroa.8.0.copyload.i.i.i.i.i.i, %bb.dm ]
  %.sroa.10.sroa.9.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.sroa.9.0.extract.shift322.i.i.i.i.i.i.i, %bb.dv ], [ 0, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.10.sroa.9.0.extract.shift.i.i.i.i.i.i.i, %bb.dm ]
  %.sroa.10.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.yi, %bb.dv ], [ 77, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %i.xi, %bb.dm ]
  %.sroa.15.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.0.insert.insert311.i.i.i.i.i.i.i, %bb.dv ], [ %i.xu, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.insert.insert.i.i.i.i.i.i.i, %bb.dm ]
  %.sroa.20.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.20.20.copyload307.i.i.i.i.i.i.i, %bb.dv ], [ 77, %_ZN5insta7content4yaml8vendored7scanner9ScanError3new17hed9912b4a9a6eb40E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.20.20.copyload.i.i.i.i.i.i.i, %bb.dm ]
  %.sroa.10.sroa.0.0.insert.ext319.i.i.i.i.i.i.i = and i64 %.sroa.10.sroa.0.0.ph.i.i.i.i.i.i.i, 4294967295
  %.sroa.10.sroa.0.0.insert.insert321.i.i.i.i.i.i.i = or disjoint i64 %.sroa.10.sroa.0.0.insert.ext319.i.i.i.i.i.i.i, %.sroa.10.sroa.9.0.ph.i.i.i.i.i.i.i
  br label %bb.ei

bb.ee:                                            ; preds = %.noexc115.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.520.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !11508
  %.sroa.10.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i32 %i.yj to i64 ; 3 uses
  store i8 2, ptr %i.h, align 8, !noalias !11508
  store i32 %i.xj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !11508
  store i64 %.sroa.10.sroa.0.0.insert.ext.i.i.i.i.i.i.i, ptr %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11508
  %.pre.i.i140.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11533 ; 2 uses
  %.not.i116.i.i.i.i.i.i.i = icmp eq i64 %.pre.i.i140.i.i.i.i.i, 0
  br i1 %.not.i116.i.i.i.i.i.i.i, label %.lr.ph.i117.i.i.i.i.i.i.i, label %.lr.ph497.i.i.i.i.i.i.i

.lr.ph.i117.i.i.i.i.i.i.i:                        ; preds = %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !11534)
  call void @llvm.experimental.noalias.scope.decl(metadata !11535)
  %i.aam = load ptr, ptr %i.au, align 8, !alias.scope !11536, !nonnull !17, !noundef !17 ; 6 uses
  %i.aan = load ptr, ptr %i.av, align 8, !alias.scope !11536, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i118.i.i.i.i.i.i.i = icmp eq ptr %i.aam, %i.aan
  br i1 %.not.i.i118.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i.i.i", label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i117.i.i.i.i.i.i.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 1 ; 3 uses
  store ptr %i.aao, ptr %i.au, align 8, !alias.scope !11536
  %i.aap = load i8, ptr %i.aam, align 1, !noalias !11537, !noundef !17 ; 5 uses
  %i.aaq = icmp sgt i8 %i.aap, -1
  br i1 %i.aaq, label %bb.eg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ef
  %i.aar = and i8 %i.aap, 31
  %i.aas = zext nneg i8 %i.aar to i32             ; 3 uses
  %i.aat = icmp ne ptr %i.aao, %i.aan
  call void @llvm.assume(i1 %i.aat)
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aam, i64 2 ; 3 uses
  store ptr %i.aau, ptr %i.au, align 8, !alias.scope !11538
  %i.aav = load i8, ptr %i.aao, align 1, !noalias !11537, !noundef !17
  %i.aaw = shl nuw nsw i32 %i.aas, 6
  %i.aax = and i8 %i.aav, 63
  %i.aay = zext nneg i8 %i.aax to i32             ; 2 uses
  %i.aaz = or disjoint i32 %i.aaw, %i.aay
  %i.aba = icmp samesign ugt i8 %i.aap, -33
  br i1 %i.aba, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"

bb.eg:                                            ; preds = %bb.ef
  %i.abb = zext nneg i8 %i.aap to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.abc = icmp ne ptr %i.aau, %i.aan
  call void @llvm.assume(i1 %i.abc)
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aam, i64 3 ; 3 uses
  store ptr %i.abd, ptr %i.au, align 8, !alias.scope !11539
  %i.abe = load i8, ptr %i.aau, align 1, !noalias !11537, !noundef !17
  %i.abf = shl nuw nsw i32 %i.aay, 6
  %i.abg = and i8 %i.abe, 63
  %i.abh = zext nneg i8 %i.abg to i32
  %i.abi = or disjoint i32 %i.abf, %i.abh         ; 2 uses
  %i.abj = shl nuw nsw i32 %i.aas, 12
  %i.abk = or disjoint i32 %i.abi, %i.abj
  %i.abl = icmp samesign ugt i8 %i.aap, -17
  br i1 %i.abl, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i.i.i"
  %i.abm = icmp ne ptr %i.abd, %i.aan
  call void @llvm.assume(i1 %i.abm)
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aam, i64 4
  store ptr %i.abn, ptr %i.au, align 8, !alias.scope !11540
  %i.abo = load i8, ptr %i.abd, align 1, !noalias !11537, !noundef !17
  %i.abp = shl nuw nsw i32 %i.aas, 18
  %i.abq = and i32 %i.abp, 1835008
  %i.abr = shl nuw nsw i32 %i.abi, 6
  %i.abs = and i8 %i.abo, 63
  %i.abt = zext nneg i8 %i.abs to i32
  %i.abu = or disjoint i32 %i.abr, %i.abt
  %i.abv = or disjoint i32 %i.abu, %i.abq
  %.fr.i.i.i.i.i.i.i.i = freeze i32 %i.abv        ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i117.i.i.i.i.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i.i.i", %bb.eg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.abw = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i.i.i.i.i.i.i.i" ], [ %.fr.i.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i.i" ], [ %i.abk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.aaz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.abb, %bb.eg ]
  %i.abx = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11541, !noundef !17 ; 2 uses
  %i.aby = icmp eq i64 %i.abx, 0
  br i1 %i.aby, label %bb.eh, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i"

bb.eh:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h7e45e2cfd1818014E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %.noexc120.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11466

.noexc120.i.i.i.i.i.i.i:                          ; preds = %bb.eh
  %.pre.i.i119.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11541
  %.pre1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11541
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i": ; preds = %.noexc120.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i"
  %i.abz = phi i64 [ %.pre1.i.i.i.i.i.i.i.i.i, %.noexc120.i.i.i.i.i.i.i ], [ %i.abx, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aca = phi i64 [ %.pre.i.i119.i.i.i.i.i.i.i, %.noexc120.i.i.i.i.i.i.i ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.acb = add i64 %i.aca, 1
  store i64 %i.acb, ptr %i.at, align 8, !alias.scope !11541
  %i.acc = load i64, ptr %i.aw, align 8, !alias.scope !11541, !noundef !17
  %i.acd = add i64 %i.acc, %i.aca                 ; 2 uses
  %.not.i7.i.i.i.i.i.i.i.i = icmp ult i64 %i.acd, %i.abz
  %i.ace = select i1 %.not.i7.i.i.i.i.i.i.i.i, i64 0, i64 %i.abz
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = sub nuw i64 %i.acd, %i.ace
  %i.acf = load ptr, ptr %i.ax, align 8, !alias.scope !11541, !nonnull !17, !noundef !17
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  store i32 %i.abw, ptr %i.acg, align 4, !noalias !11466
  %.pre526.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11542 ; 2 uses
  %.not461496.i.i.i.i.i.i.i = icmp eq i64 %.pre526.i.i.i.i.i.i.i, 0
  br i1 %.not461496.i.i.i.i.i.i.i, label %._crit_edge498.invoke.i.i.i.i.i.i.i, label %.lr.ph497.i.i.i.i.i.i.i

.lr.ph497.i.i.i.i.i.i.i.sink.split:               ; preds = %bb.fw, %bb.fx
  %.sink768 = phi ptr [ inttoptr (i64 1 to ptr), %bb.fx ], [ %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i, %bb.fw ] ; 2 uses
  %.sink.a = phi i64 [ 0, %bb.fx ], [ %.sroa.6209.0.copyload.i.i.i.i.i.i.i.i, %bb.fw ] ; 2 uses
  %.ph766 = phi i64 [ 0, %bb.fx ], [ %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i, %bb.fw ]
  %.ph767 = phi i64 [ %i.ama, %bb.fx ], [ %i.ahk, %bb.fw ]
  store ptr %.sink768, ptr %.sroa.419.sroa.8.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11508
  store i64 %.sink.a, ptr %.sroa.419.sroa.9.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11508
  br label %.lr.ph497.i.i.i.i.i.i.i

.lr.ph497.i.i.i.i.i.i.i:                          ; preds = %.lr.ph497.i.i.i.i.i.i.i.sink.split, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i", %bb.ee
  %i.ach = phi i64 [ undef, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i" ], [ undef, %bb.ee ], [ %.sink.a, %.lr.ph497.i.i.i.i.i.i.i.sink.split ]
  %i.aci = phi ptr [ undef, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i" ], [ undef, %bb.ee ], [ %.sink768, %.lr.ph497.i.i.i.i.i.i.i.sink.split ]
  %i.acj = phi i64 [ %.sroa.10.sroa.0.0.insert.ext.i.i.i.i.i.i.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.sroa.0.0.insert.ext.i.i.i.i.i.i.i, %bb.ee ], [ %.ph766, %.lr.ph497.i.i.i.i.i.i.i.sink.split ]
  %i.ack = phi i8 [ 2, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i" ], [ 2, %bb.ee ], [ 3, %.lr.ph497.i.i.i.i.i.i.i.sink.split ]
  %i.acl = phi i64 [ %.pre526.i.i.i.i.i.i.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit.i.i.i.i.i.i.i" ], [ %.pre.i.i140.i.i.i.i.i, %bb.ee ], [ %.ph767, %.lr.ph497.i.i.i.i.i.i.i.sink.split ]
  br label %bb.ge

bb.ei:                                            ; preds = %bb.gn, %bb.fi, %.critedge.i.i.i.i.i.i.i.i, %bb.ex, %bb.ew, %bb.en, %bb.ed
  %.sroa.29.0.i.i.i.i.i.i = phi i64 [ %.sroa.29.32.copyload.i.i.i.i.i.i, %bb.gn ], [ %.sroa.21.i.sroa.8.0.i.i.i.i.i.i, %bb.ed ], [ %.sroa.28.40.copyload.i.i.i.i.i.i.i, %bb.en ], [ %.sroa.28.40.copyload333.i.i.i.i.i.i.i, %bb.ex ], [ %.sroa.28.40.copyload333.i.i.i.i.i.i.i, %bb.ew ], [ %.sroa.28.32.copyload.i.i.i.i.i.i.i, %bb.fi ], [ %.sroa.28.32.copyload.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i = phi ptr [ %.sroa.27.32.copyload.i.i.i.i.i.i, %bb.gn ], [ %.sroa.21.i.sroa.7.0.i.i.i.i.i.i, %bb.ed ], [ %.sroa.25.40.copyload.i.i.i.i.i.i.i, %bb.en ], [ %.sroa.25.40.copyload332.i.i.i.i.i.i.i, %bb.ex ], [ %.sroa.25.40.copyload332.i.i.i.i.i.i.i, %bb.ew ], [ %.sroa.25.32.copyload.i.i.i.i.i.i.i, %bb.fi ], [ %.sroa.25.32.copyload.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.23.0.i.i.i.i.i.i = phi i64 [ %.sroa.23.32.copyload.i.i.i.i.i.i, %bb.gn ], [ %.sroa.21.i.sroa.0.0.i.i.i.i.i.i, %bb.ed ], [ %.sroa.6206.0.copyload.i.i.i.i.i.i.i.i, %bb.en ], [ %.sroa.6209.0.copyload.i.i.i.i.i.i.i.i, %bb.ex ], [ %.sroa.6209.0.copyload.i.i.i.i.i.i.i.i, %bb.ew ], [ %.sroa.21331.32.copyload.i.i.i.i.i.i.i, %bb.fi ], [ %.sroa.21331.32.copyload.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.19.0.i.i.i.i.i.i = phi i64 [ 71, %bb.gn ], [ %.sroa.20.0.ph.i.i.i.i.i.i.i, %bb.ed ], [ %i.adf, %bb.en ], [ %i.afk, %bb.ex ], [ %i.afk, %bb.ew ], [ 66, %bb.fi ], [ 66, %.critedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.15.0.i.i.i.i.i.i = phi i64 [ %i.are, %bb.gn ], [ %.sroa.15.0.ph.i.i.i.i.i.i.i, %bb.ed ], [ %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i, %bb.en ], [ %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i, %bb.ex ], [ %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i, %bb.ew ], [ %i.aht, %bb.fi ], [ %i.aht, %.critedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ 71, %bb.gn ], [ %.sroa.10.sroa.0.0.insert.insert321.i.i.i.i.i.i.i, %bb.ed ], [ %i.ade, %bb.en ], [ %i.afj, %bb.ex ], [ %i.afj, %bb.ew ], [ 66, %bb.fi ], [ 66, %.critedge.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11508
  %i.acm = icmp eq ptr %.sroa.7287.8.copyload289.i.i.i.i.i.i.i, null
  br i1 %i.acm, label %bb.ha, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ww, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11543
  br label %bb.ha

bb.ek:                                            ; preds = %bb.di
  %i.acn = load i16, ptr %i.ww, align 1
  %i.aco = xor i16 %i.acn, 16724
  %i.acp = getelementptr i8, ptr %i.ww, i64 2
  %i.acq = load i8, ptr %i.acp, align 1
  %i.acr = zext i8 %i.acq to i16
  %i.acs = xor i16 %i.acr, 71
  %i.act = or i16 %i.aco, %i.acs
  %i.acu = icmp ne i16 %i.act, 0
  %i.acv = zext i1 %i.acu to i32
  %i.acw = icmp eq i32 %i.acv, 0
  br i1 %i.acw, label %.lr.ph.i144.i.i.i.i.i.i.i, label %.lr.ph.i.i134.i.i.i.i.i.preheader

.lr.ph.i144.i.i.i.i.i.i.i:                        ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !11544)
  br label %bb.el

bb.el:                                            ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit165.i.i.i.i.i.i.i.i", %.lr.ph.i144.i.i.i.i.i.i.i
  %i.acx = phi i64 [ %i.tn, %.lr.ph.i144.i.i.i.i.i.i.i ], [ %i.aly, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit165.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.acy = load i64, ptr %i.aw, align 8, !alias.scope !11545, !noundef !17 ; 4 uses
  %i.acz = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11545, !noundef !17 ; 7 uses
  %.not.i61.i.i.i.i.i.i.i.i = icmp ult i64 %i.acy, %i.acz
  %i.ada = select i1 %.not.i61.i.i.i.i.i.i.i.i, i64 0, i64 %i.acz
  %.sroa.01.0.i.i145.i.i.i.i.i.i.i = sub nuw i64 %i.acy, %i.ada
  %i.adb = load ptr, ptr %i.ax, align 8, !alias.scope !11545, !nonnull !17, !noundef !17 ; 3 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %.sroa.01.0.i.i145.i.i.i.i.i.i.i
  %i.add = load i32, ptr %i.adc, align 4, !range !56, !noalias !11546, !noundef !17
  switch i32 %i.add, label %bb.em [
    i32 32, label %bb.fq
    i32 9, label %bb.fq
  ]

._crit_edge.i148.invoke.i.i.i.i.i.i.i:            ; preds = %bb.dn, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit165.i.i.i.i.i.i.i.i", %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit84.i.i.i.i.i.i.i.i", %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit195.i.i.i.i.i.i.i"
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @479) #54
          to label %._crit_edge.i148.cont.i.i.i.i.i.i.i unwind label %.loopexit.split-lp476.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11466

._crit_edge.i148.cont.i.i.i.i.i.i.i:              ; preds = %._crit_edge.i148.invoke.i.i.i.i.i.i.i
  unreachable

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11547
  invoke fastcc void @"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$15scan_tag_handle17h3ef58b8170b50a79E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(520) %1, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %.noexc169.i.i.i.i.i.i.i unwind label %.loopexit.split-lp476.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11466

.noexc169.i.i.i.i.i.i.i:                          ; preds = %bb.em
  %i.ade = load i64, ptr %i.c, align 8, !range !30, !noalias !11547, !noundef !17 ; 2 uses
  %.not52.i.i.i.i.i.i.i.i = icmp eq i64 %i.ade, -9223372036854775808
  %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !noalias !11547 ; 9 uses
  %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5205.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11547 ; 9 uses
  %.sroa.6206.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6206.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11547 ; 3 uses
  br i1 %.not52.i.i.i.i.i.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.noexc169.i.i.i.i.i.i.i
  %.sroa.25.40.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.630.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11548
  %.sroa.28.40.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.28.40..sroa.630.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11547
  %i.adf = ptrtoint ptr %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i to i64
  br label %bb.ei

bb.eo:                                            ; preds = %.noexc169.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11547
  %i.adg = load i64, ptr %i.at, align 8, !alias.scope !11549, !noundef !17 ; 2 uses
  %.not.i65.i.i.i.i.i.i.i.i = icmp eq i64 %i.adg, 0
  br i1 %.not.i65.i.i.i.i.i.i.i.i, label %.lr.ph.i66.i.i.i.i.i.i.i.i, label %.lr.ph229.i.i.i.i.i.i.i.i.preheader

.lr.ph229.i.i.i.i.i.i.i.i.preheader:              ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit82.i.i.i.i.i.i.i.i", %bb.eo
  %.ph = phi i64 [ %i.adg, %bb.eo ], [ %.pre233.i.i.i.i.i.i.i.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit82.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph229.i.i.i.i.i.i.i.i

.lr.ph.i66.i.i.i.i.i.i.i.i:                       ; preds = %bb.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !11551)
  %i.adh = load ptr, ptr %i.au, align 8, !alias.scope !11552, !nonnull !17, !noundef !17 ; 6 uses
  %i.adi = load ptr, ptr %i.av, align 8, !alias.scope !11552, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i68.i.i.i.i.i.i.i.i = icmp eq ptr %i.adh, %i.adi
  br i1 %.not.i.i68.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i81.i.i.i.i.i.i.i.i", label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i66.i.i.i.i.i.i.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 1 ; 3 uses
  store ptr %i.adj, ptr %i.au, align 8, !alias.scope !11552
  %i.adk = load i8, ptr %i.adh, align 1, !noalias !11553, !noundef !17 ; 5 uses
  %i.adl = icmp sgt i8 %i.adk, -1
  br i1 %i.adl, label %bb.eq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i69.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i69.i.i.i.i.i.i.i.i": ; preds = %bb.ep
  %i.adm = and i8 %i.adk, 31
  %i.adn = zext nneg i8 %i.adm to i32             ; 3 uses
  %i.ado = icmp ne ptr %i.adj, %i.adi
  call void @llvm.assume(i1 %i.ado)
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adh, i64 2 ; 3 uses
  store ptr %i.adp, ptr %i.au, align 8, !alias.scope !11554
  %i.adq = load i8, ptr %i.adj, align 1, !noalias !11553, !noundef !17
  %i.adr = shl nuw nsw i32 %i.adn, 6
  %i.ads = and i8 %i.adq, 63
  %i.adt = zext nneg i8 %i.ads to i32             ; 2 uses
  %i.adu = or disjoint i32 %i.adr, %i.adt
  %i.adv = icmp samesign ugt i8 %i.adk, -33
  br i1 %i.adv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i77.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"

bb.eq:                                            ; preds = %bb.ep
  %i.adw = zext nneg i8 %i.adk to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i77.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i69.i.i.i.i.i.i.i.i"
  %i.adx = icmp ne ptr %i.adp, %i.adi
  call void @llvm.assume(i1 %i.adx)
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adh, i64 3 ; 3 uses
  store ptr %i.ady, ptr %i.au, align 8, !alias.scope !11555
  %i.adz = load i8, ptr %i.adp, align 1, !noalias !11553, !noundef !17
  %i.aea = shl nuw nsw i32 %i.adt, 6
  %i.aeb = and i8 %i.adz, 63
  %i.aec = zext nneg i8 %i.aeb to i32
  %i.aed = or disjoint i32 %i.aea, %i.aec         ; 2 uses
  %i.aee = shl nuw nsw i32 %i.adn, 12
  %i.aef = or disjoint i32 %i.aed, %i.aee
  %i.aeg = icmp samesign ugt i8 %i.adk, -17
  br i1 %i.aeg, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i78.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i78.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i77.i.i.i.i.i.i.i.i"
  %i.aeh = icmp ne ptr %i.ady, %i.adi
  call void @llvm.assume(i1 %i.aeh)
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  store ptr %i.aei, ptr %i.au, align 8, !alias.scope !11556
  %i.aej = load i8, ptr %i.ady, align 1, !noalias !11553, !noundef !17
  %i.aek = shl nuw nsw i32 %i.adn, 18
  %i.ael = and i32 %i.aek, 1835008
  %i.aem = shl nuw nsw i32 %i.aed, 6
  %i.aen = and i8 %i.aej, 63
  %i.aeo = zext nneg i8 %i.aen to i32
  %i.aep = or disjoint i32 %i.aem, %i.aeo
  %i.aeq = or disjoint i32 %i.aep, %i.ael
  %.fr.i79.i.i.i.i.i.i.i.i = freeze i32 %i.aeq    ; 2 uses
  %.not6.i80.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i79.i.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i80.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i81.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i81.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i78.i.i.i.i.i.i.i.i", %.lr.ph.i66.i.i.i.i.i.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i81.i.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i78.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i77.i.i.i.i.i.i.i.i", %bb.eq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i69.i.i.i.i.i.i.i.i"
  %i.aer = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i81.i.i.i.i.i.i.i.i" ], [ %.fr.i79.i.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i78.i.i.i.i.i.i.i.i" ], [ %i.aef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i77.i.i.i.i.i.i.i.i" ], [ %i.adu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i69.i.i.i.i.i.i.i.i" ], [ %i.adw, %bb.eq ]
  %i.aes = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11557, !noundef !17 ; 2 uses
  %i.aet = icmp eq i64 %i.aes, 0
  br i1 %i.aet, label %bb.er, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit82.i.i.i.i.i.i.i.i"

bb.er:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h7e45e2cfd1818014E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %.noexc.i151.i.i.i.i.i.i.i unwind label %.loopexit.split-lp219.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11546

.noexc.i151.i.i.i.i.i.i.i:                        ; preds = %bb.er
  %.pre.i.i75.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11557
  %.pre1.i.i76.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11557
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit82.i.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit82.i.i.i.i.i.i.i.i": ; preds = %.noexc.i151.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i"
  %i.aeu = phi i64 [ %.pre1.i.i76.i.i.i.i.i.i.i.i, %.noexc.i151.i.i.i.i.i.i.i ], [ %i.aes, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aev = phi i64 [ %.pre.i.i75.i.i.i.i.i.i.i.i, %.noexc.i151.i.i.i.i.i.i.i ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i70.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aew = add i64 %i.aev, 1
  store i64 %i.aew, ptr %i.at, align 8, !alias.scope !11557
  %i.aex = load i64, ptr %i.aw, align 8, !alias.scope !11557, !noundef !17
  %i.aey = add i64 %i.aex, %i.aev                 ; 2 uses
  %.not.i7.i72.i.i.i.i.i.i.i.i = icmp ult i64 %i.aey, %i.aeu
  %i.aez = select i1 %.not.i7.i72.i.i.i.i.i.i.i.i, i64 0, i64 %i.aeu
  %.sroa.0.0.i.i73.i.i.i.i.i.i.i.i = sub nuw i64 %i.aey, %i.aez
  %i.afa = load ptr, ptr %i.ax, align 8, !alias.scope !11557, !nonnull !17, !noundef !17
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %.sroa.0.0.i.i73.i.i.i.i.i.i.i.i
  store i32 %i.aer, ptr %i.afb, align 4, !noalias !11546
  %.pre233.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11558 ; 2 uses
  %.not216228.i.i.i.i.i.i.i.i = icmp eq i64 %.pre233.i.i.i.i.i.i.i.i, 0
  br i1 %.not216228.i.i.i.i.i.i.i.i, label %._crit_edge230.i.i.i.i.i.i.i.i, label %.lr.ph229.i.i.i.i.i.i.i.i.preheader

.loopexit.split-lp219.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.er, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i.i.i.i.i.i", %._crit_edge230.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp781 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit114.i.i.i.i.i.i.i.i"

.lr.ph229.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph229.i.i.i.i.i.i.i.i.preheader, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit144.i.i.i.i.i.i.i.i"
  %i.afc = phi i64 [ %i.ajw, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit144.i.i.i.i.i.i.i.i" ], [ %.ph, %.lr.ph229.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.afd = load i64, ptr %i.aw, align 8, !alias.scope !11558, !noundef !17 ; 4 uses
  %i.afe = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11558, !noundef !17 ; 7 uses
  %.not.i84.i.i.i.i.i.i.i.i = icmp ult i64 %i.afd, %i.afe
  %i.aff = select i1 %.not.i84.i.i.i.i.i.i.i.i, i64 0, i64 %i.afe
  %.sroa.01.0.i85.i.i.i.i.i.i.i.i = sub nuw i64 %i.afd, %i.aff
  %i.afg = load ptr, ptr %i.ax, align 8, !alias.scope !11558, !nonnull !17, !noundef !17 ; 3 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %.sroa.01.0.i85.i.i.i.i.i.i.i.i
  %i.afi = load i32, ptr %i.afh, align 4, !range !56, !noalias !11546, !noundef !17
  switch i32 %i.afi, label %bb.et [
    i32 32, label %bb.fj
    i32 9, label %bb.fj
  ]

._crit_edge230.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit82.i.i.i.i.i.i.i.i", %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit144.i.i.i.i.i.i.i.i"
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @479) #54
          to label %bb.es unwind label %.loopexit.split-lp219.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11546

bb.es:                                            ; preds = %bb.fd, %._crit_edge230.i.i.i.i.i.i.i.i
  unreachable

bb.et:                                            ; preds = %.lr.ph229.i.i.i.i.i.i.i.i
  %.not.i91.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6206.0.copyload.i.i.i.i.i.i.i.i, 2
  br i1 %.not.i91.i.i.i.i.i.i.i.i, label %bb.eu, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i.i.i.i.i.i"

bb.eu:                                            ; preds = %bb.et
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i) ]
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i.i.i.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.eu, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11547
  invoke fastcc void @"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$12scan_tag_uri17h8654cba8630e07d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(520) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.ev unwind label %.loopexit.split-lp219.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.ev:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i.i.i.i.i.i"
  %i.afj = load i64, ptr %i.b, align 8, !range !30, !noalias !11547, !noundef !17 ; 3 uses
  %.not55.i.i.i.i.i.i.i.i = icmp eq i64 %i.afj, -9223372036854775808
  %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !noalias !11547 ; 7 uses
  %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5208.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11547 ; 6 uses
  %.sroa.6209.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6209.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11547 ; 3 uses
  br i1 %.not55.i.i.i.i.i.i.i.i, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.sroa.25.40.copyload332.i.i.i.i.i.i.i = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11548 ; 2 uses
  %.sroa.28.40.copyload333.i.i.i.i.i.i.i = load i64, ptr %.sroa.28.40..sroa.643.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11548 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11547
  %i.afk = ptrtoint ptr %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.afl = icmp eq i64 %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.afl, label %bb.ei, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11559
  br label %bb.ei

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11547
  %i.afm = load i64, ptr %i.at, align 8, !alias.scope !11560, !noundef !17 ; 2 uses
  %.not.i93.i.i.i.i.i.i.i.i = icmp eq i64 %i.afm, 0
  br i1 %.not.i93.i.i.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i.i.i, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.thread.i.i.i.i.i.i.i.i"

.lr.ph.i94.i.i.i.i.i.i.i.i:                       ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !11561)
  call void @llvm.experimental.noalias.scope.decl(metadata !11562)
  %i.afn = load ptr, ptr %i.au, align 8, !alias.scope !11563, !nonnull !17, !noundef !17 ; 6 uses
  %i.afo = load ptr, ptr %i.av, align 8, !alias.scope !11563, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i96.i.i.i.i.i.i.i.i = icmp eq ptr %i.afn, %i.afo
  br i1 %.not.i.i96.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i109.i.i.i.i.i.i.i.i", label %bb.ez

bb.ez:                                            ; preds = %.lr.ph.i94.i.i.i.i.i.i.i.i
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afn, i64 1 ; 3 uses
  store ptr %i.afp, ptr %i.au, align 8, !alias.scope !11563
  %i.afq = load i8, ptr %i.afn, align 1, !noalias !11564, !noundef !17 ; 5 uses
  %i.afr = icmp sgt i8 %i.afq, -1
  br i1 %i.afr, label %bb.fa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i97.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i97.i.i.i.i.i.i.i.i": ; preds = %bb.ez
  %i.afs = and i8 %i.afq, 31
  %i.aft = zext nneg i8 %i.afs to i32             ; 3 uses
  %i.afu = icmp ne ptr %i.afp, %i.afo
  call void @llvm.assume(i1 %i.afu)
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afn, i64 2 ; 3 uses
  store ptr %i.afv, ptr %i.au, align 8, !alias.scope !11565
  %i.afw = load i8, ptr %i.afp, align 1, !noalias !11564, !noundef !17
  %i.afx = shl nuw nsw i32 %i.aft, 6
  %i.afy = and i8 %i.afw, 63
  %i.afz = zext nneg i8 %i.afy to i32             ; 2 uses
  %i.aga = or disjoint i32 %i.afx, %i.afz
  %i.agb = icmp samesign ugt i8 %i.afq, -33
  br i1 %i.agb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i105.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"

bb.fa:                                            ; preds = %bb.ez
  %i.agc = zext nneg i8 %i.afq to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i105.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i97.i.i.i.i.i.i.i.i"
  %i.agd = icmp ne ptr %i.afv, %i.afo
  call void @llvm.assume(i1 %i.agd)
  %i.age = getelementptr inbounds nuw i8, ptr %i.afn, i64 3 ; 3 uses
  store ptr %i.age, ptr %i.au, align 8, !alias.scope !11566
  %i.agf = load i8, ptr %i.afv, align 1, !noalias !11564, !noundef !17
  %i.agg = shl nuw nsw i32 %i.afz, 6
  %i.agh = and i8 %i.agf, 63
  %i.agi = zext nneg i8 %i.agh to i32
  %i.agj = or disjoint i32 %i.agg, %i.agi         ; 2 uses
  %i.agk = shl nuw nsw i32 %i.aft, 12
  %i.agl = or disjoint i32 %i.agj, %i.agk
  %i.agm = icmp samesign ugt i8 %i.afq, -17
  br i1 %i.agm, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i106.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i106.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i105.i.i.i.i.i.i.i.i"
  %i.agn = icmp ne ptr %i.age, %i.afo
  call void @llvm.assume(i1 %i.agn)
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afn, i64 4
  store ptr %i.ago, ptr %i.au, align 8, !alias.scope !11567
  %i.agp = load i8, ptr %i.age, align 1, !noalias !11564, !noundef !17
  %i.agq = shl nuw nsw i32 %i.aft, 18
  %i.agr = and i32 %i.agq, 1835008
  %i.ags = shl nuw nsw i32 %i.agj, 6
  %i.agt = and i8 %i.agp, 63
  %i.agu = zext nneg i8 %i.agt to i32
  %i.agv = or disjoint i32 %i.ags, %i.agu
  %i.agw = or disjoint i32 %i.agv, %i.agr
  %.fr.i107.i.i.i.i.i.i.i.i = freeze i32 %i.agw   ; 2 uses
  %.not6.i108.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i107.i.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i108.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i109.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i109.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i106.i.i.i.i.i.i.i.i", %.lr.ph.i94.i.i.i.i.i.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i109.i.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i106.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i105.i.i.i.i.i.i.i.i", %bb.fa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i97.i.i.i.i.i.i.i.i"
  %i.agx = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i109.i.i.i.i.i.i.i.i" ], [ %.fr.i107.i.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i106.i.i.i.i.i.i.i.i" ], [ %i.agl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i105.i.i.i.i.i.i.i.i" ], [ %i.aga, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i97.i.i.i.i.i.i.i.i" ], [ %i.agc, %bb.fa ]
  %i.agy = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11568, !noundef !17 ; 2 uses
  %i.agz = icmp eq i64 %i.agy, 0
  br i1 %i.agz, label %bb.fb, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.i.i.i.i.i.i.i.i"

bb.fb:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h7e45e2cfd1818014E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %.noexc110.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11546

.noexc110.i.i.i.i.i.i.i.i:                        ; preds = %bb.fb
  %.pre.i.i103.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11568
  %.pre1.i.i104.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11568
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.i.i.i.i.i.i.i.i"

.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fb, %bb.ff, %bb.fd
  %lpad.loopexit.split-lp785 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aha = icmp eq i64 %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.aha, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit114.i.i.i.i.i.i.i.i", label %bb.fc

bb.fc:                                            ; preds = %.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11569
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit114.i.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.i.i.i.i.i.i.i.i": ; preds = %.noexc110.i.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i"
  %i.ahb = phi i64 [ %.pre1.i.i104.i.i.i.i.i.i.i.i, %.noexc110.i.i.i.i.i.i.i.i ], [ %i.agy, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ahc = phi i64 [ %.pre.i.i103.i.i.i.i.i.i.i.i, %.noexc110.i.i.i.i.i.i.i.i ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i98.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ahd = add i64 %i.ahc, 1
  store i64 %i.ahd, ptr %i.at, align 8, !alias.scope !11568
  %i.ahe = load i64, ptr %i.aw, align 8, !alias.scope !11568, !noundef !17
  %i.ahf = add i64 %i.ahe, %i.ahc                 ; 2 uses
  %.not.i7.i100.i.i.i.i.i.i.i.i = icmp ult i64 %i.ahf, %i.ahb
  %i.ahg = select i1 %.not.i7.i100.i.i.i.i.i.i.i.i, i64 0, i64 %i.ahb
  %.sroa.0.0.i.i101.i.i.i.i.i.i.i.i = sub nuw i64 %i.ahf, %i.ahg
  %i.ahh = load ptr, ptr %i.ax, align 8, !alias.scope !11568, !nonnull !17, !noundef !17
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %.sroa.0.0.i.i101.i.i.i.i.i.i.i.i
  store i32 %i.agx, ptr %i.ahi, align 4, !noalias !11546
  %.pre235.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11570 ; 2 uses
  %i.ahj = icmp eq i64 %.pre235.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahj, label %bb.fd, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.thread.i.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.i.i.i.i.i.i.i.i", %bb.ey
  %i.ahk = phi i64 [ %.pre235.i.i.i.i.i.i.i.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.i.i.i.i.i.i.i.i" ], [ %i.afm, %bb.ey ]
  %i.ahl = load i64, ptr %i.aw, align 8, !alias.scope !11570, !noundef !17 ; 2 uses
  %i.ahm = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11570, !noundef !17 ; 2 uses
  %.not.i116.i.i.i.i.i.i.i.i = icmp ult i64 %i.ahl, %i.ahm
  %i.ahn = select i1 %.not.i116.i.i.i.i.i.i.i.i, i64 0, i64 %i.ahm
  %.sroa.01.0.i117.i.i.i.i.i.i.i.i = sub nuw i64 %i.ahl, %i.ahn
  %i.aho = load ptr, ptr %i.ax, align 8, !alias.scope !11570, !nonnull !17, !noundef !17
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %.sroa.01.0.i117.i.i.i.i.i.i.i.i
  %i.ahq = load i32, ptr %i.ahp, align 4, !range !56, !noalias !11546, !noundef !17
  switch i32 %i.ahq, label %bb.fe [
    i32 32, label %bb.fw
    i32 9, label %bb.fw
    i32 10, label %bb.fw
    i32 13, label %bb.fw
    i32 0, label %bb.fw
  ]

bb.fd:                                            ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.i.i.i.i.i.i.i.i"
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @479) #54
          to label %bb.es unwind label %.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11546

bb.fe:                                            ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit111.thread.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11571
  %i.ahr = call noundef dereferenceable_or_null(66) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 66, i64 noundef range(i64 1, 17) 1) #51, !noalias !11571 ; 3 uses
  %i.ahs = icmp eq ptr %i.ahr, null
  br i1 %i.ahs, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 66, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc119.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11546

.noexc119.i.i.i.i.i.i.i.i:                        ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.ahr, ptr noundef nonnull readonly align 1 dereferenceable(66) @553, i64 66, i1 false), !noalias !11572
  %i.aht = ptrtoint ptr %i.ahr to i64             ; 2 uses
  %.sroa.21331.32.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !11508 ; 2 uses
  %.sroa.25.32.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.25.32..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11508 ; 2 uses
  %.sroa.28.32.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.28.32..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11508 ; 2 uses
  %i.ahu = icmp eq i64 %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahu, label %.critedge.i.i.i.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5208.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0207.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11573
  br label %.critedge.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.fh, %bb.fg
  %i.ahv = icmp eq i64 %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahv, label %bb.ei, label %bb.fi

bb.fi:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5205.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0204.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11574
  br label %bb.ei

bb.fj:                                            ; preds = %.lr.ph229.i.i.i.i.i.i.i.i, %.lr.ph229.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11575)
  %i.ahw = add i64 %i.afd, 1                      ; 2 uses
  %.not.i87.i.i.i.i.i.i.i.i = icmp ult i64 %i.ahw, %i.afe
  %i.ahx = select i1 %.not.i87.i.i.i.i.i.i.i.i, i64 0, i64 %i.afe
  %.sroa.01.0.i88.i.i.i.i.i.i.i.i = sub nuw i64 %i.ahw, %i.ahx ; 3 uses
  store i64 %.sroa.01.0.i88.i.i.i.i.i.i.i.i, ptr %i.aw, align 8, !alias.scope !11576
end_hunk_1
begin_hunk_2_@"_ZN5insta7content4yaml8vendored6parser15Parser$LT$T$GT$10peek_token17h4289ab7ac21fc77cE":bb.a
  store ptr %i.apl, ptr %i.au, align 8, !alias.scope !11617
  %i.apm = load i8, ptr %i.apj, align 1, !noalias !11618, !noundef !17 ; 5 uses
  %i.apn = icmp sgt i8 %i.apm, -1
  br i1 %i.apn, label %bb.gk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i220.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i220.i.i.i.i.i.i.i": ; preds = %bb.gj
  %i.apo = and i8 %i.apm, 31
  %i.app = zext nneg i8 %i.apo to i32             ; 3 uses
  %i.apq = icmp ne ptr %i.apl, %i.apk
  call void @llvm.assume(i1 %i.apq)
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apj, i64 2 ; 3 uses
  store ptr %i.apr, ptr %i.au, align 8, !alias.scope !11619
  %i.aps = load i8, ptr %i.apl, align 1, !noalias !11618, !noundef !17
  %i.apt = shl nuw nsw i32 %i.app, 6
  %i.apu = and i8 %i.aps, 63
  %i.apv = zext nneg i8 %i.apu to i32             ; 2 uses
  %i.apw = or disjoint i32 %i.apt, %i.apv
  %i.apx = icmp samesign ugt i8 %i.apm, -33
  br i1 %i.apx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i228.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i"

bb.gk:                                            ; preds = %bb.gj
  %i.apy = zext nneg i8 %i.apm to i32
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i228.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i220.i.i.i.i.i.i.i"
  %i.apz = icmp ne ptr %i.apr, %i.apk
  call void @llvm.assume(i1 %i.apz)
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apj, i64 3 ; 3 uses
  store ptr %i.aqa, ptr %i.au, align 8, !alias.scope !11620
  %i.aqb = load i8, ptr %i.apr, align 1, !noalias !11618, !noundef !17
  %i.aqc = shl nuw nsw i32 %i.apv, 6
  %i.aqd = and i8 %i.aqb, 63
  %i.aqe = zext nneg i8 %i.aqd to i32
  %i.aqf = or disjoint i32 %i.aqc, %i.aqe         ; 2 uses
  %i.aqg = shl nuw nsw i32 %i.app, 12
  %i.aqh = or disjoint i32 %i.aqf, %i.aqg
  %i.aqi = icmp samesign ugt i8 %i.apm, -17
  br i1 %i.aqi, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i229.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i229.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i228.i.i.i.i.i.i.i"
  %i.aqj = icmp ne ptr %i.aqa, %i.apk
  call void @llvm.assume(i1 %i.aqj)
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  store ptr %i.aqk, ptr %i.au, align 8, !alias.scope !11621
  %i.aql = load i8, ptr %i.aqa, align 1, !noalias !11618, !noundef !17
  %i.aqm = shl nuw nsw i32 %i.app, 18
  %i.aqn = and i32 %i.aqm, 1835008
  %i.aqo = shl nuw nsw i32 %i.aqf, 6
  %i.aqp = and i8 %i.aql, 63
  %i.aqq = zext nneg i8 %i.aqp to i32
  %i.aqr = or disjoint i32 %i.aqo, %i.aqq
  %i.aqs = or disjoint i32 %i.aqr, %i.aqn
  %.fr.i230.i.i.i.i.i.i.i = freeze i32 %i.aqs     ; 2 uses
  %.not6.i231.i.i.i.i.i.i.i = icmp eq i32 %.fr.i230.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i231.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i232.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i232.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i229.i.i.i.i.i.i.i", %.lr.ph.i217.i.i.i.i.i.i.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i232.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i229.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i228.i.i.i.i.i.i.i", %bb.gk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i220.i.i.i.i.i.i.i"
  %i.aqt = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i232.i.i.i.i.i.i.i" ], [ %.fr.i230.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i229.i.i.i.i.i.i.i" ], [ %i.aqh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i228.i.i.i.i.i.i.i" ], [ %i.apw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i220.i.i.i.i.i.i.i" ], [ %i.apy, %bb.gk ]
  store i64 %i.aop, ptr %i.at, align 8, !alias.scope !11622
  %.not.i7.i223.i.i.i.i.i.i.i = icmp ult i64 %.sroa.01.0.i213.i.i.i.i.i.i.i, %i.aor
  %i.aqu = select i1 %.not.i7.i223.i.i.i.i.i.i.i, i64 0, i64 %i.aor
  %.sroa.0.0.i.i224.i.i.i.i.i.i.i = sub nuw i64 %.sroa.01.0.i213.i.i.i.i.i.i.i, %i.aqu
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %.sroa.0.0.i.i224.i.i.i.i.i.i.i
  store i32 %i.aqt, ptr %i.aqv, align 4, !noalias !11466
  %.pre528.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11611
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit234.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit234.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i", %bb.gi
  %i.aqw = phi i64 [ %.pre528.i.i.i.i.i.i.i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i222.i.i.i.i.i.i.i" ], [ %i.aoy, %bb.gi ] ; 2 uses
  %.not462.i.i.i.i.i.i.i = icmp eq i64 %i.aqw, 0
  br i1 %.not462.i.i.i.i.i.i.i, label %._crit_edge498.invoke.i.i.i.i.i.i.i, label %.lr.ph500.i.i.i.i.i.i.i

.loopexit469.i.i.i.i.i.i.i:                       ; preds = %bb.ge, %.lr.ph500.i.i.i.i.i.i.i, %.lr.ph500.i.i.i.i.i.i.i, %.lr.ph500.i.i.i.i.i.i.i
  %i.aqx = phi i32 [ %i.aov, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aov, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aov, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aoo, %bb.ge ]
  %i.aqy = phi ptr [ %i.aot, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aot, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aot, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aom, %bb.ge ]
  %i.aqz = phi i64 [ %i.aor, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aor, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aor, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aok, %bb.ge ] ; 2 uses
  %i.ara = phi i64 [ %i.aoq, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aoq, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aoq, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aoj, %bb.ge ]
  %i.arb = phi i64 [ %i.aop, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aop, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aop, %.lr.ph500.i.i.i.i.i.i.i ], [ %i.aoi, %bb.ge ]
  switch i32 %i.aqx, label %bb.gl [
    i32 10, label %bb.go
    i32 13, label %bb.go
    i32 0, label %bb.gs
  ]

bb.gl:                                            ; preds = %.loopexit469.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11623
  %i.arc = call noundef dereferenceable_or_null(71) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 71, i64 noundef range(i64 1, 17) 1) #51, !noalias !11623 ; 3 uses
  %i.ard = icmp eq ptr %i.arc, null
  br i1 %i.ard, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc243.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11466

.noexc243.i.i.i.i.i.i.i:                          ; preds = %bb.gm
  unreachable

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.arc, ptr noundef nonnull readonly align 1 dereferenceable(71) @488, i64 71, i1 false), !noalias !11624
  %.sroa.23.32.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !11625
  %.sroa.27.32.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.25.32..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11625
  %.sroa.29.32.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.28.32..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11625
  %i.are = ptrtoint ptr %i.arc to i64
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$insta..content..yaml..vendored..scanner..TokenType$GT$17hefa11f1e5a344395E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.h), !noalias !11466
  br label %bb.ei

bb.go:                                            ; preds = %.loopexit469.i.i.i.i.i.i.i, %.loopexit469.i.i.i.i.i.i.i
  %.not.i244.i.i.i.i.i.i.i = icmp ult i64 %i.arb, 2
  br i1 %.not.i244.i.i.i.i.i.i.i, label %.lr.ph.i245.i.i.i.i.i.i.i, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.i.i.i.i.i.i.i"

.lr.ph.i245.i.i.i.i.i.i.i:                        ; preds = %bb.go
  call void @llvm.experimental.noalias.scope.decl(metadata !11626)
  call void @llvm.experimental.noalias.scope.decl(metadata !11627)
  %i.arf = load ptr, ptr %i.au, align 8, !alias.scope !11628, !nonnull !17, !noundef !17 ; 6 uses
  %i.arg = load ptr, ptr %i.av, align 8, !alias.scope !11628, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i247.i.i.i.i.i.i.i = icmp eq ptr %i.arf, %i.arg
  br i1 %.not.i.i247.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i260.i.i.i.i.i.i.i", label %bb.gp

bb.gp:                                            ; preds = %.lr.ph.i245.i.i.i.i.i.i.i
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arf, i64 1 ; 3 uses
  store ptr %i.arh, ptr %i.au, align 8, !alias.scope !11628
  %i.ari = load i8, ptr %i.arf, align 1, !noalias !11629, !noundef !17 ; 5 uses
  %i.arj = icmp sgt i8 %i.ari, -1
  br i1 %i.arj, label %bb.gq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i248.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i248.i.i.i.i.i.i.i": ; preds = %bb.gp
  %i.ark = and i8 %i.ari, 31
  %i.arl = zext nneg i8 %i.ark to i32             ; 3 uses
  %i.arm = icmp ne ptr %i.arh, %i.arg
  call void @llvm.assume(i1 %i.arm)
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arf, i64 2 ; 3 uses
  store ptr %i.arn, ptr %i.au, align 8, !alias.scope !11630
  %i.aro = load i8, ptr %i.arh, align 1, !noalias !11629, !noundef !17
  %i.arp = shl nuw nsw i32 %i.arl, 6
  %i.arq = and i8 %i.aro, 63
  %i.arr = zext nneg i8 %i.arq to i32             ; 2 uses
  %i.ars = or disjoint i32 %i.arp, %i.arr
  %i.art = icmp samesign ugt i8 %i.ari, -33
  br i1 %i.art, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i256.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"

bb.gq:                                            ; preds = %bb.gp
  %i.aru = zext nneg i8 %i.ari to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i256.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i248.i.i.i.i.i.i.i"
  %i.arv = icmp ne ptr %i.arn, %i.arg
  call void @llvm.assume(i1 %i.arv)
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arf, i64 3 ; 3 uses
  store ptr %i.arw, ptr %i.au, align 8, !alias.scope !11631
  %i.arx = load i8, ptr %i.arn, align 1, !noalias !11629, !noundef !17
  %i.ary = shl nuw nsw i32 %i.arr, 6
  %i.arz = and i8 %i.arx, 63
  %i.asa = zext nneg i8 %i.arz to i32
  %i.asb = or disjoint i32 %i.ary, %i.asa         ; 2 uses
  %i.asc = shl nuw nsw i32 %i.arl, 12
  %i.asd = or disjoint i32 %i.asb, %i.asc
  %i.ase = icmp samesign ugt i8 %i.ari, -17
  br i1 %i.ase, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i257.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i257.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i256.i.i.i.i.i.i.i"
  %i.asf = icmp ne ptr %i.arw, %i.arg
  call void @llvm.assume(i1 %i.asf)
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arf, i64 4
  store ptr %i.asg, ptr %i.au, align 8, !alias.scope !11632
  %i.ash = load i8, ptr %i.arw, align 1, !noalias !11629, !noundef !17
  %i.asi = shl nuw nsw i32 %i.arl, 18
  %i.asj = and i32 %i.asi, 1835008
  %i.ask = shl nuw nsw i32 %i.asb, 6
  %i.asl = and i8 %i.ash, 63
  %i.asm = zext nneg i8 %i.asl to i32
  %i.asn = or disjoint i32 %i.ask, %i.asm
  %i.aso = or disjoint i32 %i.asn, %i.asj
  %.fr.i258.i.i.i.i.i.i.i = freeze i32 %i.aso     ; 2 uses
  %.not6.i259.i.i.i.i.i.i.i = icmp eq i32 %.fr.i258.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i259.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i260.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i260.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i257.i.i.i.i.i.i.i", %.lr.ph.i245.i.i.i.i.i.i.i
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i260.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i257.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i256.i.i.i.i.i.i.i", %bb.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i248.i.i.i.i.i.i.i"
  %i.asp = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i260.i.i.i.i.i.i.i" ], [ %.fr.i258.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i257.i.i.i.i.i.i.i" ], [ %i.asd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i256.i.i.i.i.i.i.i" ], [ %i.ars, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i248.i.i.i.i.i.i.i" ], [ %i.aru, %bb.gq ]
  %i.asq = icmp eq i64 %i.aqz, 1
  br i1 %i.asq, label %bb.gr, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.loopexit.i.i.i.i.i.i.i"

bb.gr:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h7e45e2cfd1818014E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %.noexc261.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11466

.noexc261.i.i.i.i.i.i.i:                          ; preds = %bb.gr
  %.pre.i.i254.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11633
  %.pre1.i.i255.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !range !20, !alias.scope !11633
  %.pre.i139.i.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !11633
  %.pre175.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !11633
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.loopexit.i.i.i.i.i.i.i"

bb.gs:                                            ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.i.i.i.i.i.i.i", %.loopexit469.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.914.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.914.0..sroa_idx.i.i.i.i.i.i, i64 7, i1 false), !noalias !11465
  %2 = load <2 x i64>, ptr %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11625
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.419.sroa.7.0..sroa.419.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !11625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.520.0..sroa_idx.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !11465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11508
  %i.asr = icmp eq ptr %.sroa.7287.8.copyload289.i.i.i.i.i.i.i, null
  br i1 %i.asr, label %bb.hb, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ww, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !11634
  br label %bb.hb

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.loopexit.i.i.i.i.i.i.i": ; preds = %.noexc261.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i"
  %i.ass = phi ptr [ %.pre175.i.i.i.i.i.i, %.noexc261.i.i.i.i.i.i.i ], [ %i.aqy, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i" ]
  %i.ast = phi i64 [ %.pre.i139.i.i.i.i.i, %.noexc261.i.i.i.i.i.i.i ], [ %i.ara, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i" ]
  %i.asu = phi i64 [ %.pre1.i.i255.i.i.i.i.i.i.i, %.noexc261.i.i.i.i.i.i.i ], [ %i.aqz, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i" ] ; 2 uses
  %i.asv = phi i64 [ %.pre.i.i254.i.i.i.i.i.i.i, %.noexc261.i.i.i.i.i.i.i ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i249.i.i.i.i.i.i.i" ] ; 2 uses
  %i.asw = add i64 %i.asv, 1
  store i64 %i.asw, ptr %i.at, align 8, !alias.scope !11633
  %i.asx = add i64 %i.asv, %i.ast                 ; 2 uses
  %.not.i7.i251.i.i.i.i.i.i.i = icmp ult i64 %i.asx, %i.asu
  %i.asy = select i1 %.not.i7.i251.i.i.i.i.i.i.i, i64 0, i64 %i.asu
  %.sroa.0.0.i.i252.i.i.i.i.i.i.i = sub nuw i64 %i.asx, %i.asy
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %.sroa.0.0.i.i252.i.i.i.i.i.i.i
  store i32 %i.asp, ptr %i.asz, align 4, !noalias !11466
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.i.i.i.i.i.i.i": ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit262.loopexit.i.i.i.i.i.i.i", %bb.go
  invoke fastcc void @"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9skip_line17h9ad926516d942e8eE"(ptr noalias noundef nonnull align 8 dereferenceable(520) %1)
          to label %bb.gs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !11466

bb.gu:                                            ; preds = %bb.ge, %bb.ge
  call void @llvm.experimental.noalias.scope.decl(metadata !11635)
  %i.ata = add i64 %i.aoj, 1                      ; 2 uses
  %.not.i200.i.i.i.i.i.i.i = icmp ult i64 %i.ata, %i.aok
  %i.atb = select i1 %.not.i200.i.i.i.i.i.i.i, i64 0, i64 %i.aok
  %.sroa.01.0.i201.i.i.i.i.i.i.i = sub nuw i64 %i.ata, %i.atb ; 3 uses
  store i64 %.sroa.01.0.i201.i.i.i.i.i.i.i, ptr %i.aw, align 8, !alias.scope !11636
  %i.atc = add i64 %i.aoi, -1                     ; 4 uses
  store i64 %i.atc, ptr %i.at, align 8, !alias.scope !11636
  %i.atd = icmp ult i64 %i.atc, %i.aok
  call void @llvm.assume(i1 %i.atd)
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %i.aoj
  %i.atf = load i32, ptr %i.ate, align 4, !range !56, !noalias !11637, !noundef !17
  %i.atg = load i64, ptr %i.ap, align 8, !alias.scope !11470, !noundef !17
  %i.ath = add i64 %i.atg, 1
  store i64 %i.ath, ptr %i.ap, align 8, !alias.scope !11470
  %i.ati = icmp eq i32 %i.atf, 10
  br i1 %i.ati, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.atj = load i64, ptr %i.aq, align 8, !alias.scope !11470, !noundef !17
  %i.atk = add i64 %i.atj, 1
  store i64 %i.atk, ptr %i.aq, align 8, !alias.scope !11470
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  %i.atl = load i64, ptr %i.bf, align 8, !alias.scope !11470, !noundef !17
  %i.atm = add i64 %i.atl, 1
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.atm, %bb.gw ], [ 0, %bb.gv ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.bf, align 8, !alias.scope !11470
  %.not.i266.i.i.i.i.i.i.i = icmp eq i64 %i.atc, 0
  br i1 %.not.i266.i.i.i.i.i.i.i, label %.lr.ph.i267.i.i.i.i.i.i.i, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit284.i.i.i.i.i.i.i"

.lr.ph.i267.i.i.i.i.i.i.i:                        ; preds = %bb.gx
  call void @llvm.experimental.noalias.scope.decl(metadata !11638)
  call void @llvm.experimental.noalias.scope.decl(metadata !11639)
  %i.atn = load ptr, ptr %i.au, align 8, !alias.scope !11640, !nonnull !17, !noundef !17 ; 6 uses
  %i.ato = load ptr, ptr %i.av, align 8, !alias.scope !11640, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i269.i.i.i.i.i.i.i = icmp eq ptr %i.atn, %i.ato
  br i1 %.not.i.i269.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i282.i.i.i.i.i.i.i", label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i267.i.i.i.i.i.i.i
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atn, i64 1 ; 3 uses
  store ptr %i.atp, ptr %i.au, align 8, !alias.scope !11640
  %i.atq = load i8, ptr %i.atn, align 1, !noalias !11641, !noundef !17 ; 5 uses
  %i.atr = icmp sgt i8 %i.atq, -1
  br i1 %i.atr, label %bb.gz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i270.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i270.i.i.i.i.i.i.i": ; preds = %bb.gy
  %i.ats = and i8 %i.atq, 31
  %i.att = zext nneg i8 %i.ats to i32             ; 3 uses
  %i.atu = icmp ne ptr %i.atp, %i.ato
  call void @llvm.assume(i1 %i.atu)
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atn, i64 2 ; 3 uses
  store ptr %i.atv, ptr %i.au, align 8, !alias.scope !11642
  %i.atw = load i8, ptr %i.atp, align 1, !noalias !11641, !noundef !17
  %i.atx = shl nuw nsw i32 %i.att, 6
  %i.aty = and i8 %i.atw, 63
  %i.atz = zext nneg i8 %i.aty to i32             ; 2 uses
  %i.aua = or disjoint i32 %i.atx, %i.atz
  %i.aub = icmp samesign ugt i8 %i.atq, -33
  br i1 %i.aub, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i278.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i"

bb.gz:                                            ; preds = %bb.gy
  %i.auc = zext nneg i8 %i.atq to i32
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i278.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i270.i.i.i.i.i.i.i"
  %i.aud = icmp ne ptr %i.atv, %i.ato
  call void @llvm.assume(i1 %i.aud)
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atn, i64 3 ; 3 uses
  store ptr %i.aue, ptr %i.au, align 8, !alias.scope !11643
  %i.auf = load i8, ptr %i.atv, align 1, !noalias !11641, !noundef !17
  %i.aug = shl nuw nsw i32 %i.atz, 6
  %i.auh = and i8 %i.auf, 63
  %i.aui = zext nneg i8 %i.auh to i32
  %i.auj = or disjoint i32 %i.aug, %i.aui         ; 2 uses
  %i.auk = shl nuw nsw i32 %i.att, 12
  %i.aul = or disjoint i32 %i.auj, %i.auk
  %i.aum = icmp samesign ugt i8 %i.atq, -17
  br i1 %i.aum, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i279.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i279.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i278.i.i.i.i.i.i.i"
  %i.aun = icmp ne ptr %i.aue, %i.ato
  call void @llvm.assume(i1 %i.aun)
  %i.auo = getelementptr inbounds nuw i8, ptr %i.atn, i64 4
  store ptr %i.auo, ptr %i.au, align 8, !alias.scope !11644
  %i.aup = load i8, ptr %i.aue, align 1, !noalias !11641, !noundef !17
  %i.auq = shl nuw nsw i32 %i.att, 18
  %i.aur = and i32 %i.auq, 1835008
  %i.aus = shl nuw nsw i32 %i.auj, 6
  %i.aut = and i8 %i.aup, 63
  %i.auu = zext nneg i8 %i.aut to i32
  %i.auv = or disjoint i32 %i.aus, %i.auu
  %i.auw = or disjoint i32 %i.auv, %i.aur
  %.fr.i280.i.i.i.i.i.i.i = freeze i32 %i.auw     ; 2 uses
  %.not6.i281.i.i.i.i.i.i.i = icmp eq i32 %.fr.i280.i.i.i.i.i.i.i, 1114112
  br i1 %.not6.i281.i.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i282.i.i.i.i.i.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i282.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i279.i.i.i.i.i.i.i", %.lr.ph.i267.i.i.i.i.i.i.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i282.i.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i279.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i278.i.i.i.i.i.i.i", %bb.gz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i270.i.i.i.i.i.i.i"
  %i.aux = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i282.i.i.i.i.i.i.i" ], [ %.fr.i280.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i279.i.i.i.i.i.i.i" ], [ %i.aul, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i278.i.i.i.i.i.i.i" ], [ %i.aua, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i270.i.i.i.i.i.i.i" ], [ %i.auc, %bb.gz ]
  store i64 %i.aoi, ptr %i.at, align 8, !alias.scope !11645
  %.not.i7.i273.i.i.i.i.i.i.i = icmp ult i64 %.sroa.01.0.i201.i.i.i.i.i.i.i, %i.aok
  %i.auy = select i1 %.not.i7.i273.i.i.i.i.i.i.i, i64 0, i64 %i.aok
  %.sroa.0.0.i.i274.i.i.i.i.i.i.i = sub nuw i64 %.sroa.01.0.i201.i.i.i.i.i.i.i, %i.auy
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %.sroa.0.0.i.i274.i.i.i.i.i.i.i
  store i32 %i.aux, ptr %i.auz, align 4, !noalias !11466
  %.pre527.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !11542
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit284.i.i.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit284.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i", %bb.gx
  %i.ava = phi i64 [ %.pre527.i.i.i.i.i.i.i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i272.i.i.i.i.i.i.i" ], [ %i.atc, %bb.gx ] ; 2 uses
  %.not461.i.i.i.i.i.i.i = icmp eq i64 %i.ava, 0
  br i1 %.not461.i.i.i.i.i.i.i, label %._crit_edge498.invoke.i.i.i.i.i.i.i, label %bb.ge

bb.ha:                                            ; preds = %bb.ej, %bb.ei, %bb.dh
  %.sroa.29.1.ph.i.i.i.i.i.i = phi i64 [ %.sroa.29.0.i.i.i.i.i.i, %bb.ej ], [ %.sroa.29.0.i.i.i.i.i.i, %bb.ei ], [ %.sink.i.i.i.i.i, %bb.dh ]
  %.sroa.27.1.ph.i.i.i.i.i.i = phi ptr [ %.sroa.27.0.i.i.i.i.i.i, %bb.ej ], [ %.sroa.27.0.i.i.i.i.i.i, %bb.ei ], [ %.sroa.5398.i.sroa.0.0.copyload.i.i.i.i.i.i, %bb.dh ]
  %.sroa.23.1.ph.i.i.i.i.i.i = phi i64 [ %.sroa.23.0.i.i.i.i.i.i, %bb.ej ], [ %.sroa.23.0.i.i.i.i.i.i, %bb.ei ], [ %i.rr, %bb.dh ]
  %.sroa.19.1.ph.i.i.i.i.i.i = phi i64 [ %.sroa.19.0.i.i.i.i.i.i, %bb.ej ], [ %.sroa.19.0.i.i.i.i.i.i, %bb.ei ], [ %.sroa.12.0.i.i.i.i.i.i.i, %bb.dh ]
  %.sroa.15.1.ph.i.i.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i.i.i, %bb.ej ], [ %.sroa.15.0.i.i.i.i.i.i, %bb.ei ], [ %i.wu, %bb.dh ]
  %.sroa.10.1.ph.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.i.i.i, %bb.ej ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.ei ], [ %.sroa.12.0.i.i.i.i.i.i.i, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11465
  store i64 %.sroa.10.1.ph.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !11462, !noalias !11358
  store i64 %.sroa.15.1.ph.i.i.i.i.i.i, ptr %.sroa.262.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11462, !noalias !11358
  store i64 %.sroa.19.1.ph.i.i.i.i.i.i, ptr %.sroa.363.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11462, !noalias !11358
  store i64 %.sroa.23.1.ph.i.i.i.i.i.i, ptr %.sroa.464.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11462, !noalias !11358
  store ptr %.sroa.27.1.ph.i.i.i.i.i.i, ptr %.sroa.565.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11462, !noalias !11358
  store i64 %.sroa.29.1.ph.i.i.i.i.i.i, ptr %.sroa.666.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11462, !noalias !11358
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$15fetch_directive17h2826521a535fc237E.exit.i.i.i.i.i"

bb.hb:                                            ; preds = %bb.gt, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11465
  store i8 %i.ack, ptr %i.i, align 8, !noalias !11465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.914.i.i.i.i.i.i, i64 7, i1 false), !noalias !11465
  store i64 %i.acj, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11465
  store <2 x i64> %2, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11465
  store i64 %.sroa.23.0.copyload.i.i.i.i.i.i, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11465
  store ptr %i.aci, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11465
  store i64 %i.ach, ptr %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.i.i.i.i.i.i, i64 24, i1 false), !noalias !11465
  call void @llvm.experimental.noalias.scope.decl(metadata !11646)
  %i.avb = load i64, ptr %i.am, align 8, !alias.scope !11647, !noundef !17 ; 2 uses
  %i.avc = load i64, ptr %1, align 8, !range !20, !alias.scope !11647, !noundef !17 ; 2 uses
  %i.avd = icmp eq i64 %i.avb, %i.avc
  br i1 %i.avd, label %bb.hc, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h38cf40f390fd76b9E.exit.i135.i.i.i.i.i"

bb.hc:                                            ; preds = %bb.hb
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h26969c981c617d43E"(ptr noalias noundef nonnull align 8 dereferenceable(520) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @489)
          to label %._crit_edge.i.i137.i.i.i.i.i unwind label %bb.hd, !noalias !11648

._crit_edge.i.i137.i.i.i.i.i:                     ; preds = %bb.hc
  %.pre.i11.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !11647
  %.pre6.i.i138.i.i.i.i.i = load i64, ptr %1, align 8, !range !20, !alias.scope !11647
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h38cf40f390fd76b9E.exit.i135.i.i.i.i.i"

bb.hd:                                            ; preds = %bb.hc
  %i.ave = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$insta..content..yaml..vendored..scanner..TokenType$GT$17hefa11f1e5a344395E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.i), !noalias !11649
  br label %common.resume.i.i.i.i.i

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h38cf40f390fd76b9E.exit.i135.i.i.i.i.i": ; preds = %._crit_edge.i.i137.i.i.i.i.i, %bb.hb
  %i.avf = phi i64 [ %.pre6.i.i138.i.i.i.i.i, %._crit_edge.i.i137.i.i.i.i.i ], [ %i.avc, %bb.hb ] ; 2 uses
  %i.avg = phi i64 [ %.pre.i11.i.i.i.i.i.i, %._crit_edge.i.i137.i.i.i.i.i ], [ %i.avb, %bb.hb ] ; 2 uses
  %i.avh = add i64 %i.avg, 1
  store i64 %i.avh, ptr %i.am, align 8, !alias.scope !11647
  %i.avi = load i64, ptr %i.bc, align 8, !alias.scope !11647, !noundef !17
  %i.avj = add i64 %i.avi, %i.avg                 ; 2 uses
  %.not.i10.i.i.i.i.i.i = icmp ult i64 %i.avj, %i.avf
  %i.avk = select i1 %.not.i10.i.i.i.i.i.i, i64 0, i64 %i.avf
  %.sroa.0.0.i.i136.i.i.i.i.i = sub nuw i64 %i.avj, %i.avk
  %i.avl = load ptr, ptr %i.bd, align 8, !alias.scope !11647, !nonnull !17, !noundef !17
  %i.avm = getelementptr inbounds nuw [80 x i8], ptr %i.avl, i64 %.sroa.0.0.i.i136.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.avm, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !11649
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$15fetch_directive17h2826521a535fc237E.exit.i.i.i.i.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$15fetch_directive17h2826521a535fc237E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h38cf40f390fd76b9E.exit.i135.i.i.i.i.i", %bb.ha, %bb.cd
  %.pr404.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h38cf40f390fd76b9E.exit.i135.i.i.i.i.i" ], [ %.sroa.10.1.ph.i.i.i.i.i.i, %bb.ha ], [ 19, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.914.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11453
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$16fetch_next_token17h8bb6e9764c080431E.exit.i.i.i.i"

bb.he:                                            ; preds = %bb.bw
  %.not237.i.i.i.i.i = icmp eq i64 %i.pj, 1
  br i1 %.not237.i.i.i.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.avn = add i64 %i.pk, 1                       ; 2 uses
  %.not.i147.i.i.i.i.i = icmp ult i64 %i.avn, %i.pl
  %i.avo = select i1 %.not.i147.i.i.i.i.i, i64 0, i64 %i.pl
  %.sroa.01.0.i148.i.i.i.i.i = sub nuw i64 %i.avn, %i.avo
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.sroa.01.0.i148.i.i.i.i.i
  %i.avq = load i32, ptr %i.avp, align 4, !range !56, !noalias !11370, !noundef !17
  %i.avr = icmp eq i32 %i.avq, 45
  br i1 %i.avr, label %bb.hh, label %.thread462.i.i.i.i.i

bb.hg:                                            ; preds = %bb.he
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #54, !noalias !11370
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.avs = icmp ugt i64 %i.pj, 2
  br i1 %i.avs, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.avt = add i64 %i.pk, 2                       ; 2 uses
  %.not.i151.i.i.i.i.i = icmp ult i64 %i.avt, %i.pl
  %i.avu = select i1 %.not.i151.i.i.i.i.i, i64 0, i64 %i.pl
  %.sroa.01.0.i152.i.i.i.i.i = sub nuw i64 %i.avt, %i.avu
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.sroa.01.0.i152.i.i.i.i.i
  %i.avw = load i32, ptr %i.avv, align 4, !range !56, !noalias !11370, !noundef !17
  %i.avx = icmp eq i32 %i.avw, 45
  br i1 %i.avx, label %bb.hk, label %.thread462.i.i.i.i.i

bb.hj:                                            ; preds = %bb.hh
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @494) #54, !noalias !11370
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %.not238.i.i.i.i.i = icmp eq i64 %i.pj, 3
  br i1 %.not238.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.avy = add i64 %i.pk, 3                       ; 2 uses
  %.not.i155.i.i.i.i.i = icmp ult i64 %i.avy, %i.pl
  %i.avz = select i1 %.not.i155.i.i.i.i.i, i64 0, i64 %i.pl
  %.sroa.01.0.i156.i.i.i.i.i = sub nuw i64 %i.avy, %i.avz
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.sroa.01.0.i156.i.i.i.i.i
  %i.awb = load i32, ptr %i.awa, align 4, !range !56, !noalias !11370, !noundef !17
  switch i32 %i.awb, label %.thread462.i.i.i.i.i [
    i32 32, label %bb.hn
    i32 9, label %bb.hn
    i32 10, label %bb.hn
    i32 13, label %bb.hn
    i32 0, label %bb.hn
  ]

bb.hm:                                            ; preds = %bb.hk
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #54, !noalias !11370
  unreachable

bb.hn:                                            ; preds = %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11453
  store i8 4, ptr %i.v, align 8, !noalias !11453
  call fastcc void @"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$24fetch_document_indicator17he940ba65a283dc87E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(520) %1, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.v), !noalias !11370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11453
  %i.awc = load i64, ptr %i.w, align 8, !range !30, !noalias !11453, !noundef !17 ; 2 uses
  %.not82.i.i.i.i.i = icmp eq i64 %i.awc, -9223372036854775808
  br i1 %.not82.i.i.i.i.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.sroa.448.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.262.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.448.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !11650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11453
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$17fetch_more_tokens17h140515eb5e4d47b8E.exit.thread39.i.i.i"

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11453
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$16fetch_next_token17h8bb6e9764c080431E.exit.thread.i.i.i.i"

bb.hq:                                            ; preds = %bb.bw
  %.not239.i.i.i.i.i = icmp eq i64 %i.pj, 1
  br i1 %.not239.i.i.i.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.awd = add i64 %i.pk, 1                       ; 2 uses
  %.not.i163.i.i.i.i.i = icmp ult i64 %i.awd, %i.pl
  %i.awe = select i1 %.not.i163.i.i.i.i.i, i64 0, i64 %i.pl
  %.sroa.01.0.i164.i.i.i.i.i = sub nuw i64 %i.awd, %i.awe
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.sroa.01.0.i164.i.i.i.i.i
  %i.awg = load i32, ptr %i.awf, align 4, !range !56, !noalias !11370, !noundef !17
  %i.awh = icmp eq i32 %i.awg, 46
  br i1 %i.awh, label %bb.ht, label %.thread462.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hq
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @496) #54, !noalias !11370
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.awi = icmp ugt i64 %i.pj, 2
  br i1 %i.awi, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.awj = add i64 %i.pk, 2                       ; 2 uses
  %.not.i167.i.i.i.i.i = icmp ult i64 %i.awj, %i.pl
  %i.awk = select i1 %.not.i167.i.i.i.i.i, i64 0, i64 %i.pl
  %.sroa.01.0.i168.i.i.i.i.i = sub nuw i64 %i.awj, %i.awk
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.sroa.01.0.i168.i.i.i.i.i
  %i.awm = load i32, ptr %i.awl, align 4, !range !56, !noalias !11370, !noundef !17
  %i.awn = icmp eq i32 %i.awm, 46
  br i1 %i.awn, label %bb.hw, label %.thread462.i.i.i.i.i

bb.hv:                                            ; preds = %bb.ht
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #54, !noalias !11370
  unreachable

bb.hw:                                            ; preds = %bb.hu
  %.not240.i.i.i.i.i = icmp eq i64 %i.pj, 3
  br i1 %.not240.i.i.i.i.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.awo = add i64 %i.pk, 3                       ; 2 uses
  %.not.i171.i.i.i.i.i = icmp ult i64 %i.awo, %i.pl
  %i.awp = select i1 %.not.i171.i.i.i.i.i, i64 0, i64 %i.pl
  %.sroa.01.0.i172.i.i.i.i.i = sub nuw i64 %i.awo, %i.awp
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.sroa.01.0.i172.i.i.i.i.i
  %i.awr = load i32, ptr %i.awq, align 4, !range !56, !noalias !11370, !noundef !17
  switch i32 %i.awr, label %.thread462.i.i.i.i.i [
    i32 32, label %bb.hz
    i32 9, label %bb.hz
    i32 10, label %bb.hz
    i32 13, label %bb.hz
    i32 0, label %bb.hz
  ]

bb.hy:                                            ; preds = %bb.hw
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #54, !noalias !11370
  unreachable

bb.hz:                                            ; preds = %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11453
  store i8 5, ptr %i.t, align 8, !noalias !11453
  call fastcc void @"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$24fetch_document_indicator17he940ba65a283dc87E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(520) %1, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.t), !noalias !11370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11453
  %i.aws = load i64, ptr %i.u, align 8, !range !30, !noalias !11453, !noundef !17 ; 2 uses
  %.not88.i.i.i.i.i = icmp eq i64 %i.aws, -9223372036854775808
  br i1 %.not88.i.i.i.i.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %.sroa.462.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.262.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.462.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !11650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11453
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$17fetch_more_tokens17h140515eb5e4d47b8E.exit.thread39.i.i.i"

end_hunk_2
