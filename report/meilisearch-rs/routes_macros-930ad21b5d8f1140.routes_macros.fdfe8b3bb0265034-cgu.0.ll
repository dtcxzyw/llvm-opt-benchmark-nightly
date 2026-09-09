Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-930ad21b5d8f1140.routes_macros.fdfe8b3bb0265034-cgu.0?download=true
inline.NumInlined: 3318
inline.NumDeleted: 1160
begin_hunk_0_@_ZN13routes_macros7request11try_request17haa88ab01932bcb9cE:bb.a
bb.mp:                                            ; preds = %bb.mn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13201, i64 16, i1 false)
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.14, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13201)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.7, i64 16, i1 false)
  store i64 %.sroa.0196.3, ptr %i.ey, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 5 uses
  store i64 %.sroa.8197.3, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7)
  %i.tm = icmp ne i64 %.sroa.0196.3, 5
  call void @llvm.assume(i1 %i.tm)
  %i.tn = add nsw i64 %.sroa.0196.3, -2
  %i.to = icmp samesign ugt i64 %.sroa.0196.3, 1
  %i.tp = select i1 %i.to, i64 %i.tn, i64 3
  switch i64 %i.tp, label %bb.mq [
    i64 1, label %bb.mt
    i64 9, label %bb.rz
  ]

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2875
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ax)
          to label %.noexc114 unwind label %bb.tc

.noexc114:                                        ; preds = %bb.mq
  invoke void @"_ZN62_$LT$syn..item..Item$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hdc3c34f36729f4d9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ey, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %bb.vp unwind label %bb.mr, !noalias !2876

bb.mr:                                            ; preds = %.noexc114
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %.body115 unwind label %bb.ms, !noalias !2876

bb.ms:                                            ; preds = %bb.mr
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2876
  unreachable

bb.mt:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ex, ptr noundef nonnull align 8 dereferenceable(328) %i.ez, i64 328, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2879
  invoke fastcc void @_ZN13routes_macros7request13handle_derive17h8ea3441df5b01901E(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(216) %.sroa.412.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ex)
          to label %bb.mv unwind label %bb.mu, !noalias !2880

.body63.i:                                        ; preds = %bb.rx, %.body.i58.i, %bb.nc, %bb.mu
  %.pn25.i = phi { ptr, i32 } [ %.pn23.i, %bb.nc ], [ %i.ts, %bb.mu ], [ %i.adb, %bb.rx ], [ %i.adb, %.body.i58.i ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$routes_macros..request..RequestItemAttr$GT$17ha1a263a7f200f471E"(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ex) #30
          to label %.body115 unwind label %bb.rk, !noalias !2880

bb.mu:                                            ; preds = %bb.mx, %bb.mt
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

bb.mv:                                            ; preds = %bb.mt
  %i.tt = load i64, ptr %i.aw, align 8, !range !72, !noalias !2879, !noundef !69 ; 2 uses
  %.not.i117 = icmp eq i64 %i.tt, -9223372036854775808
  br i1 %.not.i117, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %.sroa.9208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.9208.0.copyload = load ptr, ptr %.sroa.9208.0..sroa_idx, align 8, !noalias !2881
  %.sroa.13213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.13213.0.copyload = load ptr, ptr %.sroa.13213.0..sroa_idx, align 8, !noalias !2881
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.16.sroa.0.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !2881
  %.sroa.16.sroa.10.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.sroa.16.sroa.10.0.copyload = load ptr, ptr %.sroa.16.sroa.10.0..sroa.16.0..sroa_idx.sroa_idx, align 8, !noalias !2881
  %.sroa.16.sroa.12.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.sroa.16.sroa.12.0.copyload = load i64, ptr %.sroa.16.sroa.12.0..sroa.16.0..sroa_idx.sroa_idx, align 8, !noalias !2881
  %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx.sroa_idx, i64 32, i1 false), !noalias !2881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2879
  br label %bb.qx

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2879
  invoke fastcc void @_ZN13routes_macros7request17handle_item_attrs17h919a72b45bf7f299E(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(216) %.sroa.412.0..sroa_idx, ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ex, i1 noundef zeroext true)
          to label %bb.my unwind label %bb.mu, !noalias !2880

bb.my:                                            ; preds = %bb.mx
  %i.tu = load i64, ptr %i.av, align 8, !range !72, !noalias !2879, !noundef !69 ; 2 uses
  %.not18.i = icmp eq i64 %i.tu, -9223372036854775808
  br i1 %.not18.i, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %.sroa.9208.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.9208.0.copyload210 = load ptr, ptr %.sroa.9208.0..sroa_idx209, align 8, !noalias !2881
  %.sroa.13213.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.13213.0.copyload215 = load ptr, ptr %.sroa.13213.0..sroa_idx214, align 8, !noalias !2881
  %.sroa.16.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.16.sroa.0.0.copyload302 = load i64, ptr %.sroa.16.0..sroa_idx218, align 8, !noalias !2881
  %.sroa.16.sroa.10.0..sroa.16.0..sroa_idx218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.16.sroa.10.0.copyload307 = load ptr, ptr %.sroa.16.sroa.10.0..sroa.16.0..sroa_idx218.sroa_idx, align 8, !noalias !2881
  %.sroa.16.sroa.12.0..sroa.16.0..sroa_idx218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.16.sroa.12.0.copyload311 = load i64, ptr %.sroa.16.sroa.12.0..sroa.16.0..sroa_idx218.sroa_idx, align 8, !noalias !2881
  %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx218.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx218.sroa_idx, i64 32, i1 false), !noalias !2881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2879
  br label %bb.qx

bb.na:                                            ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2879
  store i64 0, ptr %i.au, align 8, !noalias !2879
  %i.tv = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.tv, align 8, !noalias !2879
  %i.tw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 5 uses
  store i64 0, ptr %i.tw, align 8, !noalias !2879
  call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %.val.i.i118 = load ptr, ptr %i.tx, align 8, !alias.scope !2883, !noalias !2884, !nonnull !69, !noundef !69 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  %.val1.i.i119 = load i64, ptr %i.ty, align 8, !alias.scope !2883, !noalias !2884, !noundef !69 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.ua = load ptr, ptr %i.tz, align 8, !alias.scope !2885, !noalias !2884, !align !70, !noundef !69 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2886
  %i.ub = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #28, !noalias !2886 ; 10 uses
  %i.uc = icmp eq ptr %i.ub, null
  br i1 %i.uc, label %bb.nb, label %bb.ne, !prof !81

bb.nb:                                            ; preds = %bb.na
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc.i unwind label %bb.nd, !noalias !2880

.noexc.i:                                         ; preds = %bb.nb
  unreachable

bb.nc:                                            ; preds = %.body.i121, %bb.nd
  %.pn23.i = phi { ptr, i32 } [ %i.ud, %bb.nd ], [ %.pn.i122, %.body.i121 ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hbe85bee6178f501dE"(ptr noalias noundef align 8 dereferenceable(24) %i.au) #30
          to label %.body63.i unwind label %bb.rk, !noalias !2880

bb.nd:                                            ; preds = %bb.nb
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.ne:                                            ; preds = %bb.na
  %.idx575.i = mul nuw nsw i64 %.val1.i.i119, 296
  %i.ue = getelementptr inbounds nuw i8, ptr %.val.i.i118, i64 %.idx575.i
  store ptr %.val.i.i118, ptr %i.ub, align 8, !noalias !2887
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 2 uses
  store ptr %i.ue, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !noalias !2887
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 4 uses
  store ptr %i.ua, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !2887
  %i.uf = icmp eq i64 %.val1.i.i119, 0
  br i1 %i.uf, label %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.i", label %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.thread.i"

"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.thread.i": ; preds = %bb.ne
  %i.ug = getelementptr inbounds nuw i8, ptr %.val.i.i118, i64 296
  store ptr %i.ug, ptr %i.ub, align 8, !alias.scope !2888, !noalias !2880
  br label %.lr.ph.i

"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.i": ; preds = %bb.ne
  store ptr null, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !2889, !noalias !2890
  %.not19203.i = icmp eq ptr %i.ua, null
  br i1 %.not19203.i, label %"_ZN92_$LT$syn..punctuated..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d9b67d48fa73251E.exit._crit_edge.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.i", %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.thread.i"
  %.sroa.0.0.i1.i574.i = phi ptr [ %.val.i.i118, %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.thread.i" ], [ %i.ua, %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit.i" ]
  %.sroa.6132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %.sroa.4130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.5131.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.7133.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %.sroa.8134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %.sroa.9135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.sroa.10136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.3.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i, i64 24
  %.sroa.3.0..sroa_idx.i.i120 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %.sroa.3.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i, i64 16
  %.sroa.3.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i, i64 40
  %i.uh = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ui = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ex, i64 321
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ex, i64 323
  %i.um = getelementptr inbounds nuw i8, ptr %i.ex, i64 320
  %i.un = getelementptr inbounds nuw i8, ptr %i.ex, i64 322
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5.0..sroa.6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 8 ; 2 uses
  %.sroa.6571.0..sroa.6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 16 ; 2 uses
  br label %bb.nf

.body.i121:                                       ; preds = %bb.rm, %bb.ri, %.thread156.i.i, %bb.qd, %.body.i118.i.i, %.body109.i.i, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i122 = phi { ptr, i32 } [ %i.abe, %bb.ri ], [ %.pn.i50.i, %bb.rm ], [ %i.zq, %.body.i118.i.i ], [ %i.zq, %bb.qd ], [ %.pn67.i.i, %.body109.i.i ], [ %eh.lpad-body149.i.i, %.thread156.i.i ], [ %lpad.loopexit.split-lp69.i, %.loopexit.split-lp.i ], [ %lpad.loopexit366.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp367.i, %.loopexit.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$syn..punctuated..IterMut$LT$syn..data..Variant$GT$$GT$17h106f095192fc49f7E"(ptr nonnull %i.ub, ptr nonnull @253) #30, !noalias !2880
  br label %bb.nc

.loopexit.loopexit.i:                             ; preds = %bb.ra, %bb.no
  %lpad.loopexit366.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i121

.loopexit.loopexit.split-lp.i:                    ; preds = %.thread165.i.i
  %lpad.loopexit.split-lp367.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i121

.loopexit.split-lp.i:                             ; preds = %bb.rc
  %lpad.loopexit.split-lp69.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i121

bb.nf:                                            ; preds = %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit570.i", %.lr.ph.i
  %i.uq = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i ], [ %i.aas, %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit570.i" ] ; 4 uses
  %.val.i54.i = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i ], [ %i.aat, %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit570.i" ] ; 7 uses
  %i.ur = phi i64 [ 0, %.lr.ph.i ], [ %i.aau, %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit570.i" ] ; 10 uses
  %i.us = phi ptr [ %.sroa.0.0.i1.i574.i, %.lr.ph.i ], [ %.sroa.0.0.i1.i569.i, %"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E.exit570.i" ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2879
  call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2879
  store i64 -9223372036854775807, ptr %i.ao, align 8, !noalias !2894
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 240 ; 6 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 248 ; 5 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !alias.scope !2892, !noalias !2895, !nonnull !69, !noundef !69 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 256 ; 11 uses
  %i.ux = load i64, ptr %i.uw, align 8, !alias.scope !2892, !noalias !2895, !noundef !69 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ux, 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.idx.i.i
  %i.uz = icmp eq i64 %i.ux, 0
  br i1 %i.uz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.thread.i.i", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.nf
  %.sroa.046.1195.i.i = getelementptr inbounds nuw i8, ptr %i.uv, i64 256
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.backedge.i.i, %.lr.ph.preheader.i.i
  %.sroa.046.1197.i.i = phi ptr [ %.sroa.046.1.i.i, %.backedge.i.i ], [ %.sroa.046.1195.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.046.0196.i.i = phi ptr [ %.sroa.046.1197.i.i, %.backedge.i.i ], [ %i.uv, %.lr.ph.preheader.i.i ]
  %i.va = invoke noundef align 8 dereferenceable(48) ptr @_ZN3syn4attr9Attribute4path17h8785c3561ec924ebE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.046.0196.i.i)
          to label %bb.qm unwind label %.thread156.loopexit.i.i, !noalias !2895

._crit_edge.i.i:                                  ; preds = %.backedge.i.i
  %.pre.i.i = load i64, ptr %i.uw, align 8, !alias.scope !2896, !noalias !2897 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %i.vb = icmp ult i64 %.pre.i.i, 36028797018963968
  call void @llvm.assume(i1 %i.vb)
  %i.vc = icmp eq i64 %.pre.i.i, 0
  br i1 %i.vc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.thread.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i
  store i64 0, ptr %i.uw, align 8, !alias.scope !2896, !noalias !2897
  %i.vd = load ptr, ptr %i.uu, align 8, !alias.scope !2896, !noalias !2899, !nonnull !69, !noundef !69 ; 5 uses
  br label %bb.ng

bb.ng:                                            ; preds = %bb.ni, %.lr.ph.i.i.i.i
  %i.ve = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.vi, %bb.ni ] ; 2 uses
  %i.vf = getelementptr inbounds nuw [256 x i8], ptr %i.vd, i64 %i.ve ; 2 uses
  %i.vg = invoke fastcc noundef zeroext i1 @"_ZN13routes_macros7request20handle_variant_attrs28_$u7b$$u7b$closure$u7d$$u7d$17hcb767ac2ab3cf1edE"(ptr nonnull align 8 dereferenceable(72) %i.ao, ptr noalias noundef align 8 dereferenceable(256) %i.vf)
          to label %.noexc.i.i.i124 unwind label %.thread.i.i.i123, !noalias !2895

.thread.i.i.i123:                                 ; preds = %bb.ng
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %.thread146.i.i

.noexc.i.i.i124:                                  ; preds = %bb.ng
  %i.vi = add nuw nsw i64 %i.ve, 1                ; 5 uses
  br i1 %i.vg, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %.noexc.i.i.i124
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$syn..attr..Attribute$GT$17h5db79786a2f21ab2E"(ptr noalias noundef align 8 dereferenceable(256) %i.vf)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i" unwind label %.thread26.i.i.i, !noalias !2900

.thread26.i.i.i:                                  ; preds = %bb.nh
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

bb.ni:                                            ; preds = %.noexc.i.i.i124
  %.not.i.i.i.i132 = icmp eq i64 %i.vi, %.pre.i.i
  br i1 %.not.i.i.i.i132, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.i.i", label %bb.ng

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i": ; preds = %bb.nh
  %.not1.i.i.i.i = icmp eq i64 %i.vi, %.pre.i.i
  br i1 %.not1.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.thread50.i.i.i", label %.lr.ph.i5.i.i.i

.lr.ph.i5.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i", %.backedge.i.i.i.i
  %.sroa.15.2.i.i.i = phi i64 [ %.sroa.15.3.i.i.i, %.backedge.i.i.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i" ] ; 2 uses
  %.sroa.7.3.i.i.i = phi i64 [ %.sroa.7.4.i.i.i, %.backedge.i.i.i.i ], [ %i.vi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i" ] ; 5 uses
  %i.vk = phi i64 [ %i.vp, %.backedge.i.i.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i" ] ; 3 uses
  %i.vl = getelementptr inbounds nuw [256 x i8], ptr %i.vd, i64 %.sroa.7.3.i.i.i ; 3 uses
  %i.vm = invoke fastcc noundef zeroext i1 @"_ZN13routes_macros7request20handle_variant_attrs28_$u7b$$u7b$closure$u7d$$u7d$17hcb767ac2ab3cf1edE"(ptr nonnull align 8 dereferenceable(72) %i.ao, ptr noalias noundef align 8 dereferenceable(256) %i.vl)
          to label %.noexc7.i.i.i unwind label %bb.nl, !noalias !2895

.noexc7.i.i.i:                                    ; preds = %.lr.ph.i5.i.i.i
  br i1 %i.vm, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %.noexc7.i.i.i
  %i.vn = add i64 %.sroa.7.3.i.i.i, 1             ; 2 uses
  %i.vo = add i64 %i.vk, 1                        ; 3 uses
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$syn..attr..Attribute$GT$17h5db79786a2f21ab2E"(ptr noalias noundef align 8 dereferenceable(256) %i.vl)
          to label %.backedge.i.i.i.i unwind label %bb.nl, !noalias !2900

.backedge.i.i.i.i:                                ; preds = %bb.nk, %bb.nj
  %.sroa.15.3.i.i.i = phi i64 [ %.sroa.15.2.i.i.i, %bb.nk ], [ %i.vo, %bb.nj ] ; 3 uses
  %.sroa.7.4.i.i.i = phi i64 [ %i.vs, %bb.nk ], [ %i.vn, %bb.nj ] ; 2 uses
  %i.vp = phi i64 [ %i.vk, %bb.nk ], [ %i.vo, %bb.nj ]
  %.not.i6.i.i.i = icmp eq i64 %.sroa.7.4.i.i.i, %.pre.i.i
  br i1 %.not.i6.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.i.i.i", label %.lr.ph.i5.i.i.i

bb.nk:                                            ; preds = %.noexc7.i.i.i
  %i.vq = sub i64 %.sroa.7.3.i.i.i, %i.vk
  %i.vr = getelementptr inbounds nuw [256 x i8], ptr %i.vd, i64 %i.vq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.vr, ptr noundef nonnull align 8 dereferenceable(256) %i.vl, i64 256, i1 false), !noalias !2901
  %i.vs = add i64 %.sroa.7.3.i.i.i, 1
  br label %.backedge.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.i.i.i": ; preds = %.backedge.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.15.3.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.thread50.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.thread50.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i"
  %.sroa.15.453.i.i.i = phi i64 [ %.sroa.15.3.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.i.i.i" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17he0bbd72851dbd2edE.exit.i.i.i" ]
  %i.vt = sub i64 %.pre.i.i, %.sroa.15.453.i.i.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.i.i"

.thread146.i.i:                                   ; preds = %bb.nm, %bb.nl, %.thread.i.i.i123
  %i.vu = phi { ptr, i32 } [ %i.vx, %bb.nm ], [ %i.vh, %.thread.i.i.i123 ], [ %i.vw, %bb.nl ]
  %.sroa.15.024.i.i.i = phi i64 [ %.sroa.15.030.i.i.i, %bb.nm ], [ 0, %.thread.i.i.i123 ], [ 0, %bb.nl ]
  %i.vv = sub i64 %.pre.i.i, %.sroa.15.024.i.i.i
  store i64 %i.vv, ptr %i.uw, align 8, !alias.scope !2896, !noalias !2902
  br label %.thread156.i.i

bb.nl:                                            ; preds = %bb.nj, %.lr.ph.i5.i.i.i
  %.sroa.15.0.i.i.i = phi i64 [ %i.vo, %bb.nj ], [ %.sroa.15.2.i.i.i, %.lr.ph.i5.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.vn, %bb.nj ], [ %.sroa.7.3.i.i.i, %.lr.ph.i5.i.i.i ]
  %i.vw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i9.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not.i.i9.i.i.i, label %.thread146.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %.thread26.i.i.i
  %i.vx = phi { ptr, i32 } [ %i.vj, %.thread26.i.i.i ], [ %i.vw, %bb.nl ]
  %.sroa.7.031.i.i.i = phi i64 [ %i.vi, %.thread26.i.i.i ], [ %.sroa.7.0.i.i.i, %bb.nl ] ; 3 uses
  %.sroa.15.030.i.i.i = phi i64 [ 1, %.thread26.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.nl ] ; 2 uses
  %i.vy = getelementptr inbounds nuw [256 x i8], ptr %i.vd, i64 %.sroa.7.031.i.i.i
  %i.vz = sub i64 %.sroa.7.031.i.i.i, %.sroa.15.030.i.i.i
  %i.wa = getelementptr inbounds nuw [256 x i8], ptr %i.vd, i64 %i.vz
  %i.wb = sub i64 %.pre.i.i, %.sroa.7.031.i.i.i
  %i.wc = shl i64 %i.wb, 8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wa, ptr nonnull align 8 %i.vy, i64 %i.wc, i1 false), !noalias !2903
  br label %.thread146.i.i

.thread156.loopexit.i.i:                          ; preds = %bb.qt, %bb.qq, %bb.qo, %bb.qm, %.lr.ph.i.i
  %lpad.loopexit182.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread156.i.i

.thread156.loopexit.split-lp.i.loopexit.i:        ; preds = %bb.qr
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread156.i.i

.thread156.loopexit.split-lp.i.loopexit.split-lp.i: ; preds = %bb.qw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread156.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.thread.i.i": ; preds = %._crit_edge.i.i, %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  br label %bb.np

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.i.i": ; preds = %bb.ni, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.thread50.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.i.i.i"
  %.pre-phi.i.i.i = phi i64 [ %i.vt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.thread50.i.i.i" ], [ %.pre.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17hebccf0b2c680c460E.exit.i.i.i" ], [ %.pre.i.i, %bb.ni ]
  store i64 %.pre-phi.i.i.i, ptr %i.uw, align 8, !alias.scope !2896, !noalias !2904
  %.sroa.018.0.copyload.pre.i.i = load i64, ptr %i.ao, align 8, !noalias !2894 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  switch i64 %.sroa.018.0.copyload.pre.i.i, label %bb.nn [
    i64 -9223372036854775807, label %bb.np
    i64 -9223372036854775808, label %bb.no
  ]

bb.nn:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h132b6f7dbef91d90E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, i64 24, i1 false), !noalias !2894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.722.0..sroa_idx.i.i, i64 40, i1 false), !noalias !2894
  br label %bb.np

end_hunk_0
