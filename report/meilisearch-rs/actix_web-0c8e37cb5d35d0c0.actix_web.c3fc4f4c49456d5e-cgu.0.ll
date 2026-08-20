inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZN108_$LT$actix_web..service..ServiceFactoryWrapper$LT$T$GT$$u20$as$u20$actix_web..service..AppServiceFactory$GT$8register17h5c720d5a012f0ed7E":bb.a

.noexc51.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bq)
          to label %.thread97.i unwind label %bb.ah, !noalias !325

bb.ah:                                            ; preds = %bb.ag
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !325
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !327
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %.sroa.01.0.i = phi ptr [ %i.br, %bb.ai ], [ null, %bb.ad ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !322, !noalias !325, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.n, i64 152, i1 false), !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !347
  store ptr %i.bw, ptr %i.a, align 8, !noalias !347
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.01.0.i, ptr %i.by, align 8, !noalias !347
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !350
  %i.bz = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !350 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ak, label %bb.an, !prof !211

.body.i.i:                                        ; preds = %bb.al
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %i.b) #53
          to label %bb.as unwind label %bb.ar, !noalias !350

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #52
          to label %.noexc.i.i unwind label %bb.al, !noalias !350

.noexc.i.i:                                       ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr418drop_in_place$LT$actix_service..boxed..FactoryWrapper$LT$actix_service..apply..ApplyFactory$LT$actix_web..resource..ResourceEndpoint$C$$LT$actix_web..resource..Resource$u20$as$u20$actix_web..service..HttpServiceFactory$GT$..register..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$17h7bdbc84c7d874a85E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #53
          to label %.body.i.i unwind label %bb.am, !noalias !350

bb.am:                                            ; preds = %bb.al
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !350
  unreachable

bb.an:                                            ; preds = %bb.aj
  store ptr %i.bw, ptr %i.bz, align 8, !noalias !350
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %.sroa.01.0.i, ptr %i.cd, align 8, !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.n, i64 152, i1 false), !noalias !327
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %i.bz, ptr %i.ce, align 8, !noalias !347
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store ptr @734, ptr %i.cf, align 8, !noalias !347
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !327
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr null, ptr %i.ch, align 8, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !347
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !354, !noalias !355, !noundef !4 ; 3 uses
  %i.ck = load i64, ptr %i.bx, align 8, !range !357, !alias.scope !354, !noalias !355, !noundef !4
  %i.cl = icmp eq i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h88dd57cce2f77cd8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @733)
          to label %bb.at unwind label %bb.ap, !noalias !358

bb.ap:                                            ; preds = %bb.ao
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr431drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$17h3925b08a5faee916E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.c) #53
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i" unwind label %bb.aq, !noalias !359

bb.aq:                                            ; preds = %bb.ap
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !359
  unreachable

bb.ar:                                            ; preds = %bb.as, %.body.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !350
  unreachable

bb.as:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he394eadb068658eeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.i) #53
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i" unwind label %bb.ar, !noalias !325

bb.at:                                            ; preds = %bb.ao, %bb.an
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !354, !noalias !355, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw [200 x i8], ptr %i.cq, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.cr, ptr noundef nonnull align 8 dereferenceable(200) %i.c, i64 200, i1 false), !noalias !359
  %i.cs = add i64 %i.cj, 1
  store i64 %i.cs, ptr %i.ci, align 8, !alias.scope !354, !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !327
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ct = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ct, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %.val.i.i59.i = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !alias.scope !366, !noalias !325 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i59.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i60.i = load ptr, ptr %i.cv, align 8, !alias.scope !366, !noalias !325, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i60.i, i64 noundef %.val.i.i59.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !367
  br label %"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i"

bb.aw:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val.i1.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !371, !noalias !325, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i2.i.i = load i64, ptr %i.cx, align 8, !alias.scope !371, !noalias !325, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.cy = icmp eq i64 %.val1.i2.i.i, 0
  br i1 %i.cy, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.da, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i" ], [ 0, %bb.aw ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.val.i1.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.da = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %.val.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !378, !noalias !379 ; 2 uses
  %i.db = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.db, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !378, !noalias !379, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !380
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i": ; preds = %bb.ax, %.lr.ph.i.i.i.i.i
  %i.dd = icmp eq i64 %i.da, %.val1.i2.i.i
  br i1 %i.dd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i", %bb.aw
  %.val2.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2, align 8, !alias.scope !371, !noalias !325 ; 2 uses
  %i.de = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.de, label %"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i.i.i"
  %i.df = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !379
  br label %"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i"

"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i": ; preds = %bb.ay, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i.i.i", %bb.av, %bb.au
  %.val33.i = load i64, ptr %i.ai, align 8, !range !91, !alias.scope !322, !noalias !325, !noundef !4 ; 2 uses
  %switch.i = icmp sgt i64 %.val33.i, 0
  br i1 %switch.i, label %bb.az, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit61.i"

bb.az:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i"
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.val34.i = load ptr, ptr %i.dg, align 8, !alias.scope !322, !noalias !325, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %.val33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !381
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit61.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit61.i": ; preds = %bb.az, %"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %.val.i4 = load ptr, ptr %.sroa.413.0..sroa_idx.i, align 8, !alias.scope !384, !noalias !325, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !384, !noalias !325, !noundef !4 ; 4 uses
  %i.dh = icmp eq i64 %.val1.i, 0
  br i1 %i.dh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit.i", label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %i.di = icmp eq i64 %i.dk, %.val1.i
  br i1 %i.di, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit61.i", %bb.ba
  %.sroa.0.0.i.i.i14 = phi i64 [ %i.dk, %bb.ba ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit61.i" ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %.val.i4, i64 %.sroa.0.0.i.i.i14
  %i.dk = add nuw i64 %.sroa.0.0.i.i.i14, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$actix_web..route..Route$GT$17hf2f7b8095add50eeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dj)
          to label %bb.ba unwind label %bb.bc, !noalias !387

bb.bb:                                            ; preds = %.lr.ph17
  %i.dl = add i64 %.sroa.0.1.i.i.i15, 1           ; 2 uses
  %i.dm = icmp eq i64 %i.dl, %.val1.i
  br i1 %i.dm, label %.body.i, label %.lr.ph17

bb.bc:                                            ; preds = %.lr.ph
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = icmp eq i64 %i.dk, %.val1.i
  br i1 %i.do, label %.body.i, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.bc, %bb.bb
  %.sroa.0.1.i.i.i15 = phi i64 [ %i.dl, %bb.bb ], [ %i.dk, %bb.bc ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.val.i4, i64 %.sroa.0.1.i.i.i15
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$actix_web..route..Route$GT$17hf2f7b8095add50eeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dp) #53
          to label %bb.bb unwind label %bb.bd, !noalias !387

bb.bd:                                            ; preds = %.lr.ph17
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !388
  unreachable

.body.i:                                          ; preds = %bb.bb, %bb.bc
  %.val4.i = load i64, ptr %i.q, align 8, !alias.scope !384, !noalias !325 ; 2 uses
  %i.dr = icmp eq i64 %.val4.i, 0
  br i1 %i.dr, label %.body, label %bb.be

bb.be:                                            ; preds = %.body.i
  %i.ds = mul nuw i64 %.val4.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !387
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit.i": ; preds = %bb.ba, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit61.i"
  %.val2.i = load i64, ptr %i.q, align 8, !alias.scope !384, !noalias !325 ; 2 uses
  %i.dt = icmp eq i64 %.val2.i, 0
  br i1 %i.dt, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE.exit", label %bb.bf

bb.bf:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit.i"
  %i.du = mul nuw i64 %.val2.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !387
  br label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE.exit"

.body:                                            ; preds = %.body.i, %bb.be
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #53
          to label %.body63.i unwind label %bb.bl, !noalias !325

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE.exit": ; preds = %bb.bf, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.val.i62.i = load ptr, ptr %i.dv, align 8, !alias.scope !394, !noalias !325, !nonnull !4, !noundef !4 ; 3 uses
  %.val1.i.i = load i64, ptr %i.t, align 8, !alias.scope !394, !noalias !325, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i62.i, i64 noundef %.val1.i.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i.i" unwind label %bb.bg, !noalias !395

bb.bg:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE.exit"
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i = load i64, ptr %i.s, align 8, !alias.scope !394, !noalias !325 ; 2 uses
  %i.dx = icmp eq i64 %.val4.i.i, 0
  br i1 %i.dx, label %.body63.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dy = shl nuw i64 %.val4.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i62.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !395
  br label %.body63.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i.i": ; preds = %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE.exit"
  %.val2.i.i = load i64, ptr %i.s, align 8, !alias.scope !394, !noalias !325 ; 2 uses
  %i.dz = icmp eq i64 %.val2.i.i, 0
  br i1 %i.dz, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit.i", label %bb.bi

bb.bi:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i.i"
  %i.ea = shl nuw i64 %.val2.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i62.i, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !395
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit.i"

.body63.i:                                        ; preds = %bb.bh, %bb.bg, %.body
  %.pn29.i = phi { ptr, i32 } [ %i.dn, %.body ], [ %i.dw, %bb.bg ], [ %i.dw, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.eb = load ptr, ptr %i.bc, align 8, !alias.scope !402, !noalias !325, !nonnull !4, !noundef !4 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !403, !noundef !4
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  store i64 %i.ed, ptr %i.eb, align 8, !noalias !403
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.bj, label %"_ZN4core3ptr133drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..resource..ResourceFactory$GT$$GT$$GT$$GT$17hd25d847802c6c4ecE.exit.i"

bb.bj:                                            ; preds = %.body63.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264df20c0a921c22E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bc)
          to label %"_ZN4core3ptr133drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..resource..ResourceFactory$GT$$GT$$GT$$GT$17hd25d847802c6c4ecE.exit.i" unwind label %bb.bl, !noalias !325

"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit.i": ; preds = %bb.bi, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.ef = load ptr, ptr %i.bc, align 8, !alias.scope !410, !noalias !325, !nonnull !4, !noundef !4 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !411, !noundef !4
  %i.eh = add i64 %i.eg, -1                       ; 2 uses
  store i64 %i.eh, ptr %i.ef, align 8, !noalias !411
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.bk, label %"_ZN97_$LT$actix_web..resource..Resource$LT$T$GT$$u20$as$u20$actix_web..service..HttpServiceFactory$GT$8register17hde0ccd46edbc5593E.exit"

bb.bk:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264df20c0a921c22E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bc), !noalias !325
  br label %"_ZN97_$LT$actix_web..resource..Resource$LT$T$GT$$u20$as$u20$actix_web..service..HttpServiceFactory$GT$8register17hde0ccd46edbc5593E.exit"

bb.bl:                                            ; preds = %bb.ca, %bb.bz, %bb.bw, %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$17hb09876a53f525a15E.exit.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit68.i", %bb.bs, %bb.bq, %bb.bp, %.thread97.i, %bb.bm, %bb.bj, %.body
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !325
  unreachable

"_ZN4core3ptr133drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..resource..ResourceFactory$GT$$GT$$GT$$GT$17hd25d847802c6c4ecE.exit.i": ; preds = %bb.bz, %bb.by, %bb.bj, %.body63.i
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %.body63.i ], [ %.pn29.i, %bb.bj ], [ %.pn.pn84122132.i, %bb.bz ], [ %.pn.pn84122132.i, %bb.by ]
  resume { ptr, i32 } %.pn29.pn.i

bb.bm:                                            ; preds = %bb.ab
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$actix_web..resource..ResourceFactory$GT$$GT$17h67932a23556944d0E"(ptr noalias noundef align 8 dereferenceable(40) %i.j) #53
          to label %.thread97.i unwind label %bb.bl, !noalias !325

bb.bn:                                            ; preds = %bb.ab
  unreachable

.thread97.i:                                      ; preds = %bb.bm, %bb.ag, %bb.ac, %.thread110.i, %bb.y, %bb.w
  %.pn96.i = phi { ptr, i32 } [ %i.bt, %bb.ag ], [ %i.bh, %.thread110.i ], [ %i.bj, %bb.ac ], [ %i.ek, %bb.bm ], [ %i.ax, %bb.y ], [ %i.ax, %bb.w ]
  %.sroa.08.195.i = phi i1 [ false, %bb.ag ], [ true, %.thread110.i ], [ false, %bb.ac ], [ false, %bb.bm ], [ true, %bb.y ], [ true, %bb.w ]
  %.sroa.010.193.i = phi i1 [ false, %bb.ag ], [ true, %.thread110.i ], [ true, %bb.ac ], [ true, %bb.bm ], [ true, %bb.y ], [ true, %bb.w ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %i.n) #53
          to label %bb.bp unwind label %bb.bl, !noalias !325

bb.bo:                                            ; preds = %bb.bp
  br i1 %.sroa.08.0.ph.i, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %.thread97.i, %bb.h
  %.sroa.010.0.ph.i = phi i1 [ true, %bb.h ], [ %.sroa.010.193.i, %.thread97.i ] ; 2 uses
  %.sroa.08.0.ph.i = phi i1 [ true, %bb.h ], [ %.sroa.08.195.i, %.thread97.i ] ; 3 uses
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %.pn96.i, %.thread97.i ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he394eadb068658eeE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #53
          to label %bb.bo unwind label %bb.bl, !noalias !325

bb.bq:                                            ; preds = %bb.bo
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #53
          to label %bb.br unwind label %bb.bl, !noalias !325

"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i": ; preds = %bb.bs, %bb.br, %bb.as, %bb.ap
  %.pn.pn84122132.i = phi { ptr, i32 } [ %i.cm, %bb.ap ], [ %i.cb, %bb.as ], [ %.pn.pn.ph.i, %bb.bs ], [ %.pn.pn.ph.i, %bb.br ] ; 2 uses
  %.sroa.010.078124130.i = phi i1 [ false, %bb.ap ], [ false, %bb.as ], [ %.sroa.010.0.ph.i, %bb.bs ], [ %.sroa.010.0.ph.i, %bb.br ]
  %i.el = phi i1 [ false, %bb.ap ], [ false, %bb.as ], [ %.sroa.08.0.ph.i, %bb.bs ], [ %.sroa.08.0.ph.i, %bb.br ]
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.p) #53, !noalias !325
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.val.i = load i64, ptr %i.em, align 8, !range !91, !alias.scope !322, !noalias !325, !noundef !4 ; 2 uses
  %switch136.i = icmp sgt i64 %.val.i, 0
  br i1 %switch136.i, label %bb.bt, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit68.i"

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.en = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !421, !noalias !325, !nonnull !4, !noundef !4 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !422, !noundef !4
  %i.eq = add i64 %i.ep, -1                       ; 2 uses
  store i64 %i.eq, ptr %i.eo, align 8, !noalias !422
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.bs, label %"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i"

bb.bs:                                            ; preds = %bb.br
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264df20c0a921c22E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.en)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i" unwind label %bb.bl, !noalias !325

bb.bt:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i"
  %i.es = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.val32.i = load ptr, ptr %i.es, align 8, !alias.scope !322, !noalias !325, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !423
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit68.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit68.i": ; preds = %bb.bt, %"_ZN4core3ptr58drop_in_place$LT$actix_web..resource..ResourceEndpoint$GT$17h15e34603708a7211E.exit.i"
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #53
          to label %bb.bu unwind label %bb.bl, !noalias !325

bb.bu:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit68.i"
  br i1 %.sroa.010.078124130.i, label %bb.bv, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$17hb09876a53f525a15E.exit.i"

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$17hb09876a53f525a15E.exit.i": ; preds = %bb.bw, %bb.bv, %bb.bu
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #53
          to label %bb.bx unwind label %bb.bl, !noalias !325

bb.bv:                                            ; preds = %bb.bu
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 136 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !426, !noalias !325, !noundef !4
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$actix_http..extensions..Extensions$GT$$GT$17hb09876a53f525a15E.exit.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.et)
end_hunk_0
begin_hunk_1_@"_ZN122_$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$17h37eb2b014b9b35e7E":bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.jo)
          to label %bb.cp unwind label %bb.co

.body48:                                          ; preds = %bb.co, %bb.cm, %.body40
  %.pn11 = phi { ptr, i32 } [ %.pn9, %.body40 ], [ %i.jp, %bb.co ], [ %i.jl, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.o

bb.co:                                            ; preds = %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i", %bb.ck, %bb.cp
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.cp:                                            ; preds = %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i", %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.1) ]
  %i.jq = icmp ult i64 %.sroa.10.sroa.7.1, 48038396025285291
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [192 x i8], ptr %.sroa.10.sroa.0.1, i64 %.sroa.10.sroa.7.1
  store ptr %.sroa.10.sroa.0.1, ptr %i.o, align 8, !alias.scope !1542, !noalias !1545
  %i.js = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.074.1, ptr %i.js, align 8, !alias.scope !1542, !noalias !1545
  %i.jt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.10.sroa.0.1, ptr %i.jt, align 8, !alias.scope !1542, !noalias !1545
  %i.ju = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.jr, ptr %i.ju, align 8, !alias.scope !1542, !noalias !1545
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he9b55de83d945f92E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.jv = load i64, ptr %i.p, align 8, !range !91, !alias.scope !1547, !noalias !1550, !noundef !4 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, -9223372036854775808
  br i1 %i.jw, label %bb.di, label %bb.cs

bb.cr:                                            ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i"
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body55

bb.cs:                                            ; preds = %bb.cq
  %.sroa.11.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx73, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.jv, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !alias.scope !1555, !noalias !1552, !noundef !4 ; 4 uses
  %i.ka = icmp ult i64 %i.jz, 48038396025285291
  call void @llvm.assume(i1 %i.ka)
  store i64 0, ptr %i.jy, align 8, !alias.scope !1555, !noalias !1552
  %i.kb = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !alias.scope !1555, !noalias !1552, !nonnull !4, !noundef !4 ; 3 uses
  %.idx = mul nuw nsw i64 %i.jz, 192
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.idx ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.jz, ptr %i.kd, align 8, !alias.scope !1552, !noalias !1555
  %i.ke = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 0, ptr %i.ke, align 8, !alias.scope !1552, !noalias !1555
  store ptr %i.kb, ptr %i.r, align 8, !alias.scope !1552, !noalias !1555
  %i.kf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.kc, ptr %i.kf, align 8, !alias.scope !1552, !noalias !1555
  %i.kg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.kg, align 8, !alias.scope !1552, !noalias !1555
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %i.kh = icmp eq i64 %i.jz, 0
  br i1 %i.kh, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i", label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i": ; preds = %bb.cs
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i": ; preds = %bb.cy, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i"
  %.sroa.093.0 = phi i64 [ 0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %.sroa.093.0.copyload94, %bb.cy ] ; 3 uses
  %.sroa.696.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %i.kw, %bb.cy ] ; 3 uses
  %.sroa.7.0 = phi i64 [ 0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %i.ky, %bb.cy ] ; 5 uses
  %i.ko = phi ptr [ %i.kb, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %i.kp, %bb.cy ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 192 ; 4 uses
  %.sroa.0.0.copyload2.i = load i64, ptr %i.ko, align 8, !noalias !1563 ; 2 uses
  %.not.i53 = icmp eq i64 %.sroa.0.0.copyload2.i, 2
  br i1 %.not.i53, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit", label %bb.ct

bb.ct:                                            ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i"
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx3.i, i64 184, i1 false), !noalias !1566
  store i64 %.sroa.093.0, ptr %i.b, align 8, !noalias !1566
  store ptr %.sroa.696.0, ptr %i.kn, align 8, !noalias !1566
  store i64 %.sroa.7.0, ptr %i.km, align 8, !noalias !1566
  store i64 %.sroa.0.0.copyload2.i, ptr %i.ki, align 8, !noalias !1566
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1572
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i64 24, i1 false), !noalias !1566
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.ki, i64 152, i1 false), !noalias !1581
  %i.kr = load <2 x ptr>, ptr %i.kk, align 8, !alias.scope !1570, !noalias !1582
  store <2 x ptr> %i.kr, ptr %i.kl, align 8, !noalias !1572
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.ks = icmp eq i64 %.sroa.7.0, %.sroa.093.0
  br i1 %i.ks, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc81297bfc6fc62c1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge" unwind label %bb.cv, !noalias !1586

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge": ; preds = %bb.cu
  %.pre = load ptr, ptr %i.kn, align 8, !alias.scope !1588, !noalias !1589
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.kt = landingpad { ptr, i32 }
          cleanup
  store ptr %i.kp, ptr %i.r, align 8, !alias.scope !1590, !noalias !1593
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$17h7e860c0d05ff9e09E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.a) #53
          to label %.body.i.i unwind label %bb.cw, !noalias !1595

bb.cw:                                            ; preds = %bb.cv
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1595
  unreachable

.body.i.i:                                        ; preds = %bb.cv
  invoke fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h230368349c59c207E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %bb.da unwind label %bb.cx, !noalias !1596

bb.cx:                                            ; preds = %.body.i.i
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1597
  unreachable

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit": ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i", %bb.cy
  %.lcssa155 = phi ptr [ %i.kp, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %i.kc, %bb.cy ]
  %.sroa.093.1.ph = phi i64 [ %.sroa.093.0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %.sroa.093.0.copyload94, %bb.cy ]
  %.sroa.696.1.ph = phi ptr [ %.sroa.696.0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %i.kw, %bb.cy ]
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %i.ky, %bb.cy ]
  store ptr %.lcssa155, ptr %i.r, align 8, !alias.scope !1590, !noalias !1593
  br label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i": ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit", %bb.cs
  %.sroa.093.1 = phi i64 [ 0, %bb.cs ], [ %.sroa.093.1.ph, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit" ] ; 2 uses
  %.sroa.696.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.cs ], [ %.sroa.696.1.ph, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit" ]
  %.sroa.7.1 = phi i64 [ 0, %bb.cs ], [ %.sroa.7.1.ph, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit" ]
  invoke fastcc void @"_ZN4core3ptr627drop_in_place$LT$alloc..vec..drain..Drain$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17hdef2cc95cd8dabdbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.db unwind label %bb.cr

bb.cy:                                            ; preds = %bb.ct, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge"
  %i.kw = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge" ], [ %.sroa.696.0, %bb.ct ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [192 x i8], ptr %i.kw, i64 %.sroa.7.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.kx, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !1595
  %i.ky = add nuw nsw i64 %.sroa.7.0, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1572
  %.sroa.093.0.copyload94 = load i64, ptr %i.b, align 8, !noalias !1566 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1566
  %i.kz = icmp eq ptr %i.kp, %i.kc
  br i1 %i.kz, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit", label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i"

bb.cz:                                            ; preds = %bb.da
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1566
  unreachable

bb.da:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr627drop_in_place$LT$alloc..vec..drain..Drain$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17hdef2cc95cd8dabdbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r) #53
          to label %.body55 unwind label %bb.cz, !noalias !1598

bb.db:                                            ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %.sroa.093.1, ptr %i.s, align 8, !alias.scope !1599
  %.sroa.11106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.696.1, ptr %.sroa.11106.0..sroa_idx, align 8, !alias.scope !1599
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !1599
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %.val.i = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !alias.scope !1603, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load i64, ptr %i.jy, align 8, !alias.scope !1603, !noundef !4 ; 4 uses
  %i.lb = icmp eq i64 %.val1.i, 0
  br i1 %i.lb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i", label %.lr.ph

bb.dc:                                            ; preds = %.lr.ph
  %i.lc = icmp eq i64 %i.le, %.val1.i
  br i1 %i.lc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.db, %bb.dc
  %.sroa.0.0.i.i.i300 = phi i64 [ %i.le, %bb.dc ], [ 0, %bb.db ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [192 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i300
  %i.le = add nuw i64 %.sroa.0.0.i.i.i300, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.ld)
          to label %bb.dc unwind label %bb.de, !noalias !1603

bb.dd:                                            ; preds = %.lr.ph304
  %i.lf = add i64 %.sroa.0.1.i.i.i302, 1          ; 2 uses
  %i.lg = icmp eq i64 %i.lf, %.val1.i
  br i1 %i.lg, label %.body.i57, label %.lr.ph304

bb.de:                                            ; preds = %.lr.ph
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = icmp eq i64 %i.le, %.val1.i
  br i1 %i.li, label %.body.i57, label %.lr.ph304

.lr.ph304:                                        ; preds = %bb.de, %bb.dd
  %.sroa.0.1.i.i.i302 = phi i64 [ %i.lf, %bb.dd ], [ %i.le, %bb.de ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [192 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i302
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.lj) #53
          to label %bb.dd unwind label %bb.df, !noalias !1603

bb.df:                                            ; preds = %.lr.ph304
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1603
  unreachable

.body.i57:                                        ; preds = %bb.dd, %bb.de
  %.val4.i = load i64, ptr %i.q, align 8, !alias.scope !1603 ; 2 uses
  %i.ll = icmp eq i64 %.val4.i, 0
  br i1 %i.ll, label %.body58, label %bb.dg

bb.dg:                                            ; preds = %.body.i57
  %i.lm = mul nuw i64 %.val4.i, 192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !1603
  br label %.body58

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i": ; preds = %bb.dc, %bb.db
  %.val2.i = load i64, ptr %i.q, align 8, !alias.scope !1603 ; 2 uses
  %i.ln = icmp eq i64 %.val2.i, 0
  br i1 %i.ln, label %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit", label %bb.dh

bb.dh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i"
  %i.lo = mul nuw i64 %.val2.i, 192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !1603
  br label %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit"

.body58:                                          ; preds = %.body.i57, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h230368349c59c207E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr585drop_in_place$LT$actix_router..router..Router$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17h8f8543f08a1a9876E.exit" unwind label %bb.p

"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit": ; preds = %bb.dh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.488, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11106.0..sroa_idx, i64 16, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.lq = load <2 x ptr>, ptr %i.lp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit71"

"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit71": ; preds = %bb.dn, %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i64", %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit", %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"
  %.sroa.086.1 = phi i64 [ %.sroa.093.1, %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit" ], [ -9223372036854775808, %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit" ], [ -9223372036854775808, %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i64" ], [ -9223372036854775808, %bb.dn ]
  %i.lr = phi <2 x ptr> [ %i.lq, %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit" ], [ undef, %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit" ], [ undef, %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i64" ], [ undef, %bb.dn ]
  store i64 %.sroa.086.1, ptr %0, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.488, i64 16, i1 false)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.lr, ptr %.sroa.489.0..sroa_idx, align 8
  br label %common.ret

"_ZN4core3ptr585drop_in_place$LT$actix_router..router..Router$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17h8f8543f08a1a9876E.exit": ; preds = %.body58, %bb.o
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.o ], [ %i.lh, %.body58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val34 = load ptr, ptr %i.ls, align 8
  %i.lt = getelementptr i8, ptr %1, i64 208
  %.val35 = load ptr, ptr %i.lt, align 8, !nonnull !4, !align !236, !noundef !4
  invoke fastcc void @"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E"(ptr %.val34, ptr nonnull %.val35) #53
          to label %.body unwind label %bb.p

.body55:                                          ; preds = %bb.cr, %bb.da
  %.pn15 = phi { ptr, i32 } [ %i.kt, %bb.da ], [ %i.jx, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #53
          to label %bb.o unwind label %bb.p

bb.di:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val32 = load ptr, ptr %i.lu, align 8          ; 5 uses
  %i.lv = getelementptr i8, ptr %1, i64 208
  %.val33 = load ptr, ptr %i.lv, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.lw = load ptr, ptr %.val33, align 8, !invariant.load !4 ; 2 uses
  %.not.i61 = icmp eq ptr %i.lw, null
  br i1 %.not.i61, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32) ]
  invoke void %i.lw(ptr noundef nonnull %.val32)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.lx = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.mb = icmp ult i64 %i.ma, -9223372036854775807
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp eq i64 %i.ly, 0
  br i1 %i.mc, label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %i.ly, i64 noundef range(i64 1, -9223372036854775807) %i.ma) #46
  br label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"

bb.dl:                                            ; preds = %bb.dj
  %i.md = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.mi = icmp ult i64 %i.mh, -9223372036854775807
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp eq i64 %i.mf, 0
  br i1 %i.mj, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.dl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %i.mf, i64 noundef range(i64 1, -9223372036854775807) %i.mh) #46
  br label %.body

bb.dm:                                            ; preds = %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  %i.mk = load i64, ptr %1, align 8, !range !91, !alias.scope !1612, !noundef !4
  %i.ml = icmp eq i64 %i.mk, -9223372036854775808
  br i1 %i.ml, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i65 = load ptr, ptr %i.mm, align 8, !alias.scope !1612, !nonnull !4, !noundef !4
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i66 = load i64, ptr %i.mn, align 8, !alias.scope !1612, !noundef !4
  invoke fastcc void @"_ZN4core3ptr321drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$$u5b$futures_util..future..maybe_done..MaybeDone$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$u5d$$GT$$GT$$GT$17h272ae843ad937037E"(ptr nonnull %.val.i.i65, i64 %.val1.i.i66)
          to label %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit71" unwind label %bb.dr

bb.do:                                            ; preds = %bb.dm
  invoke fastcc void @"_ZN4core3ptr274drop_in_place$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d09d2b979d01a1bE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i64" unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.mp) #53
          to label %.body68 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1613
  unreachable

"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i64": ; preds = %bb.do
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.mr)
          to label %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit71" unwind label %bb.dr

.body68:                                          ; preds = %bb.dr, %bb.dp, %bb.ds, %.body
  %.pn25 = phi { ptr, i32 } [ %.pn22.pn, %.body ], [ %.pn22.pn, %bb.ds ], [ %i.ms, %bb.dr ], [ %i.mo, %bb.dp ]
  store i8 2, ptr %i.u, align 8
  resume { ptr, i32 } %.pn25

bb.dr:                                            ; preds = %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i64", %bb.dn
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body40:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body.i, %bb.bs, %bb.bm, %bb.bl, %bb.be, %bb.bd, %bb.ay, %bb.ax, %bb.ap
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.hn, %bb.bm ], [ %i.hn, %bb.bl ], [ %i.if, %bb.bs ], [ %i.gv, %bb.bd ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ay ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ax ], [ %i.ff, %bb.ap ], [ %i.gv, %bb.be ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit111, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit114, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE"(ptr noalias noundef align 8 dereferenceable(88) %i.bn) #53
          to label %.body48 unwind label %bb.p

bb.ds:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE"(ptr noalias noundef align 8 dereferenceable(88) %1) #53
          to label %.body68 unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN122_$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h653b87199676d522E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.sroa.4 = alloca [168 x i8], align 8  ; 3 uses
  %i.a = alloca [176 x i8], align 8               ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !228, !noundef !4
  switch i8 %i.d, label %default.unreachable19 [
end_hunk_1
begin_hunk_2_@"_ZN133_$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$17hf5c9b08883741b93E":bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.jo)
          to label %bb.cp unwind label %bb.co

.body48:                                          ; preds = %bb.co, %bb.cm, %.body40
  %.pn11 = phi { ptr, i32 } [ %.pn9, %.body40 ], [ %i.jp, %bb.co ], [ %i.jl, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.o

bb.co:                                            ; preds = %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i", %bb.ck, %bb.cp
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.cp:                                            ; preds = %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i", %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.1) ]
  %i.jq = icmp ult i64 %.sroa.10.sroa.7.1, 48038396025285291
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [192 x i8], ptr %.sroa.10.sroa.0.1, i64 %.sroa.10.sroa.7.1
  store ptr %.sroa.10.sroa.0.1, ptr %i.o, align 8, !alias.scope !2558, !noalias !2561
  %i.js = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.074.1, ptr %i.js, align 8, !alias.scope !2558, !noalias !2561
  %i.jt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.10.sroa.0.1, ptr %i.jt, align 8, !alias.scope !2558, !noalias !2561
  %i.ju = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.jr, ptr %i.ju, align 8, !alias.scope !2558, !noalias !2561
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he9b55de83d945f92E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.jv = load i64, ptr %i.p, align 8, !range !91, !alias.scope !2563, !noalias !2566, !noundef !4 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, -9223372036854775808
  br i1 %i.jw, label %bb.di, label %bb.cs

bb.cr:                                            ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i"
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body55

bb.cs:                                            ; preds = %bb.cq
  %.sroa.11.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx73, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.jv, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !alias.scope !2571, !noalias !2568, !noundef !4 ; 4 uses
  %i.ka = icmp ult i64 %i.jz, 48038396025285291
  call void @llvm.assume(i1 %i.ka)
  store i64 0, ptr %i.jy, align 8, !alias.scope !2571, !noalias !2568
  %i.kb = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !alias.scope !2571, !noalias !2568, !nonnull !4, !noundef !4 ; 3 uses
  %.idx = mul nuw nsw i64 %i.jz, 192
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.idx ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.jz, ptr %i.kd, align 8, !alias.scope !2568, !noalias !2571
  %i.ke = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 0, ptr %i.ke, align 8, !alias.scope !2568, !noalias !2571
  store ptr %i.kb, ptr %i.r, align 8, !alias.scope !2568, !noalias !2571
  %i.kf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.kc, ptr %i.kf, align 8, !alias.scope !2568, !noalias !2571
  %i.kg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.kg, align 8, !alias.scope !2568, !noalias !2571
  call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  %i.kh = icmp eq i64 %i.jz, 0
  br i1 %i.kh, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i", label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i": ; preds = %bb.cs
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i": ; preds = %bb.cy, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i"
  %.sroa.093.0 = phi i64 [ 0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %.sroa.093.0.copyload94, %bb.cy ] ; 3 uses
  %.sroa.696.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %i.kw, %bb.cy ] ; 3 uses
  %.sroa.7.0 = phi i64 [ 0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %i.ky, %bb.cy ] ; 5 uses
  %i.ko = phi ptr [ %i.kb, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.lr.ph.i" ], [ %i.kp, %bb.cy ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 192 ; 4 uses
  %.sroa.0.0.copyload2.i = load i64, ptr %i.ko, align 8, !noalias !2579 ; 2 uses
  %.not.i53 = icmp eq i64 %.sroa.0.0.copyload2.i, 2
  br i1 %.not.i53, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit", label %bb.ct

bb.ct:                                            ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i"
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx3.i, i64 184, i1 false), !noalias !2582
  store i64 %.sroa.093.0, ptr %i.b, align 8, !noalias !2582
  store ptr %.sroa.696.0, ptr %i.kn, align 8, !noalias !2582
  store i64 %.sroa.7.0, ptr %i.km, align 8, !noalias !2582
  store i64 %.sroa.0.0.copyload2.i, ptr %i.ki, align 8, !noalias !2582
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2588
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i64 24, i1 false), !noalias !2582
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.ki, i64 152, i1 false), !noalias !2597
  %i.kr = load <2 x ptr>, ptr %i.kk, align 8, !alias.scope !2586, !noalias !2598
  store <2 x ptr> %i.kr, ptr %i.kl, align 8, !noalias !2588
  call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  %i.ks = icmp eq i64 %.sroa.7.0, %.sroa.093.0
  br i1 %i.ks, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc81297bfc6fc62c1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge" unwind label %bb.cv, !noalias !2602

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge": ; preds = %bb.cu
  %.pre = load ptr, ptr %i.kn, align 8, !alias.scope !2604, !noalias !2605
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.kt = landingpad { ptr, i32 }
          cleanup
  store ptr %i.kp, ptr %i.r, align 8, !alias.scope !2606, !noalias !2609
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$17h7e860c0d05ff9e09E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.a) #53
          to label %.body.i.i unwind label %bb.cw, !noalias !2611

bb.cw:                                            ; preds = %bb.cv
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !2611
  unreachable

.body.i.i:                                        ; preds = %bb.cv
  invoke fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h230368349c59c207E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %bb.da unwind label %bb.cx, !noalias !2612

bb.cx:                                            ; preds = %.body.i.i
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !2613
  unreachable

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit": ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i", %bb.cy
  %.lcssa155 = phi ptr [ %i.kp, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %i.kc, %bb.cy ]
  %.sroa.093.1.ph = phi i64 [ %.sroa.093.0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %.sroa.093.0.copyload94, %bb.cy ]
  %.sroa.696.1.ph = phi ptr [ %.sroa.696.0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %i.kw, %bb.cy ]
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i" ], [ %i.ky, %bb.cy ]
  store ptr %.lcssa155, ptr %i.r, align 8, !alias.scope !2606, !noalias !2609
  br label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i": ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit", %bb.cs
  %.sroa.093.1 = phi i64 [ 0, %bb.cs ], [ %.sroa.093.1.ph, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit" ] ; 2 uses
  %.sroa.696.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.cs ], [ %.sroa.696.1.ph, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit" ]
  %.sroa.7.1 = phi i64 [ 0, %bb.cs ], [ %.sroa.7.1.ph, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit" ]
  invoke fastcc void @"_ZN4core3ptr627drop_in_place$LT$alloc..vec..drain..Drain$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17hdef2cc95cd8dabdbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.db unwind label %bb.cr

bb.cy:                                            ; preds = %bb.ct, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge"
  %i.kw = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d84ca1d28787c39E.exit.i.i.i_crit_edge" ], [ %.sroa.696.0, %bb.ct ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [192 x i8], ptr %i.kw, i64 %.sroa.7.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.kx, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !2611
  %i.ky = add nuw nsw i64 %.sroa.7.0, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2588
  %.sroa.093.0.copyload94 = load i64, ptr %i.b, align 8, !noalias !2582 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2582
  %i.kz = icmp eq ptr %i.kp, %i.kc
  br i1 %i.kz, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i.loopexit", label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.i"

bb.cz:                                            ; preds = %bb.da
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !2582
  unreachable

bb.da:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr627drop_in_place$LT$alloc..vec..drain..Drain$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17hdef2cc95cd8dabdbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r) #53
          to label %.body55 unwind label %bb.cz, !noalias !2614

bb.db:                                            ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60b7d08b5e657b5cE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %.sroa.093.1, ptr %i.s, align 8, !alias.scope !2615
  %.sroa.11106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.696.1, ptr %.sroa.11106.0..sroa_idx, align 8, !alias.scope !2615
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !2615
  call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  %.val.i = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !alias.scope !2619, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load i64, ptr %i.jy, align 8, !alias.scope !2619, !noundef !4 ; 4 uses
  %i.lb = icmp eq i64 %.val1.i, 0
  br i1 %i.lb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i", label %.lr.ph

bb.dc:                                            ; preds = %.lr.ph
  %i.lc = icmp eq i64 %i.le, %.val1.i
  br i1 %i.lc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.db, %bb.dc
  %.sroa.0.0.i.i.i300 = phi i64 [ %i.le, %bb.dc ], [ 0, %bb.db ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [192 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i300
  %i.le = add nuw i64 %.sroa.0.0.i.i.i300, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.ld)
          to label %bb.dc unwind label %bb.de, !noalias !2619

bb.dd:                                            ; preds = %.lr.ph304
  %i.lf = add i64 %.sroa.0.1.i.i.i302, 1          ; 2 uses
  %i.lg = icmp eq i64 %i.lf, %.val1.i
  br i1 %i.lg, label %.body.i57, label %.lr.ph304

bb.de:                                            ; preds = %.lr.ph
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = icmp eq i64 %i.le, %.val1.i
  br i1 %i.li, label %.body.i57, label %.lr.ph304

.lr.ph304:                                        ; preds = %bb.de, %bb.dd
  %.sroa.0.1.i.i.i302 = phi i64 [ %i.lf, %bb.dd ], [ %i.le, %bb.de ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [192 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i302
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.lj) #53
          to label %bb.dd unwind label %bb.df, !noalias !2619

bb.df:                                            ; preds = %.lr.ph304
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !2619
  unreachable

.body.i57:                                        ; preds = %bb.dd, %bb.de
  %.val4.i = load i64, ptr %i.q, align 8, !alias.scope !2619 ; 2 uses
  %i.ll = icmp eq i64 %.val4.i, 0
  br i1 %i.ll, label %.body58, label %bb.dg

bb.dg:                                            ; preds = %.body.i57
  %i.lm = mul nuw i64 %.val4.i, 192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !2619
  br label %.body58

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i": ; preds = %bb.dc, %bb.db
  %.val2.i = load i64, ptr %i.q, align 8, !alias.scope !2619 ; 2 uses
  %i.ln = icmp eq i64 %.val2.i, 0
  br i1 %i.ln, label %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit", label %bb.dh

bb.dh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i"
  %i.lo = mul nuw i64 %.val2.i, 192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !2619
  br label %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit"

.body58:                                          ; preds = %.body.i57, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h230368349c59c207E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr585drop_in_place$LT$actix_router..router..Router$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17h8f8543f08a1a9876E.exit" unwind label %bb.p

"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit": ; preds = %bb.dh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.488, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11106.0..sroa_idx, i64 16, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.lq = load <2 x ptr>, ptr %i.lp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %"_ZN4core3ptr271drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43f742a77f8ab1a6E.exit71"

"_ZN4core3ptr271drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43f742a77f8ab1a6E.exit71": ; preds = %bb.dn, %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i64", %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit", %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"
  %.sroa.086.1 = phi i64 [ %.sroa.093.1, %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit" ], [ -9223372036854775808, %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit" ], [ -9223372036854775808, %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i64" ], [ -9223372036854775808, %bb.dn ]
  %i.lr = phi <2 x ptr> [ %i.lq, %"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE.exit" ], [ undef, %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit" ], [ undef, %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i64" ], [ undef, %bb.dn ]
  store i64 %.sroa.086.1, ptr %0, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.488, i64 16, i1 false)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.lr, ptr %.sroa.489.0..sroa_idx, align 8
  br label %common.ret

"_ZN4core3ptr585drop_in_place$LT$actix_router..router..Router$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17h8f8543f08a1a9876E.exit": ; preds = %.body58, %bb.o
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.o ], [ %i.lh, %.body58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val34 = load ptr, ptr %i.ls, align 8
  %i.lt = getelementptr i8, ptr %1, i64 208
  %.val35 = load ptr, ptr %i.lt, align 8, !nonnull !4, !align !236, !noundef !4
  invoke fastcc void @"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E"(ptr %.val34, ptr nonnull %.val35) #53
          to label %.body unwind label %bb.p

.body55:                                          ; preds = %bb.cr, %bb.da
  %.pn15 = phi { ptr, i32 } [ %i.kt, %bb.da ], [ %i.jx, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #53
          to label %bb.o unwind label %bb.p

bb.di:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val32 = load ptr, ptr %i.lu, align 8          ; 5 uses
  %i.lv = getelementptr i8, ptr %1, i64 208
  %.val33 = load ptr, ptr %i.lv, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.lw = load ptr, ptr %.val33, align 8, !invariant.load !4 ; 2 uses
  %.not.i61 = icmp eq ptr %i.lw, null
  br i1 %.not.i61, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32) ]
  invoke void %i.lw(ptr noundef nonnull %.val32)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.lx = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.mb = icmp ult i64 %i.ma, -9223372036854775807
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp eq i64 %i.ly, 0
  br i1 %i.mc, label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %i.ly, i64 noundef range(i64 1, -9223372036854775807) %i.ma) #46
  br label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"

bb.dl:                                            ; preds = %bb.dj
  %i.md = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.mi = icmp ult i64 %i.mh, -9223372036854775807
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp eq i64 %i.mf, 0
  br i1 %i.mj, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.dl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %i.mf, i64 noundef range(i64 1, -9223372036854775807) %i.mh) #46
  br label %.body

bb.dm:                                            ; preds = %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  %i.mk = load i64, ptr %1, align 8, !range !91, !alias.scope !2628, !noundef !4
  %i.ml = icmp eq i64 %i.mk, -9223372036854775808
  br i1 %i.ml, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i65 = load ptr, ptr %i.mm, align 8, !alias.scope !2628, !nonnull !4, !noundef !4
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i66 = load i64, ptr %i.mn, align 8, !alias.scope !2628, !noundef !4
  invoke fastcc void @"_ZN4core3ptr332drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$$u5b$futures_util..future..maybe_done..MaybeDone$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$u5d$$GT$$GT$$GT$17hdb77018839e24489E"(ptr nonnull %.val.i.i65, i64 %.val1.i.i66)
          to label %"_ZN4core3ptr271drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43f742a77f8ab1a6E.exit71" unwind label %bb.dr

bb.do:                                            ; preds = %bb.dm
  invoke fastcc void @"_ZN4core3ptr285drop_in_place$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3bdaede719834510E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i64" unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.mp) #53
          to label %.body68 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !2629
  unreachable

"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i64": ; preds = %bb.do
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.mr)
          to label %"_ZN4core3ptr271drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43f742a77f8ab1a6E.exit71" unwind label %bb.dr

.body68:                                          ; preds = %bb.dr, %bb.dp, %bb.ds, %.body
  %.pn25 = phi { ptr, i32 } [ %.pn22.pn, %.body ], [ %.pn22.pn, %bb.ds ], [ %i.ms, %bb.dr ], [ %i.mo, %bb.dp ]
  store i8 2, ptr %i.u, align 8
  resume { ptr, i32 } %.pn25

bb.dr:                                            ; preds = %"_ZN4core3ptr978drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h9b88c0aa9f7fd434E.exit.i.i64", %bb.dn
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body40:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body.i, %bb.bs, %bb.bm, %bb.bl, %bb.be, %bb.bd, %bb.ay, %bb.ax, %bb.ap
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.hn, %bb.bm ], [ %i.hn, %bb.bl ], [ %i.if, %bb.bs ], [ %i.gv, %bb.bd ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ay ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ax ], [ %i.ff, %bb.ap ], [ %i.gv, %bb.be ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit111, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit114, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr271drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43f742a77f8ab1a6E"(ptr noalias noundef align 8 dereferenceable(88) %i.bn) #53
          to label %.body48 unwind label %bb.p

bb.ds:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr271drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43f742a77f8ab1a6E"(ptr noalias noundef align 8 dereferenceable(88) %1) #53
          to label %.body68 unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN133_$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h75b95985c423e86dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.sroa.4 = alloca [168 x i8], align 8  ; 3 uses
  %i.a = alloca [176 x i8], align 8               ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !228, !noundef !4
  switch i8 %i.d, label %default.unreachable19 [
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr100drop_in_place$LT$actix_http..message..MessagePool$LT$actix_http..requests..head..RequestHead$GT$$GT$17h2bbd33dc289bf009E":bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !3477, !noundef !4
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !3477
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23a34c237464c3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i" unwind label %bb.c, !noalias !3467

"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.k = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.m, label %.body.i.i.i, label %.lr.ph12.i.i.i.i.i

.lr.ph12.i.i.i.i.i:                               ; preds = %bb.c, %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i"
  %.sroa.0.110.i.i.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i" ], [ %i.f, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.110.i.i.i.i.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i.i.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !3484, !noalias !3467, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !3485, !noundef !4
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !3485
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23a34c237464c3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i" unwind label %bb.e, !noalias !3467

"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i": ; preds = %bb.d, %.lr.ph12.i.i.i.i.i
  %i.t = icmp eq i64 %i.o, %.val1.i.i.i
  br i1 %i.t, label %.body.i.i.i, label %.lr.ph12.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3467
  unreachable

.body.i.i.i:                                      ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit8.i.i.i.i.i", %bb.c
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3467 ; 2 uses
  %i.v = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.v, label %"_ZN4core3ptr111drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$17h8a68113053d6208eE.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %.body.i.i.i
  %i.w = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3467
  br label %"_ZN4core3ptr111drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$17h8a68113053d6208eE.exit.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i": ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$17h6cdcad4652988656E.exit.i.i.i.i.i", %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3467 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr131drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$$GT$17h3cd35f4df863a31aE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i"
  %i.y = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3467
  br label %"_ZN4core3ptr131drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$$GT$17h3cd35f4df863a31aE.exit"

"_ZN4core3ptr111drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$17h8a68113053d6208eE.exit.i.i.i": ; preds = %bb.f, %.body.i.i.i
  resume { ptr, i32 } %i.l

"_ZN4core3ptr131drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..requests..head..RequestHead$GT$$GT$$GT$$GT$17h3cd35f4df863a31aE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdde228642f548eeaE.exit.i.i.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val, i64 noundef %.val1)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit": ; preds = %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit6", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit"
  %i.g = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit6"

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit", %bb.d
  ret void

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17hb5bcd170c236083eE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3486)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3486, !noundef !4 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader"

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader": ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit", label %.lr.ph

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i": ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %i.b
  br i1 %i.e, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i"
  %.sroa.0.0.i.i6 = phi i64 [ %i.g, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i" ], [ 0, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader" ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i.i6 ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i6, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !3498, !nonnull !4, !align !236, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !3501, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3498, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3498, !noundef !4
  invoke void %i.j(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i" unwind label %bb.b, !inline_history !1120

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i": ; preds = %.lr.ph8
  %i.p = add i64 %.sroa.0.1.i.i7, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %common.resume.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %i.g, %i.b
  br i1 %i.s, label %common.resume.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i"
  %.sroa.0.1.i.i7 = phi i64 [ %i.p, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i" ], [ %i.g, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.1.i.i7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3511, !nonnull !4, !align !236, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3512, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3511, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3511, !noundef !4
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i" unwind label %bb.c, !inline_history !1120

common.resume.i:                                  ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i", %bb.b, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i"
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i" ], [ %i.r, %bb.b ], [ %i.r, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i" ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %.lr.ph8
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !3486, !nonnull !4, !noundef !4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !3486, !noundef !4 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i", label %.lr.ph10

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i": ; preds = %.lr.ph10
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i", label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i9 = phi i64 [ %i.aj, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i.i9 ; 4 uses
  %i.aj = add nuw i64 %.sroa.0.0.i.i.i.i9, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3519)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !3522, !noalias !3525, !nonnull !4, !align !236, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !3528, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3522, !noalias !3525, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3522, !noalias !3525, !noundef !4
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i" unwind label %bb.e, !noalias !3525, !inline_history !1120

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i": ; preds = %.lr.ph12
  %i.as = add i64 %.sroa.0.1.i.i.i.i11, 1         ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.af
  br i1 %i.at, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i", label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph10
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = icmp eq i64 %i.aj, %i.af
  br i1 %i.av, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i", label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i"
  %.sroa.0.1.i.i.i.i11 = phi i64 [ %i.as, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i" ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i.i11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !3538, !noalias !3525, !nonnull !4, !align !236, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3539, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !3538, !noalias !3525, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !3538, !noalias !3525, !noundef !4
  invoke void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bc, i64 noundef %i.be)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i" unwind label %bb.f, !noalias !3525, !inline_history !1120

bb.f:                                             ; preds = %.lr.ph12
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3525
  unreachable

"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h013869506c4cdf8dE.exit.i.i": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit7.i.i.i.i", %bb.e
  %i.bg = mul nuw i64 %i.b, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3525
  br label %common.resume.i

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.i.i", %bb.d
  %i.bh = mul nuw i64 %i.b, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3525
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96dd655d76dcf6b6E.exit": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17ha529d5e1c8086c3fE.exit.i.i.preheader", %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hb1afa31d549dce58E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr102drop_in_place$LT$actix_http..responses..response..Response$LT$actix_http..body..boxed..BoxBody$GT$$GT$17hf84e508ecd354de2E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @"_ZN88_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..drop..Drop$GT$4drop17h492f1b14454eebceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val1.i = load ptr, ptr %i.a, align 8, !alias.scope !3540, !align !236, !noundef !4
  invoke fastcc void @"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4d23901d290bb6dbE"(ptr %.val1.i) #53
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !3540, !align !236, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val.i, null
  br i1 %i.c, label %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17hcb507e043a1063feE"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #46
  br label %.body

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #46
  br label %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit"

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E"(ptr noalias noundef align 8 dereferenceable(40) %0) #53
          to label %.body2 unwind label %bb.m

"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit": ; preds = %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i.i", %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3546)
  %i.g = load i64, ptr %0, align 8, !range !672, !alias.scope !3549, !noundef !4
  switch i64 %i.g, label %bb.g [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit"
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3549 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3549, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !3549 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.i unwind label %bb.j, !noalias !3549

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !357, !invariant.load !4, !noalias !3549 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !443, !invariant.load !4, !noalias !3549 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #46, !noalias !3549
  br label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit"

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !357, !invariant.load !4, !noalias !3549 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !443, !invariant.load !4, !noalias !3549 ; 2 uses
  %i.v = icmp ult i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %.body2, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.u) #46, !noalias !3549
  br label %.body2

bb.k:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit"
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3553)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3556, !nonnull !4, !align !236, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3556, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !3556, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !3556, !noundef !4
  invoke void %i.aa(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad, i64 noundef %i.af)
          to label %"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit" unwind label %bb.l, !inline_history !3557

.body2:                                           ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.j, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ah, %bb.l ], [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ], [ %i.q, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ag)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$17h385f8159bfe5272fE.exit" unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body2

"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.i, %"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E.exit", %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ai)
  ret void

bb.m:                                             ; preds = %.body2, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr82drop_in_place$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$17h385f8159bfe5272fE.exit": ; preds = %.body2
  resume { ptr, i32 } %.pn
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr123drop_in_place$LT$smallvec..SmallVec$LT$$u5b$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$u3b$$u20$4$u5d$$GT$$GT$17h3e278a4d134c0b1fE":bb.a
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3817, !noundef !4 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i"
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i" ], [ 0, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.09.i.i.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3841)
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !3844, !noalias !3847, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3850, !noundef !4
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !3850
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i"

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i" unwind label %bb.i, !noalias !3847

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i": ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.af = icmp eq i64 %i.aa, %i.x
  br i1 %i.af, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i", label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %i.aa, %i.x
  br i1 %i.ah, label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i", label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.i, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i"
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.aj, %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i" ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.aj = add i64 %.sroa.0.110.i.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3854)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !3857, !noalias !3847, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !3858, !noundef !4
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !noalias !3858
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.j, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i"

bb.j:                                             ; preds = %.lr.ph12.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i" unwind label %bb.k, !noalias !3847

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i": ; preds = %bb.j, %.lr.ph12.i.i.i.i
  %i.ao = icmp eq i64 %i.aj, %i.x
  br i1 %i.ao, label %"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i", label %.lr.ph12.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3847
  unreachable

"_ZN4core3ptr106drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h86b2a8e939fb5fa4E.exit.i.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit8.i.i.i.i", %bb.i
  %i.aq = shl nuw i64 %i.b, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3847
  br label %common.resume.i

"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i.i.i", %bb.g
  %i.ar = shl nuw i64 %i.b, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3847
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fefc52bdb8342c9E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fefc52bdb8342c9E.exit": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit.i.i", %bb.b, %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17hfdaae455380a616cE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr124drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$bytes..buf..writer..Writer$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17hf12c5366d2b608ebE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb517c81c0da2007eE"(ptr nonnull %.val)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$mime..Mime$GT$$C$actix_http..error..ContentTypeError$GT$$GT$17hfad9d4e4c5aca77dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1016, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.a, 3
  br i1 %.not, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3859)
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  %i.d = load i8, ptr %i.c, align 8, !range !206, !alias.scope !3868, !noundef !4
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3869)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !3872 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3872, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !3872
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.e, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.i, align 8, !range !3, !alias.scope !3873, !noundef !4 ; 3 uses
  %i.j = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !3873, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3873
  br label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit"

"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit": ; preds = %bb.f, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr126drop_in_place$LT$alloc..rc..RcInner$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17h7f81e99372e4b282E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !3874, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !3874, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" unwind label %bb.b, !noalias !3874

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %i.a, align 8, !alias.scope !3874 ; 2 uses
  %i.e = icmp eq i64 %.val4.i, 0
  br i1 %i.e, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %.val4.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3874
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i": ; preds = %bb.a
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !3874 ; 2 uses
  %i.g = icmp eq i64 %.val2.i, 0
  br i1 %i.g, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i"
  %i.h = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3874
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit"

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr1270drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$C$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf1f24e683ecd85E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3877, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3877, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3877, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %.sroa.0.0.i.i2
  %i.i = add nuw i64 %.sroa.0.0.i.i2, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.h)
          to label %bb.b unwind label %bb.d, !noalias !3877

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body.i, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %.sroa.0.1.i.i3
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.n) #53
          to label %bb.c unwind label %bb.e, !noalias !3877

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3877
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %i.p = icmp eq i64 %i.c, 0
  br i1 %i.p, label %"_ZN4core3ptr664drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h8a6d3611fc404d16E.exit.i", label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = mul nuw i64 %i.c, 192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3877
  br label %"_ZN4core3ptr664drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h8a6d3611fc404d16E.exit.i"

"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i": ; preds = %bb.b, %bb.a
  %i.r = icmp eq i64 %i.c, 0
  br i1 %i.r, label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfbf7c7a7991d6593E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i"
  %i.s = mul nuw i64 %i.c, 192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3877
  br label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfbf7c7a7991d6593E.exit"

"_ZN4core3ptr664drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h8a6d3611fc404d16E.exit.i": ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.l

"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfbf7c7a7991d6593E.exit": ; preds = %"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr127drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$actix_web..helpers..MutWriter$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17he992586fafb3a18bE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb517c81c0da2007eE"(ptr nonnull %.val)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h30edf51303593c6fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr128drop_in_place$LT$actix_web..resource..Resource..new$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66458b1d383a3b5bE"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !267, !noundef !4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %common.ret

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef align 8 dereferenceable(32) %0)
  br label %common.ret

common.ret:                                       ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he394eadb068658eeE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !91, !noundef !4 ; 5 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit", label %bb.b

"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit": ; preds = %bb.e, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !3880, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !3880, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" unwind label %bb.c, !noalias !3880

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw i64 %i.a, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3880
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i": ; preds = %bb.b
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i"
  %i.i = shl nuw i64 %i.a, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !3880
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE.exit"

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17hdb62ec43aaa345b1E.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$$GT$17h330cc7ae861921a5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3883, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3883, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$17hc2e5035da744a3f9E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit3"
  %.sroa.0.0.i.i4 = phi i64 [ %i.g, %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit3" ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.0.i.i4 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.0.i.i4, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889), !noalias !3883
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !3892, !noalias !3883, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !3893, !noundef !4
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !3893
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit3"

bb.b:                                             ; preds = %.lr.ph
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h796c775f5a4a984bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit3" unwind label %bb.c, !inline_history !3894

"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit3": ; preds = %bb.b, %.lr.ph
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$17hc2e5035da744a3f9E.exit", label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.c, %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit"
  %.sroa.0.1.i.i5 = phi i64 [ %i.p, %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit" ], [ %i.g, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.1.i.i5 ; 2 uses
  %i.p = add i64 %.sroa.0.1.i.i5, 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898), !noalias !3883
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !3901, !noalias !3883, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !3902, !noundef !4
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !noalias !3902
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit"

bb.d:                                             ; preds = %.lr.ph6
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h796c775f5a4a984bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit" unwind label %bb.e, !inline_history !3894

"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit": ; preds = %bb.d, %.lr.ph6
  %i.u = icmp eq i64 %i.p, %i.d
  br i1 %i.u, label %.body, label %.lr.ph6

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !3883, !inline_history !3903
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$17hffe845a996e56928E.exit", %bb.c
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !3904 ; 2 uses
  %i.w = icmp eq i64 %.val2.i, 0
  br i1 %i.w, label %"_ZN4core3ptr108drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$17h1d8bdb2f6c896fedE.exit1", label %bb.f

bb.f:                                             ; preds = %.body
  %i.x = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr108drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$17h1d8bdb2f6c896fedE.exit1"
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr177drop_in_place$LT$$LT$actix_web..route..Route$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb4ef2afdb0b177ceE":bb.a

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.s, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.t = load ptr, ptr %.val2, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.t, null
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.t(ptr noundef nonnull %.val)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, -9223372036854775807
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit11", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.x) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit11"

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.af = icmp ult i64 %i.ae, -9223372036854775807
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %.body9, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i6"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i6": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #46
  br label %.body9

.body:                                            ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4163)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !4166, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !4166, !noundef !4
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !4166
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit"

bb.j:                                             ; preds = %.body
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5272a74365df404cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ah)
          to label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit" unwind label %bb.k

"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4170)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !4173, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !4173, !noundef !4
  %i.ap = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8, !noalias !4173
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %common.ret.sink.split, label %common.ret

"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit": ; preds = %.body9, %bb.l, %.body, %bb.j
  %.pn = phi { ptr, i32 } [ %i.k, %.body ], [ %i.k, %bb.j ], [ %i.aa, %bb.l ], [ %i.aa, %.body9 ]
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body9:                                           ; preds = %bb.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i6"
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4177)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !4180, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !4180, !noundef !4
  %i.av = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.av, ptr %i.at, align 8, !noalias !4180
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit"

bb.l:                                             ; preds = %.body9
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5272a74365df404cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.as)
          to label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit" unwind label %bb.k

"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit11": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8", %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4184)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !4187, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !4187, !noundef !4
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !noalias !4187
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %common.ret.sink.split, label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h448fdda41ee7198dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4188)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4188, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4188
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !4188 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7615521c1b039aa1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !4188, !noundef !4 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7615521c1b039aa1E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !4188, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !4188, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !4188, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !4188
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !4188, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !4188
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !4188, !nonnull !4, !noundef !4
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !4188, !inline_history !4191
  %i.s = load i64, ptr %i.e, align 8, !noalias !4188, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !4188
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7615521c1b039aa1E.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7615521c1b039aa1E.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !4188, !noundef !4 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4188, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !4188
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr182drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$C$actix_web..route..RouteService$GT$$GT$17h70cec3e8ae83c711E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4192, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4192, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4192, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr61drop_in_place$LT$$u5b$actix_web..route..RouteService$u5d$$GT$17h329a83823e9977b8E.exit.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %"_ZN4core3ptr61drop_in_place$LT$$u5b$actix_web..route..RouteService$u5d$$GT$17h329a83823e9977b8E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i2
  %i.i = add nuw i64 %.sroa.0.0.i.i2, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$actix_web..route..RouteService$GT$17h8edc918d5cf988c4E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.h)
          to label %bb.b unwind label %bb.d, !noalias !4192

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body.i, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i3
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$actix_web..route..RouteService$GT$17h8edc918d5cf988c4E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.n) #53
          to label %bb.c unwind label %bb.e, !noalias !4192

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !4195
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %i.p = icmp eq i64 %i.c, 0
  br i1 %i.p, label %"_ZN4core3ptr120drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$17h60931ecec65b6782E.exit.i", label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = mul nuw i64 %i.c, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !4192
  br label %"_ZN4core3ptr120drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$17h60931ecec65b6782E.exit.i"

"_ZN4core3ptr61drop_in_place$LT$$u5b$actix_web..route..RouteService$u5d$$GT$17h329a83823e9977b8E.exit.i": ; preds = %bb.b, %bb.a
  %i.r = icmp eq i64 %i.c, 0
  br i1 %i.r, label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h683867615a578f73E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$u5b$actix_web..route..RouteService$u5d$$GT$17h329a83823e9977b8E.exit.i"
  %i.s = mul nuw i64 %i.c, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !4192
  br label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h683867615a578f73E.exit"

"_ZN4core3ptr120drop_in_place$LT$alloc..raw_vec..RawVec$LT$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$17h60931ecec65b6782E.exit.i": ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.l

"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h683867615a578f73E.exit": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$u5b$actix_web..route..RouteService$u5d$$GT$17h329a83823e9977b8E.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr184drop_in_place$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5c5cdf9112c3fc72E"(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !range !1352, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.f
    i8 4, label %bb.j
  ]

common.ret:                                       ; preds = %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i29", %bb.y, %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i23", %bb.o, %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit19", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val7 = load ptr, ptr %i.c, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 96
  %.val8 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val8, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  invoke void %i.e(ptr noundef nonnull %.val7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.q = icmp ult i64 %i.p, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.p) #46
  br label %.body

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.s, align 8             ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 120
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.u, null
  br i1 %.not.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.u(ptr noundef nonnull %.val)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit19", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i16"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i16": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit19"

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %.body17, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i14"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i14": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #46
  br label %.body17

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  %i.aj = load i64, ptr %i.ai, align 8, !range !91, !alias.scope !4204, !noundef !4
  %i.ak = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !4204, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load i64, ptr %i.am, align 8, !alias.scope !4204, !noundef !4
  invoke fastcc void @"_ZN4core3ptr321drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$$u5b$futures_util..future..maybe_done..MaybeDone$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$u5d$$GT$$GT$$GT$17h272ae843ad937037E"(ptr nonnull %.val.i.i, i64 %.val1.i.i)
          to label %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit" unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr274drop_in_place$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d09d2b979d01a1bE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #53
          to label %.body20 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !4205
  unreachable

"_ZN4core3ptr967drop_in_place$LT$futures_util..stream..stream..collect..Collect$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h41afd863ac0a5c93E.exit.i.i": ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @"_ZN4core3ptr657drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$$LP$$RP$$GT$$GT$$GT$17h096c92eb94c4269bE"(ptr noalias noundef align 8 dereferenceable(24) %i.aq)
          to label %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit" unwind label %bb.t

.body:                                            ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  invoke fastcc void @"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE"(ptr noalias noundef align 8 dereferenceable(88) %0) #53
          to label %common.resume unwind label %bb.s

"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4211)
end_hunk_5
begin_hunk_6_@"_ZN4core3ptr213drop_in_place$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbaeda79e0cd8c43bE":bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.f(ptr noundef nonnull %.val5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #46
  br label %.body

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 200
  %.val4 = load ptr, ptr %i.u, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.aa = icmp ult i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i10"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i10": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.z) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13"

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ae, 0
  br i1 %i.ai, label %.body11, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i8"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i8": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #46
  br label %.body11

.body:                                            ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %0) #53
          to label %bb.j unwind label %bb.n

"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %0)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.m, %.body ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #53
          to label %common.resume unwind label %bb.n

bb.k:                                             ; preds = %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4338)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val.i = load ptr, ptr %i.am, align 8, !alias.scope !4338, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1.i = load i64, ptr %i.an, align 8, !alias.scope !4338, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" unwind label %bb.m, !noalias !4338

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.al, align 8, !alias.scope !4338 ; 2 uses
  %i.ap = icmp eq i64 %.val4.i, 0
  br i1 %i.ap, label %common.resume, label %common.resume.sink.split

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i": ; preds = %bb.l
  %.val2.i = load i64, ptr %i.al, align 8, !alias.scope !4338 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i, 0
  br i1 %i.aq, label %common.ret, label %common.ret.sink.split

common.resume.sink.split:                         ; preds = %bb.m, %bb.q
  %.val4.i16.sink = phi i64 [ %.val4.i16, %bb.q ], [ %.val4.i, %bb.m ]
  %.val.i14.sink26 = phi ptr [ %.val.i14, %bb.q ], [ %.val.i, %bb.m ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.ao, %bb.m ]
  %i.ar = shl nuw i64 %.val4.i16.sink, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14.sink26, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.j, %bb.o, %bb.r, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.ao, %bb.m ], [ %i.ay, %bb.q ], [ %i.ac, %bb.r ], [ %.pn, %bb.j ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.r, %bb.o, %.body11, %bb.j, %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body11:                                          ; preds = %bb.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i8"
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %0) #53
          to label %bb.r unwind label %bb.n

"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i10", %bb.h
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %0)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13"
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.au) #53
          to label %common.resume unwind label %bb.n

bb.p:                                             ; preds = %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13"
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4341)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val.i14 = load ptr, ptr %i.aw, align 8, !alias.scope !4341, !nonnull !4, !noundef !4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1.i15 = load i64, ptr %i.ax, align 8, !alias.scope !4341, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i14, i64 noundef %.val1.i15)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i18" unwind label %bb.q, !noalias !4341

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i16 = load i64, ptr %i.av, align 8, !alias.scope !4341 ; 2 uses
  %i.az = icmp eq i64 %.val4.i16, 0
  br i1 %i.az, label %common.resume, label %common.resume.sink.split

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i18": ; preds = %bb.p
  %.val2.i19 = load i64, ptr %i.av, align 8, !alias.scope !4341 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i19, 0
  br i1 %i.ba, label %common.ret, label %common.ret.sink.split

bb.r:                                             ; preds = %.body11
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #53
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr217drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h43f5943046a8e1aeE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21a761c60cf7961fE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21a761c60cf7961fE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw i64 %.sroa.0.0.i.i7, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h97d69993dd3f721eE"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h97d69993dd3f721eE"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !4344
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h6dc81df58b63a9e6E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 64) #46
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h6dc81df58b63a9e6E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21a761c60cf7961fE.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h6dc81df58b63a9e6E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21a761c60cf7961fE.exit"
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 64) #46
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h6dc81df58b63a9e6E.exit6"

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h6dc81df58b63a9e6E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21a761c60cf7961fE.exit", %bb.g
  ret void

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h6dc81df58b63a9e6E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr224drop_in_place$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h24c1f09ec6db64bdE"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i8, ptr %i.a, align 8, !range !228, !noundef !4
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.f
  ]

common.ret.sink.split:                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i18", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i"
  %.val2.i19.sink = phi i64 [ %.val2.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" ], [ %.val2.i19, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i18" ]
  %.val.i14.sink = phi ptr [ %.val.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" ], [ %.val.i14, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i18" ]
  %i.c = shl nuw i64 %.val2.i19.sink, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14.sink, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !4
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i18", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val5 = load ptr, ptr %i.d, align 8            ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 184
  %.val6 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.f(ptr noundef nonnull %.val5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #46
  br label %.body

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 200
  %.val4 = load ptr, ptr %i.u, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.aa = icmp ult i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i10"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i10": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.z) #46
  br label %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit13"

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ae, 0
  br i1 %i.ai, label %.body11, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i8"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i8": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #46
  br label %.body11

.body:                                            ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %0) #53
          to label %bb.j unwind label %bb.n

"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %0)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.m, %.body ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #53
          to label %common.resume unwind label %bb.n

bb.k:                                             ; preds = %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4347)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val.i = load ptr, ptr %i.am, align 8, !alias.scope !4347, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1.i = load i64, ptr %i.an, align 8, !alias.scope !4347, !noundef !4
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$u5d$$GT$17h6e97d55e1865f9a8E"(ptr noalias noundef nonnull readonly align 8 %.val.i, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i" unwind label %bb.m, !noalias !4347

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.al, align 8, !alias.scope !4347 ; 2 uses
  %i.ap = icmp eq i64 %.val4.i, 0
  br i1 %i.ap, label %common.resume, label %common.resume.sink.split

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b43bf624c164278E.exit.i": ; preds = %bb.l
end_hunk_6
begin_hunk_7_@"_ZN4core3ptr57drop_in_place$LT$actix_web..middleware..logger..Inner$GT$17h28515fc78deb7a8aE":bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i64, ptr %i.av, align 8, !range !91, !noundef !4 ; 2 uses
  %switch8 = icmp sgt i64 %.val, 0
  br i1 %switch8, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit7"

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val4 = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6019
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit7"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit7": ; preds = %bb.k, %bb.l
  ret void

bb.m:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit": ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$actix_web..request..HttpRequestInner$GT$17h45eec93f766ef7e4E"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h8eba602fdc113c94E"(ptr noalias noundef align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$actix_router..path..Path$LT$actix_router..url..Url$GT$$GT$17h962b4104b346aa41E"(ptr noalias noundef align 8 dereferenceable(144) %0) #53
          to label %bb.d unwind label %bb.t

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$actix_router..path..Path$LT$actix_router..url..Url$GT$$GT$17h962b4104b346aa41E"(ptr noalias noundef align 8 dereferenceable(144) %0)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..SmallVec$LT$$u5b$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$u3b$$u20$4$u5d$$GT$$GT$17h3e278a4d134c0b1fE"(ptr noalias noundef align 8 dereferenceable(40) %i.c) #53
          to label %bb.g unwind label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..SmallVec$LT$$u5b$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$u3b$$u20$4$u5d$$GT$$GT$17h3e278a4d134c0b1fE"(ptr noalias noundef align 8 dereferenceable(40) %i.e)
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.j, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6022)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6022, !noundef !4 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !noalias !6025, !noundef !4
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.g, align 8, !noalias !6025
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit"

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit" unwind label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.k:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6030)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !6030, !noundef !4 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit9", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = load i64, ptr %i.n, align 8, !noalias !6033, !noundef !4
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !noalias !6033
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.m, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit9"

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit9" unwind label %bb.o

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit": ; preds = %bb.h, %bb.g, %bb.i, %bb.o
  %.pn4 = phi { ptr, i32 } [ %i.x, %bb.o ], [ %.pn2, %bb.i ], [ %.pn2, %bb.g ], [ %.pn2, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6041)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6044, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !6044, !noundef !4
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !6044
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.n, label %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit"

bb.n:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h51ddc8fe4b8f33f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.s)
          to label %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit" unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit"

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit9": ; preds = %bb.l, %bb.k, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6048)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6051, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !6051, !noundef !4
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !noalias !6051
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit12"

bb.p:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit9"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h51ddc8fe4b8f33f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.y)
          to label %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit12" unwind label %bb.r

"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit", %bb.n, %bb.r
  %.pn6 = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %.pn4, %bb.n ], [ %.pn4, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit" ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6052, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !6052, !noundef !4
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !noalias !6052
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %"_ZN4core3ptr85drop_in_place$LT$alloc..rc..Rc$LT$actix_web..app_service..AppInitServiceState$GT$$GT$17h8800816c906ade30E.exit"

bb.q:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h974726a9574f8280E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %"_ZN4core3ptr85drop_in_place$LT$alloc..rc..Rc$LT$actix_web..app_service..AppInitServiceState$GT$$GT$17h8800816c906ade30E.exit" unwind label %bb.t, !inline_history !6055

bb.r:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit"

"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit12": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit9", %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6056)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !6056, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !6056, !noundef !4
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !noalias !6056
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he71e67a408a6c964E.exit15"

bb.s:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit12"
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h974726a9574f8280E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj), !inline_history !6055
  br label %"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he71e67a408a6c964E.exit15"

"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he71e67a408a6c964E.exit15": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit12", %bb.s
  ret void

bb.t:                                             ; preds = %bb.q, %bb.n, %bb.i, %bb.d, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr85drop_in_place$LT$alloc..rc..Rc$LT$actix_web..app_service..AppInitServiceState$GT$$GT$17h8800816c906ade30E.exit": ; preds = %bb.q, %"_ZN4core3ptr103drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h8f5f4c4ac4b9afffE.exit"
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$actix_web..resource..ResourceService$GT$17h4e4c8745e62fcd38E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6059)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !6059, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !6059, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5f7817486204697E.exit.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1.i
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5f7817486204697E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i6
  %i.f = add nuw i64 %.sroa.0.0.i.i.i6, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$actix_web..route..RouteService$GT$17h8edc918d5cf988c4E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !6059

bb.c:                                             ; preds = %.lr.ph8
  %i.g = add i64 %.sroa.0.1.i.i.i7, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1.i
  br i1 %i.h, label %.body.i, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1.i
  br i1 %i.j, label %.body.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i7 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i7
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$actix_web..route..RouteService$GT$17h8edc918d5cf988c4E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.k) #53
          to label %bb.c unwind label %bb.e, !noalias !6059

bb.e:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !6062
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %.val4.i = load i64, ptr %0, align 8, !alias.scope !6059 ; 2 uses
  %i.m = icmp eq i64 %.val4.i, 0
  br i1 %i.m, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.n = mul nuw i64 %.val4.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !6059
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5f7817486204697E.exit.i": ; preds = %bb.b, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !6059 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..RouteService$GT$$GT$17h345df61f297be62aE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5f7817486204697E.exit.i"
  %i.p = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !6059
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..RouteService$GT$$GT$17h345df61f297be62aE.exit"

.body:                                            ; preds = %.body.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.r, align 8, !nonnull !4, !align !236, !noundef !4
  invoke fastcc void @"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E"(ptr %.val2, ptr nonnull %.val3) #53
          to label %common.resume unwind label %bb.k

"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..RouteService$GT$$GT$17h345df61f297be62aE.exit": ; preds = %bb.g, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5f7817486204697E.exit.i"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.s, align 8             ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.t, align 8, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..RouteService$GT$$GT$17h345df61f297be62aE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.u(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..RouteService$GT$$GT$17h345df61f297be62aE.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #46
  br label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #46
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit": ; preds = %bb.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"
  ret void

bb.k:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$actix_web..http..header..allow..Allow$GT$17hb4080ab4635dd2b7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6065)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !6065, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !6065, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6068)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90bd0c591247e55bE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6074)
  %i.f = load i8, ptr %i.d, align 8, !range !1020, !alias.scope !6077, !noalias !6065, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.f, 10
  br i1 %switch.i.i.i.i.i, label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !6077, !noalias !6065, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !6077, !noalias !6065, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !6078
  br label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i"

"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.b, %.lr.ph.i.i.i
  %i.j = icmp eq i64 %i.e, %.val1.i
  br i1 %i.j, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90bd0c591247e55bE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90bd0c591247e55bE.exit.i": ; preds = %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !6065 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90bd0c591247e55bE.exit.i"
  %i.l = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !6065
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit"

"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90bd0c591247e55bE.exit.i", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$actix_web..http..header..range..Range$GT$17h15d7525270241c38E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !91, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = mul nuw i64 %.val, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6079)
  %i.g = icmp eq i64 %i.a, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !6079, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6079
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit"

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit": ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit", %bb.c, %bb.b
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit": ; preds = %bb.e, %bb.d
end_hunk_7
begin_hunk_8_@"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E":bb.a
  br label %"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit"

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.aa = icmp ult i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.z) #46
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr467drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$GT$17h03d8d990ab2ec352E.exit": ; preds = %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"
  ret void

bb.j:                                             ; preds = %.body, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !672, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", label %bb.b

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit": ; preds = %bb.e, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6091)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6094)
  %i.d = load i8, ptr %i.c, align 8, !range !206, !alias.scope !6097, !noundef !4
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6098)
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !6101 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !6101, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6101
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i": ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.i, align 8, !range !3, !alias.scope !6091, !noundef !4 ; 3 uses
  %i.j = icmp ne i64 %.val.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %or.cond.i4.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i4.i, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !6091, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !6091
  br label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$tokio..runtime..task..error..JoinError$GT$17h7b1a23c1af5b2559E"(ptr %.8.val, ptr nofree readonly captures(none) %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.8.val, null
  br i1 %i.a, label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..task..error..Repr$GT$17hd4da9f7fb7382bf8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.b = load ptr, ptr %.16.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.8.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.g = icmp ult i64 %i.f, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..task..error..Repr$GT$17hd4da9f7fb7382bf8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.f) #46
  br label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..task..error..Repr$GT$17hd4da9f7fb7382bf8E.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.n = icmp ult i64 %i.m, -9223372036854775807
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h954aad702cb7a3e3E.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.m) #46
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h954aad702cb7a3e3E.exit5.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h954aad702cb7a3e3E.exit5.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.e
  resume { ptr, i32 } %i.i

"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..task..error..Repr$GT$17hd4da9f7fb7382bf8E.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %"_ZN4core3ptr593drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$17hb7fccf11db2ed2e8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.e) #46
  br label %"_ZN4core3ptr593drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$17hb7fccf11db2ed2e8E.exit"

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h353293ce20b2b84bE.exit5.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #46
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h353293ce20b2b84bE.exit5.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h353293ce20b2b84bE.exit5.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.d
  resume { ptr, i32 } %i.h

"_ZN4core3ptr593drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$17hb7fccf11db2ed2e8E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h230368349c59c207E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h227828b3bddaeba1E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h227828b3bddaeba1E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw i64 %.sroa.0.0.i.i7, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$17h7e860c0d05ff9e09E"(ptr noalias noundef align 8 dereferenceable(192) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$17h7e860c0d05ff9e09E"(ptr noalias noundef align 8 dereferenceable(192) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h85abae1da5fc0492E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h85abae1da5fc0492E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h227828b3bddaeba1E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h85abae1da5fc0492E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h227828b3bddaeba1E.exit"
  %i.p = mul nuw i64 %.val2, 192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h85abae1da5fc0492E.exit6"

"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h85abae1da5fc0492E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h227828b3bddaeba1E.exit", %bb.g
  ret void

"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$RP$$GT$$GT$17h85abae1da5fc0492E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr618drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h9cf9402ebfcc2d5dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw i64 %.sroa.0.0.i.i7, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h47e8df3a27e1ae2fE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h47e8df3a27e1ae2fE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h47e8df3a27e1ae2fE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit"
  %i.p = mul nuw i64 %.val2, 192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h47e8df3a27e1ae2fE.exit6"

"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h47e8df3a27e1ae2fE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42ea178d066f2bf6E.exit", %bb.g
  ret void

"_ZN4core3ptr625drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17h47e8df3a27e1ae2fE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h17f74db1810a2f9bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6108)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !6111, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6111
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hd0fc8dd4e04cf66aE.exit"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6a1c31c5c37b4364E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hd0fc8dd4e04cf66aE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17h131ce217be5cbb65E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val2, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17h131ce217be5cbb65E.exit"

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hd0fc8dd4e04cf66aE.exit": ; preds = %bb.a, %bb.b
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17h131ce217be5cbb65E.exit4", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hd0fc8dd4e04cf66aE.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.k = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17h131ce217be5cbb65E.exit4"

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17h131ce217be5cbb65E.exit4": ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hd0fc8dd4e04cf66aE.exit", %bb.e
  ret void

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17h131ce217be5cbb65E.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr627drop_in_place$LT$alloc..vec..drain..Drain$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$$GT$17hdef2cc95cd8dabdbE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6112)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6112, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6112, !nonnull !4, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !6112
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !6112
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 192                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !6112, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6112, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1034d84fafebf71E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !6112, !noundef !4 ; 4 uses
  %i.o = icmp ult i64 %i.n, 48038396025285291
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6112, !noundef !4 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8, !noalias !6112
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1034d84fafebf71E.exit"

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !6112, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw [192 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [192 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !noalias !6112
  br label %bb.d

.body.i:                                          ; preds = %bb.h, %bb.i
  tail call fastcc void @"_ZN4core3ptr721drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$C$alloc..alloc..Global$GT$$GT$17hcc17ecc8f54e7be6E"(ptr nonnull align 8 dereferenceable(40) %0) #53
  resume { ptr, i32 } %i.ah

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !6112, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i.i7 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [192 x i8], ptr %i.ab, i64 %.sroa.0.0.i.i7
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i7, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.ad)
          to label %bb.f unwind label %bb.i, !noalias !6112

bb.h:                                             ; preds = %.lr.ph9
  %i.af = add i64 %.sroa.0.1.i.i8, 1              ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %.body.i, label %.lr.ph9

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g
  br i1 %i.ai, label %.body.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i8 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [192 x i8], ptr %i.ab, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr595drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$GT$17hf4bc6b0c2ddb35f6E"(ptr noalias noundef align 8 dereferenceable(192) %i.aj) #53
          to label %bb.h unwind label %bb.j, !noalias !6112

bb.j:                                             ; preds = %.lr.ph9
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !6112
  unreachable

"_ZN4core3ptr605drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$RP$$u5d$$GT$17h7ae1361dfbf57edeE.exit.i": ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !6112, !noundef !4 ; 3 uses
end_hunk_8
begin_hunk_9_@"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17he07def52579547cdE":bb.a
bb.c:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6301, !nonnull !4, !noundef !4
  %i.g = shl nuw i64 %.val.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !6301
  br label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit"

"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit": ; preds = %bb.c, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6304)
  %.val4.i1 = load i64, ptr %i.h, align 8, !alias.scope !6304 ; 2 uses
  %i.i = icmp eq i64 %.val4.i1, 0
  br i1 %i.i, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i3", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5.i2 = load ptr, ptr %i.j, align 8, !alias.scope !6304, !nonnull !4, !noundef !4
  %i.k = shl nuw i64 %.val4.i1, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !6304
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i3"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i3": ; preds = %bb.d, %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i4 = load i64, ptr %i.l, align 8, !alias.scope !6304 ; 2 uses
  %i.m = icmp eq i64 %.val.i4, 0
  br i1 %i.m, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit6", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i3"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i5 = load ptr, ptr %i.n, align 8, !alias.scope !6304, !nonnull !4, !noundef !4
  %i.o = shl nuw i64 %.val.i4, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !noalias !6304
  br label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit6"

"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hb249602e5b78f0e3E.exit6": ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h58b4b7a4d6333cbaE.exit.i3", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..encoding..decoder..ContentDecoder$GT$17h73bc997102b9d15bE"(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  switch i64 %.0.val, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$brotli_decompressor..writer..DecompressorWriter$LT$actix_http..encoding..Writer$GT$$GT$17h36e0156bab2cdcabE"(ptr noalias noundef nonnull align 8 dereferenceable(2664) %.8.val)
          to label %"_ZN4core3ptr129drop_in_place$LT$alloc..boxed..Box$LT$brotli_decompressor..writer..DecompressorWriter$LT$actix_http..encoding..Writer$GT$$GT$$GT$17ha9433b53dbe8245fE.exit" unwind label %bb.c

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit.i.i", %bb.e, %bb.c
  %.sink = phi i64 [ 232, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit.i.i" ], [ 80, %bb.e ], [ 2664, %bb.c ]
  %common.resume.op = phi { ptr, i32 } [ %i.c, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit.i.i" ], [ %i.b, %bb.e ], [ %i.a, %bb.c ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink, i64 noundef 8) #46
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$flate2..zlib..write..ZlibDecoder$LT$actix_http..encoding..Writer$GT$$GT$17hd8607d880ff6b0bfE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %.8.val)
          to label %"_ZN4core3ptr129drop_in_place$LT$alloc..boxed..Box$LT$brotli_decompressor..writer..DecompressorWriter$LT$actix_http..encoding..Writer$GT$$GT$$GT$17ha9433b53dbe8245fE.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$flate2..zio..Writer$LT$flate2..crc..CrcWriter$LT$actix_http..encoding..Writer$GT$$C$flate2..mem..Decompress$GT$$GT$17haabbdef6c867d9e8E"(ptr noalias noundef nonnull align 8 dereferenceable(232) %.8.val)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %.val3.i.i = load i64, ptr %i.d, align 8, !alias.scope !6307 ; 2 uses
  %i.e = icmp eq i64 %.val3.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 112
  %.val4.i.i = load ptr, ptr %i.f, align 8, !alias.scope !6307, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %.val3.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit.i.i"

bb.i:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %.val.i.i = load i64, ptr %i.g, align 8, !alias.scope !6307 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr110drop_in_place$LT$alloc..boxed..Box$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$$GT$17hc4f16b263d5fbaacE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 112
  %.val2.i.i = load ptr, ptr %i.i, align 8, !alias.scope !6307, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..boxed..Box$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$$GT$17hc4f16b263d5fbaacE.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit.i.i": ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17h9b06a3d19665a314E"(ptr noalias noundef align 8 dereferenceable(104) %i.j) #53
  br label %common.resume

"_ZN4core3ptr110drop_in_place$LT$alloc..boxed..Box$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$$GT$17hc4f16b263d5fbaacE.exit": ; preds = %bb.i, %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17h9b06a3d19665a314E"(ptr noalias noundef align 8 dereferenceable(104) %i.k)
  br label %"_ZN4core3ptr129drop_in_place$LT$alloc..boxed..Box$LT$brotli_decompressor..writer..DecompressorWriter$LT$actix_http..encoding..Writer$GT$$GT$$GT$17ha9433b53dbe8245fE.exit"

"_ZN4core3ptr129drop_in_place$LT$alloc..boxed..Box$LT$brotli_decompressor..writer..DecompressorWriter$LT$actix_http..encoding..Writer$GT$$GT$$GT$17ha9433b53dbe8245fE.exit": ; preds = %bb.d, %bb.b, %"_ZN4core3ptr110drop_in_place$LT$alloc..boxed..Box$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$$GT$17hc4f16b263d5fbaacE.exit"
  %.sink1 = phi i64 [ 232, %"_ZN4core3ptr110drop_in_place$LT$alloc..boxed..Box$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$$GT$17hc4f16b263d5fbaacE.exit" ], [ 2664, %bb.b ], [ 80, %bb.d ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1, i64 noundef 8) #46
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17heae32d918cbec3d0E"(i64 %.0.val, ptr %.8.val) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %bb.b [
    i64 -9223372036854775806, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hfc32090bff2866dbE.exit"
    i64 -9223372036854775807, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hfc32090bff2866dbE.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hfc32090bff2866dbE.exit"
    i64 0, label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hfc32090bff2866dbE.exit"
  ]

"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hfc32090bff2866dbE.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6310
  br label %"_ZN4core3ptr38drop_in_place$LT$cookie..CookieStr$GT$17hfc32090bff2866dbE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN88_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..drop..Drop$GT$4drop17h492f1b14454eebceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val1 = load ptr, ptr %0, align 8, !align !236, !noundef !4
  invoke fastcc void @"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4d23901d290bb6dbE"(ptr %.val1) #53
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !align !236, !noundef !4 ; 4 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4d23901d290bb6dbE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..header..map..HeaderMap$GT$17hcb507e043a1063feE"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.c)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i" unwind label %bb.e

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 64, i64 noundef 8) #46
  br label %common.resume

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 64, i64 noundef 8) #46
  br label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4d23901d290bb6dbE.exit"

"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4d23901d290bb6dbE.exit": ; preds = %bb.c, %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17hfbb0f908de4d6b51E.exit.i"
  ret void

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw i64 %.sroa.0.0.i.i7, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$actix_web..route..Route$GT$17hf2f7b8095add50eeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$actix_web..route..Route$GT$17hf2f7b8095add50eeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !6313
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..route..Route$GT$$GT$17h672147e88595681aE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..route..Route$GT$$GT$17h672147e88595681aE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..route..Route$GT$$GT$17h672147e88595681aE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit"
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..route..Route$GT$$GT$17h672147e88595681aE.exit6"

"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..route..Route$GT$$GT$17h672147e88595681aE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf76eaf46863235b5E.exit", %bb.g
  ret void

"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..route..Route$GT$$GT$17h672147e88595681aE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h5d13e7c886108c29E"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d131ad94cbb392E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.e) #46
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d131ad94cbb392E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d131ad94cbb392E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !357, !invariant.load !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !443, !invariant.load !4 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d131ad94cbb392E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #46
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d131ad94cbb392E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d131ad94cbb392E.exit5": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$regex_lite..string..Regex$GT$$GT$17h2ba3baa7557c6440E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h191ea4452c25c82fE.exit", label %.lr.ph

"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit.i.i": ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i.i.i"
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h191ea4452c25c82fE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit.i.i"
  %.sroa.0.0.i.i19 = phi i64 [ %i.f, %"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.0.i.i19 ; 4 uses
  %i.f = add nuw i64 %.sroa.0.0.i.i19, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6322)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !6325, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !6328
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i.i.i"

bb.b:                                             ; preds = %.lr.ph
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc59de82033cb534eE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke fastcc void @"_ZN4core3ptr333drop_in_place$LT$regex_lite..pool..Pool$LT$regex_lite..pikevm..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_lite..pikevm..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h0e76321fcadb2ecdE"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #53
          to label %.body.i.i unwind label %bb.d

"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i.i.i": ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke fastcc void @"_ZN4core3ptr333drop_in_place$LT$regex_lite..pool..Pool$LT$regex_lite..pikevm..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_lite..pikevm..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h0e76321fcadb2ecdE"(ptr noalias noundef align 8 dereferenceable(48) %i.l)
          to label %"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit.i.i" unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.e:                                             ; preds = %.lr.ph21
  %i.n = add i64 %.sroa.0.1.i.i20, 1              ; 2 uses
  %i.o = icmp eq i64 %i.n, %.val1
  br i1 %i.o, label %.body, label %.lr.ph21

bb.f:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i.i.i"
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.j, %bb.c ]
  %i.q = icmp eq i64 %i.f, %.val1
  br i1 %i.q, label %.body, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i20 = phi i64 [ %i.n, %bb.e ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.1.i.i20
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE"(ptr noalias noundef align 8 dereferenceable(56) %i.r) #53
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph21
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.t = icmp eq i64 %.val4, 0
  br i1 %i.t, label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_lite..string..Regex$GT$$GT$17h5125668f89759055E.exit", label %bb.h

bb.h:                                             ; preds = %.body
  %i.u = mul nuw i64 %.val4, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_lite..string..Regex$GT$$GT$17h5125668f89759055E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h191ea4452c25c82fE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.v = icmp eq i64 %.val2, 0
  br i1 %i.v, label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_lite..string..Regex$GT$$GT$17h5125668f89759055E.exit6", label %bb.i

bb.i:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h191ea4452c25c82fE.exit"
  %i.w = mul nuw i64 %.val2, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_lite..string..Regex$GT$$GT$17h5125668f89759055E.exit6"

"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_lite..string..Regex$GT$$GT$17h5125668f89759055E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h191ea4452c25c82fE.exit", %bb.i
  ret void

"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_lite..string..Regex$GT$$GT$17h5125668f89759055E.exit": ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_router..path..PathItem$u3b$$u20$16$u5d$$GT$17ha15edf3d732e1160E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val8 = load i64, ptr %0, align 8, !range !242, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val8, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val8, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit": ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.1 = load i64, ptr %i.b, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.1 = icmp sgt i64 %.val8.1, 0
  br i1 %switch.1, label %bb.c, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.1"

bb.c:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit"
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9.1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.1, i64 noundef %.val8.1, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.1"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.1": ; preds = %bb.c, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8.2 = load i64, ptr %i.d, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.2 = icmp sgt i64 %.val8.2, 0
  br i1 %switch.2, label %bb.d, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.2"

bb.d:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.1"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9.2 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.2, i64 noundef %.val8.2, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.2"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.2": ; preds = %bb.d, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.1"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8.3 = load i64, ptr %i.f, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.3 = icmp sgt i64 %.val8.3, 0
  br i1 %switch.3, label %bb.e, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.3"

bb.e:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.2"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val9.3 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.3, i64 noundef %.val8.3, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.3"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.3": ; preds = %bb.e, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.2"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val8.4 = load i64, ptr %i.h, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.4 = icmp sgt i64 %.val8.4, 0
  br i1 %switch.4, label %bb.f, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.4"

bb.f:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.3"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val9.4 = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.4, i64 noundef %.val8.4, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.4"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.4": ; preds = %bb.f, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.3"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val8.5 = load i64, ptr %i.j, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.5 = icmp sgt i64 %.val8.5, 0
  br i1 %switch.5, label %bb.g, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.5"

bb.g:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.4"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val9.5 = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.5, i64 noundef %.val8.5, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.5"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.5": ; preds = %bb.g, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.4"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val8.6 = load i64, ptr %i.l, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.6 = icmp sgt i64 %.val8.6, 0
  br i1 %switch.6, label %bb.h, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.6"

bb.h:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.5"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val9.6 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.6, i64 noundef %.val8.6, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.6"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.6": ; preds = %bb.h, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.5"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val8.7 = load i64, ptr %i.n, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.7 = icmp sgt i64 %.val8.7, 0
  br i1 %switch.7, label %bb.i, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.7"

bb.i:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.6"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val9.7 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.7, i64 noundef %.val8.7, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.7"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.7": ; preds = %bb.i, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.6"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val8.8 = load i64, ptr %i.p, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.8 = icmp sgt i64 %.val8.8, 0
  br i1 %switch.8, label %bb.j, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.8"

bb.j:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.7"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val9.8 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.8, i64 noundef %.val8.8, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6329
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.8"

"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.8": ; preds = %bb.j, %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.7"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val8.9 = load i64, ptr %i.r, align 8, !range !242, !noundef !4 ; 2 uses
  %switch.9 = icmp sgt i64 %.val8.9, 0
  br i1 %switch.9, label %bb.k, label %"_ZN4core3ptr49drop_in_place$LT$actix_router..path..PathItem$GT$17h7e035eab00be6abcE.exit.9"

end_hunk_9
begin_hunk_10_@"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_router..resource..PatternSegment$GT$$GT$17h562065b0683ec90cE":bb.a
"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_router..resource..PatternSegment$GT$$GT$17h5ec27c7448f1c25aE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a521bfb5fd8a881E.exit", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr83drop_in_place$LT$actix_web..http..header..content_disposition..DispositionParam$GT$17hf15d9458cd0f2e57E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !86, !noundef !4 ; 4 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 4
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6429)
  %i.e = icmp eq i64 %i.a, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6429, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6429
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i2 = load i64, ptr %i.g, align 8, !alias.scope !6432 ; 2 uses
  %i.h = icmp eq i64 %.val.i2, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split"

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i5 = load i64, ptr %i.i, align 8, !alias.scope !6435 ; 2 uses
  %i.j = icmp eq i64 %.val.i5, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split"

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i = load i64, ptr %i.l, align 8, !range !6332, !alias.scope !6438, !noundef !4 ; 3 uses
  %switch1.i.i = icmp slt i64 %.val5.i, -9223372036854775784
  %i.m = icmp eq i64 %.val5.i, 0
  %or.cond.i.i = or i1 %switch1.i.i, %i.m
  br i1 %or.cond.i.i, label %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val6.i = load ptr, ptr %i.n, align 8, !alias.scope !6438, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %.val5.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6441
  br label %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i": ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i = load i64, ptr %i.o, align 8, !range !91, !alias.scope !6438, !noundef !4 ; 2 uses
  %switch.i = icmp sgt i64 %.val7.i, 0
  br i1 %switch.i, label %bb.h, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i"

bb.h:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !6438, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %.val7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6444
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i": ; preds = %bb.h, %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i"
  %.val.i8 = load i64, ptr %i.k, align 8, !alias.scope !6438 ; 2 uses
  %i.q = icmp eq i64 %.val.i8, 0
  br i1 %i.q, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split"

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6447)
  %.val.i9 = load i64, ptr %i.r, align 8, !alias.scope !6447 ; 2 uses
  %i.s = icmp eq i64 %.val.i9, 0
  br i1 %i.s, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i10 = load ptr, ptr %i.t, align 8, !alias.scope !6447, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6447
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split": ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i", %bb.e, %bb.d, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11"
  %.sink30 = phi i64 [ 40, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11" ], [ 32, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25" ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i" ]
  %.val.i26.sink = phi i64 [ %.val.i15, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11" ], [ %.val.i26, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25" ], [ %.val.i5, %bb.e ], [ %.val.i2, %bb.d ], [ %.val.i8, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i" ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sink30
  %.val2.i27 = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i27, i64 noundef %.val.i26.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !4
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split", %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11", %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i", %bb.e, %bb.d
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit11": ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i15 = load i64, ptr %i.v, align 8, !alias.scope !6450 ; 2 uses
  %i.w = icmp eq i64 %.val.i15, 0
  br i1 %i.w, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit": ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6453)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val5.i18 = load i64, ptr %i.y, align 8, !range !6332, !alias.scope !6453, !noundef !4 ; 3 uses
  %switch1.i.i19 = icmp slt i64 %.val5.i18, -9223372036854775784
  %i.z = icmp eq i64 %.val5.i18, 0
  %or.cond.i.i20 = or i1 %switch1.i.i19, %i.z
  br i1 %or.cond.i.i20, label %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i22", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val6.i21 = load ptr, ptr %i.aa, align 8, !alias.scope !6453, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i21, i64 noundef %.val5.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6456
  br label %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i22"

"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i22": ; preds = %bb.k, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val7.i23 = load i64, ptr %i.ab, align 8, !range !91, !alias.scope !6453, !noundef !4 ; 2 uses
  %switch.i24 = icmp sgt i64 %.val7.i23, 0
  br i1 %switch.i24, label %bb.l, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25"

bb.l:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i22"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val8.i28 = load ptr, ptr %i.ac, align 8, !alias.scope !6453, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i28, i64 noundef %.val7.i23, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6459
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17h24329eb1b489c0f0E.exit11.i25": ; preds = %bb.l, %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17h81af812429fb7469E.exit.i22"
  %.val.i26 = load i64, ptr %i.x, align 8, !alias.scope !6453 ; 2 uses
  %i.ad = icmp eq i64 %.val.i26, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit4.sink.split"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$actix_web..http..header..content_disposition..ContentDisposition$GT$17h6d2a594bd6bf77a8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !range !3, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr82drop_in_place$LT$actix_web..http..header..content_disposition..DispositionType$GT$17h3f55027e2eac1a76E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !6462
  br label %"_ZN4core3ptr82drop_in_place$LT$actix_web..http..header..content_disposition..DispositionType$GT$17h3f55027e2eac1a76E.exit"

"_ZN4core3ptr82drop_in_place$LT$actix_web..http..header..content_disposition..DispositionType$GT$17h3f55027e2eac1a76E.exit": ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6465)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !6465, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !6465, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3cd1a56c22b38adE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr82drop_in_place$LT$actix_web..http..header..content_disposition..DispositionType$GT$17h3f55027e2eac1a76E.exit", %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ 0, %"_ZN4core3ptr82drop_in_place$LT$actix_web..http..header..content_disposition..DispositionType$GT$17h3f55027e2eac1a76E.exit" ] ; 2 uses
  %i.f = getelementptr inbounds nuw [144 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.g = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call fastcc void @"_ZN4core3ptr83drop_in_place$LT$actix_web..http..header..content_disposition..DispositionParam$GT$17hf15d9458cd0f2e57E"(ptr noalias noundef readonly align 8 dereferenceable(144) %i.f), !noalias !6465
  %i.h = icmp eq i64 %i.g, %.val1.i
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3cd1a56c22b38adE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3cd1a56c22b38adE.exit.i": ; preds = %.lr.ph.i.i.i, %"_ZN4core3ptr82drop_in_place$LT$actix_web..http..header..content_disposition..DispositionType$GT$17h3f55027e2eac1a76E.exit"
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !6465 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %"_ZN4core3ptr106drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..content_disposition..DispositionParam$GT$$GT$17hc2e36e64a10b87d2E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3cd1a56c22b38adE.exit.i"
  %i.j = mul nuw i64 %.val2.i, 144
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !6465
  br label %"_ZN4core3ptr106drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..content_disposition..DispositionParam$GT$$GT$17hc2e36e64a10b87d2E.exit"

"_ZN4core3ptr106drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..content_disposition..DispositionParam$GT$$GT$17hc2e36e64a10b87d2E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3cd1a56c22b38adE.exit.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw i64 %.sroa.0.0.i.i7, 1           ; 4 uses
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h32a2bea032596e89E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h32a2bea032596e89E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h32a2bea032596e89E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit"
  %i.p = mul nuw i64 %.val2, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h32a2bea032596e89E.exit6"

"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h32a2bea032596e89E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit", %bb.g
  ret void

"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h32a2bea032596e89E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$actix_web..resource..ResourceFactory$GT$$GT$17h67932a23556944d0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !91, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr57drop_in_place$LT$actix_web..resource..ResourceFactory$GT$17h36080f59207e0941E.exit", label %bb.b

"_ZN4core3ptr57drop_in_place$LT$actix_web..resource..ResourceFactory$GT$17h36080f59207e0941E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$actix_web..route..Route$GT$$GT$17h3a409227b7287fddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !6468
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !6468, !nonnull !4, !align !236, !noundef !4
  invoke fastcc void @"_ZN4core3ptr195drop_in_place$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$17h1e13373add6268b1E"(ptr %.val2.i, ptr nonnull %.val3.i) #53
          to label %common.resume.i unwind label %bb.h, !noalias !6468

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !6468 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !6468, !nonnull !4, !align !236, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !6468 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.g, !noalias !6468

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !357, !invariant.load !4, !noalias !6468 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !443, !invariant.load !4, !noalias !6468 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN4core3ptr57drop_in_place$LT$actix_web..resource..ResourceFactory$GT$17h36080f59207e0941E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #46, !noalias !6468
  br label %"_ZN4core3ptr57drop_in_place$LT$actix_web..resource..ResourceFactory$GT$17h36080f59207e0941E.exit"

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !357, !invariant.load !4, !noalias !6468 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !443, !invariant.load !4, !noalias !6468 ; 2 uses
  %i.t = icmp ult i64 %i.s, -9223372036854775807
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.s) #46, !noalias !6468
  br label %common.resume.i

common.resume.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.g, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i" ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !6468
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$17h21073fba3e5aa1f4E"(ptr noalias noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$flate2..zio..Writer$LT$flate2..crc..CrcWriter$LT$actix_http..encoding..Writer$GT$$C$flate2..mem..Decompress$GT$$GT$17haabbdef6c867d9e8E"(ptr noalias noundef align 8 dereferenceable(104) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val3 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val3, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit"

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit5", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit5"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit": ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17h9b06a3d19665a314E"(ptr noalias noundef align 8 dereferenceable(104) %i.h) #53
  resume { ptr, i32 } %i.a

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit5": ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$flate2..gz..GzHeaderParser$GT$17h9b06a3d19665a314E"(ptr noalias noundef align 8 dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h4969ff543dd13289E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6483)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6486, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h0428243d87fc8612E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6487)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6490, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h67ac7a365ea74c2bE.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6490, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !6491
end_hunk_10
begin_hunk_11_@_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E:bb.a
  %.sroa.02.0.i43 = phi i64 [ %.sroa.0.0.i36, %bb.aa ], [ %.sroa.15.092241, %bb.ad ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.02.0.i43 ; 2 uses
  %i.gw = icmp ult ptr %.sroa.5.0.i42, %i.gv
  br i1 %i.gw, label %.lr.ph.i52, label %._crit_edge.i44

._crit_edge.i44:                                  ; preds = %.lr.ph.i52, %bb.ac
  %.sroa.19.1.lcssa.i45 = phi ptr [ %.sroa.19.0.i40, %bb.ac ], [ %i.ha, %.lr.ph.i52 ]
  %.sroa.11.1.lcssa.i46 = phi i64 [ %.sroa.11.0.i41, %bb.ac ], [ %i.hd, %.lr.ph.i52 ] ; 10 uses
  %.sroa.5.1.lcssa.i47 = phi ptr [ %.sroa.5.0.i42, %bb.ac ], [ %i.he, %.lr.ph.i52 ] ; 2 uses
  %i.gx = icmp eq i64 %.sroa.02.0.i43, %.sroa.15.092241
  br i1 %i.gx, label %bb.ae, label %bb.ad

.lr.ph.i52:                                       ; preds = %bb.ac, %.lr.ph.i52
  %.sroa.5.111.i53 = phi ptr [ %i.he, %.lr.ph.i52 ], [ %.sroa.5.0.i42, %bb.ac ] ; 3 uses
  %.sroa.11.110.i54 = phi i64 [ %i.hd, %.lr.ph.i52 ], [ %.sroa.11.0.i41, %bb.ac ] ; 2 uses
  %.sroa.19.19.i55 = phi ptr [ %i.ha, %.lr.ph.i52 ], [ %.sroa.19.0.i40, %bb.ac ]
  %i.gy = getelementptr i8, ptr %.sroa.5.111.i53, i64 72
  %.val.i56 = load i16, ptr %i.gy, align 8, !alias.scope !7413, !noalias !7410, !noundef !4
  %.val24.i57 = load i16, ptr %i.gu, align 8, !alias.scope !7413, !noalias !7410, !noundef !4
  %i.gz = icmp uge i16 %.val.i56, %.val24.i57     ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.sroa.19.19.i55, i64 -80 ; 3 uses
  %.sroa.01.0.i.i58 = select i1 %i.gz, ptr %2, ptr %i.ha
  %i.hb = getelementptr inbounds nuw [80 x i8], ptr %.sroa.01.0.i.i58, i64 %.sroa.11.110.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hb, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.111.i53, i64 80, i1 false), !alias.scope !7415, !noalias !7416
  %i.hc = zext i1 %i.gz to i64
  %i.hd = add i64 %.sroa.11.110.i54, %i.hc        ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i53, i64 80 ; 3 uses
  %i.hf = icmp ult ptr %i.he, %i.gv
  br i1 %i.hf, label %.lr.ph.i52, label %._crit_edge.i44

bb.ad:                                            ; preds = %._crit_edge.i44
  %i.hg = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i45, i64 -80
  %i.hh = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hh, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.1.lcssa.i47, i64 80, i1 false), !alias.scope !7415, !noalias !7419
  %i.hi = add i64 %.sroa.11.1.lcssa.i46, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i47, i64 80
  br label %bb.ac

bb.ae:                                            ; preds = %._crit_edge.i44
  %i.hk = mul i64 %.sroa.11.1.lcssa.i46, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph99, ptr nonnull align 8 %2, i64 %i.hk, i1 false), !alias.scope !7415
  %i.hl = sub i64 %.sroa.15.092241, %.sroa.11.1.lcssa.i46 ; 6 uses
  %.not18.i48 = icmp eq i64 %.sroa.15.092241, %.sroa.11.1.lcssa.i46
  br i1 %.not18.i48, label %.outer._crit_edge.thread, label %.lr.ph16.i49

.lr.ph16.i49:                                     ; preds = %bb.ae
  %i.hm = getelementptr [80 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i46 ; 3 uses
  %.neg342 = add i64 %.sroa.11.1.lcssa.i46, 1
  %xtraiter337 = and i64 %i.hl, 1
  %i.hn = icmp eq i64 %.sroa.15.092241, %.neg342
  br i1 %i.hn, label %.epil.preheader330, label %.lr.ph16.i49.new

.lr.ph16.i49.new:                                 ; preds = %.lr.ph16.i49
  %unroll_iter340 = and i64 %i.hl, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph16.i49.new
  %.sroa.04.014.i50 = phi i64 [ 0, %.lr.ph16.i49.new ], [ %i.hr, %bb.af ] ; 5 uses
  %niter341 = phi i64 [ 0, %.lr.ph16.i49.new ], [ %niter341.next.1, %bb.af ]
  %i.ho = xor i64 %.sroa.04.014.i50, -1
  %i.hp = getelementptr [80 x i8], ptr %i.gt, i64 %i.ho
  %i.hq = getelementptr [80 x i8], ptr %i.hm, i64 %.sroa.04.014.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hq, ptr noundef nonnull align 8 dereferenceable(80) %i.hp, i64 80, i1 false), !alias.scope !7415
  %i.hr = add nuw i64 %.sroa.04.014.i50, 2        ; 2 uses
  %i.hs = xor i64 %.sroa.04.014.i50, -2
  %i.ht = getelementptr [80 x i8], ptr %i.gt, i64 %i.hs
  %i.hu = getelementptr [80 x i8], ptr %i.hm, i64 %.sroa.04.014.i50
  %i.hv = getelementptr i8, ptr %i.hu, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hv, ptr noundef nonnull align 8 dereferenceable(80) %i.ht, i64 80, i1 false), !alias.scope !7415
  %niter341.next.1 = add i64 %niter341, 2         ; 2 uses
  %niter341.ncmp.1 = icmp eq i64 %niter341.next.1, %unroll_iter340
  br i1 %niter341.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit.unr-lcssa, label %bb.af

_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit.unr-lcssa: ; preds = %bb.af
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit, label %.epil.preheader330

.epil.preheader330:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit.unr-lcssa, %.lr.ph16.i49
  %.sroa.04.014.i50.epil.init = phi i64 [ 0, %.lr.ph16.i49 ], [ %i.hr, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod339 = trunc i64 %i.hl to i1
  call void @llvm.assume(i1 %lcmp.mod339)
  %i.hw = xor i64 %.sroa.04.014.i50.epil.init, -1
  %i.hx = getelementptr [80 x i8], ptr %i.gt, i64 %i.hw
  %i.hy = getelementptr [80 x i8], ptr %i.hm, i64 %.sroa.04.014.i50.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hy, ptr noundef nonnull align 8 dereferenceable(80) %i.hx, i64 80, i1 false), !alias.scope !7415
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit.unr-lcssa, %.epil.preheader330
  %i.hz = icmp ugt i64 %.sroa.11.1.lcssa.i46, %.sroa.15.092241
  br i1 %i.hz, label %bb.ag, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit", !prof !223

.outer._crit_edge.thread:                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h889625cd92405aa5E.exit

bb.ag:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i46, i64 noundef %.sroa.15.092241, i64 noundef %.sroa.15.092241, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #52, !noalias !7422
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h07c19a0a938ff33bE.exit
  %i.ia = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ib = icmp ult i64 %i.hl, 33
  br i1 %i.ib, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @179, ptr %i.a, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.if, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #52
  unreachable

bb.ai:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph99) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %i.ig, i64 noundef %i.ge, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ih = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ih, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hda82fa42989470e3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit"
  %.sroa.0.0.ph122 = phi ptr [ %i.iw, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit" ], [ %0, %bb.a ] ; 23 uses
  %.sroa.15.0.ph121 = phi i64 [ %i.ih, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph120 = phi i32 [ %i.cn, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph119 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit" ], [ %5, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph122, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph122, i64 8 ; 2 uses
  %i.f = ptrtoint ptr %.sroa.0.0.ph122 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph119, null
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph119, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph119, i64 8
  %i.i = icmp eq i32 %.sroa.023.0.ph120, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph308

bb.b:                                             ; preds = %bb.bu
  %i.j = icmp eq i32 %i.cn, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph308

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit", %bb.bu, %bb.a
  %.sroa.0.0.ph.lcssa113 = phi ptr [ %.sroa.0.0.ph122, %bb.bu ], [ %0, %bb.a ], [ %i.iw, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit" ] ; 7 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.bu ], [ %1, %bb.a ], [ %i.ih, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7425)
  call void @llvm.experimental.noalias.scope.decl(metadata !7428)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf779422766f3d2f1E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.n ; 3 uses
  %i.q = getelementptr [32 x i8], ptr %2, i64 %i.n ; 6 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h6378a53a51c4ff54E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa113, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h6378a53a51c4ff54E(ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.ph.lcssa113, i64 32, i1 false), !alias.scope !7430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !alias.scope !7430
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.r = sub nsw i64 %.sroa.15.0.lcssa, %i.n      ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.n
  br i1 %i.s, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h
  %i.t = icmp ult i64 %.sroa.0.0.i, %i.r
  br i1 %i.t, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.08.08.1.i = phi i64 [ %i.u, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.u = add nuw i64 %.sroa.08.08.1.i, 1          ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.08.08.1.i
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.08.08.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !alias.scope !7430
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h54b556b9d6601ae0E(ptr noundef %i.q, ptr noundef %i.w), !noalias !7425
  %exitcond.1.not.i = icmp eq i64 %i.u, %i.r
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  %i.x = add nsw i64 %.sroa.15.0.lcssa, -1        ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.x
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.q, i64 -32
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i"
  %i.ab = getelementptr i8, ptr %i.by, i64 32     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.bx, i64 32
  %i.ad = and i64 %.sroa.15.0.lcssa, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.t, label %bb.s

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i", %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.bc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ %2, %.loopexit.1.i ] ; 5 uses
  %.sroa.06.019.i.i = phi ptr [ %i.ba, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ %i.q, %.loopexit.1.i ] ; 5 uses
  %.sroa.010.018.i.i = phi ptr [ %i.bd, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ %.sroa.0.0.ph.lcssa113, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.017.i.i = phi ptr [ %i.by, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ %i.aa, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.016.i.i = phi ptr [ %i.bx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ %i.z, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.015.i.i = phi ptr [ %i.bz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ %i.y, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.014.i.i = phi i64 [ %i.af, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i" ], [ 0, %.loopexit.1.i ]
  %i.af = add nuw nsw i64 %.sroa.018.014.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7431)
  call void @llvm.experimental.noalias.scope.decl(metadata !7434)
  call void @llvm.experimental.noalias.scope.decl(metadata !7436)
  call void @llvm.experimental.noalias.scope.decl(metadata !7439)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 24
  %i.ah = load i16, ptr %i.ag, align 8, !alias.scope !7441, !noalias !7444, !noundef !4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 24
  %i.aj = load i16, ptr %i.ai, align 8, !alias.scope !7445, !noalias !7446, !noundef !4 ; 3 uses
  %i.ak = icmp eq i16 %i.ah, 0
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.al = load i64, ptr %.sroa.0.020.i.i, align 8, !range !242, !alias.scope !7441, !noalias !7444, !noundef !4
  switch i64 %i.al, label %bb.k [
    i64 -9223372036854775807, label %bb.j
    i64 -9223372036854775808, label %switch.lookup
  ]

bb.j:                                             ; preds = %switch.lookup, %bb.k, %bb.i, %.lr.ph.i.i
  %.sroa.01.0.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ 1, %bb.k ], [ 0, %bb.i ], [ %switch.masked, %switch.lookup ]
  %i.am = icmp eq i16 %i.aj, 0
  br i1 %i.am, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i", label %bb.l

bb.k:                                             ; preds = %bb.i
  br label %bb.j

switch.lookup:                                    ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !range !1352, !alias.scope !7441, !noalias !7444, !noundef !4
  %i.ap = shl nuw nsw i8 %i.ao, 3
  %switch.shiftamt = zext nneg i8 %i.ap to i40
  %switch.downshift = lshr i40 17230333184, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %.sroa.06.019.i.i, align 8, !range !242, !alias.scope !7445, !noalias !7446, !noundef !4
  switch i64 %i.aq, label %bb.m [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"
    i64 -9223372036854775808, label %switch.lookup312
  ]

bb.m:                                             ; preds = %bb.l
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"

switch.lookup312:                                 ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !1352, !alias.scope !7445, !noalias !7446, !noundef !4
  %i.at = shl nuw nsw i8 %i.as, 3
  %switch.shiftamt314 = zext nneg i8 %i.at to i40
  %switch.downshift315 = lshr i40 17230333184, %switch.shiftamt314
  %switch.masked316 = trunc i40 %switch.downshift315 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i": ; preds = %switch.lookup312, %bb.m, %bb.l, %bb.j
  %.sroa.02.0.i.i.i.i = phi i8 [ 0, %bb.j ], [ 1, %bb.m ], [ 0, %bb.l ], [ %switch.masked316, %switch.lookup312 ]
  %i.au = icmp eq i16 %i.ah, %i.aj
  %i.av = icmp samesign ult i8 %.sroa.01.0.i.i.i.i, %.sroa.02.0.i.i.i.i
  %i.aw = icmp ult i16 %i.ah, %i.aj
  %i.ax = select i1 %i.au, i1 %i.av, i1 %i.aw     ; 3 uses
  %..i23.i.i = select i1 %i.ax, ptr %.sroa.06.019.i.i, ptr %.sroa.0.020.i.i
  %i.ay = xor i1 %i.ax, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.018.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i23.i.i, i64 32, i1 false), !alias.scope !7430, !noalias !7447
  %i.az = zext i1 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.019.i.i, i64 %i.az ; 4 uses
  %i.bb = zext i1 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.020.i.i, i64 %i.bb ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7451)
  call void @llvm.experimental.noalias.scope.decl(metadata !7454)
  call void @llvm.experimental.noalias.scope.decl(metadata !7456)
  call void @llvm.experimental.noalias.scope.decl(metadata !7459)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 24
  %i.bf = load i16, ptr %i.be, align 8, !alias.scope !7461, !noalias !7462, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.016.i.i, i64 24
  %i.bh = load i16, ptr %i.bg, align 8, !alias.scope !7463, !noalias !7464, !noundef !4 ; 3 uses
  %i.bi = icmp eq i16 %i.bf, 0
  br i1 %i.bi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"
  %i.bj = load i64, ptr %.sroa.013.017.i.i, align 8, !range !242, !alias.scope !7461, !noalias !7462, !noundef !4
  switch i64 %i.bj, label %bb.p [
    i64 -9223372036854775807, label %bb.o
    i64 -9223372036854775808, label %switch.lookup317
  ]

bb.o:                                             ; preds = %switch.lookup317, %bb.p, %bb.n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i"
  %.sroa.01.0.i.i24.i.i = phi i8 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i.i" ], [ 1, %bb.p ], [ 0, %bb.n ], [ %switch.masked321, %switch.lookup317 ]
  %i.bk = icmp eq i16 %i.bh, 0
  br i1 %i.bk, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i", label %bb.q

bb.p:                                             ; preds = %bb.n
  br label %bb.o

switch.lookup317:                                 ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !range !1352, !alias.scope !7461, !noalias !7462, !noundef !4
  %i.bn = shl nuw nsw i8 %i.bm, 3
  %switch.shiftamt319 = zext nneg i8 %i.bn to i40
  %switch.downshift320 = lshr i40 17230333184, %switch.shiftamt319
  %switch.masked321 = trunc i40 %switch.downshift320 to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %.sroa.015.016.i.i, align 8, !range !242, !alias.scope !7463, !noalias !7464, !noundef !4
  switch i64 %i.bo, label %bb.r [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i"
    i64 -9223372036854775808, label %switch.lookup322
  ]

bb.r:                                             ; preds = %bb.q
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i"

switch.lookup322:                                 ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.016.i.i, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !range !1352, !alias.scope !7463, !noalias !7464, !noundef !4
  %i.br = shl nuw nsw i8 %i.bq, 3
  %switch.shiftamt324 = zext nneg i8 %i.br to i40
  %switch.downshift325 = lshr i40 17230333184, %switch.shiftamt324
  %switch.masked326 = trunc i40 %switch.downshift325 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit27.i.i": ; preds = %switch.lookup322, %bb.r, %bb.q, %bb.o
  %.sroa.02.0.i.i25.i.i = phi i8 [ 0, %bb.o ], [ 1, %bb.r ], [ 0, %bb.q ], [ %switch.masked326, %switch.lookup322 ]
  %i.bs = icmp eq i16 %i.bf, %i.bh
  %i.bt = icmp samesign ult i8 %.sroa.01.0.i.i24.i.i, %.sroa.02.0.i.i25.i.i
  %i.bu = icmp ult i16 %i.bf, %i.bh
  %i.bv = select i1 %i.bs, i1 %i.bt, i1 %i.bu     ; 3 uses
  %..i.i.i = select i1 %i.bv, ptr %.sroa.013.017.i.i, ptr %.sroa.015.016.i.i
  %i.bw = xor i1 %i.bv, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.015.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i, i64 32, i1 false), !alias.scope !7430, !noalias !7465
  %.neg.i.i.i = sext i1 %i.bw to i64
  %i.bx = getelementptr [32 x i8], ptr %.sroa.015.016.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.bv to i64
  %i.by = getelementptr [32 x i8], ptr %.sroa.013.017.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.017.015.i.i, i64 -32
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ca = icmp ult ptr %i.bc, %i.ab               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.ca, ptr %i.bc, ptr %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0..sroa.06.0.i.i, i64 32, i1 false), !alias.scope !7430
  %i.cb = zext i1 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = xor i1 %i.ca, true
  %i.ce = zext i1 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.ce
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.ba, %._crit_edge.i.i ], [ %i.cf, %bb.s ]
  %.sroa.0.1.i.i = phi ptr [ %i.bc, %._crit_edge.i.i ], [ %i.cc, %bb.s ]
  %i.cg = icmp ne ptr %.sroa.0.1.i.i, %i.ab
  %i.ch = icmp ne ptr %.sroa.06.1.i.i, %i.ac
  %or.cond.i.i = select i1 %i.cg, i1 true, i1 %i.ch, !prof !2772
  br i1 %or.cond.i.i, label %bb.u, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf779422766f3d2f1E.exit, !prof !2772

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #52
          to label %.noexc.i unwind label %bb.v, !noalias !7430

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = shl nuw nsw i64 %.sroa.15.0.lcssa, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa113, ptr nonnull align 8 %2, i64 %i.cj, i1 false), !alias.scope !7430, !noalias !7469
  resume { ptr, i32 } %i.ci

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.08.08.i = phi i64 [ %i.ck, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.ck = add nuw i64 %.sroa.08.08.i, 1           ; 2 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %.sroa.08.08.i
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.08.08.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 32, i1 false), !alias.scope !7430
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h54b556b9d6601ae0E(ptr noundef nonnull align 8 %2, ptr noundef %i.cm), !noalias !7425
  %exitcond.not.i = icmp eq i64 %i.ck, %i.n
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0115.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph121, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8eef295c95f2d4f3E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph122, i64 noundef %.sroa.15.0115.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf779422766f3d2f1E.exit

.lr.ph308:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.0114307 = phi i32 [ %i.cn, %bb.b ], [ %.sroa.023.0.ph120, %.lr.ph ]
  %.sroa.15.0115306 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph121, %.lr.ph ] ; 21 uses
  %i.cn = add i32 %.sroa.023.0114307, -1          ; 4 uses
  %i.co = lshr i64 %.sroa.15.0115306, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.co, 7
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph122, i64 %.idx.i ; 7 uses
  %.idx2.i = mul nuw i64 %i.co, 224
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph122, i64 %.idx2.i ; 7 uses
  %i.cr = icmp ult i64 %.sroa.15.0115306, 64
  br i1 %i.cr, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph308
  %i.cs = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h11150ac1770ace67E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph122, ptr noundef readonly %i.cp, ptr noundef readonly %i.cq, i64 noundef %i.co)
  br label %bb.ao

bb.x:                                             ; preds = %.lr.ph308
  call void @llvm.experimental.noalias.scope.decl(metadata !7474)
  call void @llvm.experimental.noalias.scope.decl(metadata !7477)
  call void @llvm.experimental.noalias.scope.decl(metadata !7479)
  call void @llvm.experimental.noalias.scope.decl(metadata !7482)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cu = load i16, ptr %i.ct, align 8, !alias.scope !7484, !noalias !7487, !noundef !4 ; 5 uses
  %i.cv = load i16, ptr %i.d, align 8, !alias.scope !7488, !noalias !7489, !noundef !4 ; 5 uses
  %i.cw = icmp eq i16 %i.cu, 0                    ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = load i64, ptr %i.cp, align 8, !range !242, !alias.scope !7484, !noalias !7487, !noundef !4
  switch i64 %i.cx, label %bb.aa [
    i64 -9223372036854775807, label %bb.z
    i64 -9223372036854775808, label %switch.lookup327
  ]

bb.z:                                             ; preds = %switch.lookup327, %bb.aa, %bb.y, %bb.x
  %.sroa.01.0.i.i.i = phi i8 [ 0, %bb.x ], [ 1, %bb.aa ], [ 0, %bb.y ], [ %switch.masked331, %switch.lookup327 ]
  %i.cy = icmp eq i16 %i.cv, 0                    ; 2 uses
  br i1 %i.cy, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i", label %bb.ab

bb.aa:                                            ; preds = %bb.y
  br label %bb.z

switch.lookup327:                                 ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.da = load i8, ptr %i.cz, align 8, !range !1352, !alias.scope !7484, !noalias !7487, !noundef !4
  %i.db = shl nuw nsw i8 %i.da, 3
  %switch.shiftamt329 = zext nneg i8 %i.db to i40
  %switch.downshift330 = lshr i40 17230333184, %switch.shiftamt329
  %switch.masked331 = trunc i40 %switch.downshift330 to i8
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.dc = load i64, ptr %.sroa.0.0.ph122, align 8, !range !242, !alias.scope !7488, !noalias !7489, !noundef !4
  switch i64 %i.dc, label %bb.ac [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i"
    i64 -9223372036854775808, label %switch.lookup332
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i"

switch.lookup332:                                 ; preds = %bb.ab
  %i.dd = load i8, ptr %i.e, align 8, !range !1352, !alias.scope !7488, !noalias !7489, !noundef !4
  %i.de = shl nuw nsw i8 %i.dd, 3
  %switch.shiftamt334 = zext nneg i8 %i.de to i40
  %switch.downshift335 = lshr i40 17230333184, %switch.shiftamt334
  %switch.masked336 = trunc i40 %switch.downshift335 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i": ; preds = %switch.lookup332, %bb.ac, %bb.ab, %bb.z
  %.sroa.02.0.i.i.i = phi i8 [ 0, %bb.z ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ %switch.masked336, %switch.lookup332 ]
  %i.df = icmp eq i16 %i.cu, %i.cv
  %i.dg = icmp samesign ult i8 %.sroa.01.0.i.i.i, %.sroa.02.0.i.i.i
  %i.dh = icmp ult i16 %i.cu, %i.cv
  %i.di = select i1 %i.df, i1 %i.dg, i1 %i.dh     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7490)
  call void @llvm.experimental.noalias.scope.decl(metadata !7493)
  call void @llvm.experimental.noalias.scope.decl(metadata !7495)
  call void @llvm.experimental.noalias.scope.decl(metadata !7498)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dk = load i16, ptr %i.dj, align 8, !alias.scope !7500, !noalias !7501, !noundef !4 ; 5 uses
  %i.dl = icmp eq i16 %i.dk, 0                    ; 2 uses
  br i1 %i.dl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i"
  %i.dm = load i64, ptr %i.cq, align 8, !range !242, !alias.scope !7500, !noalias !7501, !noundef !4
  switch i64 %i.dm, label %bb.af [
    i64 -9223372036854775807, label %bb.ae
    i64 -9223372036854775808, label %switch.lookup337
  ]

bb.ae:                                            ; preds = %switch.lookup337, %bb.af, %bb.ad, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i"
  %.sroa.01.0.i.i3.i = phi i8 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit.i" ], [ 1, %bb.af ], [ 0, %bb.ad ], [ %switch.masked341, %switch.lookup337 ]
  br i1 %i.cy, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit6.i", label %bb.ag

bb.af:                                            ; preds = %bb.ad
  br label %bb.ae

switch.lookup337:                                 ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.do = load i8, ptr %i.dn, align 8, !range !1352, !alias.scope !7500, !noalias !7501, !noundef !4
  %i.dp = shl nuw nsw i8 %i.do, 3
  %switch.shiftamt339 = zext nneg i8 %i.dp to i40
  %switch.downshift340 = lshr i40 17230333184, %switch.shiftamt339
  %switch.masked341 = trunc i40 %switch.downshift340 to i8
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.dq = load i64, ptr %.sroa.0.0.ph122, align 8, !range !242, !alias.scope !7502, !noalias !7503, !noundef !4
  switch i64 %i.dq, label %bb.ah [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit6.i"
    i64 -9223372036854775808, label %switch.lookup342
  ]

bb.ah:                                            ; preds = %bb.ag
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit6.i"

switch.lookup342:                                 ; preds = %bb.ag
  %i.dr = load i8, ptr %i.e, align 8, !range !1352, !alias.scope !7502, !noalias !7503, !noundef !4
  %i.ds = shl nuw nsw i8 %i.dr, 3
  %switch.shiftamt344 = zext nneg i8 %i.ds to i40
  %switch.downshift345 = lshr i40 17230333184, %switch.shiftamt344
  %switch.masked346 = trunc i40 %switch.downshift345 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit6.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit6.i": ; preds = %switch.lookup342, %bb.ah, %bb.ag, %bb.ae
  %.sroa.02.0.i.i4.i = phi i8 [ 0, %bb.ae ], [ 1, %bb.ah ], [ 0, %bb.ag ], [ %switch.masked346, %switch.lookup342 ]
  %i.dt = icmp eq i16 %i.dk, %i.cv
  %i.du = icmp samesign ult i8 %.sroa.01.0.i.i3.i, %.sroa.02.0.i.i4.i
  %i.dv = icmp ult i16 %i.dk, %i.cv
  %i.dw = select i1 %i.dt, i1 %i.du, i1 %i.dv
  %i.dx = xor i1 %i.di, %i.dw
  br i1 %i.dx, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit6.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7504)
  call void @llvm.experimental.noalias.scope.decl(metadata !7507)
  call void @llvm.experimental.noalias.scope.decl(metadata !7509)
  call void @llvm.experimental.noalias.scope.decl(metadata !7512)
  br i1 %i.dl, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load i64, ptr %i.cq, align 8, !range !242, !alias.scope !7514, !noalias !7515, !noundef !4
  switch i64 %i.dy, label %bb.al [
    i64 -9223372036854775807, label %bb.ak
    i64 -9223372036854775808, label %switch.lookup347
  ]

bb.ak:                                            ; preds = %switch.lookup347, %bb.al, %bb.aj, %bb.ai
  %.sroa.01.0.i.i7.i = phi i8 [ 0, %bb.ai ], [ 1, %bb.al ], [ 0, %bb.aj ], [ %switch.masked351, %switch.lookup347 ]
  br i1 %i.cw, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit10.i", label %bb.am

bb.al:                                            ; preds = %bb.aj
  br label %bb.ak

switch.lookup347:                                 ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ea = load i8, ptr %i.dz, align 8, !range !1352, !alias.scope !7514, !noalias !7515, !noundef !4
  %i.eb = shl nuw nsw i8 %i.ea, 3
  %switch.shiftamt349 = zext nneg i8 %i.eb to i40
  %switch.downshift350 = lshr i40 17230333184, %switch.shiftamt349
  %switch.masked351 = trunc i40 %switch.downshift350 to i8
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.ec = load i64, ptr %i.cp, align 8, !range !242, !alias.scope !7516, !noalias !7517, !noundef !4
  switch i64 %i.ec, label %bb.an [
    i64 -9223372036854775807, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit10.i"
    i64 -9223372036854775808, label %switch.lookup352
  ]

bb.an:                                            ; preds = %bb.am
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit10.i"

switch.lookup352:                                 ; preds = %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !range !1352, !alias.scope !7516, !noalias !7517, !noundef !4
  %i.ef = shl nuw nsw i8 %i.ee, 3
  %switch.shiftamt354 = zext nneg i8 %i.ef to i40
  %switch.downshift355 = lshr i40 17230333184, %switch.shiftamt354
  %switch.masked356 = trunc i40 %switch.downshift355 to i8
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit10.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2b3d01aad4209ae5E.exit10.i": ; preds = %switch.lookup352, %bb.an, %bb.am, %bb.ak
  %.sroa.02.0.i.i8.i = phi i8 [ 0, %bb.ak ], [ 1, %bb.an ], [ 0, %bb.am ], [ %switch.masked356, %switch.lookup352 ]
  %i.eg = icmp eq i16 %i.dk, %i.cu
  %i.eh = icmp samesign ult i8 %.sroa.01.0.i.i7.i, %.sroa.02.0.i.i8.i
  %i.ei = icmp ult i16 %i.dk, %i.cu
end_hunk_11
begin_hunk_12_@"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE":bb.a

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h974726a9574f8280E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8113)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8119)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8122, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !8122, !noundef !4
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !8122
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$17h1a2770cc52afbde8E.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$17h1a2770cc52afbde8E.exit" unwind label %bb.c, !inline_history !8123

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %i.b, align 8, !alias.scope !8124 ; 2 uses
  %i.i = icmp eq i64 %.val3.i, 0
  br i1 %i.i, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit3", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %.val4.i = load ptr, ptr %i.j, align 8, !alias.scope !8113, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8127
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit3"

"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$17h1a2770cc52afbde8E.exit": ; preds = %bb.a, %bb.b
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !8124 ; 2 uses
  %i.k = icmp eq i64 %.val.i, 0
  br i1 %i.k, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$17h1a2770cc52afbde8E.exit"
  %i.l = getelementptr i8, ptr %i.a, i64 24
  %.val2.i = load ptr, ptr %i.l, align 8, !alias.scope !8113, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8130
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit3": ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$$GT$17h330cc7ae861921a5E"(ptr noalias noundef align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.f, !inline_history !8133

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit": ; preds = %bb.e, %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$17h1a2770cc52afbde8E.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$alloc..rc..Rc$LT$actix_web..request..HttpRequestInner$GT$$GT$$GT$$GT$17h330cc7ae861921a5E"(ptr noalias noundef align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr64drop_in_place$LT$actix_web..app_service..AppInitServiceState$GT$17h67c5e078ebf810afE.exit" unwind label %bb.g, !inline_history !8133

bb.f:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit3"
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !inline_history !6553
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit3", %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit3" ]
  tail call fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..rc..Weak$LT$actix_web..app_service..AppInitServiceState$C$$RF$alloc..alloc..Global$GT$$GT$17h2e4e340495ebfea6E"(ptr nonnull %i.a) #53
  resume { ptr, i32 } %eh.lpad-body

"_ZN4core3ptr64drop_in_place$LT$actix_web..app_service..AppInitServiceState$GT$17h67c5e078ebf810afE.exit": ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"
  %i.q = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %"_ZN4core3ptr114drop_in_place$LT$alloc..rc..Weak$LT$actix_web..app_service..AppInitServiceState$C$$RF$alloc..alloc..Global$GT$$GT$17h2e4e340495ebfea6E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$actix_web..app_service..AppInitServiceState$GT$17h67c5e078ebf810afE.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %"_ZN4core3ptr114drop_in_place$LT$alloc..rc..Weak$LT$actix_web..app_service..AppInitServiceState$C$$RF$alloc..alloc..Global$GT$$GT$17h2e4e340495ebfea6E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr114drop_in_place$LT$alloc..rc..Weak$LT$actix_web..app_service..AppInitServiceState$C$$RF$alloc..alloc..Global$GT$$GT$17h2e4e340495ebfea6E.exit"

"_ZN4core3ptr114drop_in_place$LT$alloc..rc..Weak$LT$actix_web..app_service..AppInitServiceState$C$$RF$alloc..alloc..Global$GT$$GT$17h2e4e340495ebfea6E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$actix_web..app_service..AppInitServiceState$GT$17h67c5e078ebf810afE.exit", %bb.h, %bb.i
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hb1c3465404ea17e5E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8134)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8140)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8143, !noundef !4 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$GT$17h2e43c91a154b285aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8144)
  %i.e = load i64, ptr %i.c, align 8, !noalias !8147, !noundef !4
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !noalias !8147
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17hf30ed20d8221fca6E.exit.i.i.i.i"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he24a478c1366d808E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17hf30ed20d8221fca6E.exit.i.i.i.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8155)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !8158, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !8158, !noundef !4
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !8158
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %.body unwind label %bb.g

"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17hf30ed20d8221fca6E.exit.i.i.i.i": ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8162)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !8165, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !8165, !noundef !4
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !8165
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$GT$17h2e43c91a154b285aE.exit"

bb.f:                                             ; preds = %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17hf30ed20d8221fca6E.exit.i.i.i.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$GT$17h2e43c91a154b285aE.exit" unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8166
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  tail call fastcc void @"_ZN4core3ptr156drop_in_place$LT$alloc..rc..Weak$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hfcb139ea34c88950E"(ptr nonnull %i.a) #53
  resume { ptr, i32 } %eh.lpad-body

"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$GT$17h2e43c91a154b285aE.exit": ; preds = %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17hf30ed20d8221fca6E.exit.i.i.i.i", %bb.a, %bb.f
  %i.u = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %"_ZN4core3ptr156drop_in_place$LT$alloc..rc..Weak$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hfcb139ea34c88950E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$GT$17h2e43c91a154b285aE.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %"_ZN4core3ptr156drop_in_place$LT$alloc..rc..Weak$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hfcb139ea34c88950E.exit"

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr156drop_in_place$LT$alloc..rc..Weak$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hfcb139ea34c88950E.exit"

"_ZN4core3ptr156drop_in_place$LT$alloc..rc..Weak$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hfcb139ea34c88950E.exit": ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..scope..ScopeFactory$GT$$GT$$GT$17h2e43c91a154b285aE.exit", %bb.i, %bb.j
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he24a478c1366d808E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN4core3ptr388drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$17h1c9fb4899b37e8f7E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.c
  br i1 %i.f, label %"_ZN4core3ptr388drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$17h1c9fb4899b37e8f7E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i6 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [200 x i8], ptr %i.d, i64 %.sroa.0.0.i6
  %i.h = add nuw i64 %.sroa.0.0.i6, 1             ; 4 uses
  invoke fastcc void @"_ZN4core3ptr378drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$GT$17hd68dfd595bbd791cE"(ptr noalias noundef align 8 dereferenceable(200) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph8
  %i.i = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %.body, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.c
  br i1 %i.l, label %.body, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i7 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [200 x i8], ptr %i.d, i64 %.sroa.0.1.i7
  invoke fastcc void @"_ZN4core3ptr378drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$GT$17hd68dfd595bbd791cE"(ptr noalias noundef align 8 dereferenceable(200) %i.m) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph8
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  tail call fastcc void @"_ZN4core3ptr438drop_in_place$LT$alloc..rc..Weak$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$C$$RF$alloc..alloc..Global$GT$$GT$17h9323f0a614be487aE"(ptr nonnull %i.a, i64 %i.c) #53
  resume { ptr, i32 } %i.k

"_ZN4core3ptr388drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$17h1c9fb4899b37e8f7E.exit": ; preds = %bb.b, %bb.a
  %i.o = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.o, label %"_ZN4core3ptr438drop_in_place$LT$alloc..rc..Weak$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$C$$RF$alloc..alloc..Global$GT$$GT$17h9323f0a614be487aE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr388drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$17h1c9fb4899b37e8f7E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %"_ZN4core3ptr438drop_in_place$LT$alloc..rc..Weak$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$C$$RF$alloc..alloc..Global$GT$$GT$17h9323f0a614be487aE.exit"

bb.g:                                             ; preds = %bb.f
  %i.t = mul nuw nsw i64 %i.c, 200
  %i.u = add nuw i64 %i.t, 16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr438drop_in_place$LT$alloc..rc..Weak$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$C$$RF$alloc..alloc..Global$GT$$GT$17h9323f0a614be487aE.exit"

"_ZN4core3ptr438drop_in_place$LT$alloc..rc..Weak$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$C$$RF$alloc..alloc..Global$GT$$GT$17h9323f0a614be487aE.exit": ; preds = %"_ZN4core3ptr388drop_in_place$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$17h1c9fb4899b37e8f7E.exit", %bb.f, %bb.g
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he3daef786ac17d9eE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !236, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !443, !invariant.load !4 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %"_ZN4core3ptr156drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$GT$17h9d460f6fb73884d1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull align 1 %i.i)
          to label %"_ZN4core3ptr156drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$GT$17h9d460f6fb73884d1E.exit" unwind label %bb.c, !inline_history !8167

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr206drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h8ca60aed8031ff3aE"(ptr nonnull %i.a, ptr nonnull %i.c) #53
  resume { ptr, i32 } %i.j

"_ZN4core3ptr156drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$GT$17h9d460f6fb73884d1E.exit": ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %"_ZN4core3ptr206drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h8ca60aed8031ff3aE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr156drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$GT$17h9d460f6fb73884d1E.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %"_ZN4core3ptr206drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h8ca60aed8031ff3aE.exit"

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !357, !invariant.load !4
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.s = add i64 %i.r, 15
  %i.t = add i64 %i.s, %i.q
  %i.u = sub i64 0, %i.r
  %i.v = and i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %"_ZN4core3ptr206drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h8ca60aed8031ff3aE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.r) #46
  br label %"_ZN4core3ptr206drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h8ca60aed8031ff3aE.exit"

"_ZN4core3ptr206drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h8ca60aed8031ff3aE.exit": ; preds = %"_ZN4core3ptr156drop_in_place$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_web..service..ServiceRequest$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$alloc..string..String$GT$17h9d460f6fb73884d1E.exit", %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h34e6c241045b45b7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr367drop_in_place$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h824291702a67985eE"(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit2"

"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr419drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h318c9f3c7d45b87eE.exit": ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h69cf7e325cafa4ceE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr342drop_in_place$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17hc44dd7042e8dafbaE"(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit2"

"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h839469bcd0adf5baE.exit": ; preds = %bb.d, %bb.c, %bb.b
end_hunk_12
begin_hunk_13_@"_ZN84_$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$5check17h246fa170f6f97877E":bb.a
.loopexit.split-lp.loopexit.i.i:                  ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit66.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit71.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gt, %bb.aj ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit66.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit71.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #53, !noalias !9140
  br label %common.resume

bb.k:                                             ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", %.lr.ph.i.i
  %.sroa.057.0103.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %i.bd, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i" ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.057.0103.i.i, i64 40 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.057.0103.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !noalias !9140, !nonnull !4, !noundef !4 ; 5 uses
  %i.bf = getelementptr i8, ptr %.sroa.057.0103.i.i, i64 16
  %.val47.i.i = load i64, ptr %i.bf, align 8, !noalias !9140, !noundef !4 ; 18 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val47.i.i
  %i.bh = icmp samesign eq i64 %.val47.i.i, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.sroa.03.01.i.i.i = phi ptr [ %i.bi, %bb.l ], [ %.val.i.i, %bb.k ] ; 2 uses
  %i.bk = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noalias !9140, !noundef !4 ; 2 uses
  %i.bl = add i8 %i.bk, -32
  %or.cond.i.i.i = icmp ult i8 %i.bl, 95
  %i.bm = icmp eq i8 %i.bk, 9
  %or.cond1.i.i.i = or i1 %i.bm, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9148)
  %.val.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !9148, !noalias !9140, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !9148, !noalias !9140, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9151)
  %i.bn = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.bn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.bp, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i ; 5 uses
  %i.bp = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !9160)
  %i.br = load i8, ptr %i.bq, align 8, !range !206, !alias.scope !9163, !noalias !9164, !noundef !4
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !9165)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !9168, !noalias !9164 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !9168, !noalias !9164, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9169
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !range !3, !alias.scope !9170, !noalias !9164, !noundef !4 ; 3 uses
  %i.bx = icmp ne i64 %.val.i.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.bx)
  %or.cond.i4.i.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i.i.i.i, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i"
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !9170, !noalias !9164, !nonnull !4, !noundef !4
  %i.bz = shl nuw i64 %.val.i.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9171
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i": ; preds = %bb.p, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i"
  %i.ca = icmp eq i64 %i.bp, %.val1.i.i.i
  br i1 %i.ca, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i", %bb.m
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !9148, !noalias !9140 ; 2 uses
  %i.cb = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.cb, label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i"
  %i.cc = mul nuw i64 %.val2.i.i.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9164
  br label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i

.lr.ph.i.i.i.i.lr.ph.i.i.i.i:                     ; preds = %bb.l, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  call void @llvm.experimental.noalias.scope.decl(metadata !9175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9178
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i
  %i.cd = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.backedge ]
  %.promoted54.i.i.i.i26.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.promoted54.i.i.i.i25.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.backedge ] ; 5 uses
  %i.ce = phi i1 [ false, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.be, %.lr.ph.i.i.i.i.i.i.i.i.backedge ]
  %i.cf = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.be467, %.lr.ph.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.lcssa445657.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.lcssa445657.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.backedge ] ; 7 uses
  %i.cg = icmp ult i64 %.val47.i.i, %i.cf
  br i1 %i.cg, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.s
  %i.ch = phi i64 [ %i.cu, %bb.s ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ci = sub nuw i64 %.val47.i.i, %i.ch          ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ch ; 2 uses
  %i.ck = icmp ult i64 %i.ci, 16
  br i1 %i.ck, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val47.i.i, %i.ch
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.r ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !9180, !noalias !9183, !noundef !4
  %i.cn = icmp eq i8 %i.cm, 44
  br i1 %i.cn, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = add nuw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.ci
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cj, i64 noundef %i.ci)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !9140 ; 2 uses

.noexc.i.i:                                       ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = extractvalue { i64, i64 } %i.cp, 0
  %i.cr = extractvalue { i64, i64 } %i.cp, 1
  %i.cs = trunc nuw i64 %i.cq to i1
  br i1 %i.cs, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %.noexc.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ct = add i64 %i.ch, 1
  %i.cu = add i64 %i.ct, %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i ; 8 uses
  %i.cv = add i64 %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i, %i.ch ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i.not.i.i = icmp ult i64 %i.cv, %.val47.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.t, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = icmp ult i64 %.val47.i.i, %i.cu
  br i1 %i.cw, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cv
  %lhsc.i.i = load i8, ptr %i.cx, align 1, !noalias !9140
  %i.cy = icmp eq i8 %lhsc.i.i, 44
  br i1 %i.cy, label %select.unfold.i.i.i.i.i.i.i.i, label %bb.s

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %bb.t, %bb.s, %.noexc.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cz = phi i64 [ %.val47.i.i, %bb.r ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val47.i.i, %.noexc.i.i ], [ %.val47.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %i.cu, %bb.s ] ; 2 uses
  %.promoted54.i.i.i.i25.i.i.i.i = phi i64 [ %.promoted54.i.i.i.i26.i.i.i.i, %bb.r ], [ %.promoted54.i.i.i.i26.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted54.i.i.i.i26.i.i.i.i, %.noexc.i.i ], [ %.promoted54.i.i.i.i26.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %.promoted54.i.i.i.i26.i.i.i.i, %bb.s ] ; 2 uses
  %i.da = phi i1 [ true, %bb.r ], [ true, %.lr.ph.i.i.i.i.i.i.i.i ], [ true, %.noexc.i.i ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.db = phi i64 [ %.val47.i.i, %bb.r ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val47.i.i, %.noexc.i.i ], [ %.val47.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %i.cu, %bb.s ]
  %.lcssa4455.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa445657.i.i.i.i.i.i.i.i, %bb.r ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %.noexc.i.i ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %bb.s ]
  %i.dc = phi i1 [ true, %bb.r ], [ true, %.lr.ph.i.i.i.i.i.i.i.i ], [ true, %.noexc.i.i ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.t ], [ true, %bb.s ]
  %.pn61.i.i.i.i.i.i.i.i = phi i64 [ %.val47.i.i, %bb.r ], [ %.val47.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val47.i.i, %.noexc.i.i ], [ %.val47.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.t ], [ %.val47.i.i, %bb.s ]
  %.sroa.4.1.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %.pn61.i.i.i.i.i.i.i.i, %.lcssa445657.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.lcssa445657.i.i.i.i.i.i.i.i
  %i.dd = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i.i.i.i), !noalias !9204 ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { ptr, i64 } %i.dd, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  %.not.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %i.dg = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.de, i64 noundef %i.df), !noalias !9207 ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0      ; 11 uses
  %i.di = extractvalue { ptr, i64 } %i.dg, 1      ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9214)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 8 uses
  %i.dj = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.dj, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.v
  %i.dk = icmp ult i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.di
  br i1 %i.dk, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

iter.check:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = shl i64 %indvar, 5
  %i.dm = sub i64 %i.di, %i.dl                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  br i1 %min.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check423 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check423, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.di, 31                       ; 3 uses
  %n.vec = sub nuw i64 %i.dm, %i.dn               ; 3 uses
  %i.do = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %vec.phi424 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dv, %vector.body ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !9217, !noalias !9220
  %wide.load425 = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !9217, !noalias !9220
  %i.ds = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.dt = icmp slt <16 x i8> %wide.load425, zeroinitializer
  %i.du = or <16 x i1> %vec.phi, %i.ds            ; 2 uses
  %i.dv = or <16 x i1> %vec.phi424, %i.dt         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !9222

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dv, %i.du
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dx = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not435 = icmp eq i16 %i.dx, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.dn, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !9225

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not435, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.dy = xor i1 %bc.merge.rdx, true
  %i.dz = and i64 %i.di, 3                        ; 2 uses
  %n.vec426 = sub i64 %i.dm, %i.dz                ; 2 uses
  %i.ea = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec426
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.dy, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi428 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr436, %vec.epilog.vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %index427
  %wide.load429 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !9217, !noalias !9220
  %i.ed = icmp slt <4 x i8> %wide.load429, zeroinitializer
  %i.ee = or <4 x i1> %vec.phi428, %i.ed
  %.fr436 = freeze <4 x i1> %i.ee                 ; 2 uses
  %index.next430 = add nuw i64 %index427, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9226

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.eg = bitcast <4 x i1> %.fr436 to i4
  %.not437 = icmp eq i4 %i.eg, 0                  ; 2 uses
  %cmp.n431 = icmp eq i64 %i.dz, 0
  br i1 %cmp.n431, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i1 [ true, %iter.check ], [ %.not435, %vec.epilog.iter.check ], [ %.not437, %vec.epilog.middle.block ]
  br label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ej, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !9217, !noalias !9220, !noundef !4
  %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ei, -1
  %i.ej = select i1 %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %i.ek = add nuw i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, %i.di
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9227

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = load <32 x i8>, ptr %i.el, align 1, !alias.scope !9217, !noalias !9220
  %i.en = icmp slt <32 x i8> %i.em, zeroinitializer
  %i.eo = bitcast <32 x i1> %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ep, label %bb.v, label %.loopexit.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa404 = phi i1 [ %.not437, %vec.epilog.middle.block ], [ %.not435, %middle.block ], [ %i.ej, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  br i1 %.lcssa404, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.w
  %i.eq = phi i64 [ %i.eu, %bb.w ], [ %i.di, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.er = invoke { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.eq)
          to label %.noexc51.i.i unwind label %.loopexit.i.i, !noalias !9140 ; 2 uses

.noexc51.i.i:                                     ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = extractvalue { i64, i64 } %i.er, 0
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.x, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.y, %bb.x
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eu, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc51.i.i
  %i.eu = extractvalue { i64, i64 } %i.er, 1      ; 6 uses
  %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.eu, %i.di
  br i1 %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eu
  %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ev, align 1, !alias.scope !9228, !noalias !9231
  %i.ew = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.ew, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.ex = add nuw i64 %i.eu, 1                    ; 2 uses
  %i.ey = sub nuw i64 %i.di, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ex
  %i.fa = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.eu), !noalias !9220 ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ez, i64 noundef %i.ey), !noalias !9220 ; 2 uses
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 7 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 5 uses
  %i.fg = icmp ult i64 %i.ff, 2
  br i1 %i.fg, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.aa

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.w, %.noexc51.i.i, %bb.ag, %bb.ae
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gk, %bb.ag ], [ 1000, %bb.ae ], [ 1000, %.noexc51.i.i ], [ 1000, %bb.w ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %bb.ag ], [ %i.di, %bb.ae ], [ %i.di, %.noexc51.i.i ], [ %i.di, %bb.w ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.ag ], [ %i.dh, %bb.ae ], [ %i.dh, %.noexc51.i.i ], [ %i.dh, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9233
  invoke void @"_ZN57_$LT$mime..Mime$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h3cad4ad1e6f69c56E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc52.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !9140

.noexc52.i.i:                                     ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = load i64, ptr %i.a, align 8, !range !672, !noalias !9233, !noundef !4 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 2
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, 2 ; 2 uses
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !9238, !noalias !9220, !noundef !4
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i": ; preds = %bb.ad, %bb.ab
  %i.fm = phi i64 [ 0, %bb.ab ], [ 2, %bb.ad ]
  %i.fn = phi i64 [ 2, %bb.ab ], [ %i.ff, %bb.ad ]
  %i.fo = phi ptr [ @56, %bb.ab ], [ @57, %bb.ad ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff, i64 noundef %i.fm, i64 noundef %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fo) #52
          to label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9140

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ab
  %i.fp = load i16, ptr %i.fe, align 1
  %i.fq = icmp ne i16 %i.fp, 15729
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ae, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !9241, !noalias !9220, !noundef !4
  %i.fv = icmp sgt i8 %i.fu, -65
  br i1 %i.fv, label %bb.af, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"

bb.ae:                                            ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fw = load i16, ptr %i.fe, align 1
  %i.fx = icmp ne i16 %i.fw, 15697
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ac, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ga = add i64 %i.ff, -2                       ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, 5
  br i1 %i.gb, label %.loopexit.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.af, %bb.ac
  %i.gc = phi i64 [ %i.ga, %bb.af ], [ 0, %bb.ac ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.ge = invoke i64 @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f32$GT$8from_str17hd393ea1bf0d9426cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gd, i64 noundef %i.gc)
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !9140 ; 2 uses

.noexc55.i.i:                                     ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = trunc i64 %i.ge to i1
  br i1 %i.gf, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc55.i.i
  %.sroa.5163.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.ge, 32
  %.sroa.5163.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.5163.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.gg = bitcast i32 %.sroa.5163.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i to float ; 3 uses
  %i.gh = fcmp oge float %i.gg, 0.000000e+00
  %i.gi = fcmp ole float %i.gg, 1.000000e+00
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.gh, %i.gi
  %i.gj = fmul float %i.gg, 1.000000e+03
  %i.gk = call i16 @llvm.fptoui.sat.i16.f32(float %i.gj)
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9233
  br label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.ag, %.noexc55.i.i, %bb.af, %bb.z, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  br i1 %i.dc, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.i.i.backedge:                  ; preds = %.loopexit.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i"
  %.be = phi i1 [ %i.da, %.loopexit.i.i.i.i.i.i.i.i ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  %.be467 = phi i64 [ %i.db, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.cz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  %.lcssa445657.i.i.i.i.i.i.i.i.be = phi i64 [ %.lcssa4455.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted54.i.i.i.i25.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.noexc52.i.i
  %.sroa.27.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5126.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !9245
  %.sroa.293.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.293.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.30.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !9245
  %.sroa.304.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.304.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  %.sroa.31.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.31.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.32.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !9245
  %i.gl = load <2 x i64>, ptr %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9233
  store i64 %i.fh, ptr %i.b, align 8, !noalias !9245
  store <2 x i64> %i.gl, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store ptr %.sroa.27.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store i8 %.sroa.293.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store i64 %.sroa.304.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store ptr %.sroa.31.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store i16 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  %i.gm = load i64, ptr %i.ba, align 8, !alias.scope !9246, !noalias !9247, !noundef !4 ; 5 uses
  %i.gn = icmp ult i64 %i.gm, 96076792050570582
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i64, ptr %i.c, align 8, !range !357, !alias.scope !9246, !noalias !9247, !noundef !4
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i": ; preds = %bb.ak, %bb.ai
  %i.gq = load ptr, ptr %i.az, align 8, !alias.scope !9246, !noalias !9247, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw [96 x i8], ptr %i.gq, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gr, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !9245
  %i.gs = add nuw nsw i64 %i.gm, 1
  store i64 %i.gs, ptr %i.ba, align 8, !alias.scope !9246, !noalias !9247
  br i1 %i.da, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.backedge

bb.aj:                                            ; preds = %bb.ak
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE"(ptr noalias noundef align 8 dereferenceable(96) %i.b) #53, !noalias !9245
  br label %.body.i.i

bb.ak:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gm, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 96)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" unwind label %bb.aj, !noalias !9247

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9178
  %i.gu = icmp eq ptr %i.bd, %.sroa.3.0.i.i
  br i1 %i.gu, label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i, label %bb.k

_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i: ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9140
  br label %bb.ao

_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i"
  %.sroa.0.0.copyload1.pre.i = load i64, ptr %i.c, align 8, !noalias !9082 ; 2 uses
  %.sroa.6.0.copyload3.pre.i = load i64, ptr %i.az, align 8, !noalias !9082 ; 2 uses
  %.sroa.7.0.copyload5.pre.i = load i64, ptr %i.ba, align 8, !noalias !9082 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9140
  %i.gv = icmp eq i64 %.sroa.0.0.copyload1.pre.i, -9223372036854775808
  br i1 %i.gv, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i
  %.sroa.0.0.copyload1101.i = phi i64 [ %.sroa.4.0.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.0.0.copyload1.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ] ; 6 uses
  %.sroa.6.0.copyload3100.i = phi i64 [ %i.bc, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.6.0.copyload3.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.7.0.copyload599.i = phi i64 [ 0, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.7.0.copyload5.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.6.0.copyload3100.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9082
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.0.copyload599.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9082
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1101.i, ptr %i.h, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9248)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gx = load i8, ptr %i.gw, align 8, !range !206, !alias.scope !9248, !noalias !9251, !noundef !4
  %i.gy = trunc nuw i8 %i.gx to i1                ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.gz, align 8, !alias.scope !9248, !noalias !9251 ; 2 uses
  %.val7.i = load ptr, ptr %i.hb, align 8, !alias.scope !9248, !noalias !9251, !nonnull !4
  %.sroa.0.0.i = select i1 %i.gy, ptr %.val.i, ptr %.val7.i ; 9 uses
  %.val8.i = load i64, ptr %i.ha, align 8, !alias.scope !9248, !noalias !9251
  %.val9.cast.i = ptrtoint ptr %.val.i to i64
  %.sroa.5.0.i = select i1 %i.gy, i64 %.val8.i, i64 %.val9.cast.i ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !9248, !noalias !9251, !noundef !4 ; 10 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i = icmp ult i64 %i.hd, %.sroa.5.0.i
  br i1 %.not.i.i, label %bb.an, label %.split.i.i

.split.i.i:                                       ; preds = %bb.am
  %i.hf = icmp eq i64 %i.hd, %.sroa.5.0.i
  br i1 %i.hf, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %.invoke371

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.hd
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !9253, !noalias !9256, !noundef !4
  %i.hi = icmp sgt i8 %i.hh, -65
  br i1 %i.hi, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %.invoke371

bb.ao:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i
  %.sroa.6.014.i = phi i64 [ undef, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i ], [ %.sroa.6.0.copyload3.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.7.013.i = phi i64 [ 5, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i ], [ %.sroa.7.0.copyload5.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.6.014.i, ptr %i.hj, align 8, !alias.scope !9082
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.013.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !9082
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !9082
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$actix_web..http..header..accept..Accept$C$actix_http..error..ParseError$GT$$GT$17h2a748ea4736026b3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bh

_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit:     ; preds = %bb.an, %.split.i.i, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !9257)
  %i.hk = load i64, ptr %0, align 8, !range !244, !alias.scope !9257, !noalias !9260, !noundef !4
  %i.hl = trunc nuw i64 %i.hk to i1
  br i1 %i.hl, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i", label %bb.ap

bb.ap:                                            ; preds = %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !range !3, !alias.scope !9257, !noalias !9260, !noundef !4 ; 3 uses
  %i.ho = icmp ne i64 %i.hn, -9223372036854775807
  call void @llvm.assume(i1 %i.ho)
  %i.hp = xor i64 %i.hn, -9223372036854775808
  %i.hq = icmp slt i64 %i.hn, 0
  %i.hr = select i1 %i.hq, i64 %i.hp, i64 1
  switch i64 %i.hr, label %bb.aq [
    i64 0, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"

bb.as:                                            ; preds = %bb.ap
  %.sroa.02.0.in.v.i.i = select i1 %i.gy, i64 72, i64 64
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"

"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i": ; preds = %bb.as, %bb.ar, %bb.ap, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit
  %.sink.i.sink.i = phi i64 [ 8, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit ], [ %.sroa.02.0.in.v.i.i, %bb.as ], [ 40, %bb.ar ], [ 24, %bb.ap ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i.sink.i
  %.sroa.0.0.i29 = load i64, ptr %i.hs, align 8, !alias.scope !9257, !noalias !9260 ; 11 uses
  %i.ht = add i64 %i.hd, 1                        ; 12 uses
  %.not.i.i32 = icmp ugt i64 %i.ht, %.sroa.0.0.i29
  br i1 %.not.i.i32, label %.invoke371, label %bb.at

bb.at:                                            ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not5.i.i = icmp ult i64 %i.ht, %.sroa.5.0.i
  br i1 %.not5.i.i, label %bb.aw, label %.split.i.i33

bb.av:                                            ; preds = %bb.aw, %.split.i.i33, %bb.at
  %i.hv = icmp eq i64 %.sroa.0.0.i29, 0
  br i1 %i.hv, label %bb.az, label %bb.ax

.split.i.i33:                                     ; preds = %bb.au
  %i.hw = icmp eq i64 %i.ht, %.sroa.5.0.i
  br i1 %i.hw, label %bb.av, label %.invoke371

bb.aw:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.ht
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !9262, !noalias !9265, !noundef !4
  %i.hz = icmp sgt i8 %i.hy, -65
  br i1 %i.hz, label %bb.av, label %.invoke371

bb.ax:                                            ; preds = %bb.av
  %.not6.i.i = icmp ult i64 %.sroa.0.0.i29, %.sroa.5.0.i
  br i1 %.not6.i.i, label %bb.ay, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.ax
  %i.ia = icmp eq i64 %.sroa.0.0.i29, %.sroa.5.0.i
  br i1 %i.ia, label %bb.az, label %.invoke371

bb.ay:                                            ; preds = %bb.ax
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.0.i29
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !9262, !noalias !9265, !noundef !4
  %i.id = icmp sgt i8 %i.ic, -65
  br i1 %i.id, label %bb.az, label %.invoke371

.invoke371:                                       ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i", %.split.i.i33, %bb.aw, %.split7.i.i, %bb.ay, %.split.i.i, %bb.an
  %i.ie = phi i64 [ 0, %.split.i.i ], [ 0, %bb.an ], [ %i.ht, %bb.ay ], [ %i.ht, %.split7.i.i ], [ %i.ht, %bb.aw ], [ %i.ht, %.split.i.i33 ], [ %i.ht, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i" ]
  %i.if = phi i64 [ %i.hd, %.split.i.i ], [ %i.hd, %bb.an ], [ %.sroa.0.0.i29, %bb.ay ], [ %.sroa.0.0.i29, %.split7.i.i ], [ %.sroa.0.0.i29, %bb.aw ], [ %.sroa.0.0.i29, %.split.i.i33 ], [ %.sroa.0.0.i29, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i" ]
end_hunk_13
begin_hunk_14_@_ZN9actix_web10middleware6logger10FormatText6render17hc0dafe5cd37f7617E:bb.a
  %i.bc = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val17, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit32 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10859)
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !10859 ; 2 uses
  %i.be = icmp eq i64 %.val.i, 0
  br i1 %i.be, label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit45", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i = load ptr, ptr %i.bf, align 8, !alias.scope !10859, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !10859
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit45"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit32: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !10862)
  %.val.i33 = load i64, ptr %i.e, align 8, !alias.scope !10862 ; 2 uses
  %i.bg = icmp eq i64 %.val.i33, 0
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i34 = load ptr, ptr %i.bh, align 8, !alias.scope !10862, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i34, i64 noundef %.val.i33, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !10862
  br label %bb.l

bb.l:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit32, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit"

bb.m:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !10865)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i36 = load i64, ptr %i.bi, align 8, !range !91, !alias.scope !10865, !noundef !4 ; 2 uses
  %switch.i = icmp sgt i64 %.val.i36, 0
  br i1 %switch.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i": ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i37 = load ptr, ptr %i.bj, align 8, !alias.scope !10865, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i37, i64 noundef %.val.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !10865
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit"

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i", %bb.m, %bb.l
  %.sroa.0.1.in61 = phi i1 [ %i.bc, %bb.l ], [ %i.az, %bb.m ], [ %i.az, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit45": ; preds = %bb.i, %bb.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i41", %bb.n
  %.pn59 = phi { ptr, i32 } [ %i.bk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i41" ], [ %i.bk, %bb.n ], [ %i.bd, %bb.j ], [ %i.bd, %bb.i ]
  resume { ptr, i32 } %.pn59

bb.n:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10868)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i39 = load i64, ptr %i.bl, align 8, !range !91, !alias.scope !10868, !noundef !4 ; 2 uses
  %switch.i40 = icmp sgt i64 %.val.i39, 0
  br i1 %switch.i40, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i41", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit45"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.sink.split.i41": ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i43 = load ptr, ptr %i.bm, align 8, !alias.scope !10868, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i43, i64 noundef %.val.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !10868
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17hbd4caea6f0143066E.exit45"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN9actix_web10middleware6logger6Format3new17hf16f39c28c460888E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 19 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [112 x i8], align 8               ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 16 uses
  %i.p = alloca [56 x i8], align 8                ; 7 uses
  %i.q = alloca [56 x i8], align 8                ; 10 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store i64 %2, ptr %i.t, align 8
  %i.u = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.v = icmp ult i64 %i.u, 6
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp samesign ugt i64 %i.u, 4
  br i1 %i.w, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_ZN10regex_lite6string5Regex3new17h9f9b83a9a8d66cd6E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @635, i64 noundef 52)
  call void @llvm.experimental.noalias.scope.decl(metadata !10871)
  call void @llvm.experimental.noalias.scope.decl(metadata !10874)
  %i.x = load ptr, ptr %i.p, align 8, !alias.scope !10874, !noalias !10876, !noundef !4
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2dd556efbb749f99E.exit", !prof !223

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10878
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !10874, !noalias !10876, !nonnull !4, !align !235, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10874, !noalias !10876, !noundef !4
  store ptr %i.aa, ptr %i.d, align 8, !noalias !10878
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !noalias !10878
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @302, i64 noundef 43, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @301, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @636) #52, !noalias !10879
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2dd556efbb749f99E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !alias.scope !10879, !noalias !10880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  store i64 0, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.s, align 8, !nonnull !4, !align !235, !noundef !4 ; 2 uses
  %i.ah = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ai = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.ak = invoke fastcc { ptr, ptr } @"_ZN10regex_lite4pool17Pool$LT$T$C$F$GT$3get17h53a5681a76c63517E"(ptr noundef nonnull align 8 %i.aj)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10881
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 5, ptr %i.al, align 8, !noalias !10881
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @545, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !10881
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 29, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !10881
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @634, ptr %i.am, align 8, !noalias !10881
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !10881
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.r, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !10881
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !10881
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !10881
  store i64 0, ptr %i.c, align 8, !noalias !10881
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @545, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !10881
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 29, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !10881
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.an, align 8, !noalias !10881
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @629, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !10881
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 110, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !10881
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.ao, align 8, !noalias !10881
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 501, ptr %i.ap, align 4, !noalias !10881
  call void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h07563ec464464c22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.c), !noalias !10881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.b

.body181:                                         ; preds = %bb.aj, %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit", %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit" ], [ %i.be, %bb.k ], [ %i.cy, %bb.aj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10888)
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !10888, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load i64, ptr %i.af, align 8, !alias.scope !10888, !noundef !4 ; 4 uses
  %i.aq = icmp eq i64 %.val1.i, 0
  br i1 %i.aq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit.i", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ar = icmp eq i64 %i.at, %.val1.i
  br i1 %i.ar, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %.body181, %bb.e
  %.sroa.0.0.i.i.i1250 = phi i64 [ %i.at, %bb.e ], [ 0, %.body181 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i1250
  %i.at = add nuw i64 %.sroa.0.0.i.i.i1250, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %i.as)
          to label %bb.e unwind label %bb.g, !noalias !10888

bb.f:                                             ; preds = %.lr.ph1253
  %i.au = add i64 %.sroa.0.1.i.i.i1251, 1         ; 2 uses
  %i.av = icmp eq i64 %i.au, %.val1.i
  br i1 %i.av, label %.body.i, label %.lr.ph1253

bb.g:                                             ; preds = %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ax = icmp eq i64 %i.at, %.val1.i
  br i1 %i.ax, label %.body.i, label %.lr.ph1253

.lr.ph1253:                                       ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i1251 = phi i64 [ %i.au, %bb.f ], [ %i.at, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i1251
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %i.ay) #53
          to label %bb.f unwind label %bb.h, !noalias !10888

bb.h:                                             ; preds = %.lr.ph1253
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !10888
  unreachable

.body.i:                                          ; preds = %bb.f, %bb.g
  %.val4.i = load i64, ptr %i.o, align 8, !alias.scope !10888 ; 2 uses
  %i.ba = icmp eq i64 %.val4.i, 0
  br i1 %i.ba, label %.body, label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.bb = mul nuw i64 %.val4.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !10888
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit.i": ; preds = %bb.e, %.body181
  %.val2.i = load i64, ptr %i.o, align 8, !alias.scope !10888 ; 2 uses
  %i.bc = icmp eq i64 %.val2.i, 0
  br i1 %i.bc, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit.i"
  %i.bd = mul nuw i64 %.val2.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !10888
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E.exit"

bb.k:                                             ; preds = %bb.ae, %bb.v, %bb.af, %bb.l, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2dd556efbb749f99E.exit"
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body181

bb.l:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2dd556efbb749f99E.exit"
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bg = extractvalue { ptr, ptr } %i.ak, 0
  %i.bh = extractvalue { ptr, ptr } %i.ak, 1
  invoke void @_ZN10regex_lite6pikevm6PikeVM13captures_iter17he2415b979786ff3bE(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.bf, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef %i.ah)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 2 uses
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  store i64 %i.ah, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %.sroa.7338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %.sroa.8339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit299", %bb.m
  %i.bp = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.ku, %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit299" ] ; 3 uses
  %i.bq = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.kv, %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit299" ] ; 2 uses
  %i.br = phi i64 [ 0, %bb.m ], [ %i.kw, %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit299" ] ; 7 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.m ], [ %i.di, %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit299" ] ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN94_$LT$regex_lite..pikevm..CapturesMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h237734c97b17fd19E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.n)
          to label %.noexc172 unwind label %bb.q

.noexc172:                                        ; preds = %bb.n
  %i.bs = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !10891, !noalias !10894, !nonnull !4, !align !235, !noundef !4
  %i.bt = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !10891, !noalias !10894, !noundef !4
  %i.bu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10891, !noalias !10894, !nonnull !4, !align !236, !noundef !4 ; 2 uses
  %i.bv = load i64, ptr %i.b, align 8, !range !91, !noalias !10896, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not.i, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.noexc172
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !10894, !nonnull !4, !noundef !4
  %i.bx = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !10894
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit": ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i", %bb.an, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %eh.lpad-body203, %bb.an ], [ %eh.lpad-body203, %"_ZN4core3ptr57drop_in_place$LT$regex_lite..string..CaptureLocations$GT$17hc229b9be4f62ffefE.exit.i" ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$regex_lite..pikevm..FindMatches$GT$17h27222e1132f3d4a6E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.n)
          to label %.body181 unwind label %bb.fu

bb.q:                                             ; preds = %bb.eo, %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$regex_lite..string..Captures$GT$17h7cc277b393592f8fE.exit"

bb.r:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %i.bu, align 8, !noalias !10894, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx337, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bv, ptr %i.m, align 8
  store ptr %i.bs, ptr %.sroa.7338.0..sroa_idx, align 8
  store i64 %i.bt, ptr %.sroa.8339.0..sroa_idx, align 8
  store ptr %i.ca, ptr %.sroa.9.0..sroa_idx, align 8
  %.val170 = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.val171 = load i64, ptr %i.bi, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %.val171, 0
  br i1 %.not, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val170) ]
  %i.cb = load i64, ptr %.val170, align 8, !noalias !10897, !noundef !4 ; 2 uses
  %.not.i174 = icmp eq i64 %i.cb, 0
  br i1 %.not.i174, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = add i64 %i.cb, -1                       ; 12 uses
  %.not1.i.not = icmp eq i64 %.val171, 1
  br i1 %.not1.i.not, label %.invoke, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.val170, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !10897, !noundef !4 ; 2 uses
  %.not28.i = icmp eq i64 %i.ce, 0
  br i1 %.not28.i, label %.invoke, label %bb.ao

bb.v:                                             ; preds = %.noexc172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$regex_lite..pikevm..FindMatches$GT$17h27222e1132f3d4a6E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.n)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_lite..string..CaptureMatches$GT$17hffb14689de18352eE.exit176" unwind label %bb.k

"_ZN4core3ptr55drop_in_place$LT$regex_lite..string..CaptureMatches$GT$17hffb14689de18352eE.exit176": ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cf = load i64, ptr %i.t, align 8, !noundef !4 ; 5 uses
  %.not130 = icmp eq i64 %.sroa.0.0, %i.cf
  br i1 %.not130, label %bb.z, label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_lite..string..CaptureMatches$GT$17hffb14689de18352eE.exit176"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cg = load ptr, ptr %i.s, align 8, !nonnull !4, !align !235, !noundef !4 ; 3 uses
  %i.ch = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.ch, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i177 = icmp ult i64 %.sroa.0.0, %i.cf
  br i1 %.not.i177, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.0.0
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !10900, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.ad, label %bb.af

bb.z:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_lite..string..CaptureMatches$GT$17hffb14689de18352eE.exit176", %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !10903)
  call void @llvm.experimental.noalias.scope.decl(metadata !10906)
  call void @llvm.experimental.noalias.scope.decl(metadata !10909)
  %i.cl = load ptr, ptr %i.q, align 8, !alias.scope !10912, !nonnull !4, !noundef !4
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !10912
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit"

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc59de82033cb534eE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %"_ZN4core3ptr46drop_in_place$LT$regex_lite..string..Regex$GT$17h884ae02708a3a08eE.exit" unwind label %bb.ab
end_hunk_14
begin_hunk_15_@_ZN9actix_web4http6header19content_disposition19split_once_and_trim17h4d3c0ab9e27ca417E:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !11578, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !11578, !noundef !4
  %i.ca = lshr i8 %i.bz, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.br, %bb.n ], [ %i.bv, %bb.o ], [ %i.bp, %bb.m ], [ %i.ca, %bb.p ]
  %i.cb = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.cc = icmp eq ptr %1, %i.bk
  br i1 %i.cc, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit", label %.lr.ph.i.i.i

bb.r:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.l, %bb.k
  %i.cd = ptrtoint ptr %i.aa to i64
  %i.ce = ptrtoint ptr %1 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit": ; preds = %bb.q, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, %bb.r
  %.sink.i.i8 = phi i64 [ %.sink.i.i7, %bb.r ], [ %.sink.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink.i.i7, %bb.q ]
  %.sink3.i.i6 = phi ptr [ %.sink3.i.i5, %bb.r ], [ %.sink3.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink3.i.i5, %bb.q ]
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.r ], [ 0, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ 0, %bb.q ]
  %i.cg = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hb5795610c88f9b77E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sink3.i.i6, i64 noundef %.sink.i.i8) ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  store ptr %1, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ch, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ci, ptr %i.cl, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN9actix_web4http6header4date4Date3now17h4bc8955600ca4f06E() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E()
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9actix_web4http6header5range13ByteRangeSpec20to_satisfiable_range17h381b9c40f9121484E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !672, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 8 uses
  switch i64 %i.b, label %default.unreachable9 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.k, %bb.j
  %.sink12 = phi i64 [ %i.o, %bb.j ], [ 0, %bb.k ], [ %i.d, %bb.h ], [ %i.d, %bb.g ]
  %.sink10 = phi i64 [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.m, %bb.h ], [ %.sroa.0.0.i, %bb.g ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink12, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink10, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %bb.f, %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

default.unreachable9:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.d, %2
  %i.j = icmp ule i64 %i.d, %i.h
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.d, %2
  br i1 %i.k, label %bb.h, label %bb.c

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = add i64 %2, -1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.l, i64 %i.h)
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.m = add i64 %2, -1
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %i.d, %2
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = sub nuw i64 %2, %i.d
  %i.p = add i64 %2, -1
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.q = add i64 %2, -1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range11bytes_multi17h4285cd81cceb357dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !11579, !noalias !11582 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11579, !noalias !11582, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11579, !noalias !11582 ; 7 uses
  %i.a = icmp ult i64 %.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.a)
  %i.b = mul nuw i64 %.sroa.5.0.copyload.i, 24    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.c, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11584
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #46, !noalias !11584 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.b
  %i.f = add nuw nsw i64 %.sroa.5.0.copyload.i, 1152921504606846975
  %i.g = and i64 %i.f, 1152921504606846975        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 3
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 2305843009213693948
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.b, %bb.b ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #52
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !noalias !11604

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.j = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.k = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = load <2 x i64>, ptr %i.k, align 8, !noalias !11605
  store i64 0, ptr %i.m, align 8, !noalias !11621
  store <2 x i64> %i.n, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11621
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load <2 x i64>, ptr %i.l, align 8, !noalias !11605
  store i64 0, ptr %i.q, align 8, !noalias !11621
  store <2 x i64> %i.r, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !11621
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load <2 x i64>, ptr %i.o, align 8, !noalias !11605
  store i64 0, ptr %i.u, align 8, !noalias !11621
  store <2 x i64> %i.v, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !11621
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load <2 x i64>, ptr %i.s, align 8, !noalias !11605
  store i64 0, ptr %i.y, align 8, !noalias !11621
  store <2 x i64> %i.z, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !11621
  %i.aa = add nuw nsw i64 %i.j, 4                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init18 = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init18, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !11605
  store i64 0, ptr %i.ae, align 8, !noalias !11621
  store <2 x i64> %i.af, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !11621
  %i.ag = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !11628

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i16 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.5.0.copyload.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.0.i.i.i.i.i.i15 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ah, label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ai = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11629
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit

"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ak, label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11632
  br label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i"

_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i.i16, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i15, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val6.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range5bytes17hcbc2b81a8de86ea0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #46 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !223

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx6, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN9actix_web4http6header6Writer3new17h5f6fa997e0373a06E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6Writer4take17h5aefe2556e0aae5eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call fastcc void @_ZN5bytes9bytes_mut8BytesMut6freeze17h3d19f315c4911139E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept10preference17hdb9302611cbcb7c5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not1920 = icmp eq i64 %i.g, 0
  br i1 %.not1920, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.06.022 = phi i16 [ 0, %.lr.ph ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  %.sroa.07.021 = phi ptr [ %i.e, %.lr.ph ], [ %i.n, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = icmp ugt i16 %i.p, %.sroa.06.022
  br i1 %i.q, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %.sroa.01.0.copyload.pre = load i64, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0.copyload.pre, 2
  br i1 %.not, label %._crit_edge.thread, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit"

bb.c:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", %bb.b
  %.sroa.06.1 = phi i16 [ %i.p, %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit" ], [ %.sroa.06.022, %bb.b ]
  %.not19 = icmp eq ptr %i.n, %i.h
  br i1 %.not19, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN49_$LT$mime..Mime$u20$as$u20$core..clone..Clone$GT$5clone17he158e8ae0cbadfb2E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.07.021)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E"(ptr noalias noundef align 8 dereferenceable(88) %i.a) #53
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !672, !noundef !4
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.i, align 8, !range !206, !noundef !4
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.j, align 8     ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11635
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.i, %bb.h, %bb.g
  %.val.i.i = load i64, ptr %i.l, align 8, !range !3, !noundef !4 ; 3 uses
  %i.x = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.x)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.j

end_hunk_15
begin_hunk_16_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17he30a5e2ac34175ceE":bb.a
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.._crit_edge73_crit_edge, %._crit_edge73.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.de, %._crit_edge73.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.._crit_edge73_crit_edge ] ; 2 uses
  %i.bc = phi i64 [ %.pre84, %._crit_edge73.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.._crit_edge73_crit_edge ]
  %i.bd = sub i64 %.sroa.02.0.i.i, %i.bc
  store i64 %i.as, ptr %0, align 8, !alias.scope !15342, !noalias !15345
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !15357, !noalias !15359 ; 3 uses
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !15357, !noalias !15359
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !15361, !noalias !15363
  %i.bf = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge73
  %i.bg = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5 ; 2 uses
  %i.bh = add i64 %i.bg, 32
  %i.bi = add i64 %i.bg, 47                       ; 2 uses
  %i.bj = icmp uge i64 %i.bi, %i.bh
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = and i64 %i.bi, -32                      ; 3 uses
  %i.bl = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bm = add i64 %i.bl, %i.bk                    ; 4 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  %i.bo = icmp ult i64 %i.bm, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit", label %bb.l

bb.l:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bq = sub nsw i64 0, %i.bk
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 16) #46, !noalias !15365
  br label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit"

"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit": ; preds = %._crit_edge73, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15331
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h3b973d73feea6f67E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.069, %.preheader ], [ %i.ba, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.071, %.preheader ], [ %i.bb, %.noexc3 ] ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.072, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.bs = add i16 %.sroa.13.1.lcssa, -1
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = and i16 %i.bs, %.sroa.13.1.lcssa
  %i.bw = add i64 %.sroa.5.1.lcssa, %i.bu         ; 2 uses
  %i.bx = add i64 %.sroa.9.070, -1                ; 2 uses
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -32
  %i.cb = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44ca5d1f3f74f1faE(i64 %.val.i.i10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ca)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" unwind label %bb.k ; 2 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit": ; preds = %._crit_edge
  %.sroa.0.04.i.i = and i64 %i.cb, %i.am          ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !15370
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !15373

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit", %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ]
  %i.cf = phi i64 [ %i.cg, %.lr.ph.i.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ]
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.0.07.i.i
  %.sroa.0.0.i.i12 = and i64 %i.ch, %i.am         ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !15370
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !15374

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.ce, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ], [ %i.ck, %.lr.ph.i.i ]
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cm
  %i.co = and i64 %i.cn, %i.am                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !4
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.m, label %bb.n, !prof !223

bb.m:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.cs = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %i.cu = icmp ne i16 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ct, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.cw, %bb.m ], [ %i.co, %._crit_edge.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i.i
  %i.cy = lshr i64 %i.cb, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.db = and i64 %i.da, %i.am
  store i8 %i.cz, ptr %i.cx, align 1
  %i.dc = getelementptr i8, ptr %i.ap, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  store i8 %i.cz, ptr %i.dd, align 1
  %i.de = load ptr, ptr %0, align 8, !alias.scope !15340, !noalias !15341, !nonnull !4, !noundef !4 ; 3 uses
  %i.df = shl i64 %i.bw, 5
  %i.dg = sub nuw nsw i64 -32, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.dg
  %i.di = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.dj = sub nuw nsw i64 -32, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.ap, i64 %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dk, ptr noundef nonnull align 1 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.dl = icmp eq i64 %i.bx, 0
  br i1 %i.dl, label %._crit_edge73.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.es, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15375)
  %.val10.i = load ptr, ptr %0, align 8, !alias.scope !15375 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i13

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15375
  br label %bb.aa

.lr.ph.i.i13:                                     ; preds = %bb.o
  %i.dm = lshr i64 %i.k, 4
  %i.dn = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dn, 0
  %i.do = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dm, %i.do ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dp = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.i.i13.new

.lr.ph.i.i13.new:                                 ; preds = %.lr.ph.i.i13
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i14.unr-lcssa:                      ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i14.unr-lcssa, %.lr.ph.i.i13
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i13 ], [ %i.dz, %._crit_edge.i.i14.unr-lcssa ]
  %lcmp.mod129 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dq, align 16, !noalias !15375
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dr = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !noalias !15375
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %._crit_edge.i.i14.unr-lcssa, %.epil.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.30.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dv = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr nonnull align 1 %.val10.i, i64 %.30.i, i1 false), !noalias !15375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15375
  store ptr @_ZN4core3ops8function6FnOnce9call_once17ha0f51f2958e0a0f6E, ptr %i.dt, align 8, !noalias !15375
  store i64 32, ptr %i.du, align 8, !noalias !15375
  store ptr %0, ptr %i.a, align 8, !noalias !15375
  %.val.i.i.i = load i64, ptr %2, align 8
  br label %.lr.ph.i

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i13.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %i.dz, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %niter.next.1, %bb.p ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dw, align 16, !noalias !15375
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dx = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dy = or <2 x i64> %i.dx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dy, ptr %i.dw, align 16, !noalias !15375
  %i.dz = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.eb, align 16, !noalias !15375
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ec = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ed = or <2 x i64> %i.ec, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ed, ptr %i.eb, align 16, !noalias !15375
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i14.unr-lcssa, label %bb.p

.lr.ph.i:                                         ; preds = %bb.y, %._crit_edge.i.i14
  %.sroa.0.17.i = phi i64 [ %.sroa.0.1.i, %bb.y ], [ 1, %._crit_edge.i.i14 ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ %.sroa.0.17.i, %bb.y ], [ 0, %._crit_edge.i.i14 ] ; 8 uses
  %i.ee = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.0.06.i
  %i.eg = load i8, ptr %i.ef, align 1, !noundef !4
  %.not.i15 = icmp eq i8 %i.eg, -128
  br i1 %.not.i15, label %bb.q, label %bb.y

bb.q:                                             ; preds = %.lr.ph.i
  %i.eh = shl i64 %.sroa.0.06.i, 5
  %i.ei = sub nuw nsw i64 -32, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %i.ei ; 6 uses
  %i.ek = sub nsw i64 0, %.sroa.0.06.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.x, %bb.q
  %i.eo = phi ptr [ %.pre.i32, %bb.x ], [ %i.ee, %bb.q ]
  %i.ep = getelementptr inbounds [32 x i8], ptr %i.eo, i64 %i.ek
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %i.er = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44ca5d1f3f74f1faE(i64 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h448fdda41ee7198dE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
          to label %common.resume unwind label %bb.z

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i": ; preds = %bb.r
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4 ; 7 uses
  %.val9.i = load i64, ptr %i.h, align 8, !alias.scope !15375, !noundef !4 ; 6 uses
  %.sroa.0.04.i.i18 = and i64 %.val9.i, %i.er     ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.04.i.i18
  %.sroa.0.0.copyload.i35.i.i19 = load <16 x i8>, ptr %i.et, align 1, !noalias !15378
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i19, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.not.i.not6.i.i20 = icmp eq i16 %i.ev, 0
  br i1 %.not.not.i.not6.i.i20, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !15373

.lr.ph.i13.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i", %.lr.ph.i13.i
  %.sroa.0.07.i.i34 = phi i64 [ %.sroa.0.0.i.i35, %.lr.ph.i13.i ], [ %.sroa.0.04.i.i18, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i13.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.07.i.i34
  %.sroa.0.0.i.i35 = and i64 %i.ey, %.val9.i      ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i35
  %.sroa.0.0.copyload.i3.i.i36 = load <16 x i8>, ptr %i.ez, align 1, !noalias !15378
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i36, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.not.i.not.i.i37 = icmp eq i16 %i.fb, 0
  br i1 %.not.not.i.not.i.i37, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !15374

._crit_edge.i12.i:                                ; preds = %.lr.ph.i13.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i"
  %.sroa.0.0.lcssa.i.i21 = phi i64 [ %.sroa.0.04.i.i18, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ], [ %.sroa.0.0.i.i35, %.lr.ph.i13.i ]
  %.lcssa.i.i22 = phi i16 [ %i.ev, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ], [ %i.fb, %.lr.ph.i13.i ]
  %i.fc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i22, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = add i64 %.sroa.0.0.lcssa.i.i21, %i.fd
  %i.ff = and i64 %i.fe, %.val9.i                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !4
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.t, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !223

bb.t:                                             ; preds = %._crit_edge.i12.i
  %.val2.i.i.i33 = load <16 x i8>, ptr %.val.i17, align 16
  %i.fj = icmp slt <16 x i8> %.val2.i.i.i33, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %i.fl = icmp ne i16 %i.fk, 0
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fk, i1 true)
  %i.fn = zext nneg i16 %i.fm to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.t, %._crit_edge.i12.i
  %.sroa.0.0.i5.i.i23 = phi i64 [ %i.fn, %bb.t ], [ %i.ff, %._crit_edge.i12.i ] ; 4 uses
  %i.fo = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i18
  %i.fp = sub i64 %.sroa.0.0.i5.i.i23, %.sroa.0.04.i.i18
  %i.fq = xor i64 %i.fp, %i.fo
  %.unshifted.i = and i64 %i.fq, %.val9.i
  %i.fr = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fr, label %bb.v, label %bb.u, !prof !90

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fs = shl i64 %.sroa.0.0.i5.i.i23, 5
  %i.ft = sub nuw nsw i64 -32, %i.fs
  %i.fu = getelementptr inbounds i8, ptr %.val.i17, i64 %i.ft ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i23 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !4
  %i.fx = lshr i64 %i.er, 57
  %i.fy = trunc nuw nsw i64 %i.fx to i8           ; 2 uses
  %i.fz = add i64 %.sroa.0.0.i5.i.i23, -16
  %i.ga = and i64 %i.fz, %.val9.i
  store i8 %i.fy, ptr %i.fv, align 1
  %i.gb = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.ga
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  store i8 %i.fy, ptr %i.gd, align 1
  %i.ge = icmp eq i8 %i.fw, -1
  br i1 %i.ge, label %bb.w, label %bb.x

bb.v:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.gf = lshr i64 %i.er, 57
  %i.gg = trunc nuw nsw i64 %i.gf to i8           ; 2 uses
  %i.gh = add i64 %.sroa.0.06.i, -16
  %i.gi = and i64 %.val9.i, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i
  store i8 %i.gg, ptr %i.gj, align 1
  %i.gk = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.gi
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  store i8 %i.gg, ptr %i.gm, align 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gn = add i64 %.sroa.0.06.i, -16
  %i.go = load i64, ptr %i.h, align 8, !alias.scope !15375, !noundef !4
  %i.gp = and i64 %i.go, %i.gn
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gr, align 1
  %i.gs = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gp
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store i8 -1, ptr %i.gu, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fu, ptr noundef nonnull align 1 dereferenceable(32) %i.ej, i64 32, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15384)
  %.sroa.0.0.copyload.i.i.i.i.i24 = load i64, ptr %i.ej, align 1, !alias.scope !15381, !noalias !15384
  %.sroa.02.0.copyload.i.i.i.i.i25 = load i64, ptr %i.fu, align 1, !alias.scope !15384, !noalias !15381
  store i64 %.sroa.02.0.copyload.i.i.i.i.i25, ptr %i.ej, align 1, !alias.scope !15381, !noalias !15384
  store i64 %.sroa.0.0.copyload.i.i.i.i.i24, ptr %i.fu, align 1, !alias.scope !15384, !noalias !15381
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15388)
  %.sroa.0.0.copyload.i.i.i.1.i.i26 = load i64, ptr %i.el, align 1, !alias.scope !15386, !noalias !15388
  %.sroa.02.0.copyload.i.i.i.1.i.i27 = load i64, ptr %i.gv, align 1, !alias.scope !15388, !noalias !15386
  store i64 %.sroa.02.0.copyload.i.i.i.1.i.i27, ptr %i.el, align 1, !alias.scope !15386, !noalias !15388
  store i64 %.sroa.0.0.copyload.i.i.i.1.i.i26, ptr %i.gv, align 1, !alias.scope !15388, !noalias !15386
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15392)
  %.sroa.0.0.copyload.i.i.i.2.i.i28 = load i64, ptr %i.em, align 1, !alias.scope !15390, !noalias !15392
  %.sroa.02.0.copyload.i.i.i.2.i.i29 = load i64, ptr %i.gw, align 1, !alias.scope !15392, !noalias !15390
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i29, ptr %i.em, align 1, !alias.scope !15390, !noalias !15392
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i28, ptr %i.gw, align 1, !alias.scope !15392, !noalias !15390
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15396)
  %.sroa.0.0.copyload.i.i.i.3.i.i30 = load i64, ptr %i.en, align 1, !alias.scope !15394, !noalias !15396
  %.sroa.02.0.copyload.i.i.i.3.i.i31 = load i64, ptr %i.gx, align 1, !alias.scope !15396, !noalias !15394
  store i64 %.sroa.02.0.copyload.i.i.i.3.i.i31, ptr %i.en, align 1, !alias.scope !15394, !noalias !15396
  store i64 %.sroa.0.0.copyload.i.i.i.3.i.i30, ptr %i.gx, align 1, !alias.scope !15396, !noalias !15394
  %.pre.i32 = load ptr, ptr %0, align 8, !alias.scope !15398, !noalias !15401
  br label %bb.r

bb.y:                                             ; preds = %bb.w, %bb.v, %.lr.ph.i
  %i.gy = icmp ult i64 %.sroa.0.17.i, %i.k        ; 2 uses
  %i.gz = zext i1 %i.gy to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gz
  br i1 %i.gy, label %.lr.ph.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

bb.z:                                             ; preds = %bb.s
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.y
  %.pre13.i = load i64, ptr %i.h, align 8, !alias.scope !15375
  %.pre13.i.fr = freeze i64 %.pre13.i             ; 3 uses
  %.pre14.i = add i64 %.pre13.i.fr, 1
  %i.hb = lshr i64 %.pre14.i, 3
  %i.hc = mul nuw i64 %i.hb, 7
  %i.hd = icmp ult i64 %.pre13.i.fr, 8
  %spec.select = select i1 %i.hd, i64 %.pre13.i.fr, i64 %i.hc
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !15375
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.he = phi i64 [ %i.e, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.pre, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ]
  %i.hf = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %spec.select, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hh = sub i64 %i.hf, %i.he
  store i64 %i.hh, ptr %i.hg, align 8, !alias.scope !15375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15375
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h3b973d73feea6f67E.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17h3b973d73feea6f67E.exit.i: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.thread, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit", %bb.aa
  %.sroa.4.0.i = phi i64 [ undef, %bb.aa ], [ %.sroa.12.052, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.thread ], [ undef, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit" ]
end_hunk_16
