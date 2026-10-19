Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_check_fmt-c391ccc03c687c53.nickel_check_fmt.2e6efe50e6e84579-cgu.0?download=true
inline.NumInlined: 568
inline.NumDeleted: 293
begin_hunk_0_@_ZN16nickel_check_fmt4main17h516d0c6faad95e0aE:bb.a
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
  br i1 %.not, label %bb.ad, label %bb.ae, !prof !245

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load ptr, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8, !alias.scope !246, !nonnull !4, !noundef !4 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, %i.et
  br i1 %i.ew, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"

bb.ae:                                            ; preds = %bb.ac
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ex = call fastcc noundef i64 @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1e725c24d9b5aceaE"(ptr noalias noundef align 8 dereferenceable(32) %i.ai, i64 noundef %i.eu)
  %.not45 = icmp eq i64 %i.ex, 0
  %.pre = load ptr, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.val2.i.i.i.pre = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not45, label %bb.af, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit": ; preds = %bb.aj, %.body
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E"(ptr noalias noundef align 8 dereferenceable(40) %i.ai) #29
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$topiary_core..language..Language$GT$17h5c34b3d68f864dd9E"(ptr noalias noundef align 8 dereferenceable(184) %i.aj) #29
          to label %common.resume unwind label %bb.dw

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit": ; preds = %bb.af, %bb.ad
  %.val2.i.i.i113 = phi ptr [ %i.et, %bb.ad ], [ %.val2.i.i.i.pre, %bb.af ] ; 4 uses
  %.pn405 = phi ptr [ %i.ev, %bb.ad ], [ %.pre, %bb.af ] ; 6 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn405, i64 24
  store ptr %storemerge, ptr %.sroa.09.sroa.2.0..sroa_idx, align 8
  %.sroa.0129.0 = load i64, ptr %.pn405, align 8, !noalias !4 ; 7 uses
  %.sroa.10.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %.pn405, i64 8
  %.sroa.10.sroa.0.0 = load ptr, ptr %.sroa.10.sroa.0.0.in, align 8, !noalias !4 ; 7 uses
  %.sroa.10.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %.pn405, i64 16
  %.sroa.10.sroa.7.0 = load i64, ptr %.sroa.10.sroa.7.0.in, align 8, !noalias !4 ; 3 uses
  %.not46 = icmp eq i64 %.sroa.0129.0, -9223372036854775808
  br i1 %.not46, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685", label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ey = icmp eq ptr %.pre, %.val2.i.i.i.pre
  br i1 %i.ey, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"

bb.ag:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"
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
          to label %bb.al unwind label %bb.ak

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit"
  %storemerge.le = getelementptr inbounds nuw i8, ptr %.pn405, i64 24
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread": ; preds = %bb.ae, %bb.ad, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685"
  %.val2.i.i.i = phi ptr [ %.val2.i.i.i113, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685" ], [ %i.et, %bb.ad ], [ %.val2.i.i.i.pre, %bb.ae ] ; 2 uses
  %i.ez = phi ptr [ %storemerge.le, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread.split.loop.exit685" ], [ %i.ev, %bb.ad ], [ %.pre, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.fa = ptrtoint ptr %.val2.i.i.i to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub nuw i64 %i.fa, %i.fb
  %i.fd = udiv exact i64 %i.fc, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.fe = icmp eq ptr %.val2.i.i.i, %i.ez
  br i1 %i.fe, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread", %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.fg, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i" ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread" ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.fg = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ff, align 8, !alias.scope !250, !noalias !251 ; 2 uses
  %i.fh = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.fh, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fi = getelementptr i8, ptr %i.ff, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.fi, align 8, !alias.scope !250, !noalias !251, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !252
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i": ; preds = %bb.ah, %.lr.ph.i.i.i.i
  %i.fj = icmp eq i64 %i.fg, %i.fd
  br i1 %i.fj, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i": ; preds = %bb.af, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h861957114941c165E.exit.thread"
  %i.fk = load i64, ptr %.sroa.09.sroa.3.0..sroa_idx, align 8, !alias.scope !251, !noundef !4 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E.exit", label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i"
  %i.fm = load ptr, ptr %i.ai, align 8, !alias.scope !251, !nonnull !4, !noundef !4
  %i.fn = mul nuw i64 %i.fk, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !251
  br label %"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E.exit"

.body:                                            ; preds = %bb.do, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit", %bb.ao, %bb.ak
  %.pn49 = phi { ptr, i32 } [ %i.fv, %bb.ao ], [ %i.fp, %bb.ak ], [ %eh.lpad-body62, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit" ], [ %eh.lpad-body62, %bb.do ]
  %i.fo = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.fo, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit", label %bb.aj

bb.aj:                                            ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.sroa.0.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit"

bb.ak:                                            ; preds = %bb.al, %bb.ag
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_ZN3std2fs4read5inner17h67990cf9e75cbe0dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.sroa.0.0, i64 noundef %.sroa.10.sroa.7.0)
          to label %_ZN3std2fs4read17h40e962119b4f89cbE.exit unwind label %bb.ak

_ZN3std2fs4read17h40e962119b4f89cbE.exit:         ; preds = %bb.al
  %i.fq = load i64, ptr %i.ad, align 8, !range !7, !noundef !4 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, -9223372036854775808
  %i.fs = load ptr, ptr %.sroa.536.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.fr, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZN3std2fs4read17h40e962119b4f89cbE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.fs, ptr %i.w, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.ft = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #27 ; 3 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.an, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit", !prof !8

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc97 unwind label %bb.ao

.noexc97:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #29
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit": ; preds = %bb.am
  store ptr %i.fs, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111"

bb.aq:                                            ; preds = %_ZN3std2fs4read17h40e962119b4f89cbE.exit
  %.sroa.637.0.copyload = load i64, ptr %.sroa.637.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.fq, ptr %i.ae, align 8
  store ptr %i.fs, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 %.sroa.637.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dx, align 8
  store i64 0, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ae, ptr %i.ab, align 8
  store i64 0, ptr %i.dz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !254
  invoke void @_ZN12topiary_core10read_input17h8bdcce40ba853731E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @10)
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.aq
  %i.fx = load i64, ptr %i.t, align 8, !range !7, !noalias !254, !noundef !4 ; 5 uses
  %i.fy = icmp eq i64 %i.fx, -9223372036854775808
  br i1 %i.fy, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %.noexc99
  %i.fz = load ptr, ptr %i.ea, align 8, !noalias !254, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !254
  store ptr %i.fz, ptr %i.s, align 8, !noalias !255
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !256
  %i.ga = call noundef dereferenceable_or_null(29) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, 9) 1) #27, !noalias !256 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.as, label %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #28
          to label %.noexc.i.i unwind label %bb.at, !noalias !257

.noexc.i.i:                                       ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #29
          to label %.body61 unwind label %bb.au, !noalias !257

bb.au:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !257
  unreachable

_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread: ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ga, ptr noundef nonnull align 1 dereferenceable(29) @11, i64 29, i1 false), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !254
  %i.ge = ptrtoint ptr %i.ga to i64
  br label %.loopexit259

bb.av:                                            ; preds = %.noexc99
  %.sroa.553.0.copyload.i = load i64, ptr %i.ea, align 8, !noalias !254 ; 2 uses
  %.sroa.654.0.copyload.i = load ptr, ptr %.sroa.654.0..sroa_idx.i, align 8, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !254
  %i.gf = ptrtoint ptr %.sroa.654.0.copyload.i to i64 ; 2 uses
  %i.gg = inttoptr i64 %.sroa.553.0.copyload.i to ptr ; 4 uses
  %i.gh = icmp ne i64 %.sroa.553.0.copyload.i, 0
  call void @llvm.assume(i1 %i.gh)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !260
  invoke void @_ZN12topiary_core11tree_sitter5parse17h52cf716cf2dd399cE(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gg, i64 noundef %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.do, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.de, !noalias !261

.noexc.i:                                         ; preds = %bb.av
  %i.gi = load i64, ptr %i.r, align 8, !range !262, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.gi, -9223372036854775801
  %i.gj = load ptr, ptr %i.eb, align 8, !noalias !260 ; 3 uses
  br i1 %.not.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc.i
  %.sroa.12.16.copyload = load ptr, ptr %.sroa.617.0..sroa_idx.i.i, align 8, !noalias !263
  %.sroa.15.16.copyload = load i64, ptr %.sroa.15.16..sroa.617.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !263
  %.sroa.17.16.copyload = load i64, ptr %.sroa.17.16..sroa.617.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !263
  %.sroa.19.16.copyload = load ptr, ptr %.sroa.19.16..sroa.617.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20.16..sroa.617.0..sroa_idx.i.i.sroa_idx, i64 32, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !260
  %i.gk = ptrtoint ptr %i.gj to i64
  br label %_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i

bb.ax:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !260
  store ptr %i.gj, ptr %i.q, align 8, !noalias !265
  %i.gl = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !265 ; 2 uses
  %i.gm = icmp ult i64 %i.gl, 6
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp samesign ugt i64 %i.gl, 3
  br i1 %i.gn, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.sroa.10.i.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !265
  invoke void @_ZN12topiary_core11tree_sitter16apply_query_tree17h3762620e3bf50aa0E(ptr noalias noundef nonnull sret([416 x i8]) align 8 captures(address) dereferenceable(416) %i.o, ptr noundef nonnull %i.gj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gg, i64 noundef %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dm)
          to label %.noexc25.i unwind label %bb.de, !noalias !261

.noexc25.i:                                       ; preds = %bb.ay
  %i.go = load i64, ptr %i.o, align 8, !range !7, !noalias !265, !noundef !4 ; 2 uses
  %i.gp = icmp eq i64 %i.go, -9223372036854775808
  %.sroa.7.i.sroa.0.0.copyload57.i.i = load i64, ptr %i.eh, align 8, !noalias !265 ; 2 uses
  %.sroa.7.i.sroa.7.0.copyload60.i.i = load i64, ptr %.sroa.7.i.sroa.7.0..sroa_idx59.i.i, align 8, !noalias !265 ; 2 uses
  %.sroa.7.i.sroa.8.0.copyload63.i.i = load ptr, ptr %.sroa.7.i.sroa.8.0..sroa_idx62.i.i, align 8, !noalias !265 ; 2 uses
  %.sroa.7.i.sroa.9.0.copyload66.i.i = load i64, ptr %.sroa.7.i.sroa.9.0..sroa_idx65.i.i, align 8, !noalias !265 ; 2 uses
  %.sroa.7.i.sroa.10.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.7.i.sroa.10.0..sroa_idx67.i.i, align 8, !noalias !265 ; 2 uses
  %.sroa.7.i.sroa.10.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.7.i.sroa.10.i.i.sroa.6.0..sroa.7.i.sroa.10.0..sroa_idx67.i.i.sroa_idx, align 8, !noalias !265 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7.0..sroa.7.i.sroa.10.0..sroa_idx67.i.i.sroa_idx, i64 32, i1 false), !noalias !265
  br i1 %i.gp, label %bb.bb, label %bb.bc

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !266
  store i64 4, ptr %i.ec, align 8, !noalias !266
  store ptr @3, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store i64 12, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store ptr @1, ptr %i.ed, align 8, !noalias !266
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.550.0..sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store i64 0, ptr %i.g, align 8, !noalias !266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.651.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !265
  store ptr @3, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store i64 12, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store i64 0, ptr %i.ee, align 8, !noalias !266
  store ptr @2, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i, align 8, !noalias !266
  store i64 98, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i, align 8, !noalias !266
  store i32 1, ptr %i.ef, align 8, !noalias !266
  store i32 292, ptr %i.eg, align 4, !noalias !266
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
          to label %bb.ba unwind label %bb.db, !noalias !267

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !266
  br label %bb.ay

bb.bb:                                            ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7, i64 32, i1 false), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i.i.sroa.7)
  br label %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.i.i

bb.bc:                                            ; preds = %.noexc25.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.544.0..sroa_idx.i.i.i, i64 328, i1 false), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !265
  store i64 %.sroa.7.i.sroa.0.0.copyload57.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !265
  store i64 %.sroa.7.i.sroa.7.0.copyload60.i.i, ptr %.sroa.7.i.sroa.7.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !265
  store ptr %.sroa.7.i.sroa.8.0.copyload63.i.i, ptr %.sroa.7.i.sroa.8.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !265
  store i64 %.sroa.7.i.sroa.9.0.copyload66.i.i, ptr %.sroa.7.i.sroa.9.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !265
  store i64 %.sroa.7.i.sroa.10.i.i.sroa.0.0.copyload, ptr %.sroa.7.i.sroa.10.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !265
  store ptr %.sroa.7.i.sroa.10.i.i.sroa.6.0.copyload, ptr %.sroa.7.i.sroa.10.i.i.sroa.6.0..sroa.7.i.sroa.10.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i.sroa_idx, align 8, !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7.0..sroa.7.i.sroa.10.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.sroa.10.i.i.sroa.7, i64 32, i1 false), !noalias !265
  store i64 %i.go, ptr %i.p, align 8, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i.i.sroa.7)
  invoke void @_ZN12topiary_core15atom_collection14AtomCollection12post_process17h64debe5c5e5e9665E(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.p)
          to label %bb.be unwind label %bb.bd, !noalias !267

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i": ; preds = %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i", %bb.bd
  %.pn82.i.i.i = phi { ptr, i32 } [ %i.gq, %bb.bd ], [ %.pn.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i" ], [ %.pn.i.i.i, %bb.cf ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$topiary_core..atom_collection..AtomCollection$GT$17h0b56ef0d7db3f96bE"(ptr noalias noundef align 8 dereferenceable(416) %i.p) #29
          to label %.body.i unwind label %bb.da, !noalias !269

bb.bd:                                            ; preds = %bb.bg, %bb.bf, %bb.bc
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i"

bb.be:                                            ; preds = %bb.bc
  %i.gr = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !265 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp samesign ugt i64 %i.gr, 3
  br i1 %i.gt, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !265
  %i.gu = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !265, !nonnull !4, !noundef !4
  %i.gv = load i64, ptr %.sroa.7.i.sroa.7.0..sroa.49.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !265, !noundef !4
  %i.gw = load i64, ptr %i.dp, align 8, !range !7, !alias.scope !270, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.gw, -9223372036854775808 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !270, !nonnull !4
  %.val5.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !270
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i, i64 2, i64 %.val5.i.i.i.i
  %.sroa.02.0.i.i.i.i = select i1 %.not.i.i.i, ptr @6, ptr %.val.i.i.i.i
  invoke void @_ZN12topiary_core6pretty6render17hc472811c7d4be47fE(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gu, i64 noundef %i.gv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i)
          to label %bb.bi unwind label %bb.bd, !noalias !267

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !271
  store i64 4, ptr %i.ei, align 8, !noalias !271
  store ptr @3, ptr %.sroa.431.0..sroa_idx.i.i98.i.i.i, align 8, !noalias !271
  store i64 12, ptr %.sroa.532.0..sroa_idx.i.i99.i.i.i, align 8, !noalias !271
  store ptr @5, ptr %i.ej, align 8, !noalias !271
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i100.i.i.i, align 8, !noalias !271
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.550.0..sroa_idx.i.i101.i.i.i, align 8, !noalias !271
  store i64 0, ptr %i.f, align 8, !noalias !271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.651.0..sroa_idx.i.i102.i.i.i, i8 0, i64 16, i1 false), !noalias !265
  store ptr @3, ptr %.sroa.462.0..sroa_idx.i.i105.i.i.i, align 8, !noalias !271
  store i64 12, ptr %.sroa.563.0..sroa_idx.i.i106.i.i.i, align 8, !noalias !271
  store i64 0, ptr %i.ek, align 8, !noalias !271
  store ptr @2, ptr %.sroa.524.0..sroa_idx25.i.i107.i.i.i, align 8, !noalias !271
  store i64 98, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i108.i.i.i, align 8, !noalias !271
  store i32 1, ptr %i.el, align 8, !noalias !271
  store i32 300, ptr %i.em, align 4, !noalias !271
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.bh unwind label %bb.bd, !noalias !267

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !271
  br label %bb.bf

end_hunk_0
begin_hunk_1_@_ZN16nickel_check_fmt4main17h516d0c6faad95e0aE:bb.a
  %i.jd = lshr i8 %i.jc, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i": ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.iu, %bb.bq ], [ %i.iy, %bb.br ], [ %i.is, %bb.bp ], [ %i.jd, %bb.bs ]
  %i.je = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.je, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf4e6434eb663bde1E.exit.i.i.i.i.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf4e6434eb663bde1E.exit.i.i.i.i.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i", %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.jf = icmp eq ptr %.sroa.4.0.i.i.i.i, %i.gy
  br i1 %i.jf, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i", %bb.bo, %bb.bn, %bb.bk
  %.sroa.4.121.i.i.i.i = phi ptr [ %.sroa.4169.0.copyload.i.i.i, %bb.bk ], [ %.sroa.4.0.i.i.i.i, %bb.bn ], [ %.sroa.4.0.i.i.i.i, %bb.bo ], [ %.sroa.4.0.i.i.i.i, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.18.019.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.io, %bb.bn ], [ %i.io, %bb.bo ], [ %i.io, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.ha, %bb.bn ], [ %i.ha, %bb.bo ], [ %i.ha, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.jg = icmp eq ptr %.sroa.4.121.i.i.i.i, %i.gy
  br i1 %i.jg, label %.loopexit.i.i.i, label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i", %bb.cd
  %i.jh = phi ptr [ %i.kr, %bb.cd ], [ %i.gy, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i" ] ; 5 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -1 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !272, !noalias !275, !noundef !4 ; 3 uses
  %i.jk = icmp sgt i8 %i.jj, -1
  br i1 %i.jk, label %bb.bt, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit17.i.i.i.i.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit17.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i4.i.i.i.i
  %i.jl = icmp ne ptr %.sroa.4.121.i.i.i.i, %i.ji
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 -2 ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !272, !noalias !275, !noundef !4 ; 3 uses
  %i.jo = and i8 %i.jn, 31
  %i.jp = zext nneg i8 %i.jo to i32
  %i.jq = icmp slt i8 %i.jn, -64
  br i1 %i.jq, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit19.i.i.i.i.i.i.i.i.i", label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i.i4.i.i.i.i
  %i.jr = zext nneg i8 %i.jj to i32
  br label %bb.bw

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit19.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit17.i.i.i.i.i.i.i.i.i"
  %i.js = icmp ne ptr %.sroa.4.121.i.i.i.i, %i.jm
  call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds i8, ptr %i.jh, i64 -3 ; 3 uses
  %i.ju = load i8, ptr %i.jt, align 1, !alias.scope !272, !noalias !275, !noundef !4 ; 3 uses
  %i.jv = and i8 %i.ju, 15
  %i.jw = zext nneg i8 %i.jv to i32
  %i.jx = icmp slt i8 %i.ju, -64
  br i1 %i.jx, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit21.i.i.i.i.i.i.i.i.i", label %bb.bv

bb.bu:                                            ; preds = %bb.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit17.i.i.i.i.i.i.i.i.i"
  %i.jy = phi ptr [ %i.km, %bb.bv ], [ %i.jm, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit17.i.i.i.i.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kq, %bb.bv ], [ %i.jp, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit17.i.i.i.i.i.i.i.i.i" ]
  %i.jz = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 6
  %i.ka = and i8 %i.jj, 63
  %i.kb = zext nneg i8 %i.ka to i32
  %i.kc = or disjoint i32 %i.jz, %i.kb
  br label %bb.bw

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit21.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit19.i.i.i.i.i.i.i.i.i"
  %i.kd = icmp ne ptr %.sroa.4.121.i.i.i.i, %i.jt
  call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr inbounds i8, ptr %i.jh, i64 -4 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !272, !noalias !275, !noundef !4
  %i.kg = and i8 %i.kf, 7
  %i.kh = zext nneg i8 %i.kg to i32
  %i.ki = shl nuw nsw i32 %i.kh, 6
  %i.kj = and i8 %i.ju, 63
  %i.kk = zext nneg i8 %i.kj to i32
  %i.kl = or disjoint i32 %i.ki, %i.kk
  br label %bb.bv

bb.bv:                                            ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit21.i.i.i.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit19.i.i.i.i.i.i.i.i.i"
  %i.km = phi ptr [ %i.ke, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit21.i.i.i.i.i.i.i.i.i" ], [ %i.jt, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit19.i.i.i.i.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kl, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit21.i.i.i.i.i.i.i.i.i" ], [ %i.jw, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb91395269c121fdcE.exit19.i.i.i.i.i.i.i.i.i" ]
  %i.kn = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i.i.i.i.i, 6
  %i.ko = and i8 %i.jn, 63
  %i.kp = zext nneg i8 %i.ko to i32
  %i.kq = or disjoint i32 %i.kn, %i.kp
  br label %bb.bu

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.kr = phi ptr [ %i.ji, %bb.bt ], [ %i.jy, %bb.bu ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.jr, %bb.bt ], [ %i.kc, %bb.bu ] ; 8 uses
  %i.ks = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ks)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, label %bb.bx [
    i32 32, label %bb.cd
    i32 13, label %bb.cd
    i32 12, label %bb.cd
    i32 11, label %bb.cd
    i32 10, label %bb.cd
    i32 9, label %bb.cd
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.kt = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 127
  br i1 %i.kt, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.ku = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ku, label %bb.ce [
    i32 0, label %bb.cb
    i32 22, label %bb.bz
    i32 32, label %bb.cc
    i32 48, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.kv = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 5760
  %i.kw = zext i1 %i.kv to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i"

bb.ca:                                            ; preds = %bb.by
  %i.kx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 12288
  %i.ky = zext i1 %i.kx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i"

bb.cb:                                            ; preds = %bb.by
  %i.kz = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 255
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !noalias !276, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i"

bb.cc:                                            ; preds = %bb.by
  %i.ld = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i.i.i, 255
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !noalias !276, !noundef !4
  %i.lh = lshr i8 %i.lg, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i": ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %.sroa.0.0.i.i.i.i.i.i.i7.i.i.i.i = phi i8 [ %i.ky, %bb.ca ], [ %i.lc, %bb.cb ], [ %i.kw, %bb.bz ], [ %i.lh, %bb.cc ]
  %i.li = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7.i.i.i.i to i1
  br i1 %i.li, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i", %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.lj = icmp eq ptr %.sroa.4.121.i.i.i.i, %i.kr
  br i1 %i.lj, label %.loopexit.i.i.i, label %.lr.ph.i.i4.i.i.i.i

bb.ce:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h20de6d5cc374e5e0E.exit.i.i.i6.i.i.i.i", %bb.by, %bb.bx
  %i.lk = ptrtoint ptr %i.jh to i64
  %i.ll = ptrtoint ptr %.sroa.4.121.i.i.i.i to i64
  %i.lm = sub i64 %.sroa.18.019.i.i.i.i, %i.ll
  %i.ln = add i64 %i.lm, %i.lk
  br label %.loopexit.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i": ; preds = %bb.cs, %.body.i.i.i, %bb.cg
  %.pn.i.i.i = phi { ptr, i32 } [ %i.lp, %bb.cg ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.cs ] ; 2 uses
  %i.lo = icmp eq i64 %.sroa.0168.0.copyload.i.i.i, 0
  br i1 %i.lo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4169.0.copyload.i.i.i, i64 noundef %.sroa.0168.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !277
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i"

bb.cg:                                            ; preds = %.loopexit.i.i.i
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i"

.loopexit.i.i.i:                                  ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf4e6434eb663bde1E.exit.i.i.i.i.i.i", %bb.cd, %bb.ce, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i"
  %.sroa.0.042.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.ce ], [ %.sroa.0.0.i.i.i.i, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i, %bb.cd ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf4e6434eb663bde1E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.01.1.i.i.i.i = phi i64 [ %i.ln, %bb.ce ], [ %.sroa.18.019.i.i.i.i, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h63e00bacac57e87bE.exit.i.i.i.i" ], [ %.sroa.18.019.i.i.i.i, %bb.cd ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf4e6434eb663bde1E.exit.i.i.i.i.i.i" ]
  %i.lq = sub nuw i64 %.sroa.01.1.i.i.i.i, %.sroa.0.042.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.4169.0.copyload.i.i.i, i64 %.sroa.0.042.i.i.i.i
  store ptr %i.lr, ptr %i.j, align 8, !noalias !265
  store i64 %i.lq, ptr %i.eq, align 8, !noalias !265
  store ptr %i.j, ptr %i.k, align 8, !noalias !265
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcdf9325dcdc08687E", ptr %.sroa.457.0..sroa_idx.i.i.i, align 8, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !278
  store ptr @8, ptr %i.e, align 8, !noalias !279
  store i64 2, ptr %.sroa.4157.0..sroa_idx.i.i.i, align 8, !noalias !279
  store ptr %i.k, ptr %.sroa.5158.0..sroa_idx.i.i.i, align 8, !noalias !279
  store i64 1, ptr %.sroa.6159.0..sroa_idx.i.i.i, align 8, !noalias !279
  store ptr null, ptr %.sroa.7160.0..sroa_idx.i.i.i, align 8, !noalias !279
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ch unwind label %bb.cg, !noalias !267

bb.ch:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !265
  store ptr %i.m, ptr %i.i, align 8, !noalias !265
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.467.0..sroa_idx.i.i.i, align 8, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !280
  store ptr @9, ptr %i.d, align 8, !noalias !281
  store i64 1, ptr %.sroa.5163.0..sroa_idx.i.i.i, align 8, !noalias !281
  store ptr %i.i, ptr %.sroa.7164.0..sroa_idx.i.i.i, align 8, !noalias !281
  store i64 1, ptr %.sroa.8165.0..sroa_idx.i.i.i, align 8, !noalias !281
  store ptr null, ptr %.sroa.10166.0..sroa_idx.i.i.i, align 8, !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !282
  store ptr %i.ac, ptr %i.c, align 8, !noalias !282
  store ptr null, ptr %i.er, align 8, !noalias !282
  %i.ls = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @25, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ck unwind label %bb.ci, !noalias !283

bb.ci:                                            ; preds = %bb.ch, %bb.co
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lt = load ptr, ptr %i.er, align 8, !alias.scope !284, !noalias !282, !noundef !4
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %.body.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.er)
          to label %.body.i.i.i unwind label %bb.cq, !noalias !285

bb.ck:                                            ; preds = %bb.ch
  %i.lv = load ptr, ptr %i.er, align 8, !noalias !282, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lv, null       ; 2 uses
  br i1 %i.ls, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  br i1 %.not.i.i.i.i.i, label %bb.co, label %bb.ct, !prof !8

bb.cm:                                            ; preds = %bb.ck
  br i1 %.not.i.i.i.i.i, label %bb.cu, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.er)
          to label %bb.cu unwind label %bb.cr, !noalias !269

bb.co:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !282
  store ptr @27, ptr %i.b, align 8, !noalias !282
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.lw, align 8, !noalias !282
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.lx, align 8, !noalias !282
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ly, align 8, !noalias !282
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.lz, align 8, !noalias !282
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %bb.cp unwind label %bb.ci, !noalias !285

bb.cp:                                            ; preds = %bb.co
  unreachable

bb.cq:                                            ; preds = %bb.cj
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !285
  unreachable

bb.cr:                                            ; preds = %bb.ct, %bb.cn
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cr, %bb.cj, %bb.ci
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.mb, %bb.cr ], [ %lpad.loopexit.split-lp, %bb.cj ], [ %lpad.loopexit.split-lp, %bb.ci ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %.val.i113.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !286, !noalias !265 ; 2 uses
  %i.mc = icmp eq i64 %.val.i113.i.i.i, 0
  br i1 %i.mc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i", label %bb.cs

bb.cs:                                            ; preds = %.body.i.i.i
  %.val1.i114.i.i.i = load ptr, ptr %i.es, align 8, !alias.scope !286, !noalias !265, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i114.i.i.i, i64 noundef %.val.i113.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !287
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit115.i.i.i"

bb.ct:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !265
  invoke void @"_ZN104_$LT$topiary_core..error..FormatterError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h9bbd5ff67659b514E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noundef nonnull %i.lv)
          to label %bb.cx unwind label %bb.cr, !noalias !269

bb.cu:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %.val.i116.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !288, !noalias !265 ; 2 uses
  %i.md = icmp eq i64 %.val.i116.i.i.i, 0
  br i1 %i.md, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit118.i.i.i", label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.val1.i117.i.i.i = load ptr, ptr %i.es, align 8, !alias.scope !288, !noalias !265, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i117.i.i.i, i64 noundef %.val.i116.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !289
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit118.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit118.i.i.i": ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !265
  %i.me = icmp eq i64 %.sroa.0168.0.copyload.i.i.i, 0
  br i1 %i.me, label %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.thread.i.i, label %bb.cw

bb.cw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit118.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4169.0.copyload.i.i.i, i64 noundef %.sroa.0168.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !290
  br label %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.thread.i.i

_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.thread.i.i: ; preds = %bb.cw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit118.i.i.i"
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$topiary_core..atom_collection..AtomCollection$GT$17h0b56ef0d7db3f96bE"(ptr noalias noundef align 8 dereferenceable(416) %i.p)
          to label %.noexc26.i unwind label %bb.de, !noalias !261

.noexc26.i:                                       ; preds = %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !260
  br label %bb.dd

bb.cx:                                            ; preds = %bb.ct
  %.sroa.0.0.copyload24.i.i = load i64, ptr %i.h, align 8, !noalias !268 ; 2 uses
  %.sroa.9.0.copyload27.i.i = load i64, ptr %.sroa.9.0..sroa_idx26.i.i, align 8, !noalias !268 ; 2 uses
  %.sroa.10.0.copyload30.i.i = load ptr, ptr %.sroa.10.0..sroa_idx29.i.i, align 8, !noalias !268 ; 2 uses
  %.sroa.11.0.copyload33.i.i = load i64, ptr %.sroa.11.0..sroa_idx32.i.i, align 8, !noalias !268 ; 2 uses
  %.sroa.12.i.i.sroa.0.0.copyload175 = load i64, ptr %.sroa.12.0..sroa_idx35.i.i, align 8, !noalias !268 ; 2 uses
  %.sroa.12.i.i.sroa.7.0.copyload177 = load ptr, ptr %.sroa.12.i.i.sroa.7.0..sroa.12.0..sroa_idx35.i.i.sroa_idx, align 8, !noalias !268 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i.sroa.8.0..sroa.12.0..sroa_idx35.i.i.sroa_idx, i64 32, i1 false), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %.val.i122.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !291, !noalias !265 ; 2 uses
  %i.mf = icmp eq i64 %.val.i122.i.i.i, 0
  br i1 %i.mf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.val1.i123.i.i.i = load ptr, ptr %i.es, align 8, !alias.scope !291, !noalias !265, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i123.i.i.i, i64 noundef %.val.i122.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !292
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i": ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !265
  %i.mg = icmp eq i64 %.sroa.0168.0.copyload.i.i.i, 0
  br i1 %i.mg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i", label %bb.cz

bb.cz:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4169.0.copyload.i.i.i, i64 noundef %.sroa.0168.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !293
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i": ; preds = %bb.cz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i", %bb.bj
  %.sroa.12.i.i.sroa.0.0 = phi i64 [ %.sroa.12.i.i.sroa.0.0.copyload175, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i" ], [ %.sroa.12.i.i.sroa.0.0.copyload175, %bb.cz ], [ %.sroa.12.i.i.sroa.0.0.copyload, %bb.bj ]
  %.sroa.12.i.i.sroa.7.0 = phi ptr [ %.sroa.12.i.i.sroa.7.0.copyload177, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i" ], [ %.sroa.12.i.i.sroa.7.0.copyload177, %bb.cz ], [ %.sroa.12.i.i.sroa.7.0.copyload, %bb.bj ]
  %.sroa.11.0.i.i = phi i64 [ %.sroa.11.0.copyload33.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i" ], [ %.sroa.11.0.copyload33.i.i, %bb.cz ], [ %.sroa.5170.0.copyload.i.i.i, %bb.bj ]
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.0.copyload30.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i" ], [ %.sroa.10.0.copyload30.i.i, %bb.cz ], [ %.sroa.4169.0.copyload.i.i.i, %bb.bj ]
  %.sroa.9.0.i.i = phi i64 [ %.sroa.9.0.copyload27.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i" ], [ %.sroa.9.0.copyload27.i.i, %bb.cz ], [ %.sroa.0168.0.copyload.i.i.i, %bb.bj ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload24.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit124.i.i.i" ], [ %.sroa.0.0.copyload24.i.i, %bb.cz ], [ %i.gx, %bb.bj ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$topiary_core..atom_collection..AtomCollection$GT$17h0b56ef0d7db3f96bE"(ptr noalias noundef align 8 dereferenceable(416) %i.p)
          to label %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.i.i unwind label %bb.de, !noalias !261

bb.da:                                            ; preds = %bb.db, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i"
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !269
  unreachable

bb.db:                                            ; preds = %bb.az
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN59_$LT$tree_sitter..Tree$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf65a0ebb0ddaba30E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body.i unwind label %bb.da, !noalias !267

_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.i.i: ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i", %bb.bb
  %.sroa.12.i.i.sroa.0.1 = phi i64 [ %.sroa.7.i.sroa.10.i.i.sroa.0.0.copyload, %bb.bb ], [ %.sroa.12.i.i.sroa.0.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i" ]
  %.sroa.12.i.i.sroa.7.1 = phi ptr [ %.sroa.7.i.sroa.10.i.i.sroa.6.0.copyload, %bb.bb ], [ %.sroa.12.i.i.sroa.7.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i" ]
  %.sroa.11.1.i.i = phi i64 [ %.sroa.7.i.sroa.9.0.copyload66.i.i, %bb.bb ], [ %.sroa.11.0.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i" ]
  %.sroa.10.1.i.i = phi ptr [ %.sroa.7.i.sroa.8.0.copyload63.i.i, %bb.bb ], [ %.sroa.10.0.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i" ]
  %.sroa.9.1.i.i = phi i64 [ %.sroa.7.i.sroa.7.0.copyload60.i.i, %bb.bb ], [ %.sroa.9.0.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i" ]
  %.sroa.0.1.i.i = phi i64 [ %.sroa.7.i.sroa.0.0.copyload57.i.i, %bb.bb ], [ %.sroa.0.0.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !260
  %.not23.i.i = icmp eq i64 %.sroa.0.1.i.i, -9223372036854775801
  br i1 %.not23.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i.sroa.8, i64 32, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.sroa.8)
  br label %_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i

bb.dd:                                            ; preds = %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.i.i, %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.sroa.8)
  br label %_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit127.i.i.i", %_ZN12topiary_core14formatter_tree17hcd66ba7d74e978a7E.exit.thread.i.i, %bb.ay, %bb.av
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.de, %bb.db, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i"
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.mi, %bb.de ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.db ], [ %.pn82.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i.i.i" ] ; 2 uses
  %i.mj = icmp eq i64 %i.fx, 0
  br i1 %i.mj, label %.body61, label %bb.df

bb.df:                                            ; preds = %.body.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !294
  br label %.body61

_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i: ; preds = %bb.dd, %bb.dc, %bb.aw
  %.sroa.19.0 = phi ptr [ undef, %bb.dd ], [ %.sroa.12.i.i.sroa.7.1, %bb.dc ], [ %.sroa.19.16.copyload, %bb.aw ]
  %.sroa.17.0 = phi i64 [ undef, %bb.dd ], [ %.sroa.12.i.i.sroa.0.1, %bb.dc ], [ %.sroa.17.16.copyload, %bb.aw ]
  %.sroa.15.0 = phi i64 [ undef, %bb.dd ], [ %.sroa.11.1.i.i, %bb.dc ], [ %.sroa.15.16.copyload, %bb.aw ]
  %.sroa.12.0 = phi ptr [ undef, %bb.dd ], [ %.sroa.10.1.i.i, %bb.dc ], [ %.sroa.12.16.copyload, %bb.aw ]
  %.sroa.9.0 = phi i64 [ undef, %bb.dd ], [ %.sroa.9.1.i.i, %bb.dc ], [ %i.gk, %bb.aw ]
  %.sroa.0142.0 = phi i64 [ -9223372036854775801, %bb.dd ], [ %.sroa.0.1.i.i, %bb.dc ], [ %i.gi, %bb.aw ] ; 2 uses
  %i.mk = icmp eq i64 %i.fx, 0
  br i1 %i.mk, label %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !295
  br label %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit

.loopexit.split-lp:                               ; preds = %bb.aq, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit.thread"
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %.body61

.body61:                                          ; preds = %.loopexit.split-lp, %bb.dj, %bb.df, %.body.i, %bb.at
  %eh.lpad-body62 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.mo, %bb.dj ], [ %i.gc, %bb.at ], [ %eh.lpad-body.i, %bb.df ], [ %lpad.loopexit.split-lp.a, %.loopexit.split-lp ] ; 2 uses
  %.val75 = load i64, ptr %i.ac, align 8          ; 2 uses
  %i.ml = icmp eq i64 %.val75, 0
  br i1 %i.ml, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit", label %bb.dh

bb.dh:                                            ; preds = %.body61
  %.val76 = load ptr, ptr %i.dx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76, i64 noundef %.val75, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit"

_ZN12topiary_core9formatter17h3ab68f9718082438E.exit: ; preds = %bb.dg, %_ZN12topiary_core13formatter_str17h7ba32d15668fa8c2E.exit.i
  %.not47 = icmp eq i64 %.sroa.0142.0, -9223372036854775801
  br i1 %.not47, label %bb.dl, label %.loopexit259

.loopexit259:                                     ; preds = %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread
  %.sroa.0142.1218 = phi i64 [ -9223372036854775802, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread ], [ %.sroa.0142.0, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit ]
  %.sroa.9.1217 = phi i64 [ -9223372036854775808, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread ], [ %.sroa.9.0, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit ]
  %.sroa.12.1216 = phi ptr [ inttoptr (i64 29 to ptr), %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread ], [ %.sroa.12.0, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit ]
  %.sroa.15.1215 = phi i64 [ %i.ge, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread ], [ %.sroa.15.0, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit ]
  %.sroa.17.1214 = phi i64 [ 29, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread ], [ %.sroa.17.0, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit ]
  %.sroa.19.1213 = phi ptr [ %i.fz, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit.thread ], [ %.sroa.19.0, %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit ]
  %.sroa.7174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  store i64 %.sroa.0142.1218, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.9.1217, ptr %.sroa.2.0..sroa_idx170, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.12.1216, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.sroa.15.1215, ptr %.sroa.4171.0..sroa_idx, align 8
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %.sroa.17.1214, ptr %.sroa.5172.0..sroa_idx, align 8
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %.sroa.19.1213, ptr %.sroa.6173.0..sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !296
  %i.mm = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #27, !noalias !296 ; 4 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.di, label %bb.ds, !prof !8

bb.di:                                            ; preds = %.loopexit259
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #28
          to label %.noexc102 unwind label %bb.dj

.noexc102:                                        ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.di
  %i.mo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$topiary_core..error..FormatterError$GT$17h9705b9fdf73a78adE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.x) #29
          to label %.body61 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.dl:                                            ; preds = %_ZN12topiary_core9formatter17h3ab68f9718082438E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.val84 = load i64, ptr %.sroa.520.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %.val85 = load ptr, ptr %i.dx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val86 = load i64, ptr %i.dy, align 8, !noundef !4
  %.not.i.i104 = icmp eq i64 %.val84, %.val86
  br i1 %.not.i.i104, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit.thread", !prof !297

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit": ; preds = %bb.dl
  %.val83 = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val83, ptr nonnull readonly align 1 %.val85, i64 %.val84), !alias.scope !298
  %.not252 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not252, label %bb.dm, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit.thread", !prof !299

bb.dm:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit"
  %.val73 = load i64, ptr %i.ac, align 8          ; 2 uses
  %i.mq = icmp eq i64 %.val73, 0
  br i1 %i.mq, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit106", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85, i64 noundef %.val73, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit106"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit.thread": ; preds = %bb.dl, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %.sroa.10.sroa.0.0, ptr %i.y, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sroa.10.sroa.7.0, ptr %i.mr, align 8
  store ptr %i.y, ptr %i.z, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @"_ZN64_$LT$std..ffi..os_str..Display$u20$as$u20$core..fmt..Display$GT$3fmt17h6d6a875bfb5b6c00E", ptr %.sroa.441.0..sroa_idx, align 8
  store ptr @18, ptr %i.aa, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 2, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.z, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 1, ptr %i.mv, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
          to label %bb.dr unwind label %.loopexit.split-lp

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit": ; preds = %bb.dh, %.body61
  %.val71 = load i64, ptr %i.ae, align 8          ; 2 uses
  %i.mw = icmp eq i64 %.val71, 0
  br i1 %i.mw, label %.body, label %bb.do

bb.do:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit"
  %.val72 = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef %.val71, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %.body

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit106": ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val69 = load i64, ptr %i.ae, align 8          ; 2 uses
  %i.mx = icmp eq i64 %.val69, 0
  br i1 %i.mx, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit108", label %bb.dp

bb.dp:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit106"
  %.val70 = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70, i64 noundef %.val69, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit108"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit108": ; preds = %bb.dp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit106"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.my = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.my, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit109", label %bb.dq

bb.dq:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit108"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.sroa.0.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit109"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit109": ; preds = %bb.dq, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit108"
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.ac

bb.dr:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2ne17h5bc36a6058eae1c4E.exit.thread"
  unreachable

bb.ds:                                            ; preds = %.loopexit259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.mm, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.val67 = load i64, ptr %i.ac, align 8          ; 2 uses
  %i.mz = icmp eq i64 %.val67, 0
  br i1 %i.mz, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110", label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.val68 = load ptr, ptr %i.dx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %.val67, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110": ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.na = icmp eq i64 %.val, 0
  br i1 %i.na, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111", label %bb.du

bb.du:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110"
  %.val66 = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111": ; preds = %bb.du, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit"
  %.sroa.5.0 = phi ptr [ @24, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit" ], [ @22, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110" ], [ @22, %bb.du ]
  %.sroa.0.0 = phi ptr [ %i.ft, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h08997651262a2f7bE.exit" ], [ %i.mm, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit110" ], [ %i.mm, %bb.du ]
  %storemerge637 = getelementptr inbounds nuw i8, ptr %.pn405, i64 24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.nb = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.nb, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit112", label %bb.dv

bb.dv:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.sroa.0.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit112"

bb.dw:                                            ; preds = %bb.ee, %bb.dz, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit"
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit112": ; preds = %bb.dv, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h08fdb159384bcc81E.exit111"
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.nd = ptrtoint ptr %.val2.i.i.i113 to i64
  %i.ne = ptrtoint ptr %storemerge637 to i64
  %i.nf = sub nuw i64 %i.nd, %i.ne
  %i.ng = udiv exact i64 %i.nf, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.nh = icmp eq ptr %.val2.i.i.i113, %storemerge637
  br i1 %i.nh, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i.i119", label %.lr.ph.i.i.i.i114

.lr.ph.i.i.i.i114:                                ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit112", %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i118"
  %.sroa.0.011.i.i.i.i115 = phi i64 [ %i.nj, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i.i118" ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit112" ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %storemerge637, i64 %.sroa.0.011.i.i.i.i115 ; 2 uses
  %i.nj = add nuw i64 %.sroa.0.011.i.i.i.i115, 1  ; 2 uses
end_hunk_1
