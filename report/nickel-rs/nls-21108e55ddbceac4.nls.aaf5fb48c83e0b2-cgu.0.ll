Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33050
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17h4938da9a66628a24E:bb.a
  %.sroa.088.5 = phi i1 [ false, %bb.bt ], [ true, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit" ] ; 2 uses
  %.sroa.072.7 = phi i8 [ 1, %bb.bt ], [ %.sroa.072.13, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit" ] ; 4 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.bt ], [ %.sroa.0.6, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit" ] ; 3 uses
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bn)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.ct) #77
          to label %.body199 unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.ct)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211" unwind label %bb.p

bb.bx:                                            ; preds = %bb.bv
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.by:                                            ; preds = %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.bl) #77
          to label %.loopexit.split-lp unwind label %bb.bl

bb.bz:                                            ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.de, %.noexc ]
  %i.gp = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.dd, %.noexc ] ; 2 uses
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.cy, align 8, !noalias !35490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store i64 %i.gp, ptr %.sroa.4389.0..sroa_idx, align 8
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5390.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !44 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gu, 168
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx ; 4 uses
  %i.gw = icmp eq i64 %i.gu, 0                    ; 3 uses
  br i1 %i.gw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bz
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  br label %bb.cb

.body217:                                         ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", %.thread425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp609.loopexit.split-lp, %bb.ja, %bb.jb, %bb.ij, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299", %.body.i.i.i.i, %bb.jc, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330", %.thread412
  %.sroa.072.8 = phi i8 [ 1, %bb.jc ], [ 1, %bb.ja ], [ %.sroa.072.9.ph.ph, %.loopexit.split-lp609.loopexit.split-lp ], [ 0, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330" ], [ %.sroa.072.10406, %.thread412 ], [ 0, %.thread425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ 1, %.body.i.i.i.i ], [ 1, %bb.ij ], [ 1, %bb.jb ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ] ; 3 uses
  %.pn154.pn = phi { ptr, i32 } [ %i.vf, %bb.jc ], [ %lpad.thr_comm562, %bb.ja ], [ %lpad.loopexit.split-lp625, %.loopexit.split-lp609.loopexit.split-lp ], [ %.pn138, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ %.pn152, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330" ], [ %.pn140407, %.thread412 ], [ %lpad.loopexit.split-lp1520, %.thread425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.ja, %.body.i.i.i.i ], [ %.pn152, %bb.ij ], [ %lpad.thr_comm562, %bb.jb ], [ %lpad.loopexit.split-lp1622, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ] ; 3 uses
  %.val182 = load ptr, ptr %i.bh, align 8         ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val183 = load i64, ptr %i.hb, align 8, !noundef !44 ; 4 uses
  %i.hc = icmp eq i64 %.val183, 0
  br i1 %i.hc, label %.body, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i955

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i955: ; preds = %.body217
  %i.hd = mul i64 %.val183, 20
  %i.he = icmp slt i64 %.val183, 922337203685477580
  call void @llvm.assume(i1 %i.he)
  %i.hf = and i64 %i.hd, -16                      ; 2 uses
  %i.hg = add i64 %i.hf, 32                       ; 2 uses
  %i.hh = add nsw i64 %.val183, 17
  %i.hi = add i64 %i.hh, %i.hg                    ; 4 uses
  %i.hj = icmp uge i64 %i.hi, %i.hg
  %i.hk = icmp ult i64 %i.hi, 9223372036854775793
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.assume(i1 %i.hk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val182) ]
  %i.hl = icmp eq i64 %i.hi, 0
  br i1 %i.hl, label %.body, label %bb.ca

bb.ca:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i955
  %i.hm = sub i64 -32, %i.hf
  %i.hn = getelementptr inbounds i8, ptr %.val182, i64 %i.hm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %.body

.loopexit.split-lp609.loopexit.split-lp:          ; preds = %bb.ce, %bb.gl
  %.sroa.072.9.ph.ph = phi i8 [ %.sroa.072.12.ph, %bb.gl ], [ 1, %bb.ce ]
  %lpad.loopexit.split-lp625 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.cb:                                            ; preds = %.lr.ph, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit336
  %.sroa.0345.0703 = phi ptr [ %i.gs, %.lr.ph ], [ %i.ho, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit336 ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0345.0703, i64 168 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0345.0703, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.hq = load ptr, ptr %i.gx, align 8, !nonnull !44, !align !50, !noundef !44
  %i.hr = load ptr, ptr %1, align 8, !nonnull !44, !align !57, !noundef !44
  %i.hs = load ptr, ptr %i.gy, align 8, !nonnull !44, !align !50, !noundef !44
  invoke void @"_ZN119_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..HasApparentType$GT$13apparent_type17h4e341b3d1cd094beE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0345.0703, ptr noundef nonnull align 8 %i.hq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bn, ptr noundef nonnull align 1 %i.hr, ptr nonnull %i.hs)
          to label %bb.io unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp"

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit336, %bb.bz
  %.idx571 = mul nuw nsw i64 %4, 224
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 %.idx571 ; 3 uses
  %i.hu = icmp eq i64 %4, 0                       ; 3 uses
  br i1 %i.hu, label %._crit_edge710, label %.lr.ph709

.lr.ph709:                                        ; preds = %._crit_edge
  %spec.select177705 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.hz = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph709, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328"
  %spec.select177707 = phi ptr [ %spec.select177705, %.lr.ph709 ], [ %spec.select177, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328" ] ; 3 uses
  %.sroa.0119.0706 = phi ptr [ %3, %.lr.ph709 ], [ %spec.select177707, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0119.0706, i64 200 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ay, ptr noundef nonnull align 8 dereferenceable(20) %i.ij, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ay)
          to label %bb.go unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp"

._crit_edge710:                                   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ik = load ptr, ptr %i.bx, align 8, !nonnull !44, !align !50, !noundef !44
  %i.il = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.in = load i64, ptr %i.im, align 8, !noundef !44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35507
  %i.io = mul i64 %i.in, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.in, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ce, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge710
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35508
  %i.iq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.io, i64 noundef range(i64 1, 9) 8) #66, !noalias !35508 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.ce, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"

bb.ce:                                            ; preds = %bb.cd, %._crit_edge710
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.cd ], [ 0, %._crit_edge710 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.io, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc216 unwind label %.loopexit.split-lp609.loopexit.split-lp

.noexc216:                                        ; preds = %bb.ce
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i": ; preds = %bb.cd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.is = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.iq, %bb.cd ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.in, %bb.cd ] ; 2 uses
  %i.it = icmp samesign ule i64 %i.in, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.it)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.t, align 8, !noalias !35507
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.is, ptr %i.iu, align 8, !noalias !35507
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %i.iv, align 8, !noalias !35507
  call void @llvm.experimental.noalias.scope.decl(metadata !35509)
  call void @llvm.experimental.noalias.scope.decl(metadata !35510)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35511
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.iy, %bb.ch ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %bb.cf ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ch ]
  %i.iw = load i16, ptr %i.il, align 8, !range !94, !noalias !35512, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ik, i16 noundef %i.iw)
          to label %bb.ch unwind label %.body.i.i.i.i, !noalias !35513

bb.ch:                                            ; preds = %bb.cg
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [96 x i8], ptr %i.is, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ix, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !35513
  %i.iy = add nuw nsw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.iz = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iz, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfde95640c74bae04E.exit.i.i.i.i.i.i.i.i", label %bb.cg

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfde95640c74bae04E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ch
  store i64 %i.in, ptr %i.iv, align 8, !alias.scope !35514, !noalias !35515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !35511
  br label %bb.cj

.body.i.i.i.i:                                    ; preds = %bb.cg
  %i.ja = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.iv, align 8, !alias.scope !35514, !noalias !35515
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #77
          to label %.body217 unwind label %bb.ci, !noalias !35507

bb.ci:                                            ; preds = %.body.i.i.i.i
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35507
  unreachable

.thread425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit297", %._crit_edge713, %bb.ex, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17ha0fe7b91b9ac1b93E.exit.i"
  %lpad.loopexit.split-lp1520 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit.split-lp600.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.db, %.thread.i
  %lpad.loopexit.split-lp1576 = landingpad { ptr, i32 }
          cleanup
  br label %.thread412

bb.cj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfde95640c74bae04E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !35516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !35507
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !nonnull !44, !noundef !44 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !noundef !44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !35517
  %.sroa.3358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 3, ptr %.sroa.3358.0..sroa_idx, align 8, !noalias !35518
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i16 1, ptr %.sroa.4360.0..sroa_idx, align 8, !noalias !35518
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  store i16 0, ptr %.sroa.5361.0..sroa_idx, align 2, !noalias !35518
  br i1 %i.gw, label %.loopexit604.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cj
  %i.jg = getelementptr inbounds nuw [96 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ji = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.ck

bb.ck:                                            ; preds = %.noexc219, %.lr.ph.i
  %i.jk = phi ptr [ %i.jg, %.lr.ph.i ], [ %i.jp, %.noexc219 ] ; 7 uses
  %i.jl = phi ptr [ %i.gv, %.lr.ph.i ], [ %i.jm, %.noexc219 ] ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -168 ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -24 ; 2 uses
  %i.jo = icmp eq ptr %i.jd, %i.jk
  br i1 %i.jo, label %.loopexit604, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jp = getelementptr inbounds i8, ptr %i.jk, i64 -96 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !35517
  store ptr %i.jn, ptr %i.jh, align 8, !noalias !35517
  store ptr %i.jp, ptr %i.ji, align 8, !noalias !35517
  call void @llvm.experimental.noalias.scope.decl(metadata !35519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35520
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.jq = load i64, ptr %i.jp, align 8, !range !51, !alias.scope !35519, !noalias !35517, !noundef !44
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %i.jq, i64 17)
  switch i64 %i.jr, label %default.unreachable1266 [
    i64 0, label %bb.cm
    i64 1, label %bb.cn
    i64 2, label %bb.co
  ]

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35520
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jp)
          to label %bb.cp unwind label %.thread11.i.i, !noalias !35521

.thread11.i.i:                                    ; preds = %bb.cm
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.thread7.i.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jp, i64 88, i1 false), !noalias !35521
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jt = load <2 x i16>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !35519, !noalias !35517
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !35519, !noalias !35517
  br label %bb.cq

bb.co:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jp, i64 88, i1 false), !noalias !35521
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.ju = load <2 x i16>, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !alias.scope !35519, !noalias !35517
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %.sroa.8.0.copyload10.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i, align 4, !alias.scope !35519, !noalias !35517
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %i.jv = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jw = load <2 x i16>, ptr %i.jv, align 8, !alias.scope !35519, !noalias !35517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false), !noalias !35520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35520
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %.sroa.8.0.i.i = phi i32 [ undef, %bb.cp ], [ %.sroa.8.0.copyload.i.i, %bb.cn ], [ %.sroa.8.0.copyload10.i.i, %bb.co ]
  %i.jx = phi <2 x i16> [ %i.jw, %bb.cp ], [ %i.jt, %bb.cn ], [ %i.ju, %bb.co ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, i64 88, i1 false), !noalias !35520
  store <2 x i16> %i.jx, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !35520
  store i32 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx11.i.i, align 4, !noalias !35520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35522
  %i.jy = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !35522 ; 7 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.cr, label %bb.cv, !prof !47

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75
          to label %.noexc.i.i unwind label %bb.cs, !noalias !35520

.noexc.i.i:                                       ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load i64, ptr %i.o, align 8, !range !51, !alias.scope !35523, !noalias !35520, !noundef !44
  %i.kc = icmp samesign ult i64 %i.kb, 18
  br i1 %i.kc, label %bb.ct, label %.thread7.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %.thread7.i.i unwind label %bb.cu, !noalias !35520, !inline_history !2

bb.cu:                                            ; preds = %bb.ct
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35520
  unreachable

bb.cv:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jy, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !35520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !35520
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35524
  %i.ke = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !35524 ; 3 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.cw, label %bb.db, !prof !47

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc20.i.i unwind label %bb.cx, !noalias !35520

.noexc20.i.i:                                     ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cw
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h88e321ce1671944cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.q) #77
          to label %.body.i.i unwind label %bb.cy, !noalias !35525

bb.cy:                                            ; preds = %bb.cx
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35520
  unreachable

.body.i.i:                                        ; preds = %bb.cx
  %i.ki = load i64, ptr %i.jy, align 8, !range !51, !alias.scope !35526, !noalias !35527, !noundef !44
  %i.kj = icmp samesign ult i64 %i.ki, 18
  br i1 %i.kj, label %bb.cz, label %"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE.exit.i"

bb.cz:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.jy)
          to label %"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE.exit.i" unwind label %bb.da, !noalias !35520, !inline_history !12

bb.da:                                            ; preds = %bb.cz
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef 96, i64 noundef 8) #66, !noalias !35527, !inline_history !140
  br label %.body6.i

"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE.exit.i": ; preds = %bb.cz, %.body.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef 96, i64 noundef 8) #66, !noalias !35527, !inline_history !140
  br label %.thread412

bb.db:                                            ; preds = %bb.cv
end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17hf4377a37d5589a34E:bb.a
  %.sroa.088.5 = phi i1 [ false, %bb.bt ], [ true, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit" ] ; 2 uses
  %.sroa.072.7 = phi i8 [ 1, %bb.bt ], [ %.sroa.072.13, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit" ] ; 4 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.bt ], [ %.sroa.0.6, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit" ] ; 3 uses
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bn)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.ct) #77
          to label %.body199 unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.ct)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211" unwind label %bb.p

bb.bx:                                            ; preds = %bb.bv
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.by:                                            ; preds = %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.bl) #77
          to label %.loopexit.split-lp unwind label %bb.bl

bb.bz:                                            ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.de, %.noexc ]
  %i.gp = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.dd, %.noexc ] ; 2 uses
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.cy, align 8, !noalias !35800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store i64 %i.gp, ptr %.sroa.4386.0..sroa_idx, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5387.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !44 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gu, 168
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx ; 4 uses
  %i.gw = icmp eq i64 %i.gu, 0                    ; 3 uses
  br i1 %i.gw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bz
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  br label %bb.cb

.body217:                                         ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", %.thread422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp606.loopexit.split-lp, %bb.ja, %bb.jb, %bb.ij, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299", %.body.i.i.i.i, %bb.jc, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329", %.thread409
  %.sroa.072.8 = phi i8 [ 1, %bb.jc ], [ 1, %bb.ja ], [ %.sroa.072.9.ph.ph, %.loopexit.split-lp606.loopexit.split-lp ], [ 0, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329" ], [ %.sroa.072.10403, %.thread409 ], [ 0, %.thread422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ 1, %.body.i.i.i.i ], [ 1, %bb.ij ], [ 1, %bb.jb ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ] ; 3 uses
  %.pn154.pn = phi { ptr, i32 } [ %i.vb, %bb.jc ], [ %lpad.thr_comm559, %bb.ja ], [ %lpad.loopexit.split-lp622, %.loopexit.split-lp606.loopexit.split-lp ], [ %.pn138, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ %.pn152, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329" ], [ %.pn140404, %.thread409 ], [ %lpad.loopexit.split-lp1517, %.thread422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.ja, %.body.i.i.i.i ], [ %.pn152, %bb.ij ], [ %lpad.thr_comm559, %bb.jb ], [ %lpad.loopexit.split-lp1619, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ] ; 3 uses
  %.val182 = load ptr, ptr %i.bh, align 8         ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val183 = load i64, ptr %i.hb, align 8, !noundef !44 ; 4 uses
  %i.hc = icmp eq i64 %.val183, 0
  br i1 %i.hc, label %.body, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i952

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i952: ; preds = %.body217
  %i.hd = mul i64 %.val183, 20
  %i.he = icmp slt i64 %.val183, 922337203685477580
  call void @llvm.assume(i1 %i.he)
  %i.hf = and i64 %i.hd, -16                      ; 2 uses
  %i.hg = add i64 %i.hf, 32                       ; 2 uses
  %i.hh = add nsw i64 %.val183, 17
  %i.hi = add i64 %i.hh, %i.hg                    ; 4 uses
  %i.hj = icmp uge i64 %i.hi, %i.hg
  %i.hk = icmp ult i64 %i.hi, 9223372036854775793
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.assume(i1 %i.hk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val182) ]
  %i.hl = icmp eq i64 %i.hi, 0
  br i1 %i.hl, label %.body, label %bb.ca

bb.ca:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i952
  %i.hm = sub i64 -32, %i.hf
  %i.hn = getelementptr inbounds i8, ptr %.val182, i64 %i.hm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %.body

.loopexit.split-lp606.loopexit.split-lp:          ; preds = %bb.ce, %bb.gl
  %.sroa.072.9.ph.ph = phi i8 [ %.sroa.072.12.ph, %bb.gl ], [ 1, %bb.ce ]
  %lpad.loopexit.split-lp622 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.cb:                                            ; preds = %.lr.ph, %bb.iz
  %.sroa.0342.0700 = phi ptr [ %i.gs, %.lr.ph ], [ %i.ho, %bb.iz ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0342.0700, i64 168 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0342.0700, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.hq = load ptr, ptr %i.gx, align 8, !nonnull !44, !align !50, !noundef !44
  %i.hr = load ptr, ptr %1, align 8, !nonnull !44, !align !57, !noundef !44
  %i.hs = load ptr, ptr %i.gy, align 8, !nonnull !44, !align !50, !noundef !44
  invoke void @"_ZN119_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..HasApparentType$GT$13apparent_type17h4e341b3d1cd094beE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0342.0700, ptr noundef nonnull align 8 %i.hq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bn, ptr noundef nonnull align 1 %i.hr, ptr nonnull %i.hs)
          to label %bb.io unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp"

._crit_edge:                                      ; preds = %bb.iz, %bb.bz
  %.idx568 = mul nuw nsw i64 %4, 224
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 %.idx568 ; 3 uses
  %i.hu = icmp eq i64 %4, 0                       ; 3 uses
  br i1 %i.hu, label %._crit_edge707, label %.lr.ph706

.lr.ph706:                                        ; preds = %._crit_edge
  %spec.select177702 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.hz = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph706, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327"
  %spec.select177704 = phi ptr [ %spec.select177702, %.lr.ph706 ], [ %spec.select177, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327" ] ; 3 uses
  %.sroa.0119.0703 = phi ptr [ %3, %.lr.ph706 ], [ %spec.select177704, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0119.0703, i64 200 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ay, ptr noundef nonnull align 8 dereferenceable(20) %i.ij, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ay)
          to label %bb.go unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp"

._crit_edge707:                                   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ik = load ptr, ptr %i.bx, align 8, !nonnull !44, !align !50, !noundef !44
  %i.il = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.in = load i64, ptr %i.im, align 8, !noundef !44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35817
  %i.io = mul i64 %i.in, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.in, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ce, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge707
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35818
  %i.iq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.io, i64 noundef range(i64 1, 9) 8) #66, !noalias !35818 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.ce, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"

bb.ce:                                            ; preds = %bb.cd, %._crit_edge707
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.cd ], [ 0, %._crit_edge707 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.io, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc216 unwind label %.loopexit.split-lp606.loopexit.split-lp

.noexc216:                                        ; preds = %bb.ce
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i": ; preds = %bb.cd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.is = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.iq, %bb.cd ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.in, %bb.cd ] ; 2 uses
  %i.it = icmp samesign ule i64 %i.in, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.it)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.t, align 8, !noalias !35817
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.is, ptr %i.iu, align 8, !noalias !35817
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %i.iv, align 8, !noalias !35817
  call void @llvm.experimental.noalias.scope.decl(metadata !35819)
  call void @llvm.experimental.noalias.scope.decl(metadata !35820)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35821
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.iy, %bb.ch ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %bb.cf ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ch ]
  %i.iw = load i16, ptr %i.il, align 8, !range !94, !noalias !35822, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ik, i16 noundef %i.iw)
          to label %bb.ch unwind label %.body.i.i.i.i, !noalias !35823

bb.ch:                                            ; preds = %bb.cg
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [96 x i8], ptr %i.is, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ix, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !35823
  %i.iy = add nuw nsw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.iz = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iz, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h321de619dfb1926cE.exit.i.i.i.i.i.i.i.i", label %bb.cg

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h321de619dfb1926cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ch
  store i64 %i.in, ptr %i.iv, align 8, !alias.scope !35824, !noalias !35825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !35821
  br label %bb.cj

.body.i.i.i.i:                                    ; preds = %bb.cg
  %i.ja = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.iv, align 8, !alias.scope !35824, !noalias !35825
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #77
          to label %.body217 unwind label %bb.ci, !noalias !35817

bb.ci:                                            ; preds = %.body.i.i.i.i
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35817
  unreachable

.thread422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit297", %._crit_edge710, %bb.ex, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h4be560277c5134fbE.exit.i"
  %lpad.loopexit.split-lp1517 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit.split-lp597.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.db, %.thread.i
  %lpad.loopexit.split-lp1573 = landingpad { ptr, i32 }
          cleanup
  br label %.thread409

bb.cj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h321de619dfb1926cE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !35826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !35817
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !nonnull !44, !noundef !44 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !noundef !44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !35827
  %.sroa.3355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 3, ptr %.sroa.3355.0..sroa_idx, align 8, !noalias !35828
  %.sroa.4356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i16 1, ptr %.sroa.4357.0..sroa_idx, align 8, !noalias !35828
  %.sroa.5358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  store i16 0, ptr %.sroa.5358.0..sroa_idx, align 2, !noalias !35828
  br i1 %i.gw, label %.loopexit601.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cj
  %i.jg = getelementptr inbounds nuw [96 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ji = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.ck

bb.ck:                                            ; preds = %.noexc219, %.lr.ph.i
  %i.jk = phi ptr [ %i.jg, %.lr.ph.i ], [ %i.jp, %.noexc219 ] ; 7 uses
  %i.jl = phi ptr [ %i.gv, %.lr.ph.i ], [ %i.jm, %.noexc219 ] ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -168 ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -24 ; 2 uses
  %i.jo = icmp eq ptr %i.jd, %i.jk
  br i1 %i.jo, label %.loopexit601, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jp = getelementptr inbounds i8, ptr %i.jk, i64 -96 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !35827
  store ptr %i.jn, ptr %i.jh, align 8, !noalias !35827
  store ptr %i.jp, ptr %i.ji, align 8, !noalias !35827
  call void @llvm.experimental.noalias.scope.decl(metadata !35829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35830
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.jq = load i64, ptr %i.jp, align 8, !range !51, !alias.scope !35829, !noalias !35827, !noundef !44
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %i.jq, i64 17)
  switch i64 %i.jr, label %default.unreachable1263 [
    i64 0, label %bb.cm
    i64 1, label %bb.cn
    i64 2, label %bb.co
  ]

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35830
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jp)
          to label %bb.cp unwind label %.thread11.i.i, !noalias !35831

.thread11.i.i:                                    ; preds = %bb.cm
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.thread7.i.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jp, i64 88, i1 false), !noalias !35831
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jt = load <2 x i16>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !35829, !noalias !35827
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !35829, !noalias !35827
  br label %bb.cq

bb.co:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jp, i64 88, i1 false), !noalias !35831
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.ju = load <2 x i16>, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !alias.scope !35829, !noalias !35827
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %.sroa.8.0.copyload10.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i, align 4, !alias.scope !35829, !noalias !35827
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %i.jv = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jw = load <2 x i16>, ptr %i.jv, align 8, !alias.scope !35829, !noalias !35827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false), !noalias !35830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35830
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %.sroa.8.0.i.i = phi i32 [ undef, %bb.cp ], [ %.sroa.8.0.copyload.i.i, %bb.cn ], [ %.sroa.8.0.copyload10.i.i, %bb.co ]
  %i.jx = phi <2 x i16> [ %i.jw, %bb.cp ], [ %i.jt, %bb.cn ], [ %i.ju, %bb.co ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, i64 88, i1 false), !noalias !35830
  store <2 x i16> %i.jx, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !35830
  store i32 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx11.i.i, align 4, !noalias !35830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35832
  %i.jy = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !35832 ; 7 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.cr, label %bb.cv, !prof !47

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75
          to label %.noexc.i.i unwind label %bb.cs, !noalias !35830

.noexc.i.i:                                       ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load i64, ptr %i.o, align 8, !range !51, !alias.scope !35833, !noalias !35830, !noundef !44
  %i.kc = icmp samesign ult i64 %i.kb, 18
  br i1 %i.kc, label %bb.ct, label %.thread7.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %.thread7.i.i unwind label %bb.cu, !noalias !35830, !inline_history !2

bb.cu:                                            ; preds = %bb.ct
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35830
  unreachable

bb.cv:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jy, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !35830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !35830
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !35834
  %i.ke = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !35834 ; 3 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.cw, label %bb.db, !prof !47

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc20.i.i unwind label %bb.cx, !noalias !35830

.noexc20.i.i:                                     ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cw
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h88e321ce1671944cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.q) #77
          to label %.body.i.i unwind label %bb.cy, !noalias !35835

bb.cy:                                            ; preds = %bb.cx
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !35830
  unreachable

.body.i.i:                                        ; preds = %bb.cx
  %i.ki = load i64, ptr %i.jy, align 8, !range !51, !alias.scope !35836, !noalias !35837, !noundef !44
  %i.kj = icmp samesign ult i64 %i.ki, 18
  br i1 %i.kj, label %bb.cz, label %"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE.exit.i"

bb.cz:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.jy)
          to label %"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE.exit.i" unwind label %bb.da, !noalias !35830, !inline_history !12

bb.da:                                            ; preds = %bb.cz
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef 96, i64 noundef 8) #66, !noalias !35837, !inline_history !140
  br label %.body6.i

"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17he42eddaa7a4519eaE.exit.i": ; preds = %bb.cz, %.body.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef 96, i64 noundef 8) #66, !noalias !35837, !inline_history !140
  br label %.thread409

bb.db:                                            ; preds = %bb.cv
end_hunk_1
begin_hunk_2_@_ZN3nls8requests4goto17handle_references17h963737526d75fc78E:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.el = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h2217ea90433957afE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, i64 noundef %.sroa.0.0.i.i151, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ek)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i" unwind label %.thread393.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i": ; preds = %bb.aa, %bb.z
  br i1 %i.dm, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split", label %.preheader.i

.preheader.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i", %.noexc153
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %i.en, %.noexc153 ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i" ] ; 2 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %.sroa.06.0.i.i.i.i.i.i
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h51f762a6b05dabe5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.em)
          to label %.noexc153 unwind label %.thread393.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc153:                                        ; preds = %.preheader.i
  %i.en = add nuw i64 %.sroa.06.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.eo = icmp eq i64 %i.en, %.val3.i.i.i
  br i1 %i.eo, label %.lr.ph, label %.preheader.i

.thread393.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.aa
  %lpad.loopexit.split-lp706 = landingpad { ptr, i32 }
          cleanup
  %.val127560 = load ptr, ptr %i.ac, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val128561 = load i64, ptr %i.ep, align 8, !noundef !44
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17he28143f309945560E"(ptr %.val127560, i64 %.val128561) #77
  br label %.thread373

.lr.ph:                                           ; preds = %.noexc153, %.loopexit426
  %.sroa.0276.0.copyload = load i64, ptr %i.ad, align 8 ; 3 uses
  %i.eq = icmp ult i64 %.val3.i.i.i, 768614336404564651
  call void @llvm.assume(i1 %i.eq)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.ad

bb.ab:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body178

.body178:                                         ; preds = %bb.dk, %.body.sink.split.i.i, %bb.dl, %bb.ab
  %eh.lpad-body179 = phi { ptr, i32 } [ %i.ew, %bb.ab ], [ %i.to, %bb.dl ], [ %i.tk, %bb.dk ], [ %eh.lpad-body25.ph.i.i, %.body.sink.split.i.i ]
  %i.ex = icmp eq i64 %.sroa.0276.0.copyload, 0
  br i1 %i.ex, label %.thread385, label %bb.ac

bb.ac:                                            ; preds = %.body178
  %i.ey = mul nuw i64 %.sroa.0276.0.copyload, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !65327
  br label %.thread385

bb.ad:                                            ; preds = %.lr.ph, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit"
  %.sroa.5280.0469 = phi ptr [ %i.cx, %.lr.ph ], [ %i.ez, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit" ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.5280.0469, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5280.0469, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke fastcc void @_ZN3nls5world5World14get_field_refs17hc949882ee1de66bbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.ag, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.ab)
          to label %bb.cz unwind label %bb.ab

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i", %.loopexit426.thread
  %.sroa.0276.0.copyload552.ph = load i64, ptr %i.ad, align 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit": ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split"
  %.sroa.0276.0.copyload552 = phi i64 [ %.sroa.0276.0.copyload552.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split" ], [ %.sroa.0276.0.copyload, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit" ] ; 2 uses
  %i.fa = icmp eq i64 %.sroa.0276.0.copyload552, 0
  br i1 %i.fa, label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154", label %bb.ae

bb.ae:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"
  %i.fb = mul nuw i64 %.sroa.0276.0.copyload552, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !65328
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"

"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154": ; preds = %bb.ae, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.sroa.0284.0.copyload = load ptr, ptr %i.ac, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4285.0.copyload = load i64, ptr %.sroa.4285.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.5287.0.copyload = load i64, ptr %.sroa.5287.0..sroa_idx, align 8 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65329)
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0284.0.copyload, align 16, !noalias !65330
  %i.fc = icmp eq i64 %.sroa.4285.0.copyload, 0   ; 5 uses
  br i1 %i.fc, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"
  %i.fd = mul i64 %.sroa.4285.0.copyload, 12      ; 2 uses
  %i.fe = add i64 %i.fd, 12
  %i.ff = icmp ult i64 %i.fe, -15
  call void @llvm.assume(i1 %i.ff)
  %i.fg = add i64 %i.fd, 24
  %i.fh = and i64 %i.fg, -16                      ; 3 uses
  %i.fi = add i64 %.sroa.4285.0.copyload, 17
  %i.fj = add i64 %i.fi, %i.fh                    ; 3 uses
  %i.fk = icmp uge i64 %i.fj, %i.fh
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp ult i64 %i.fj, 9223372036854775793
  call void @llvm.assume(i1 %i.fl)
  %i.fm = sub nsw i64 0, %i.fh
  %i.fn = getelementptr inbounds i8, ptr %.sroa.0284.0.copyload, i64 %i.fm
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.fj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.fn, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !65331
  %i.fo = icmp eq i64 %.sroa.5287.0.copyload, 0
  br i1 %i.fo, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"
  %i.fp = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.fq = bitcast <16 x i1> %i.fp to i16          ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.fq, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i
  %i.fs = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fr, %bb.af ] ; 2 uses
  %i.ft = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0284.0.copyload, %bb.af ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fs, align 16, !noalias !65332
  %i.fu = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -192 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fu to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i": ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !65331
  %i.fx = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.fc, %i.fx
  br i1 %or.cond.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !65333
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.af
  %.sroa.14.0.i.i.i = phi ptr [ %i.fr, %bb.af ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.0284.0.copyload, %bb.af ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.fq, %bb.af ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fy = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.fz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = and i16 %i.fy, %.lcssa.i.i.i.i.i.i.i.i
  %i.gc = sub nsw i64 0, %i.ga
  %i.gd = getelementptr inbounds [12 x i8], ptr %.sroa.9.0.copyload.i.i.i.i.i, i64 %i.gc
  %i.ge = add nsw i64 %.sroa.5287.0.copyload, -1  ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.gf, i64 12, i1 false), !noalias !65334
  %.sroa.0.0.i.i.i.i.i4.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.5287.0.copyload, i64 4) ; 3 uses
  %i.gg = mul i64 %.sroa.0.0.i.i.i.i.i4.i, 12     ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.5287.0.copyload, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ai, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !65335
  %i.gi = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gg, i64 noundef range(i64 1, 9) 4) #66, !noalias !65335 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.ah ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.gg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.ap, !noalias !65334

.noexc.i.i.i.i.i:                                 ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.gi, %bb.ah ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i4.i, %bb.ah ] ; 2 uses
  %i.gk = icmp ule i64 %.sroa.0.0.i.i.i.i.i4.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !noalias !65334
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !65331
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !65331
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !65331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !65336)
  call void @llvm.experimental.noalias.scope.decl(metadata !65337)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.gl = icmp eq i64 %i.ge, 0
  br i1 %i.gl, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"
  %i.gm = phi ptr [ %i.hf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.aj ]
  %i.gn = phi i64 [ %i.hh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.aj ] ; 4 uses
  %.lcssa13.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i.i, %bb.aj ] ; 2 uses
  %.lcssa410.i.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.aj ] ; 2 uses
  %i.go = phi i16 [ %i.gx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %i.gb, %bb.aj ] ; 2 uses
  %.val56.i.i.i.i.i.i.i = phi i64 [ %i.ha, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %i.ge, %bb.aj ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.go, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gp = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.gq = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa410.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gp, align 16, !noalias !65338
  %i.gr = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -192 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gr to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa49.i.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.go, %.lr.ph.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gu = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.gv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gw = zext nneg i16 %i.gv to i64
  %i.gx = and i16 %i.gu, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.gy = sub nsw i64 0, %i.gw
  %i.gz = getelementptr inbounds [12 x i8], ptr %.lcssa49.i.i.i.i.i.i.i, i64 %i.gy
  %i.ha = add i64 %.val56.i.i.i.i.i.i.i, -1       ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.hb, i64 12, i1 false), !noalias !65339
  %i.hc = load i64, ptr %i.l, align 8, !range !74, !alias.scope !65340, !noalias !65331, !noundef !44
  %i.hd = icmp eq i64 %i.gn, %i.hc
  br i1 %i.hd, label %bb.an, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i", %bb.aj
  %i.he = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.fc, %i.he
  br i1 %or.cond.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i, label %bb.ak

bb.ak:                                            ; preds = %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !65341
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.hf = phi ptr [ %.pre.i.i.i.i.i158, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.gm, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.hf, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hg, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, i64 12, i1 false), !noalias !65339
  %i.hh = add nuw nsw i64 %i.gn, 1                ; 2 uses
  store i64 %i.hh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !65340, !noalias !65331
  %i.hi = icmp eq i64 %i.ha, 0
  br i1 %i.hi, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.an
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond15.i.i.i.i.i = or i1 %i.fc, %i.hk
  br i1 %or.cond15.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !65342
  br label %.body.i.i.i.i.i

bb.an:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.gn, i64 noundef %.val56.i.i.i.i.i.i.i, i64 noundef 4, i64 noundef 12)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.al, !noalias !65343

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.an
  %.pre.i.i.i.i.i158 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !65340, !noalias !65331
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

.body.i.i.i.i.i:                                  ; preds = %bb.am, %bb.al
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !65331 ; 2 uses
  %i.hl = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.hl, label %.thread414, label %bb.ao

bb.ao:                                            ; preds = %.body.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !65331, !nonnull !44, !noundef !44
  %i.hm = mul nuw i64 %.val.i.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !65334
  br label %.thread414

bb.ap:                                            ; preds = %bb.ai
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond6.i.i.i = or i1 %i.fc, %i.ho
  br i1 %or.cond6.i.i.i, label %.thread414, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !65344
  br label %.thread414

_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i: ; preds = %bb.ag, %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !65345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !65346
  br label %.thread.i

_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i: ; preds = %bb.ak, %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.0.0.copyload.i155 = load i64, ptr %i.l, align 8, !noalias !65347 ; 5 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !65347 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !65331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !65345
  store ptr %i.ag, ptr %i.j, align 8, !noalias !65348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !65348
  store ptr %i.j, ptr %i.i, align 8, !noalias !65349
  %i.hp = icmp eq i64 %.sroa.5287.0.copyload, 1
  br i1 %i.hp, label %.thread.i, label %bb.ar, !prof !65350

bb.ar:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i
  %i.hq = icmp ult i64 %.sroa.5287.0.copyload, 21
  br i1 %i.hq, label %bb.at, label %bb.as, !prof !46

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hfdec7642de6e4615E(ptr noalias noundef nonnull align 4 %.sroa.6.0.copyload.i, i64 noundef %.sroa.5287.0.copyload, ptr noalias noundef align 8 dereferenceable(8) %i.i)
          to label %bb.av unwind label %.loopexit.split-lp.i, !noalias !65351

bb.at:                                            ; preds = %bb.ar
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h53adebfe3f42c0bcE(ptr noalias noundef nonnull align 4 %.sroa.6.0.copyload.i, i64 noundef %.sroa.5287.0.copyload, ptr nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.av unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.lr.ph658
  %lpad.loopexit53.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.at, %bb.as
  %lpad.loopexit.split-lp54.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i.i.i14.i, %bb.bc, %bb.bb, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.042.i = phi i64 [ %.sroa.0.04150.i, %bb.bc ], [ %.sroa.0.04150.i, %.body.i.i.i.i14.i ], [ %.sroa.0.04150.i, %bb.bb ], [ %.sroa.0.04150.i, %.loopexit.i ], [ %.sroa.0.0.copyload.i155, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.6.036.i = phi ptr [ %.sroa.6.03551.i, %bb.bc ], [ %.sroa.6.03551.i, %.body.i.i.i.i14.i ], [ %.sroa.6.03551.i, %bb.bb ], [ %.sroa.6.03551.i, %.loopexit.i ], [ %.sroa.6.0.copyload.i, %.loopexit.split-lp.i ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jq, %bb.bc ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i14.i ], [ %i.jq, %bb.bb ], [ %lpad.loopexit53.i, %.loopexit.i ], [ %lpad.loopexit.split-lp54.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.hr = icmp eq i64 %.sroa.0.042.i, 0
  br i1 %i.hr, label %.thread414, label %bb.au

bb.au:                                            ; preds = %.body.i
  %i.hs = mul nuw i64 %.sroa.0.042.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.036.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.036.i, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !65351
  br label %.thread414

.thread.i:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i
  %.sroa.0.041.ph.i = phi i64 [ %.sroa.0.0.copyload.i155, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i ]
  %.sroa.6.035.ph.i = phi ptr [ %.sroa.6.0.copyload.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i ], [ inttoptr (i64 4 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i ]
  %.sroa.12.034.ph.i = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !65348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !65345
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i"

bb.av:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !65348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !65345
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i", %bb.av
  %.sroa.0.024.i.i = phi i64 [ 1, %bb.av ], [ %i.ij, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 5 uses
  %i.ht = getelementptr [12 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.0.024.i.i ; 6 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 -12
  call void @llvm.experimental.noalias.scope.decl(metadata !65352)
  call void @llvm.experimental.noalias.scope.decl(metadata !65353)
  call void @llvm.experimental.noalias.scope.decl(metadata !65354)
  call void @llvm.experimental.noalias.scope.decl(metadata !65355)
  %i.hv = load i32, ptr %i.ht, align 4, !alias.scope !65356, !noalias !65357, !noundef !44
  %i.hw = load i32, ptr %i.hu, align 4, !alias.scope !65358, !noalias !65357, !noundef !44
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ax, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i"

bb.ax:                                            ; preds = %bb.aw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !alias.scope !65356, !noalias !65357, !noundef !44
  %i.ia = getelementptr i8, ptr %i.ht, i64 -8
  %i.ib = load i32, ptr %i.ia, align 4, !alias.scope !65358, !noalias !65357, !noundef !44
  %i.ic = icmp eq i32 %i.hz, %i.ib
  br i1 %i.ic, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i": ; preds = %bb.ax
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ie = load i32, ptr %i.id, align 4, !alias.scope !65356, !noalias !65357, !noundef !44
  %i.if = getelementptr i8, ptr %i.ht, i64 -4
  %i.ig = load i32, ptr %i.if, align 4, !alias.scope !65358, !noalias !65357, !noundef !44
  %i.ih = icmp eq i32 %i.ie, %i.ig
  br i1 %i.ih, label %.preheader.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i"

.preheader.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i"
  %.sroa.5.025.i.i = add nuw nsw i64 %.sroa.0.024.i.i, 1 ; 2 uses
  %i.ii = icmp samesign ult i64 %.sroa.5.025.i.i, %.sroa.5287.0.copyload
  br i1 %i.ii, label %.lr.ph.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i", %bb.ax, %bb.aw
  %i.ij = add nuw nsw i64 %.sroa.0.024.i.i, 1     ; 2 uses
  %.not.i.i156 = icmp eq i64 %i.ij, %.sroa.5287.0.copyload
  br i1 %.not.i.i156, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i", label %bb.aw

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.az
  %.sroa.5.027.i.i = phi i64 [ %.sroa.5.0.i.i, %bb.az ], [ %.sroa.5.025.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.11.026.i.i = phi i64 [ %.sroa.11.1.i.i, %bb.az ], [ %.sroa.0.024.i.i, %.preheader.i.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.5.027.i.i ; 4 uses
  %i.il = getelementptr [12 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.11.026.i.i ; 4 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -12
  call void @llvm.experimental.noalias.scope.decl(metadata !65359)
  call void @llvm.experimental.noalias.scope.decl(metadata !65360)
  call void @llvm.experimental.noalias.scope.decl(metadata !65361)
  call void @llvm.experimental.noalias.scope.decl(metadata !65362)
  %i.in = load i32, ptr %i.ik, align 4, !alias.scope !65363, !noalias !65357, !noundef !44
  %i.io = load i32, ptr %i.im, align 4, !alias.scope !65364, !noalias !65357, !noundef !44
  %i.ip = icmp eq i32 %i.in, %i.io
  br i1 %i.ip, label %bb.ay, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i"

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !alias.scope !65363, !noalias !65357, !noundef !44
  %i.is = getelementptr i8, ptr %i.il, i64 -8
  %i.it = load i32, ptr %i.is, align 4, !alias.scope !65364, !noalias !65357, !noundef !44
  %i.iu = icmp eq i32 %i.ir, %i.it
  br i1 %i.iu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i": ; preds = %bb.ay
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iw = load i32, ptr %i.iv, align 4, !alias.scope !65363, !noalias !65357, !noundef !44
  %i.ix = getelementptr i8, ptr %i.il, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !alias.scope !65364, !noalias !65357, !noundef !44
  %i.iz = icmp eq i32 %i.iw, %i.iy
  br i1 %i.iz, label %bb.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i", %bb.ay, %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 4 dereferenceable(12) %i.ik, i64 12, i1 false), !noalias !65357
  %i.ja = add i64 %.sroa.11.026.i.i, 1
  br label %bb.az

bb.az:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i"
  %.sroa.11.1.i.i = phi i64 [ %i.ja, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i" ], [ %.sroa.11.026.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i" ] ; 2 uses
  %.sroa.5.0.i.i = add nuw nsw i64 %.sroa.5.027.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.5.0.i.i, %.sroa.5287.0.copyload
  br i1 %exitcond.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i", label %.lr.ph.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i", %bb.az, %.preheader.i.i, %.thread.i
  %.sroa.6.03551.i = phi ptr [ %.sroa.6.035.ph.i, %.thread.i ], [ %.sroa.6.0.copyload.i, %bb.az ], [ %.sroa.6.0.copyload.i, %.preheader.i.i ], [ %.sroa.6.0.copyload.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 8 uses
  %.sroa.0.04150.i = phi i64 [ %.sroa.0.041.ph.i, %.thread.i ], [ %.sroa.0.0.copyload.i155, %bb.az ], [ %.sroa.0.0.copyload.i155, %.preheader.i.i ], [ %.sroa.0.0.copyload.i155, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.034.ph.i, %.thread.i ], [ %.sroa.11.1.i.i, %bb.az ], [ %.sroa.0.024.i.i, %.preheader.i.i ], [ %.sroa.5287.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 2 uses
  %.idx659 = mul nuw nsw i64 %.sroa.12.1.i, 12
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.6.03551.i, i64 %.idx659 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65365)
  call void @llvm.experimental.noalias.scope.decl(metadata !65366)
  call void @llvm.experimental.noalias.scope.decl(metadata !65367)
  call void @llvm.experimental.noalias.scope.decl(metadata !65368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !65369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !65370
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 4 uses
  %i.jd = icmp eq i64 %.sroa.12.1.i, 0
  br i1 %i.jd, label %._crit_edge, label %.lr.ph658

bb.ba:                                            ; preds = %.noexc18.i
  %i.je = icmp eq ptr %i.jm, %i.jb
  br i1 %i.je, label %._crit_edge, label %.lr.ph658

.lr.ph658:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i", %bb.ba
  %i.jf = phi ptr [ %i.jm, %bb.ba ], [ %.sroa.6.03551.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i" ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !alias.scope !65371, !noalias !65372, !noundef !44
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !65371, !noalias !65372, !noundef !44
  %i.jl = zext i32 %i.jk to i64
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.jf, align 4, !alias.scope !65371, !noalias !65372, !noundef !44
  invoke fastcc void @"_ZN71_$LT$lsp_types..Location$u20$as$u20$nls..diagnostic..LocationCompat$GT$13from_codespan17h6db607c9effbdbd5E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.g, i32 %.val.i.i.i.i.i.i.i.i.i, i64 %i.ji, i64 %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jc)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !65351

.noexc18.i:                                       ; preds = %.lr.ph658
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 4 uses
  %i.jn = load i64, ptr %i.g, align 8, !range !70, !noalias !65373, !noundef !44 ; 4 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.jn, -9223372036854775808
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.ba, label %bb.bd

._crit_edge:                                      ; preds = %bb.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !65370
  store i64 0, ptr %i.z, align 8, !alias.scope !65374
  %i.jo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.jo, align 8, !alias.scope !65374
  %i.jp = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.jp, align 8, !alias.scope !65374
  br label %bb.cf

bb.bb:                                            ; preds = %bb.be
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jr = icmp eq i64 %i.jn, 0
  br i1 %i.jr, label %.body.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.jn, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !65375
  br label %.body.i

bb.bd:                                            ; preds = %.noexc18.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !65376 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i, i64 88, i1 false), !noalias !65369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !65370
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !65377
  %i.js = call noundef align 8 dereferenceable_or_null(416) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 416, i64 noundef range(i64 1, 9) 8) #66, !noalias !65377 ; 6 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 416, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i17.i unwind label %bb.bb, !noalias !65378
end_hunk_2
begin_hunk_3_@"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h0a629387178f6eedE":bb.a
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ba, ptr %.val.i, align 8, !noalias !101322
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !101322, !noundef !44 ; 2 uses
  %i.bc = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.bd, ptr %.val1.i, align 8, !noalias !101322
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.f, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.e, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val2.i = load ptr, ptr %i.bf, align 8, !alias.scope !101321, !nonnull !44, !noundef !44 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.val3.i = load ptr, ptr %i.bg, align 8, !alias.scope !101321 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !101322, !noundef !44 ; 2 uses
  %i.bh = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.bi, ptr %.val2.i, align 8, !noalias !101322
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.g:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !101322, !noundef !44 ; 2 uses
  %i.bk = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.bl, ptr %.val3.i, align 8, !noalias !101322
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %bb.m, !prof !49

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.an)
          to label %bb.bt unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit133.thread"

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !44, !align !66, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !range !94, !noundef !44
  invoke void @"_ZN110_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$nickel_lang_core..typecheck..operation..PrimOpType$GT$11primop_type17h234669c19ab25f16E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i16 noundef %i.br)
          to label %bb.ce unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit133.thread"

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !44, !align !50, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !44, !align !50, !noundef !44
  call fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17hc30c9ff4e2362b6dE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef nonnull align 1 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.di

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit173": ; preds = %.thread240, %bb.ec
  br i1 %.sroa.036.4244, label %.thread, label %bb.ed

bb.m:                                             ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.bx = load i16, ptr %i.bw, align 8, !range !94, !alias.scope !101321, !noundef !44
  store ptr %.val.i, ptr %i.ad, align 8, !alias.scope !101320
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val1.i, ptr %i.by, align 8, !alias.scope !101320
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.val2.i, ptr %i.bz, align 8, !alias.scope !101320
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.val3.i, ptr %i.ca, align 8, !alias.scope !101320
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i16 %i.bx, ptr %i.cb, align 8, !alias.scope !101320
  invoke fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h0a629387178f6eedE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 1 %4)
          to label %bb.n unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit133.thread"

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.cc = load i64, ptr %i.ae, align 8, !range !91, !noundef !44 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  store i64 20, ptr %0, align 8
  br label %bb.ea

bb.p:                                             ; preds = %bb.n
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.920.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.920.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.556.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 %i.cc, ptr %i.ac, align 8
  %.sroa.717.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.cf, ptr %.sroa.717.0..sroa_idx18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_ZN16nickel_lang_core9typecheck19instantiate_foralls17he52d690ea39182a6E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ac, i1 noundef zeroext true)
          to label %bb.q unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit133.thread"

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !44 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101323
  %i.cm = mul i64 %i.cl, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.cl, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101324
  %i.co = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cm, i64 noundef range(i64 1, 9) 8) #66, !noalias !101324 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.r ], [ 0, %bb.q ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc unwind label %.body.thread214

.body.thread214:                                  ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.s
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i": ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.cr = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.co, %bb.r ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.cl, %bb.r ] ; 2 uses
  %i.cs = icmp samesign ule i64 %i.cl, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.cs)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !101323
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !101323
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.cu, align 8, !noalias !101323
  call void @llvm.experimental.noalias.scope.decl(metadata !101325)
  call void @llvm.experimental.noalias.scope.decl(metadata !101326)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101327
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cx, %bb.v ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.t ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.v ]
  %i.cv = load i16, ptr %i.bw, align 8, !range !94, !noalias !101328, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ci, i16 noundef %i.cv)
          to label %bb.v unwind label %.body.i.i.i.i, !noalias !101329

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %i.cr, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !101329
  %i.cx = add nuw nsw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd81bbccde92801deE.exit.i.i.i.i.i.i.i.i", label %bb.u

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd81bbccde92801deE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.v
  store i64 %i.cl, ptr %i.cu, align 8, !alias.scope !101330, !noalias !101331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101327
  br label %bb.y

.body.i.i.i.i:                                    ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.cu, align 8, !alias.scope !101330, !noalias !101331
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %.body.thread unwind label %bb.w, !noalias !101323

bb.w:                                             ; preds = %.body.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !101323
  unreachable

bb.x:                                             ; preds = %bb.br, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"
  br i1 %.sroa.045.2, label %.body.thread, label %.thread

bb.y:                                             ; preds = %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd81bbccde92801deE.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !101332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.db = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.dc = load i16, ptr %i.bw, align 8, !range !94, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.db, i16 noundef %i.dc)
          to label %bb.aa unwind label %bb.z

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit": ; preds = %.body94, %bb.ab, %bb.z
  %.sroa.045.2 = phi i1 [ %.sroa.045.3, %bb.z ], [ %.sroa.045.4, %bb.ab ], [ %.sroa.045.4, %.body94 ]
  %.sroa.039.0 = phi i8 [ %.sroa.039.1, %bb.z ], [ %.sroa.039.2, %bb.ab ], [ %.sroa.039.2, %.body94 ]
  %.pn78 = phi { ptr, i32 } [ %i.de, %bb.z ], [ %.pn76, %bb.ab ], [ %.pn76, %.body94 ] ; 2 uses
  %i.dd = trunc nuw i8 %.sroa.039.0 to i1
  br i1 %i.dd, label %bb.br, label %bb.x

bb.z:                                             ; preds = %bb.bm, %bb.y
  %.sroa.045.3 = phi i1 [ false, %bb.bm ], [ true, %bb.y ]
  %.sroa.039.1 = phi i8 [ %.sroa.039.4, %bb.bm ], [ 1, %bb.y ]
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.df, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val92 = load i64, ptr %i.dg, align 8, !noundef !44 ; 3 uses
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3de5ff4f5b3157d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %.val, i64 %.val92)
          to label %bb.ad unwind label %bb.ac

.body94:                                          ; preds = %bb.bg, %bb.ah, %bb.ac, %bb.an, %bb.bq
  %.sroa.045.4 = phi i1 [ true, %bb.ah ], [ false, %bb.an ], [ true, %bb.bq ], [ %.sroa.045.5, %bb.ac ], [ false, %bb.bg ] ; 2 uses
  %.sroa.039.2 = phi i8 [ 1, %bb.ah ], [ 1, %bb.an ], [ 1, %bb.bq ], [ %.sroa.039.3, %bb.ac ], [ 0, %bb.bg ] ; 2 uses
  %.pn76 = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %i.ds, %bb.an ], [ %i.fk, %bb.bq ], [ %i.dj, %bb.ac ], [ %i.fb, %bb.bg ] ; 2 uses
  %i.dh = load i64, ptr %i.z, align 8, !range !51, !alias.scope !101333, !noundef !44
  %i.di = icmp samesign ult i64 %i.dh, 18
  br i1 %i.di, label %bb.ab, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.ab:                                            ; preds = %.body94
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" unwind label %bb.bn, !inline_history !2

bb.ac:                                            ; preds = %bb.bj, %bb.bf, %bb.av, %bb.aa, %bb.aq, %bb.ak
  %.sroa.045.5 = phi i1 [ false, %bb.bj ], [ false, %bb.bf ], [ true, %bb.aa ], [ false, %bb.ak ], [ false, %bb.av ], [ false, %bb.aq ]
  %.sroa.039.3 = phi i8 [ 0, %bb.bj ], [ 0, %bb.bf ], [ 1, %bb.aa ], [ 1, %bb.ak ], [ 1, %bb.av ], [ 1, %bb.aq ]
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dk = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dl = call i64 @llvm.usub.sat.i64(i64 %i.dk, i64 17)
  switch i64 %i.dl, label %default.unreachable [
    i64 0, label %bb.ae
    i64 1, label %bb.af
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit169, %bb.dj, %bb.cg, %bb.bv, %bb.ap, %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.z)
          to label %bb.ai unwind label %bb.bq

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ai:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.dp = load <2 x i16>, ptr %i.dn, align 8
  store <2 x i16> %i.dp, ptr %i.do, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.af
  invoke fastcc void @_ZN16nickel_lang_core9typecheck11mk_uniftype10nary_arrow17hec07445f921c9be3E(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.w)
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i64 96, i1 false)
  %i.dq = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.al unwind label %bb.ac     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not68 = icmp eq ptr %i.dq, null
  br i1 %.not68, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.dq, i64 232, i1 false), !noalias !101335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ax, i64 16, i1 false), !noalias !101336
  %i.dr = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.ao unwind label %bb.an, !noalias !101337

bb.an:                                            ; preds = %bb.am
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dq, i64 noundef 232, i64 noundef 8) #66, !noalias !101338
  br label %.body94

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101334
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dq, i64 noundef 232, i64 noundef 8) #66, !noalias !101338
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.dt, align 8
  store i64 20, ptr %0, align 8
  br label %bb.bl

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.du = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dv = call i64 @llvm.usub.sat.i64(i64 %i.du, i64 17)
  switch i64 %i.dv, label %default.unreachable [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.z)
          to label %bb.at unwind label %bb.ac

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.dy = load <2 x i16>, ptr %i.dw, align 8
  store <2 x i16> %i.dy, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.dz = load i64, ptr %i.u, align 8, !range !51, !alias.scope !101339, !noundef !44
  %i.ea = icmp samesign ult i64 %i.dz, 18
  br i1 %i.ea, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.u)
          to label %bb.aw unwind label %bb.ac

bb.aw:                                            ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.eb = load ptr, ptr %i.cj, align 8, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  %.sroa.0198.0.copyload = load i64, ptr %i.aa, align 8
end_hunk_3
begin_hunk_4_@"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h10a32f0e4312ca21E":bb.a
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ba, ptr %.val.i, align 8, !noalias !101435
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !101435, !noundef !44 ; 2 uses
  %i.bc = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.bd, ptr %.val1.i, align 8, !noalias !101435
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.f, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.e, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val2.i = load ptr, ptr %i.bf, align 8, !alias.scope !101434, !nonnull !44, !noundef !44 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.val3.i = load ptr, ptr %i.bg, align 8, !alias.scope !101434 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !101435, !noundef !44 ; 2 uses
  %i.bh = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.bi, ptr %.val2.i, align 8, !noalias !101435
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.g:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !101435, !noundef !44 ; 2 uses
  %i.bk = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.bl, ptr %.val3.i, align 8, !noalias !101435
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %bb.m, !prof !49

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.an)
          to label %bb.bs unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit130.thread"

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !44, !align !66, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !range !94, !noundef !44
  invoke void @"_ZN110_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$nickel_lang_core..typecheck..operation..PrimOpType$GT$11primop_type17h234669c19ab25f16E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i16 noundef %i.br)
          to label %bb.cd unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit130.thread"

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !44, !align !50, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !44, !align !50, !noundef !44
  call fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17hf321c13c265583f8E(ptr noalias noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef align 8 dereferenceable(96) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dg

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit166": ; preds = %.thread233, %bb.ea
  br i1 %.sroa.036.4237, label %.thread, label %bb.eb

bb.m:                                             ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.bx = load i16, ptr %i.bw, align 8, !range !94, !alias.scope !101434, !noundef !44
  store ptr %.val.i, ptr %i.ad, align 8, !alias.scope !101433
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val1.i, ptr %i.by, align 8, !alias.scope !101433
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.val2.i, ptr %i.bz, align 8, !alias.scope !101433
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.val3.i, ptr %i.ca, align 8, !alias.scope !101433
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i16 %i.bx, ptr %i.cb, align 8, !alias.scope !101433
  invoke fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h10a32f0e4312ca21E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef align 8 dereferenceable(96) %4)
          to label %bb.n unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit130.thread"

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.cc = load i64, ptr %i.ae, align 8, !range !91, !noundef !44 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  store i64 20, ptr %0, align 8
  br label %bb.dy

bb.p:                                             ; preds = %bb.n
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.920.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.920.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.556.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 %i.cc, ptr %i.ac, align 8
  %.sroa.717.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.cf, ptr %.sroa.717.0..sroa_idx18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_ZN16nickel_lang_core9typecheck19instantiate_foralls17he52d690ea39182a6E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ac, i1 noundef zeroext true)
          to label %bb.q unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit130.thread"

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !44 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101436
  %i.cm = mul i64 %i.cl, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.cl, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !101437
  %i.co = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cm, i64 noundef range(i64 1, 9) 8) #66, !noalias !101437 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.r ], [ 0, %bb.q ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc unwind label %.body.thread207

.body.thread207:                                  ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.s
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i": ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.cr = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.co, %bb.r ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.cl, %bb.r ] ; 2 uses
  %i.cs = icmp samesign ule i64 %i.cl, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.cs)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !101436
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !101436
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.cu, align 8, !noalias !101436
  call void @llvm.experimental.noalias.scope.decl(metadata !101438)
  call void @llvm.experimental.noalias.scope.decl(metadata !101439)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101440
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cx, %bb.v ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.t ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.v ]
  %i.cv = load i16, ptr %i.bw, align 8, !range !94, !noalias !101441, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ci, i16 noundef %i.cv)
          to label %bb.v unwind label %.body.i.i.i.i, !noalias !101442

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %i.cr, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !101442
  %i.cx = add nuw nsw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h52a031a7ecf5d880E.exit.i.i.i.i.i.i.i.i", label %bb.u

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h52a031a7ecf5d880E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.v
  store i64 %i.cl, ptr %i.cu, align 8, !alias.scope !101443, !noalias !101444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101440
  br label %bb.y

.body.i.i.i.i:                                    ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.cu, align 8, !alias.scope !101443, !noalias !101444
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %.body.thread unwind label %bb.w, !noalias !101436

bb.w:                                             ; preds = %.body.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !101436
  unreachable

bb.x:                                             ; preds = %bb.bq, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"
  br i1 %.sroa.045.2, label %.body.thread, label %.thread

bb.y:                                             ; preds = %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h52a031a7ecf5d880E.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !101445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.db = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.dc = load i16, ptr %i.bw, align 8, !range !94, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.db, i16 noundef %i.dc)
          to label %bb.aa unwind label %bb.z

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit": ; preds = %.body94, %bb.ab, %bb.z
  %.sroa.045.2 = phi i1 [ %.sroa.045.3, %bb.z ], [ %.sroa.045.4, %bb.ab ], [ %.sroa.045.4, %.body94 ]
  %.sroa.039.0 = phi i8 [ %.sroa.039.1, %bb.z ], [ %.sroa.039.2, %bb.ab ], [ %.sroa.039.2, %.body94 ]
  %.pn78 = phi { ptr, i32 } [ %i.de, %bb.z ], [ %.pn76, %bb.ab ], [ %.pn76, %.body94 ] ; 2 uses
  %i.dd = trunc nuw i8 %.sroa.039.0 to i1
  br i1 %i.dd, label %bb.bq, label %bb.x

bb.z:                                             ; preds = %bb.bl, %bb.y
  %.sroa.045.3 = phi i1 [ false, %bb.bl ], [ true, %bb.y ]
  %.sroa.039.1 = phi i8 [ %.sroa.039.4, %bb.bl ], [ 1, %bb.y ]
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.df, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val92 = load i64, ptr %i.dg, align 8, !noundef !44 ; 3 uses
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3de5ff4f5b3157d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %.val, i64 %.val92)
          to label %bb.ad unwind label %bb.ac

.body94:                                          ; preds = %bb.bf, %bb.ah, %bb.ac, %bb.an, %bb.bp
  %.sroa.045.4 = phi i1 [ true, %bb.ah ], [ false, %bb.an ], [ true, %bb.bp ], [ %.sroa.045.5, %bb.ac ], [ false, %bb.bf ] ; 2 uses
  %.sroa.039.2 = phi i8 [ 1, %bb.ah ], [ 1, %bb.an ], [ 1, %bb.bp ], [ %.sroa.039.3, %bb.ac ], [ 0, %bb.bf ] ; 2 uses
  %.pn76 = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %i.ds, %bb.an ], [ %i.fi, %bb.bp ], [ %i.dj, %bb.ac ], [ %i.ez, %bb.bf ] ; 2 uses
  %i.dh = load i64, ptr %i.z, align 8, !range !51, !alias.scope !101446, !noundef !44
  %i.di = icmp samesign ult i64 %i.dh, 18
  br i1 %i.di, label %bb.ab, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.ab:                                            ; preds = %.body94
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" unwind label %bb.bm, !inline_history !2

bb.ac:                                            ; preds = %bb.bi, %bb.be, %bb.aa, %bb.au, %bb.aq, %bb.ak
  %.sroa.045.5 = phi i1 [ false, %bb.bi ], [ false, %bb.be ], [ true, %bb.aa ], [ false, %bb.ak ], [ false, %bb.au ], [ false, %bb.aq ]
  %.sroa.039.3 = phi i8 [ 0, %bb.bi ], [ 0, %bb.be ], [ 1, %bb.aa ], [ 1, %bb.ak ], [ 1, %bb.au ], [ 1, %bb.aq ]
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dk = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dl = call i64 @llvm.usub.sat.i64(i64 %i.dk, i64 17)
  switch i64 %i.dl, label %default.unreachable [
    i64 0, label %bb.ae
    i64 1, label %bb.af
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.dn, %bb.dh, %bb.cf, %bb.bu, %bb.ap, %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.z)
          to label %bb.ai unwind label %bb.bp

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ai:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.dp = load <2 x i16>, ptr %i.dn, align 8
  store <2 x i16> %i.dp, ptr %i.do, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.af
  invoke fastcc void @_ZN16nickel_lang_core9typecheck11mk_uniftype10nary_arrow17hec07445f921c9be3E(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.w)
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i64 96, i1 false)
  %i.dq = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.al unwind label %bb.ac     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not68 = icmp eq ptr %i.dq, null
  br i1 %.not68, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.dq, i64 232, i1 false), !noalias !101448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ax, i64 16, i1 false), !noalias !101449
  %i.dr = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.ao unwind label %bb.an, !noalias !101450

bb.an:                                            ; preds = %bb.am
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dq, i64 noundef 232, i64 noundef 8) #66, !noalias !101451
  br label %.body94

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101447
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dq, i64 noundef 232, i64 noundef 8) #66, !noalias !101451
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.dt, align 8
  store i64 20, ptr %0, align 8
  br label %bb.bk

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.du = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dv = call i64 @llvm.usub.sat.i64(i64 %i.du, i64 17)
  switch i64 %i.dv, label %default.unreachable [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.z)
          to label %bb.at unwind label %bb.ac

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.dy = load <2 x i16>, ptr %i.dw, align 8
  store <2 x i16> %i.dy, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  invoke fastcc void @"_ZN94_$LT$nls..analysis..TypeCollector$u20$as$u20$nickel_lang_core..typecheck..TypecheckVisitor$GT$10visit_term17h7877c0ed82516253E"(ptr noalias noundef align 8 dereferenceable(96) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.u)
          to label %bb.av unwind label %bb.ac

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dz = load ptr, ptr %i.cj, align 8, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  %.sroa.0191.0.copyload = load i64, ptr %i.aa, align 8
  %i.ea = icmp ult i64 %.val92, 96076792050570582
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.val92 ; 3 uses
  %.idx294 = mul nuw nsw i64 %i.cl, 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx294 ; 3 uses
end_hunk_4
