Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_check_fmt-c391ccc03c687c53.nickel_check_fmt.2e6efe50e6e84579-cgu.0?download=true
inline.NumInlined: 568
inline.NumDeleted: 293
begin_hunk_0_@_ZN16nickel_check_fmt4main17h516d0c6faad95e0aE:bb.a

bb.t:                                             ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.u:                                             ; preds = %bb.s
  %i.dd = load i64, ptr %i.ak, align 8, !range !8, !noundef !5 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -9223372036854775808
  %i.df = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.df, i64 80, i1 false)
  br i1 %i.de, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !247
  %i.dg = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #27, !noalias !247 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.w, label %bb.dy, !prof !9

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #28
          to label %.noexc unwind label %bb.x, !noalias !247

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$topiary_core..error..FormatterError$GT$17h9705b9fdf73a78adE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %.sroa.6) #29
          to label %bb.ec unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.z:                                             ; preds = %bb.u
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.630.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 %i.dd, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !248
  %i.dk = call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #27, !noalias !248 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #28
          to label %.noexc89 unwind label %bb.dx, !noalias !249

.noexc89:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dk, ptr noundef nonnull align 1 dereferenceable(6) @13, i64 6, i1 false), !noalias !250
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dm, ptr noundef nonnull align 8 dereferenceable(128) %i.al, i64 128, i1 false)
  %i.dn = load ptr, ptr %i.am, align 8, !noundef !5
  store i64 6, ptr %i.aj, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.dk, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 6, ptr %.sroa.5148.0..sroa_idx, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.aj, i64 176 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aj, i64 152 ; 2 uses
  store i64 -9223372036854775808, ptr %i.dp, align 8
  %.sroa.0126.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.4127.0.copyload = load ptr, ptr %.sroa.4127.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  %i.dq = icmp ult i64 %.sroa.5128.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4127.0.copyload, i64 %.sroa.5128.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %.sroa.4127.0.copyload, ptr %i.ai, align 8
  %.sroa.09.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  store ptr %.sroa.4127.0.copyload, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8
  %.sroa.09.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store i64 %.sroa.0126.0.copyload, ptr %.sroa.09.sroa.3.0..sroa_idx, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  store ptr %i.dr, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.15.16..sroa.617.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.17.16..sroa.617.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.19.16..sroa.617.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.20.16..sroa.617.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.449.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.550.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.sroa.651.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.sroa.462.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.563.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.524.0..sroa_idx25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.i.sroa.7.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.7.i.sroa.8.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.7.i.sroa.9.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.7.i.sroa.10.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.7.i.sroa.10.i.i.sroa.6.0..sroa.7.i.sroa.10.0..sroa_idx67.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.7.i.sroa.10.i.i.sroa.7.0..sroa.7.i.sroa.10.0..sroa_idx67.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.544.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.7.i.sroa.7.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.7.i.sroa.8.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.7.i.sroa.9.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.7.i.sroa.10.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.7.i.sroa.10.i.i.sroa.6.0..sroa.7.i.sroa.10.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.7.i.sroa.10.i.i.sroa.7.0..sroa.7.i.sroa.10.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.431.0..sroa_idx.i.i98.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.532.0..sroa_idx.i.i99.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.449.0..sroa_idx.i.i100.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.550.0..sroa_idx.i.i101.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.651.0..sroa_idx.i.i102.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.462.0..sroa_idx.i.i105.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.563.0..sroa_idx.i.i106.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.524.0..sroa_idx25.i.i107.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i108.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.en = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4169.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.550.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.12.i.i.sroa.7.0..sroa.550.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.12.i.i.sroa.8.0..sroa.550.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.457.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5158.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6159.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7160.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.467.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5163.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7164.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8165.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.10166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.9.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.10.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.11.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.12.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.12.i.i.sroa.7.0..sroa.12.0..sroa_idx35.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.12.i.i.sroa.8.0..sroa.12.0..sroa_idx35.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit109", %bb.ab
  %i.et = phi ptr [ %.val2.i.i.i113, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit109" ], [ %i.dr, %bb.ab ] ; 3 uses
  %i.eu = phi i64 [ %.pr, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit109" ], [ 1, %bb.ab ] ; 2 uses
  %.not = icmp eq i64 %i.eu, 0
  br i1 %.not, label %bb.ad, label %bb.ae, !prof !251

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load ptr, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8, !alias.scope !252, !nonnull !5, !noundef !5 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, %i.et
  br i1 %i.ew, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"

bb.ae:                                            ; preds = %bb.ac
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ex = call fastcc noundef i64 @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1e725c24d9b5aceaE"(ptr noalias noundef align 8 dereferenceable(32) %i.ai, i64 noundef %i.eu)
  %.not45 = icmp ne i64 %i.ex, 0
  %.pre = load ptr, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.val2.i.i.i.pre = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %0 = icmp eq ptr %.pre, %.val2.i.i.i.pre
  %or.cond = select i1 %.not45, i1 true, i1 %0
  br i1 %or.cond, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit": ; preds = %bb.ai, %.body
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E"(ptr noalias noundef align 8 dereferenceable(40) %i.ai) #29
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$topiary_core..language..Language$GT$17h5c34b3d68f864dd9E"(ptr noalias noundef align 8 dereferenceable(184) %i.aj) #29
          to label %common.resume unwind label %bb.du

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit": ; preds = %bb.ae, %bb.ad
  %.val2.i.i.i113 = phi ptr [ %i.et, %bb.ad ], [ %.val2.i.i.i.pre, %bb.ae ] ; 4 uses
  %.pn405 = phi ptr [ %i.ev, %bb.ad ], [ %.pre, %bb.ae ] ; 6 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn405, i64 24
  store ptr %storemerge, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8
  %.sroa.0129.0 = load i64, ptr %.pn405, align 8, !noalias !5 ; 7 uses
  %.sroa.10.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %.pn405, i64 8
  %.sroa.10.sroa.0.0 = load ptr, ptr %.sroa.10.sroa.0.0.in, align 8, !noalias !5 ; 7 uses
  %.sroa.10.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %.pn405, i64 16
  %.sroa.10.sroa.7.0 = load i64, ptr %.sroa.10.sroa.7.0.in, align 8, !noalias !5 ; 3 uses
  %.not46 = icmp eq i64 %.sroa.0129.0, -9223372036854775808
  br i1 %.not46, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685", label %bb.af

bb.af:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0) ]
  store ptr %.sroa.10.sroa.0.0, ptr %i.af, align 8
  store i64 %.sroa.10.sroa.7.0, ptr %i.ds, align 8
  store ptr %i.af, ptr %i.ag, align 8
  store ptr @"_ZN64_$LT$std..ffi..os_str..Display$u20$as$u20$core..fmt..Display$GT$3fmt17h6d6a875bfb5b6c00E", ptr %.sroa.434.0..sroa_idx, align 8
  store ptr @15, ptr %i.ah, align 8
  store i64 2, ptr %i.dt, align 8
  store ptr null, ptr %i.du, align 8
  store ptr %i.ag, ptr %i.dv, align 8
  store i64 1, ptr %i.dw, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.ak unwind label %bb.aj

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"
  %storemerge.le = getelementptr inbounds nuw i8, ptr %.pn405, i64 24
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread": ; preds = %bb.ae, %bb.ad, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685"
  %.val2.i.i.i = phi ptr [ %.val2.i.i.i113, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685" ], [ %i.et, %bb.ad ], [ %.val2.i.i.i.pre, %bb.ae ] ; 2 uses
  %i.ey = phi ptr [ %storemerge.le, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685" ], [ %i.ev, %bb.ad ], [ %.pre, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ez = ptrtoint ptr %.val2.i.i.i to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub nuw i64 %i.ez, %i.fa
  %i.fc = udiv exact i64 %i.fb, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.fd = icmp eq ptr %.val2.i.i.i, %i.ey
  br i1 %i.fd, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread", %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ff, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i" ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread" ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ff = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.fe, align 8, !alias.scope !256, !noalias !257 ; 2 uses
  %i.fg = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.fg, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fh = getelementptr i8, ptr %i.fe, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !256, !noalias !257, !nonnull !5, !noundef !5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !258
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i": ; preds = %bb.ag, %.lr.ph.i.i.i.i
  %i.fi = icmp eq i64 %i.ff, %i.fc
  br i1 %i.fi, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread"
  %i.fj = load i64, ptr %.sroa.09.sroa.3.0..sroa_idx, align 8, !alias.scope !257, !noundef !5 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E.exit", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i"
  %i.fl = load ptr, ptr %i.ai, align 8, !alias.scope !257, !nonnull !5, !noundef !5
  %i.fm = mul nuw i64 %i.fj, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !257
  br label %"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E.exit"

.body:                                            ; preds = %bb.dm, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit", %bb.an, %bb.aj
  %.pn49 = phi { ptr, i32 } [ %i.fu, %bb.an ], [ %i.fo, %bb.aj ], [ %eh.lpad-body62, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit" ], [ %eh.lpad-body62, %bb.dm ]
  %i.fn = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.fn, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit", label %bb.ai

bb.ai:                                            ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.sroa.0.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit"

bb.aj:                                            ; preds = %bb.ak, %bb.af
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_ZN3std2fs4read5inner17h67990cf9e75cbe0dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.sroa.0.0, i64 noundef %.sroa.10.sroa.7.0)
          to label %_ZN3std2fs4read17h40e962119b4f89cbE.exit unwind label %bb.aj, !noalias !259

_ZN3std2fs4read17h40e962119b4f89cbE.exit:         ; preds = %bb.ak
  %i.fp = load i64, ptr %i.ad, align 8, !range !8, !noundef !5 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, -9223372036854775808
  %i.fr = load ptr, ptr %.sroa.536.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.fq, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %_ZN3std2fs4read17h40e962119b4f89cbE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.fr, ptr %i.w, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.fs = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #27 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.am, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit", !prof !9

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc97 unwind label %bb.an

.noexc97:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #29
          to label %.body unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit": ; preds = %bb.al
  store ptr %i.fr, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111"

bb.ap:                                            ; preds = %_ZN3std2fs4read17h40e962119b4f89cbE.exit
  %.sroa.637.0.copyload = load i64, ptr %.sroa.637.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.fp, ptr %i.ae, align 8
  store ptr %i.fr, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 %.sroa.637.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dx, align 8
  store i64 0, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ae, ptr %i.ab, align 8
  store i64 0, ptr %i.dz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !261
  invoke void @_ZN12topiary_core10read_input17h8bdcce40ba853731E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @10)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !262

.noexc99:                                         ; preds = %bb.ap
  %i.fw = load i64, ptr %i.t, align 8, !range !8, !noalias !261, !noundef !5 ; 5 uses
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808
  br i1 %i.fx, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %.noexc99
  %i.fy = load ptr, ptr %i.ea, align 8, !noalias !261, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !261
  store ptr %i.fy, ptr %i.s, align 8, !noalias !263
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !264
  %i.fz = call noundef dereferenceable_or_null(29) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, 9) 1) #27, !noalias !264 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.ar, label %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #28
          to label %.noexc.i.i unwind label %bb.as, !noalias !265

.noexc.i.i:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #29
          to label %.body61 unwind label %bb.at, !noalias !266

bb.at:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !266
  unreachable

_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread: ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.fz, ptr noundef nonnull align 1 dereferenceable(29) @11, i64 29, i1 false), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !261
  %i.gd = ptrtoint ptr %i.fz to i64
  br label %.loopexit259

bb.au:                                            ; preds = %.noexc99
  %.sroa.553.0.copyload.i = load i64, ptr %i.ea, align 8, !noalias !261 ; 2 uses
  %.sroa.654.0.copyload.i = load ptr, ptr %.sroa.654.0..sroa_idx.i, align 8, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !261
  %i.ge = ptrtoint ptr %.sroa.654.0.copyload.i to i64 ; 2 uses
  %i.gf = inttoptr i64 %.sroa.553.0.copyload.i to ptr ; 4 uses
  %i.gg = icmp ne i64 %.sroa.553.0.copyload.i, 0
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !269
  invoke void @_ZN12topiary_core11tree_sitter5parse17h52cf716cf2dd399cE(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gf, i64 noundef %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.do, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.dc, !noalias !270

.noexc.i:                                         ; preds = %bb.au
  %i.gh = load i64, ptr %i.r, align 8, !range !271, !noalias !269, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.gh, -9223372036854775801
  %i.gi = load ptr, ptr %i.eb, align 8, !noalias !269 ; 3 uses
  br i1 %.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc.i
  %.sroa.12.16.copyload = load ptr, ptr %.sroa.617.0..sroa_idx.i.i, align 8, !noalias !272
  %.sroa.15.16.copyload = load i64, ptr %.sroa.15.16..sroa.617.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !272
  %.sroa.17.16.copyload = load i64, ptr %.sroa.17.16..sroa.617.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !272
  %.sroa.19.16.copyload = load ptr, ptr %.sroa.19.16..sroa.617.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20.16..sroa.617.0..sroa_idx.i.i.sroa_idx, i64 32, i1 false), !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !269
  %i.gj = ptrtoint ptr %i.gi to i64
  br label %_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i

bb.aw:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !269
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !269
  store ptr %i.gi, ptr %i.q, align 8, !noalias !274
  %i.gk = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !274 ; 2 uses
  %i.gl = icmp ult i64 %i.gk, 6
  call void @llvm.assume(i1 %i.gl)
  %i.gm = icmp samesign ugt i64 %i.gk, 3
  br i1 %i.gm, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.sroa.10.i.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !274
  invoke void @_ZN12topiary_core11tree_sitter16apply_query_tree17h3762620e3bf50aa0E(ptr noalias noundef nonnull sret([416 x i8]) align 8 captures(address) dereferenceable(416) %i.o, ptr noundef nonnull %i.gi, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gf, i64 noundef %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dm)
          to label %.noexc25.i unwind label %bb.dc, !noalias !275

.noexc25.i:                                       ; preds = %bb.ax
  %i.gn = load i64, ptr %i.o, align 8, !range !8, !noalias !274, !noundef !5 ; 2 uses
  %i.go = icmp eq i64 %i.gn, -9223372036854775808
  %.sroa.7.i.sroa.0.0.copyload57.i.i = load i64, ptr %i.eh, align 8, !noalias !274 ; 2 uses
  %.sroa.7.i.sroa.7.0.copyload60.i.i = load i64, ptr %.sroa.7.i.sroa.7.0..sroa_idx59.i.i, align 8, !noalias !274 ; 2 uses
  %.sroa.7.i.sroa.8.0.copyload63.i.i = load ptr, ptr %.sroa.7.i.sroa.8.0..sroa_idx62.i.i, align 8, !noalias !274 ; 2 uses
  %.sroa.7.i.sroa.9.0.copyload66.i.i = load i64, ptr %.sroa.7.i.sroa.9.0..sroa_idx65.i.i, align 8, !noalias !274 ; 2 uses
  %.sroa.7.i.sroa.10.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.7.i.sroa.10.0..sroa_idx67.i.i, align 8, !noalias !274 ; 2 uses
  %.sroa.7.i.sroa.10.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.7.i.sroa.10.i.i.sroa.6.0..sroa.7.i.sroa.10.0..sroa_idx67.i.i.sroa_idx, align 8, !noalias !274 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7.0..sroa.7.i.sroa.10.0..sroa_idx67.i.i.sroa_idx, i64 32, i1 false), !noalias !274
  br i1 %i.go, label %bb.ba, label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !276
  store i64 4, ptr %i.ec, align 8, !noalias !276
  store ptr @3, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !276
  store i64 12, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !276
  store ptr @1, ptr %i.ed, align 8, !noalias !276
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i, align 8, !noalias !276
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.550.0..sroa_idx.i.i.i.i.i, align 8, !noalias !276
  store i64 0, ptr %i.g, align 8, !noalias !276
end_hunk_0
