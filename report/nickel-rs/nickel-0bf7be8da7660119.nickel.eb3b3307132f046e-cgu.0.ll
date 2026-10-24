Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 132
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcfd4300dc6f3468bE":bb.a
  %..i.i.i7.i.i.i = call i64 @llvm.umin.i64(i64 %i.du, i64 2)
  switch i64 %..i.i.i7.i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i9.i.i.i" [
    i64 2, label %bb.am
    i64 0, label %bb.an
  ], !prof !47

bb.am:                                            ; preds = %.lr.ph
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i11.i.i.i unwind label %.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3427

.noexc.i11.i.i.i:                                 ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3428
  store ptr %.val.i.i6.i.i.i, ptr %i.e, align 8, !noalias !3428
  %i.dv = load i64, ptr %.val.i.i6.i.i.i, align 8, !noalias !3429, !noundef !34 ; 3 uses
  %i.dw = and i64 %i.dv, 72057594037927935
  %i.dx = add nsw i64 %i.dw, -1                   ; 3 uses
  %i.dy = and i64 %i.dv, 1080863910568919040
  %i.dz = icmp ult i64 %i.dv, 864691128455135232
  call void @llvm.assume(i1 %i.dz), !noalias !3424
  %i.ea = or i64 %i.dx, %i.dy
  store i64 %i.ea, ptr %.val.i.i6.i.i.i, align 8, !noalias !3429
  %i.eb = icmp ugt i64 %i.dx, 72057594037927935
  br i1 %i.eb, label %bb.ap, label %bb.ao, !prof !37

bb.ao:                                            ; preds = %bb.an
  %i.ec = icmp eq i64 %i.dx, 0
  br i1 %i.ec, label %bb.aq, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i8.i.i.i"

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3429
  store ptr @1344, ptr %i.d, align 8, !noalias !3429
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ed, align 8, !noalias !3429
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.ee, align 8, !noalias !3429
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ef, align 8, !noalias !3429
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.eg, align 8, !noalias !3429
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc1.i10.i.i.i unwind label %.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3427

.noexc1.i10.i.i.i:                                ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i8.i.i.i" unwind label %.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3427

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i8.i.i.i": ; preds = %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3428
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i9.i.i.i"

.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aq, %bb.ap, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.dq) #61
          to label %.body12.i.i.i unwind label %bb.ar, !noalias !3426

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i9.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i8.i.i.i", %.lr.ph
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.dq)
          to label %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit14.i.i.i" unwind label %bb.at, !noalias !3394

bb.ar:                                            ; preds = %.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3426
  unreachable

bb.as:                                            ; preds = %.lr.ph498
  %i.ei = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i497, 1 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, %.val1.i.i.i.i.i.i
  br i1 %i.ej, label %.body.i72.i.i.i.i.i, label %.lr.ph498

bb.at:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i9.i.i.i"
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

.body12.i.i.i:                                    ; preds = %bb.at, %.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body13.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp15.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.el = icmp eq i64 %i.dr, %.val1.i.i.i.i.i.i
  br i1 %i.el, label %.body.i72.i.i.i.i.i, label %.lr.ph498

.lr.ph498:                                        ; preds = %.body12.i.i.i, %bb.as
  %.sroa.0.1.i.i.i.i.i.i.i.i497 = phi i64 [ %i.ei, %bb.as ], [ %i.dr, %.body12.i.i.i ] ; 2 uses
  %i.em = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i497
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E"(ptr noalias noundef align 8 dereferenceable(160) %i.em) #61
          to label %bb.as unwind label %bb.au, !noalias !3426

bb.au:                                            ; preds = %.lr.ph498
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3426
  unreachable

.body.i72.i.i.i.i.i:                              ; preds = %bb.as, %.body12.i.i.i
  %.val4.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !42, !alias.scope !3421, !noalias !3398, !noundef !34 ; 2 uses
  %i.eo = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.eo, label %.body73.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i72.i.i.i.i.i
  %i.ep = mul nuw i64 %.val4.i.i.i.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3426
  br label %.body73.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit14.i.i.i", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.thread.i.i.i.i.i"
  %.val2.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !42, !alias.scope !3421, !noalias !3398, !noundef !34 ; 2 uses
  %i.eq = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.eq, label %bb.al, label %bb.aw

bb.aw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i.i.i.i"
  %i.er = mul nuw i64 %.val2.i.i.i.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3426
  br label %bb.al

.body73.i.i.i.i.i:                                ; preds = %bb.bv, %bb.av, %.body.i72.i.i.i.i.i
  %.sroa.016.5.i.i.i.i.i = phi i8 [ %.sroa.016.0.i.i.i.i.i, %bb.bv ], [ %.sroa.016.4168.i.i.i.i.i, %.body.i72.i.i.i.i.i ], [ %.sroa.016.4168.i.i.i.i.i, %bb.av ] ; 3 uses
  %.pn36.i.i.i.i.i = phi { ptr, i32 } [ %i.dm, %bb.bv ], [ %eh.lpad-body13.i.i.i, %.body.i72.i.i.i.i.i ], [ %eh.lpad-body13.i.i.i, %bb.av ] ; 3 uses
  %i.es = load ptr, ptr %i.af, align 8, !noalias !3398, !noundef !34 ; 5 uses
  %.not217.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not217.i.i.i.i.i, label %.thread176.i.i.i.i.i, label %bb.bw

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i", %bb.ax, %bb.al, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i.i.i.i"
  %.sroa.9.2.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i, %bb.al ], [ %.sroa.9.1.i.i.i.i, %bb.ax ], [ %.sroa.9.1.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i" ], [ %.sroa.9.0.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i.i.i.i" ] ; 4 uses
  %.sroa.6.2.i.i.i.i = phi ptr [ %.sroa.6.1.i.i.i.i, %bb.al ], [ %.sroa.6.1.i.i.i.i, %bb.ax ], [ %.sroa.6.1.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i" ], [ %.sroa.6.0.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i1 [ %.sroa.0.1.i.i.i.i, %bb.al ], [ %.sroa.0.1.i.i.i.i, %bb.ax ], [ %.sroa.0.1.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i.i.i.i" ]
  %.sroa.016.4167175.i.i.i.i.i = phi i8 [ %.sroa.016.4168.i.i.i.i.i, %bb.al ], [ %.sroa.016.4168.i.i.i.i.i, %bb.ax ], [ %.sroa.016.4168.i.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i" ], [ %.sroa.016.0.i.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i.i.i.i" ]
  %i.et = phi i1 [ true, %bb.al ], [ true, %bb.ax ], [ true, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i" ], [ false, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i.i.i.i" ] ; 2 uses
  %i.eu = trunc nuw i8 %.sroa.016.4167175.i.i.i.i.i to i1
  br i1 %i.eu, label %bb.bg, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit82.i.i.i.i.i"

bb.ax:                                            ; preds = %bb.al
  %i.ev = ptrtoint ptr %i.dn to i64
  %i.ew = and i64 %i.ev, 3
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ew, i64 2)
  switch i64 %..i.i.i.i.i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i.i" [
    i64 2, label %bb.ay
    i64 0, label %bb.az
  ], !prof !47

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc76.i.i.i.i.i unwind label %.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3398

.noexc76.i.i.i.i.i:                               ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3430
  store ptr %i.dn, ptr %i.i, align 8, !noalias !3430
  %i.ex = load i64, ptr %i.dn, align 8, !noalias !3431, !noundef !34 ; 3 uses
  %i.ey = and i64 %i.ex, 72057594037927935
  %i.ez = add nsw i64 %i.ey, -1                   ; 3 uses
  %i.fa = and i64 %i.ex, 1080863910568919040
  %i.fb = icmp ult i64 %i.ex, 864691128455135232
  call void @llvm.assume(i1 %i.fb)
  %i.fc = or i64 %i.ez, %i.fa
  store i64 %i.fc, ptr %i.dn, align 8, !noalias !3431
  %i.fd = icmp ugt i64 %i.ez, 72057594037927935
  br i1 %i.fd, label %bb.bb, label %bb.ba, !prof !37

bb.ba:                                            ; preds = %bb.az
  %i.fe = icmp eq i64 %i.ez, 0
  br i1 %i.fe, label %bb.bc, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i"

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3431
  store ptr @1344, ptr %i.h, align 8, !noalias !3431
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ff, align 8, !noalias !3431
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.fg, align 8, !noalias !3431
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fh, align 8, !noalias !3431
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.fi, align 8, !noalias !3431
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc77.i.i.i.i.i unwind label %.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3398

.noexc77.i.i.i.i.i:                               ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ba
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3398

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i.i": ; preds = %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3430
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i.i"

.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.bb, %bb.ay
  %lpad.loopexit.split-lp513 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = trunc nuw i8 %.sroa.016.4168.i.i.i.i.i to i1
  br i1 %i.fj, label %bb.bd, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i"

1:                                                ; preds = %bb.bi
  %2 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.et, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i", label %common.resume.i.i.i.i

bb.bd:                                            ; preds = %.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.fk = load ptr, ptr %i.ap, align 8, !alias.scope !3434, !noalias !3398, !noundef !34 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fm = load i64, ptr %i.fk, align 8, !noalias !3435, !noundef !34
  %i.fn = add i64 %i.fm, -1                       ; 2 uses
  store i64 %i.fn, ptr %i.fk, align 8, !noalias !3435
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.bf, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i"

bb.bf:                                            ; preds = %bb.be
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i" unwind label %bb.aa, !noalias !3398

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit82.i.i.i.i.i": ; preds = %bb.bi, %bb.bh, %bb.bg, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i.i"
  br i1 %i.et, label %bb.bj, label %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17hec12764e11193481E.exit.i.i.i.i"

bb.bg:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !3436)
  call void @llvm.experimental.noalias.scope.decl(metadata !3437)
  %i.fp = load ptr, ptr %i.ap, align 8, !alias.scope !3438, !noalias !3398, !noundef !34 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit82.i.i.i.i.i", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fr = load i64, ptr %i.fp, align 8, !noalias !3439, !noundef !34
  %i.fs = add i64 %i.fr, -1                       ; 2 uses
  store i64 %i.fs, ptr %i.fp, align 8, !noalias !3439
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.bi, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit82.i.i.i.i.i"

bb.bi:                                            ; preds = %bb.bh
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit82.i.i.i.i.i" unwind label %1, !noalias !3398

bb.bj:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit82.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !3440)
  %.val.i83.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !3440, !noalias !3398, !nonnull !34, !noundef !34 ; 4 uses
  %.val1.i84.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !3440, !noalias !3398, !noundef !34 ; 4 uses
  %i.fu = icmp eq i64 %.val1.i84.i.i.i.i.i, 0
  br i1 %i.fu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i90.i.i.i.i.i", label %.lr.ph496

"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit.i.i.i": ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i"
  %i.fv = icmp eq i64 %i.fx, %.val1.i84.i.i.i.i.i
  br i1 %i.fv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i90.i.i.i.i.i", label %.lr.ph496

.lr.ph496:                                        ; preds = %bb.bj, %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit.i.i.i"
  %.sroa.0.0.i.i.i85.i.i.i.i.i495 = phi i64 [ %i.fx, %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit.i.i.i" ], [ 0, %bb.bj ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [160 x i8], ptr %.val.i83.i.i.i.i.i, i64 %.sroa.0.0.i.i.i85.i.i.i.i.i495 ; 3 uses
  %i.fx = add i64 %.sroa.0.0.i.i.i85.i.i.i.i.i495, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !3442), !noalias !3443
  %.val.i.i5.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !3444, !noalias !3445, !nonnull !34, !noundef !34 ; 4 uses
  %i.fz = ptrtoint ptr %.val.i.i5.i.i.i to i64
  %i.ga = and i64 %i.fz, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ga, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i" [
    i64 2, label %bb.bk
    i64 0, label %bb.bl
  ], !prof !47

bb.bk:                                            ; preds = %.lr.ph496
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3446

.noexc.i.i.i.i:                                   ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.lr.ph496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3447
  store ptr %.val.i.i5.i.i.i, ptr %i.g, align 8, !noalias !3447
  %i.gb = load i64, ptr %.val.i.i5.i.i.i, align 8, !noalias !3448, !noundef !34 ; 3 uses
  %i.gc = and i64 %i.gb, 72057594037927935
  %i.gd = add nsw i64 %i.gc, -1                   ; 3 uses
  %i.ge = and i64 %i.gb, 1080863910568919040
  %i.gf = icmp ult i64 %i.gb, 864691128455135232
  call void @llvm.assume(i1 %i.gf), !noalias !3443
  %i.gg = or i64 %i.gd, %i.ge
  store i64 %i.gg, ptr %.val.i.i5.i.i.i, align 8, !noalias !3448
  %i.gh = icmp ugt i64 %i.gd, 72057594037927935
  br i1 %i.gh, label %bb.bn, label %bb.bm, !prof !37

bb.bm:                                            ; preds = %bb.bl
  %i.gi = icmp eq i64 %i.gd, 0
  br i1 %i.gi, label %bb.bo, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i"

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3448
  store ptr @1344, ptr %i.f, align 8, !noalias !3448
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.gj, align 8, !noalias !3448
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.gk, align 8, !noalias !3448
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gl, align 8, !noalias !3448
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.gm, align 8, !noalias !3448
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc1.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3446

.noexc1.i.i.i.i:                                  ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i" unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3446

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i": ; preds = %bb.bo, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3447
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i"

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bn, %bb.bk
  %lpad.loopexit.split-lp506 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.fw) #61
          to label %.body.i.i.i unwind label %bb.bp, !noalias !3445

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i.i", %.lr.ph496
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.fw)
          to label %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit.i.i.i" unwind label %bb.br, !noalias !3394

bb.bp:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3445
  unreachable

bb.bq:                                            ; preds = %.lr.ph504
  %i.go = add i64 %.sroa.0.1.i.i.i86.i.i.i.i.i503, 1 ; 2 uses
  %i.gp = icmp eq i64 %i.go, %.val1.i84.i.i.i.i.i
  br i1 %i.gp, label %.body.i87.i.i.i.i.i, label %.lr.ph504

bb.br:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i.i.i.i"
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.br, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gq, %bb.br ], [ %lpad.loopexit.split-lp506, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gr = icmp eq i64 %i.fx, %.val1.i84.i.i.i.i.i
  br i1 %i.gr, label %.body.i87.i.i.i.i.i, label %.lr.ph504

.lr.ph504:                                        ; preds = %.body.i.i.i, %bb.bq
  %.sroa.0.1.i.i.i86.i.i.i.i.i503 = phi i64 [ %i.go, %bb.bq ], [ %i.fx, %.body.i.i.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [160 x i8], ptr %.val.i83.i.i.i.i.i, i64 %.sroa.0.1.i.i.i86.i.i.i.i.i503
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E"(ptr noalias noundef align 8 dereferenceable(160) %i.gs) #61
          to label %bb.bq unwind label %bb.bs, !noalias !3445

bb.bs:                                            ; preds = %.lr.ph504
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3445
  unreachable

.body.i87.i.i.i.i.i:                              ; preds = %bb.bq, %.body.i.i.i
  %.val4.i88.i.i.i.i.i = load i64, ptr %i.aw, align 8, !range !42, !alias.scope !3440, !noalias !3398, !noundef !34 ; 2 uses
  %i.gu = icmp eq i64 %.val4.i88.i.i.i.i.i, 0
  br i1 %i.gu, label %common.resume.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.body.i87.i.i.i.i.i
  %i.gv = mul nuw i64 %.val4.i88.i.i.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i83.i.i.i.i.i, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3445
  br label %common.resume.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i90.i.i.i.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit.i.i.i", %bb.bj
  %.val2.i91.i.i.i.i.i = load i64, ptr %i.aw, align 8, !range !42, !alias.scope !3440, !noalias !3398, !noundef !34 ; 2 uses
  %i.gw = icmp eq i64 %.val2.i91.i.i.i.i.i, 0
  br i1 %i.gw, label %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17hec12764e11193481E.exit.i.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i90.i.i.i.i.i"
  %i.gx = mul nuw i64 %.val2.i91.i.i.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i83.i.i.i.i.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3445
  br label %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17hec12764e11193481E.exit.i.i.i.i"

common.resume.i.i.i.i:                            ; preds = %.body.i4.i.i.i.i, %bb.cw, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit98.i.i.i.i.i", %bb.cl, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i", %bb.bt, %.body.i87.i.i.i.i.i, %1
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.iv, %.body.i4.i.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i87.i.i.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.bt ], [ %.pn38184.i.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i" ], [ %2, %1 ], [ %.pn.pn150193206.i.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit98.i.i.i.i.i" ], [ %.pn36182.i.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i" ], [ %.pn.pn150193206.i.i.i.i.i, %bb.cw ], [ %.pn36182.i.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i" ], [ %.pn36182.i.i.i.i.i, %bb.cl ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit80.i.i.i.i.i": ; preds = %bb.bf, %bb.be, %bb.bd, %1, %.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.pn38184.i.i.i.i.i = phi { ptr, i32 } [ %2, %1 ], [ %lpad.loopexit.split-lp513, %.loopexit.split-lp25.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp513, %bb.bf ], [ %lpad.loopexit.split-lp513, %bb.bd ], [ %lpad.loopexit.split-lp513, %bb.be ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #61
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !3398

bb.bv:                                            ; preds = %bb.ak
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #61
          to label %.body73.i.i.i.i.i unwind label %bb.aa, !noalias !3398

.thread176.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i", %bb.bw, %.body73.i.i.i.i.i, %bb.ak
  %i.gy = phi i1 [ true, %.body73.i.i.i.i.i ], [ false, %bb.ak ], [ true, %bb.bw ], [ true, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i" ]
  %.pn36182.i.i.i.i.i = phi { ptr, i32 } [ %.pn36.i.i.i.i.i, %.body73.i.i.i.i.i ], [ %i.dm, %bb.ak ], [ %.pn36.i.i.i.i.i, %bb.bw ], [ %.pn36.i.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i" ] ; 3 uses
  %.sroa.016.5181.i.i.i.i.i = phi i8 [ %.sroa.016.5.i.i.i.i.i, %.body73.i.i.i.i.i ], [ %.sroa.016.0.i.i.i.i.i, %bb.ak ], [ %.sroa.016.5.i.i.i.i.i, %bb.bw ], [ %.sroa.016.5.i.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i" ]
  %i.gz = trunc nuw i8 %.sroa.016.5181.i.i.i.i.i to i1
  br i1 %i.gz, label %bb.cc, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i"

bb.bw:                                            ; preds = %.body73.i.i.i.i.i
  %i.ha = ptrtoint ptr %i.es to i64
  %i.hb = and i64 %i.ha, 3
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hb, i64 2)
  switch i64 %..i.i.i.i, label %.thread176.i.i.i.i.i [
    i64 2, label %bb.bx
    i64 0, label %bb.by
  ], !prof !47

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i.i unwind label %bb.aa, !noalias !3449

.noexc.i.i:                                       ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3450
  store ptr %i.es, ptr %i.c, align 8, !noalias !3450
  %i.hc = load i64, ptr %i.es, align 8, !noalias !3451, !noundef !34 ; 3 uses
  %i.hd = and i64 %i.hc, 72057594037927935
  %i.he = add nsw i64 %i.hd, -1                   ; 3 uses
  %i.hf = and i64 %i.hc, 1080863910568919040
  %i.hg = icmp ult i64 %i.hc, 864691128455135232
  call void @llvm.assume(i1 %i.hg), !noalias !3452
  %i.hh = or i64 %i.he, %i.hf
  store i64 %i.hh, ptr %i.es, align 8, !noalias !3451
  %i.hi = icmp ugt i64 %i.he, 72057594037927935
  br i1 %i.hi, label %bb.ca, label %bb.bz, !prof !37

bb.bz:                                            ; preds = %bb.by
  %i.hj = icmp eq i64 %i.he, 0
  br i1 %i.hj, label %bb.cb, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i"

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3451
  store ptr @1344, ptr %i.b, align 8, !noalias !3451
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.hk, align 8, !noalias !3451
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hl, align 8, !noalias !3451
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hm, align 8, !noalias !3451
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.hn, align 8, !noalias !3451
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc4.i.i unwind label %bb.aa, !noalias !3449

.noexc4.i.i:                                      ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i" unwind label %bb.aa, !noalias !3449

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i": ; preds = %bb.cb, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3450
  br label %.thread176.i.i.i.i.i

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i": ; preds = %bb.ce, %bb.cd, %bb.cc, %.thread176.i.i.i.i.i
  br i1 %i.gy, label %bb.cf, label %common.resume.i.i.i.i

bb.cc:                                            ; preds = %.thread176.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3453)
  call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  %i.ho = load ptr, ptr %i.ap, align 8, !alias.scope !3455, !noalias !3398, !noundef !34 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hq = load i64, ptr %i.ho, align 8, !noalias !3456, !noundef !34
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.ho, align 8, !noalias !3456
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.ce, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i"

bb.ce:                                            ; preds = %bb.cd
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i" unwind label %bb.aa, !noalias !3398

bb.cf:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit94.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !3457)
  %.val.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !3457, !noalias !3398, !nonnull !34, !noundef !34 ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !3457, !noalias !3398, !noundef !34 ; 4 uses
  %i.ht = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ht, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i", label %.lr.ph500

bb.cg:                                            ; preds = %.lr.ph500
  %i.hu = icmp eq i64 %i.hw, %.val1.i.i.i
  br i1 %i.hu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i", label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.cf, %bb.cg
  %.sroa.0.0.i.i.i.i.i499 = phi i64 [ %i.hw, %bb.cg ], [ 0, %bb.cf ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i499
  %i.hw = add i64 %.sroa.0.0.i.i.i.i.i499, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E"(ptr noalias noundef align 8 dereferenceable(160) %i.hv)
          to label %bb.cg unwind label %bb.ci, !noalias !3458

bb.ch:                                            ; preds = %.lr.ph502
  %i.hx = add i64 %.sroa.0.1.i.i.i.i.i501, 1      ; 2 uses
  %i.hy = icmp eq i64 %i.hx, %.val1.i.i.i
  br i1 %i.hy, label %.body.i2.i.i, label %.lr.ph502

bb.ci:                                            ; preds = %.lr.ph500
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ia = icmp eq i64 %i.hw, %.val1.i.i.i
  br i1 %i.ia, label %.body.i2.i.i, label %.lr.ph502

.lr.ph502:                                        ; preds = %bb.ci, %bb.ch
  %.sroa.0.1.i.i.i.i.i501 = phi i64 [ %i.hx, %bb.ch ], [ %i.hw, %bb.ci ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i501
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E"(ptr noalias noundef align 8 dereferenceable(160) %i.ib) #61
          to label %bb.ch unwind label %bb.cj, !noalias !3458

bb.cj:                                            ; preds = %.lr.ph502
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3458
  unreachable

.body.i2.i.i:                                     ; preds = %bb.ch, %bb.ci
  %.val4.i.i.i = load i64, ptr %i.aw, align 8, !range !42, !alias.scope !3457, !noalias !3398, !noundef !34 ; 2 uses
  %i.id = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.id, label %.body.i.i, label %bb.ck

bb.ck:                                            ; preds = %.body.i2.i.i
  %i.ie = mul nuw i64 %.val4.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ie, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3458
  br label %.body.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i": ; preds = %bb.cg, %bb.cf
  %.val2.i.i.i = load i64, ptr %i.aw, align 8, !range !42, !alias.scope !3457, !noalias !3398, !noundef !34 ; 2 uses
  %i.if = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.if, label %common.resume.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i.i.i"
  %i.ig = mul nuw i64 %.val2.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ig, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3458
  br label %common.resume.i.i.i.i

.thread156.i.i.i.i.i:                             ; preds = %bb.ae, %bb.ab
  %.sroa.028.1.lpad-body.i.i.i.i.i = phi i1 [ %.sroa.028.1.i.i.i.i.i, %bb.ab ], [ false, %bb.ae ]
  %eh.lpad-body52.i.i.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.ab ], [ %i.dc, %bb.ae ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ag) #61
          to label %bb.cm unwind label %bb.aa, !noalias !3399

.critedge.i.i.i.i.i:                              ; preds = %bb.cm
  br i1 %.sroa.028.1.lpad-body.i.i.i.i.i, label %bb.cn, label %.critedge42.thread.i.i.i.i.i

bb.cm:                                            ; preds = %.thread156.i.i.i.i.i
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #61
          to label %.critedge.i.i.i.i.i unwind label %bb.aa, !noalias !3398

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i) #61
          to label %bb.co unwind label %bb.aa, !noalias !3399

bb.co:                                            ; preds = %bb.cn
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #61
          to label %.critedge42.thread.i.i.i.i.i unwind label %bb.aa, !noalias !3398

.noexc95.i.i.i.i.i:                               ; preds = %bb.cq, %bb.cp, %.critedge42.thread.i.i.i.i.i
  br i1 %.sroa.09.1149.i.i.i.i.i, label %.thread189.i.i.i.i.i, label %.thread199.i.i.i.i.i

.critedge42.thread.i.i.i.i.i:                     ; preds = %bb.co, %.critedge.i.i.i.i.i, %.body69.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.pn.pn151.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ %eh.lpad-body52.i.i.i.i.i, %bb.co ], [ %eh.lpad-body52.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %eh.lpad-body70.i.i.i.i.i, %.body69.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1149.i.i.i.i.i = phi i1 [ true, %.critedge42.i.i.i.i.i ], [ false, %bb.co ], [ false, %.critedge.i.i.i.i.i ], [ false, %.body69.i.i.i.i.i ]
  %.sroa.016.2147.i.i.i.i.i = phi i8 [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ 1, %bb.co ], [ 1, %.critedge.i.i.i.i.i ], [ 1, %.body69.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %i.ih = load ptr, ptr %i.ar, align 8, !alias.scope !3461, !noalias !3398, !noundef !34 ; 3 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %.noexc95.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge42.thread.i.i.i.i.i
  %i.ij = load i64, ptr %i.ih, align 8, !noalias !3462, !noundef !34
  %i.ik = add i64 %i.ij, -1                       ; 2 uses
  store i64 %i.ik, ptr %i.ih, align 8, !noalias !3462
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.cq, label %.noexc95.i.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.noexc95.i.i.i.i.i unwind label %bb.aa, !noalias !3398

end_hunk_0
begin_hunk_1_@_ZN6nickel4main17h45e4db5cdd260b38E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng), !noalias !52705
  store i64 0, ptr %i.ng, align 8, !noalias !52705
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !52705
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !52705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf), !noalias !52705
  store i32 -536870880, ptr %i.bni, align 8, !noalias !52705
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !52705
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !52705
  store ptr %i.ng, ptr %i.nf, align 8, !noalias !52705
  store ptr @744, ptr %i.bnj, align 8, !noalias !52705
  %i.bnm = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.bnn = invoke noundef zeroext i1 @"_ZN66_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..fmt..Display$GT$3fmt17h435c16c35afa51c9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bnm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nf)
          to label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !52706

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ui, %bb.uk
  %lpad.loopexit.split-lp3415 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !52707)
  call void @llvm.experimental.noalias.scope.decl(metadata !52708)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ng, align 8, !range !42, !alias.scope !52709, !noalias !52705, !noundef !34 ; 2 uses
  %i.bno = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bno, label %.body.i.i.i.i.i.i.i.i.i.i.i, label %bb.uj

bb.uj:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !52709, !noalias !52705, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52710
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ui
  br i1 %i.bnn, label %bb.uk, label %bb.ul, !prof !37

bb.uk:                                            ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !52706

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.uk
  unreachable

bb.ul:                                            ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nh, ptr noundef nonnull align 8 dereferenceable(24) %i.ng, i64 24, i1 false), !noalias !52711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf), !noalias !52705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng), !noalias !52705
  %i.bnp = getelementptr inbounds nuw [24 x i8], ptr %i.bne, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.nh, i64 24, i1 false), !noalias !52712
  %i.bnq = add nuw nsw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nh)
  %i.bnr = icmp eq i64 %i.bnq, %i.bmy
  br i1 %i.bnr, label %_ZN4core4iter6traits8iterator8Iterator7collect17h1c613e0e26c21a87E.exit.i.i.i.i.i.i.i, label %bb.ui

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.uj, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bnh, align 8, !alias.scope !52713, !noalias !52714
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE"(ptr noalias noundef align 8 dereferenceable(24) %i.ni) #61, !noalias !52715
  br label %.body.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h1c613e0e26c21a87E.exit.i.i.i.i.i.i.i: ; preds = %bb.ul
  store i64 %i.bmy, ptr %i.bnh, align 8, !alias.scope !52713, !noalias !52714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i64 24, i1 false), !noalias !52699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ni), !noalias !52700
  %i.bns = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.bnt = load ptr, ptr %i.bns, align 8, !noalias !52699, !nonnull !34, !noundef !34 ; 5 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.bnv = load i64, ptr %i.bnu, align 8, !noalias !52699, !noundef !34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nj), !noalias !52699
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h51a100ed8114d32eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.nj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bnt, i64 noundef %i.bnv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @43, i64 noundef 1)
          to label %bb.un unwind label %bb.um, !noalias !52698

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i": ; preds = %bb.up, %bb.uo, %bb.um
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bnw, %bb.um ], [ %i.bny, %bb.uo ], [ %i.bny, %bb.up ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE"(ptr noalias noundef align 8 dereferenceable(24) %i.np) #61, !noalias !52698
  br label %.body.i.i.i.i.i.i

bb.um:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h1c613e0e26c21a87E.exit.i.i.i.i.i.i.i
  %i.bnw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i"

bb.un:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h1c613e0e26c21a87E.exit.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.nj, align 8, !noalias !52699 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %.sroa.7.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52699, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %.sroa.11.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nj), !noalias !52699
  %i.bnx = invoke fastcc noundef ptr @"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$14write_metadata17h93194468002ed252E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @299, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i.i.i.i.i)
          to label %bb.uq unwind label %bb.uo, !noalias !52698 ; 2 uses

bb.uo:                                            ; preds = %bb.un
  %i.bny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.bnz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i", label %bb.up

bb.up:                                            ; preds = %bb.uo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52716
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i"

bb.uq:                                            ; preds = %bb.un
  %.not57.i.i.i.i.i.i.i = icmp eq ptr %i.bnx, null
  %i.boa = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not57.i.i.i.i.i.i.i, label %bb.ut, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  br i1 %i.boa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit95.i.i.i.i.i.i.i", label %bb.us

bb.us:                                            ; preds = %bb.ur
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52717
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit95.i.i.i.i.i.i.i"

bb.ut:                                            ; preds = %bb.uq
  br i1 %i.boa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit98.i.i.i.i.i.i.i", label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52718
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit98.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit98.i.i.i.i.i.i.i": ; preds = %bb.uu, %bb.ut
  call void @llvm.experimental.noalias.scope.decl(metadata !52719)
  call void @llvm.experimental.noalias.scope.decl(metadata !52720)
  %i.bob = icmp eq i64 %i.bnv, 0
  br i1 %i.bob, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit98.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bod, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit98.i.i.i.i.i.i.i" ] ; 2 uses
  %i.boc = getelementptr inbounds nuw [24 x i8], ptr %i.bnt, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bod = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52721)
  call void @llvm.experimental.noalias.scope.decl(metadata !52722)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.boc, align 8, !range !42, !alias.scope !52723, !noalias !52724, !noundef !34 ; 2 uses
  %i.boe = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.boe, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.uv

bb.uv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boc, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bof, align 8, !alias.scope !52723, !noalias !52724, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52725
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.uv, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bog = icmp eq i64 %i.bod, %i.bnv
  br i1 %i.bog, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit98.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.np, align 8, !range !42, !alias.scope !52719, !noalias !52699, !noundef !34 ; 2 uses
  %i.boh = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.boh, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE.exit.i.i.i.i.i.i.i", label %bb.uw

bb.uw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i.i.i.i.i.i.i"
  %i.boi = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bnt, i64 noundef %i.boi, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !52724
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE.exit.i.i.i.i.i.i.i": ; preds = %bb.uw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.np), !noalias !52699
  br label %._crit_edge.i.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit95.i.i.i.i.i.i.i": ; preds = %bb.us, %bb.ur
  call void @llvm.experimental.noalias.scope.decl(metadata !52726)
  call void @llvm.experimental.noalias.scope.decl(metadata !52727)
  %i.boj = icmp eq i64 %i.bnv, 0
  br i1 %i.boj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i106.i.i.i.i.i.i.i", label %.lr.ph.i.i.i101.i.i.i.i.i.i.i

.lr.ph.i.i.i101.i.i.i.i.i.i.i:                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit95.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i105.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i102.i.i.i.i.i.i.i = phi i64 [ %i.bol, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i105.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit95.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bok = getelementptr inbounds nuw [24 x i8], ptr %i.bnt, i64 %.sroa.0.010.i.i.i102.i.i.i.i.i.i.i ; 2 uses
  %i.bol = add nuw i64 %.sroa.0.010.i.i.i102.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52728)
  call void @llvm.experimental.noalias.scope.decl(metadata !52729)
  %.val.i.i.i.i.i103.i.i.i.i.i.i.i = load i64, ptr %i.bok, align 8, !range !42, !alias.scope !52730, !noalias !52731, !noundef !34 ; 2 uses
  %i.bom = icmp eq i64 %.val.i.i.i.i.i103.i.i.i.i.i.i.i, 0
  br i1 %i.bom, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i105.i.i.i.i.i.i.i", label %bb.ux

bb.ux:                                            ; preds = %.lr.ph.i.i.i101.i.i.i.i.i.i.i
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  %.val1.i.i.i.i.i104.i.i.i.i.i.i.i = load ptr, ptr %i.bon, align 8, !alias.scope !52730, !noalias !52731, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i104.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i103.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52732
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i105.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i105.i.i.i.i.i.i.i": ; preds = %bb.ux, %.lr.ph.i.i.i101.i.i.i.i.i.i.i
  %i.boo = icmp eq i64 %i.bol, %i.bnv
  br i1 %i.boo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i106.i.i.i.i.i.i.i", label %.lr.ph.i.i.i101.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i106.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i105.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit95.i.i.i.i.i.i.i"
  %.val2.i107.i.i.i.i.i.i.i = load i64, ptr %i.np, align 8, !range !42, !alias.scope !52726, !noalias !52699, !noundef !34 ; 2 uses
  %i.bop = icmp eq i64 %.val2.i107.i.i.i.i.i.i.i, 0
  br i1 %i.bop, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE.exit108.i.i.i.i.i.i.i", label %bb.uy

bb.uy:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i106.i.i.i.i.i.i.i"
  %i.boq = mul nuw i64 %.val2.i107.i.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bnt, i64 noundef %i.boq, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !52731
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE.exit108.i.i.i.i.i.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE.exit108.i.i.i.i.i.i.i": ; preds = %bb.uy, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i106.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.np), !noalias !52699
  br label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit117.i.i.i.i.i.i.i": ; preds = %bb.vl, %bb.vk, %bb.va, %._crit_edge.i.i.i.i.i.i
  %.sroa.04.1.i.i.i.i.i.i.i = phi i1 [ true, %bb.vl ], [ true, %bb.vk ], [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.va ], [ %.sroa.04.0.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %.not66.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.pre.i.i.i.i.i.i, null ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.nv, i64 24 ; 8 uses
  %i.bos = load ptr, ptr %i.bor, align 8, !alias.scope !52697, !noalias !52686
  %.not68.i.i.i.i.i.i.i = icmp eq ptr %i.bos, null ; 3 uses
  %or.cond86.i.i.i.i.i.i.i = select i1 %.not66.i.i.i.i.i.i.i, i1 true, i1 %.not68.i.i.i.i.i.i.i
  br i1 %or.cond86.i.i.i.i.i.i.i, label %bb.vm, label %bb.vn

bb.uz:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.not61.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.pre.i.i.i.i.i.i, null
  br i1 %.not61.i.i.i.i.i.i.i, label %.thread260.i.i.i.i.i.i.i, label %bb.va

.thread260.i.i.i.i.i.i.i:                         ; preds = %bb.uz, %.thread.i.i.i.i.i.i
  %.sroa.04.0.i100105.i.i.i.i.i.i = phi i1 [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.uz ], [ false, %.thread.i.i.i.i.i.i ]
  %i.bot = getelementptr inbounds nuw i8, ptr %i.nv, i64 24 ; 2 uses
  %i.bou = load ptr, ptr %i.bot, align 8, !alias.scope !52697, !noalias !52686
  %.not68253.i.i.i.i.i.i.i = icmp eq ptr %i.bou, null
  br label %.thread167.i.i.i.i.i.i.i

bb.va:                                            ; preds = %bb.uz
  %i.bov = getelementptr inbounds nuw i8, ptr %.pre.i.pre.i.i.i.i.i.i, i64 16
  %i.bow = load i64, ptr %i.bov, align 8, !range !85, !noalias !52698, !noundef !34
  %.not63.i.i.i.i.i.i.i = icmp eq i64 %i.bow, 18
  br i1 %.not63.i.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit117.i.i.i.i.i.i.i", label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.box = getelementptr inbounds nuw i8, ptr %.pre.i.pre.i.i.i.i.i.i, i64 144
  %.val.i.i.i.i.i.i.i213 = load ptr, ptr %i.box, align 8, !noalias !52698, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !noalias !52733
  store i64 0, ptr %i.ne, align 8, !noalias !52733
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52733
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd), !noalias !52733
  %i.boy = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i32 -536870880, ptr %i.boy, align 8, !noalias !52733
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !52733
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 2, !noalias !52733
  store ptr %i.ne, ptr %i.nd, align 8, !noalias !52733
  %i.boz = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr @744, ptr %i.boz, align 8, !noalias !52733
  %i.bpa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i213, i64 16
  %i.bpb = invoke noundef zeroext i1 @"_ZN66_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..fmt..Display$GT$3fmt17h435c16c35afa51c9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bpa, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i" unwind label %bb.vc, !noalias !52734

bb.vc:                                            ; preds = %bb.ve, %bb.vb
  %i.bpc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52735)
  call void @llvm.experimental.noalias.scope.decl(metadata !52736)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !range !42, !alias.scope !52737, !noalias !52733, !noundef !34 ; 2 uses
  %i.bpd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bpd, label %.body.i.i.i.i.i.i, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !52737, !noalias !52733, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52738
  br label %.body.i.i.i.i.i.i

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.vb
  br i1 %i.bpb, label %bb.ve, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf355f94980dc891eE.exit.i.i.i.i.i.i.i", !prof !37

bb.ve:                                            ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.vc, !noalias !52734

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ve
  unreachable

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf355f94980dc891eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3b94114a674cba0cE.exit.i.i.i.i.i.i.i.i"
  %.sroa.0155.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !noalias !52699 ; 5 uses
  %.sroa.7156.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52699, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11157.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nd), !noalias !52733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ne), !noalias !52733
  %i.bpe = invoke fastcc noundef ptr @"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$14write_metadata17h93194468002ed252E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @492, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7156.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.11157.0.copyload.i.i.i.i.i.i.i)
          to label %bb.vh unwind label %bb.vf, !noalias !52698 ; 3 uses

bb.vf:                                            ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf355f94980dc891eE.exit.i.i.i.i.i.i.i"
  %i.bpf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bpg = icmp eq i64 %.sroa.0155.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.bpg, label %.body.i.i.i.i.i.i, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7156.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0155.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52739
  br label %.body.i.i.i.i.i.i

bb.vh:                                            ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf355f94980dc891eE.exit.i.i.i.i.i.i.i"
  %.not64.i.i.i.i.i.i.i = icmp eq ptr %i.bpe, null
  %i.bph = icmp eq i64 %.sroa.0155.0.copyload.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not64.i.i.i.i.i.i.i, label %bb.vk, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  br i1 %i.bph, label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7156.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0155.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52740
  br label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

bb.vk:                                            ; preds = %bb.vh
  br i1 %i.bph, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit117.i.i.i.i.i.i.i", label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7156.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0155.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52741
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit117.i.i.i.i.i.i.i"

bb.vm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit117.i.i.i.i.i.i.i"
  br i1 %.not66.i.i.i.i.i.i.i, label %.thread167.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

bb.vn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit117.i.i.i.i.i.i.i"
  %i.bpi = getelementptr inbounds nuw i8, ptr %.pre.i.pre.i.i.i.i.i.i, i64 296 ; 2 uses
  %i.bpj = load i64, ptr %i.bpi, align 8, !range !70, !noalias !52698, !noundef !34 ; 3 uses
  %i.bpk = icmp ne i64 %i.bpj, -9223372036854775805
  call void @llvm.assume(i1 %i.bpk)
  %i.bpl = add nsw i64 %i.bpj, 9223372036854775807
  %i.bpm = icmp ugt i64 %i.bpj, -9223372036854775808
  %i.bpn = select i1 %i.bpm, i64 %i.bpl, i64 2
  switch i64 %i.bpn, label %.thread.i.i.i.i.i.i.i [
    i64 0, label %bb.vo
    i64 2, label %bb.vp
  ]

bb.vo:                                            ; preds = %bb.vn
  %.not73.i.i.i.i.i.i.i = icmp samesign ult i40 %.sroa.013.3.insert.insert.i.i.i.i.i, 16777216
  br i1 %.not73.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.vq

bb.vp:                                            ; preds = %bb.vn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nn), !noalias !52699
  store ptr %i.bpi, ptr %i.nn, align 8, !noalias !52699
  %i.bpo = trunc nuw i40 %.sroa.013.4.insert.ext.i.i.i.i.i to i1
  br i1 %i.bpo, label %bb.vz, label %bb.vy

bb.vq:                                            ; preds = %bb.vo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.no), !noalias !52699
  invoke fastcc void @_ZN16nickel_lang_core6pretty14PrettyPrintCap16pretty_print_cap17hc9f97876ce2a1616E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.no, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bor)
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i.i.i.i.i:                              ; preds = %bb.vq
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.bpq = load ptr, ptr %i.bpp, align 8, !noalias !52699, !nonnull !34, !noundef !34 ; 4 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.bps = load i64, ptr %i.bpr, align 8, !noalias !52699, !noundef !34
  %i.bpt = invoke fastcc noundef ptr @"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$14write_metadata17h93194468002ed252E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @493, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bpq, i64 noundef %i.bps)
          to label %bb.vt unwind label %bb.vr, !noalias !52698 ; 2 uses

bb.vr:                                            ; preds = %.noexc9.i.i.i.i.i.i
  %i.bpu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52742)
  call void @llvm.experimental.noalias.scope.decl(metadata !52743)
  %.val.i.i118.i.i.i.i.i.i.i = load i64, ptr %i.no, align 8, !range !42, !alias.scope !52744, !noalias !52699, !noundef !34 ; 2 uses
  %i.bpv = icmp eq i64 %.val.i.i118.i.i.i.i.i.i.i, 0
  br i1 %i.bpv, label %.body.i.i.i.i.i.i, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bpq, i64 noundef %.val.i.i118.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52745
  br label %.body.i.i.i.i.i.i

bb.vt:                                            ; preds = %.noexc9.i.i.i.i.i.i
  %.not76.i.i.i.i.i.i.i = icmp eq ptr %i.bpt, null
  br i1 %.not76.i.i.i.i.i.i.i, label %bb.vw, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  call void @llvm.experimental.noalias.scope.decl(metadata !52746)
  call void @llvm.experimental.noalias.scope.decl(metadata !52747)
  %.val.i.i121.i.i.i.i.i.i.i = load i64, ptr %i.no, align 8, !range !42, !alias.scope !52748, !noalias !52699, !noundef !34 ; 2 uses
  %i.bpw = icmp eq i64 %.val.i.i121.i.i.i.i.i.i.i, 0
  br i1 %i.bpw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit123.i.i.i.i.i.i.i", label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bpq, i64 noundef %.val.i.i121.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52749
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit123.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit123.i.i.i.i.i.i.i": ; preds = %bb.vv, %bb.vu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.no), !noalias !52699
  br label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

bb.vw:                                            ; preds = %bb.vt
  call void @llvm.experimental.noalias.scope.decl(metadata !52750)
  call void @llvm.experimental.noalias.scope.decl(metadata !52751)
  %.val.i.i124.i.i.i.i.i.i.i = load i64, ptr %i.no, align 8, !range !42, !alias.scope !52752, !noalias !52699, !noundef !34 ; 2 uses
  %i.bpx = icmp eq i64 %.val.i.i124.i.i.i.i.i.i.i, 0
  br i1 %i.bpx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit126.i.i.i.i.i.i.i", label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bpq, i64 noundef %.val.i.i124.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52753
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit126.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit126.i.i.i.i.i.i.i": ; preds = %bb.vx, %bb.vw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.no), !noalias !52699
  br label %.thread.i.i.i.i.i.i.i

bb.vy:                                            ; preds = %bb.vp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nn), !noalias !52699
  br label %.thread.i.i.i.i.i.i.i

bb.vz:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nm), !noalias !52699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nl), !noalias !52699
  store ptr %i.nn, ptr %i.nl, align 8, !noalias !52699
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nc), !noalias !52754
  store ptr @98, ptr %i.nc, align 8, !noalias !52755
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52755
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store ptr %i.nl, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52755
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52755
  %.sroa.7162.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  store ptr null, ptr %.sroa.7162.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52755
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.nc)
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756

.noexc10.i.i.i.i.i.i:                             ; preds = %bb.vz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nc), !noalias !52754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nl), !noalias !52699
  %.sroa.0158.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.nm, align 8, !noalias !52699 ; 5 uses
  %.sroa.7159.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %.sroa.7159.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7159.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52699, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11160.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %.sroa.11160.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.11160.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !52699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nm), !noalias !52699
  %i.bpy = invoke fastcc noundef ptr @"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$14write_metadata17h93194468002ed252E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @494, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7159.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.11160.0.copyload.i.i.i.i.i.i.i)
          to label %bb.wc unwind label %bb.wa, !noalias !52698 ; 3 uses

bb.wa:                                            ; preds = %.noexc10.i.i.i.i.i.i
  %i.bpz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqa = icmp eq i64 %.sroa.0158.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.bqa, label %.body.i.i.i.i.i.i, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7159.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0158.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52757
  br label %.body.i.i.i.i.i.i

bb.wc:                                            ; preds = %.noexc10.i.i.i.i.i.i
  %.not69.i.i.i.i.i.i.i = icmp eq ptr %i.bpy, null
  %i.bqb = icmp eq i64 %.sroa.0158.0.copyload.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not69.i.i.i.i.i.i.i, label %bb.wf, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  br i1 %i.bqb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit132.i.i.i.i.i.i.i", label %bb.we

bb.we:                                            ; preds = %bb.wd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7159.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0158.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52758
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit132.i.i.i.i.i.i.i"

bb.wf:                                            ; preds = %bb.wc
  br i1 %i.bqb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit135.i.i.i.i.i.i.i", label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7159.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0158.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52759
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit135.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit135.i.i.i.i.i.i.i": ; preds = %bb.wg, %bb.wf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nk), !noalias !52699
  invoke fastcc void @_ZN16nickel_lang_core6pretty14PrettyPrintCap16pretty_print_cap17hc9f97876ce2a1616E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.nk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bor)
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11.i.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit135.i.i.i.i.i.i.i"
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.bqd = load ptr, ptr %i.bqc, align 8, !noalias !52699, !nonnull !34, !noundef !34 ; 4 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.bqf = load i64, ptr %i.bqe, align 8, !noalias !52699, !noundef !34
  %i.bqg = invoke fastcc noundef ptr @"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$14write_metadata17h93194468002ed252E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @128, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bqd, i64 noundef %i.bqf)
          to label %bb.wj unwind label %bb.wh, !noalias !52698 ; 2 uses

bb.wh:                                            ; preds = %.noexc11.i.i.i.i.i.i
  %i.bqh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52760)
  call void @llvm.experimental.noalias.scope.decl(metadata !52761)
  %.val.i.i136.i.i.i.i.i.i.i = load i64, ptr %i.nk, align 8, !range !42, !alias.scope !52762, !noalias !52699, !noundef !34 ; 2 uses
  %i.bqi = icmp eq i64 %.val.i.i136.i.i.i.i.i.i.i, 0
  br i1 %i.bqi, label %.body.i.i.i.i.i.i, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bqd, i64 noundef %.val.i.i136.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52763
  br label %.body.i.i.i.i.i.i

bb.wj:                                            ; preds = %.noexc11.i.i.i.i.i.i
  %.not71.i.i.i.i.i.i.i = icmp eq ptr %i.bqg, null
  br i1 %.not71.i.i.i.i.i.i.i, label %bb.wm, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  call void @llvm.experimental.noalias.scope.decl(metadata !52764)
  call void @llvm.experimental.noalias.scope.decl(metadata !52765)
  %.val.i.i139.i.i.i.i.i.i.i = load i64, ptr %i.nk, align 8, !range !42, !alias.scope !52766, !noalias !52699, !noundef !34 ; 2 uses
  %i.bqj = icmp eq i64 %.val.i.i139.i.i.i.i.i.i.i, 0
  br i1 %i.bqj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit141.i.i.i.i.i.i.i", label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bqd, i64 noundef %.val.i.i139.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52767
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit141.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit141.i.i.i.i.i.i.i": ; preds = %bb.wl, %bb.wk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nk), !noalias !52699
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit132.i.i.i.i.i.i.i"

bb.wm:                                            ; preds = %bb.wj
  call void @llvm.experimental.noalias.scope.decl(metadata !52768)
  call void @llvm.experimental.noalias.scope.decl(metadata !52769)
  %.val.i.i142.i.i.i.i.i.i.i = load i64, ptr %i.nk, align 8, !range !42, !alias.scope !52770, !noalias !52699, !noundef !34 ; 2 uses
  %i.bqk = icmp eq i64 %.val.i.i142.i.i.i.i.i.i.i, 0
  br i1 %i.bqk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit144.i.i.i.i.i.i.i", label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bqd, i64 noundef %.val.i.i142.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52771
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit144.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit144.i.i.i.i.i.i.i": ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nk), !noalias !52699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nn), !noalias !52699
  br label %.thread.i.i.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit132.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit141.i.i.i.i.i.i.i", %bb.we, %bb.wd
  %.sroa.1320.1.i.i.i.i.i = phi ptr [ %i.bqg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit141.i.i.i.i.i.i.i" ], [ %i.bpy, %bb.wd ], [ %i.bpy, %bb.we ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nn), !noalias !52699
  br label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit144.i.i.i.i.i.i.i", %bb.vy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit126.i.i.i.i.i.i.i", %bb.vo, %bb.vn, %bb.vm
  %.not68258.i.i.i.i.i.i.i = phi i1 [ %.not68.i.i.i.i.i.i.i, %bb.vm ], [ false, %bb.vy ], [ false, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit144.i.i.i.i.i.i.i" ], [ false, %bb.vo ], [ false, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit126.i.i.i.i.i.i.i" ], [ false, %bb.vn ] ; 4 uses
  %.sroa.04.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.vm ], [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.vy ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit144.i.i.i.i.i.i.i" ], [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.vo ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit126.i.i.i.i.i.i.i" ], [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.vn ] ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %.pre.i.pre.i.i.i.i.i.i, i64 352
  %i.bqm = load ptr, ptr %i.bql, align 8, !noalias !52698, !noundef !34 ; 2 uses
  %.not79.i.i.i.i.i.i.i = icmp eq ptr %i.bqm, null
  br i1 %.not79.i.i.i.i.i.i.i, label %.thread167.i.i.i.i.i.i.i, label %bb.wo

bb.wo:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.bqn = getelementptr inbounds nuw i8, ptr %.pre.i.pre.i.i.i.i.i.i, i64 360
  %i.bqo = load i64, ptr %i.bqn, align 8, !noalias !52698, !noundef !34 ; 6 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqm, i64 16 ; 4 uses
  %i.bqq = trunc i40 %.sroa.013.3.insert.insert.i.i.i.i.i to i1
  br i1 %i.bqq, label %bb.wp, label %.thread167.i.i.i.i.i.i.i

.thread167.i.i.i.i.i.i.i:                         ; preds = %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i", %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread175.i.i.i.i.i.i.i", %bb.wo, %.thread.i.i.i.i.i.i.i, %bb.vm, %.thread260.i.i.i.i.i.i.i, %.thread117.i.i.i.i.i.i
  %.not68257.i.i.i.i.i.i.i = phi i1 [ %.not68258.i.i.i.i.i.i.i, %bb.wo ], [ %.not68258.i.i.i.i.i.i.i, %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i" ], [ %.not68258.i.i.i.i.i.i.i, %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread175.i.i.i.i.i.i.i" ], [ %.not68.i.i.i.i.i.i.i, %bb.vm ], [ %.not68258.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.not68253.i.i.i.i.i.i.i, %.thread260.i.i.i.i.i.i.i ], [ %.not68.i109.i.i.i.i.i.i, %.thread117.i.i.i.i.i.i ]
  %i.bqr = phi ptr [ %i.bor, %bb.wo ], [ %i.bor, %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i" ], [ %i.bor, %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread175.i.i.i.i.i.i.i" ], [ %i.bor, %bb.vm ], [ %i.bor, %.thread.i.i.i.i.i.i.i ], [ %i.bot, %.thread260.i.i.i.i.i.i.i ], [ %i.bmv, %.thread117.i.i.i.i.i.i ]
  %.sroa.04.3.i.i.i.i.i.i.i = phi i1 [ %.sroa.04.2164.i.i.i.i.i.i.i, %bb.wo ], [ true, %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i" ], [ true, %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread175.i.i.i.i.i.i.i" ], [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.vm ], [ %.sroa.04.2164.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.sroa.04.0.i100105.i.i.i.i.i.i, %.thread260.i.i.i.i.i.i.i ], [ false, %.thread117.i.i.i.i.i.i ] ; 3 uses
  %.not68.not.i.i.i.i.i.i.i = xor i1 %.not68257.i.i.i.i.i.i.i, true
  %i.bqs = trunc nuw i40 %.sroa.013.4.insert.ext.i.i.i.i.i to i1
  %or.cond91.i.i.i.i.i.i.i = select i1 %.not68.not.i.i.i.i.i.i.i, i1 %i.bqs, i1 false
  br i1 %or.cond91.i.i.i.i.i.i.i, label %bb.xb, label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

bb.wp:                                            ; preds = %bb.wo
  call void @llvm.experimental.noalias.scope.decl(metadata !52772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nb), !noalias !52699
  store ptr %i.bqp, ptr %i.nb, align 8, !noalias !52773
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i64 %i.bqo, ptr %i.bqt, align 8, !noalias !52773
  br label %.backedge.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.backedge.i.i.i.i.i.i.i.i.i.backedge, %bb.wp
  %i.bqu = phi i64 [ 0, %bb.wp ], [ %i.brh, %.backedge.i.i.i.i.i.i.i.i.i.backedge ] ; 5 uses
  %i.bqv = sub nuw i64 %i.bqo, %i.bqu             ; 3 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.bqu ; 2 uses
  %i.bqx = icmp ult i64 %i.bqv, 16
  br i1 %i.bqx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.backedge.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bqo, %i.bqu
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %bb.wq
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.brb, %bb.wq ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqw, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i
  %i.bqz = load i8, ptr %i.bqy, align 1, !alias.scope !52774, !noalias !52775, !noundef !34
  %i.bra = icmp eq i8 %i.bqz, 10
  br i1 %i.bra, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i, label %bb.wq

bb.wq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.brb = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.brb, %i.bqv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i.i.i
  %i.brc = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bqw, i64 noundef %i.bqv)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756 ; 2 uses

.noexc12.i.i.i.i.i.i:                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i
  %i.brd = extractvalue { i64, i64 } %i.brc, 0
  %i.bre = extractvalue { i64, i64 } %i.brc, 1
  %i.brf = trunc nuw i64 %i.brd to i1
  br i1 %i.brf, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.noexc12.i.i.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bre, %.noexc12.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.brg = add i64 %i.bqu, 1
  %i.brh = add i64 %i.brg, %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not21.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.brh, %i.bqo ; 2 uses
  %i.bri = add i64 %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i, %i.bqu ; 2 uses
  %or.cond.i.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bri, %i.bqo
  br i1 %or.cond.i.not.i.i.i.i.i.i.i.i.i, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i", label %.backedge.i.i.i.i.i.i.i.i.i.backedge

bb.ws:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.bri
  %lhsc.i.i.i.i.i.i.i.i.i = load i8, ptr %i.brj, align 1, !alias.scope !52776, !noalias !52698
  %i.brk = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i, 10 ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i.i = or i1 %.not21.i.i.i.i.i.i.i.i.i.i, %i.brk
  br i1 %brmerge.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.i.i.i.i.i.i.i.i", label %.backedge.i.i.i.i.i.i.i.i.i.backedge

.backedge.i.i.i.i.i.i.i.i.i.backedge:             ; preds = %bb.ws, %bb.wr
  br label %.backedge.i.i.i.i.i.i.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ws
  br i1 %i.brk, label %bb.wt, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i"

bb.wt:                                            ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.i.i.i.i.i.i.i.i"
  %i.brl = invoke fastcc { i64, ptr } @_ZN8termimad4skin7MadSkin13write_text_on17h97a269fb0a7f7e28E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @129, i64 noundef 21)
          to label %.noexc13.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756 ; 2 uses

.noexc13.i.i.i.i.i.i:                             ; preds = %bb.wt
  %i.brm = extractvalue { i64, ptr } %i.brl, 0    ; 2 uses
  %.not21.i.i.i.i.i.i.i.i = icmp eq i64 %i.brm, 2
  br i1 %.not21.i.i.i.i.i.i.i.i, label %bb.wu, label %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread.i.i.i.i.i.i.i"

"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i": ; preds = %bb.wr, %.noexc12.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i, %bb.wq, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.na), !noalias !52773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mz), !noalias !52773
  store ptr %i.nb, ptr %i.mz, align 8, !noalias !52773
  %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.my), !noalias !52777
  store ptr @131, ptr %i.my, align 8, !noalias !52778
  %.sroa.4.0..sroa_idx.i145.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i145.i.i.i.i.i.i.i, align 8, !noalias !52778
  %.sroa.528.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store ptr %i.mz, ptr %.sroa.528.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52778
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52778
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52778
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.na, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.my)
          to label %.noexc14.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756

.noexc14.i.i.i.i.i.i:                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h4f07db8b060224f5E.exit.thread33.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !noalias !52777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mz), !noalias !52773
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.na, align 8, !noalias !52773 ; 4 uses
  %.sroa.5.0..sroa_idx.i146.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i146.i.i.i.i.i.i.i, align 8, !noalias !52773, !nonnull !34, !noundef !34 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %.sroa.8.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !52773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.na), !noalias !52773
  %i.brn = invoke fastcc { i64, ptr } @_ZN8termimad4skin7MadSkin13write_text_on17h97a269fb0a7f7e28E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.8.0.copyload.i.i.i.i.i.i.i.i)
          to label %bb.wx unwind label %bb.wv, !noalias !52698 ; 2 uses

bb.wu:                                            ; preds = %.noexc13.i.i.i.i.i.i
  %i.bro = invoke fastcc { i64, ptr } @_ZN8termimad4skin7MadSkin13write_text_on17h97a269fb0a7f7e28E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.nq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bqp, i64 noundef %i.bqo)
          to label %.noexc15.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756 ; 2 uses

.noexc15.i.i.i.i.i.i:                             ; preds = %bb.wu
  %i.brp = extractvalue { i64, ptr } %i.bro, 0    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i = icmp eq i64 %i.brp, 2
  br i1 %.not22.i.i.i.i.i.i.i.i, label %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread175.i.i.i.i.i.i.i", label %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread.i.i.i.i.i.i.i"

"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread175.i.i.i.i.i.i.i": ; preds = %.noexc15.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !noalias !52699
  br label %.thread167.i.i.i.i.i.i.i

bb.wv:                                            ; preds = %bb.wy, %.noexc14.i.i.i.i.i.i
  %i.brq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.brr = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.brr, label %.body.i.i.i.i.i.i, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52779
  br label %.body.i.i.i.i.i.i

bb.wx:                                            ; preds = %.noexc14.i.i.i.i.i.i
  %i.brs = extractvalue { i64, ptr } %i.brn, 0    ; 2 uses
  %.not23.i.i.i.i.i.i.i.i = icmp eq i64 %i.brs, 2
  br i1 %.not23.i.i.i.i.i.i.i.i, label %bb.wz, label %bb.wy

bb.wy:                                            ; preds = %bb.wx
  %i.brt = extractvalue { i64, ptr } %i.brn, 1
  %i.bru = invoke noundef nonnull ptr @_ZN16nickel_lang_core4repl11query_print14termimad_to_io17h2b745e1c33b4349bE(i64 noundef %i.brs, ptr noundef %i.brt)
          to label %bb.wz unwind label %bb.wv, !noalias !52698

bb.wz:                                            ; preds = %bb.wy, %bb.wx
  %.sroa.0.2.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.wx ], [ %i.bru, %bb.wy ] ; 2 uses
  %i.brv = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.brv, label %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i", label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !52780
  br label %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i"

"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc15.i.i.i.i.i.i, %.noexc13.i.i.i.i.i.i
  %.sink276.i.i.i.i.i.i.i = phi { i64, ptr } [ %i.brl, %.noexc13.i.i.i.i.i.i ], [ %i.bro, %.noexc15.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.brm, %.noexc13.i.i.i.i.i.i ], [ %i.brp, %.noexc15.i.i.i.i.i.i ]
  %i.brw = extractvalue { i64, ptr } %.sink276.i.i.i.i.i.i.i, 1
  %i.brx = invoke noundef nonnull ptr @_ZN16nickel_lang_core4repl11query_print14termimad_to_io17h2b745e1c33b4349bE(i64 noundef %.sink.i.i.i.i.i.i.i, ptr noundef %i.brw)
          to label %.noexc16.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756

.noexc16.i.i.i.i.i.i:                             ; preds = %"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !noalias !52699
  br label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

"_ZN123_$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$u20$as$u20$nickel_lang_core..repl..query_print..QueryPrinter$GT$9write_doc17haa072379012388e5E.exit.i.i.i.i.i.i.i": ; preds = %bb.xa, %bb.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !noalias !52699
  %.not80.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.2.i.i.i.i.i.i.i.i, null
  br i1 %.not80.i.i.i.i.i.i.i, label %.thread167.i.i.i.i.i.i.i, label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

bb.xb:                                            ; preds = %.thread167.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mx), !noalias !52781
  store ptr @14, ptr %i.mx, align 8, !noalias !52781
  %i.bry = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i64 1, ptr %i.bry, align 8, !noalias !52781
  %i.brz = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  store ptr null, ptr %i.brz, align 8, !noalias !52781
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bsa, align 8, !noalias !52781
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store i64 0, ptr %i.bsb, align 8, !noalias !52781
  %i.bsc = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17hf227482ec4576934E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.mx)
          to label %.noexc17.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756 ; 2 uses

.noexc17.i.i.i.i.i.i:                             ; preds = %bb.xb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx), !noalias !52781
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bsc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.xc, label %_ZN16nickel_lang_core4repl11query_print19render_query_result17hbf488b167dac3508E.exit.i.i.i.i.i.i

bb.xc:                                            ; preds = %.noexc17.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mw), !noalias !52781
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.mw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bqr)
          to label %.noexc18.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !52756

.noexc18.i.i.i.i.i.i:                             ; preds = %bb.xc
  %i.bsd = load i8, ptr %i.mw, align 8, !range !59, !noalias !52781, !noundef !34
  switch i8 %i.bsd, label %_ZN16nickel_lang_core4repl11query_print19render_query_result12write_fields17h54d6ed0b631d04c1E.exit.thread181.i.i.i.i.i.i.i [
    i8 4, label %bb.xd
    i8 7, label %bb.xe
end_hunk_1
