Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17h4938da9a66628a24E:bb.a
          to label %.body199 unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.ct)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211" unwind label %bb.p

bb.ca:                                            ; preds = %bb.by
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.cb:                                            ; preds = %bb.bp
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.bl) #77
          to label %bb.v unwind label %bb.bn

bb.cc:                                            ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.de, %.noexc ]
  %i.gr = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.dd, %.noexc ] ; 2 uses
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.cy, align 8, !noalias !36995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store i64 %i.gr, ptr %.sroa.4389.0..sroa_idx, align 8
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5390.0..sroa_idx, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !44 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gw, 168
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx ; 4 uses
  %i.gy = icmp eq i64 %i.gw, 0                    ; 3 uses
  br i1 %i.gy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cc
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  br label %bb.ce

.body217:                                         ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread", %.thread425.loopexit, %.thread425.loopexit.split-lp.loopexit.split-lp, %.thread425.loopexit.split-lp.loopexit, %.loopexit597, %.loopexit.split-lp598.loopexit.split-lp, %.loopexit.split-lp598.loopexit, %bb.jh, %bb.ji, %bb.jc, %bb.iw, %bb.io, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299", %.body.i.i.i.i, %bb.jj, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330", %.thread412
  %.sroa.072.8 = phi i8 [ 1, %bb.jj ], [ 1, %bb.iw ], [ %.sroa.072.9.ph.ph, %.loopexit.split-lp598.loopexit.split-lp ], [ 0, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330" ], [ %.sroa.072.10406, %.thread412 ], [ 1, %bb.ji ], [ 1, %.body.i.i.i.i ], [ 1, %bb.io ], [ 1, %bb.jh ], [ 1, %bb.jc ], [ 1, %.loopexit597 ], [ 1, %.loopexit.split-lp598.loopexit ], [ 0, %.thread425.loopexit.split-lp.loopexit ], [ 0, %.thread425.loopexit.split-lp.loopexit.split-lp ], [ 0, %.thread425.loopexit ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread" ] ; 3 uses
  %.pn154.pn = phi { ptr, i32 } [ %i.vk, %bb.jj ], [ %i.va, %bb.iw ], [ %lpad.loopexit.split-lp614, %.loopexit.split-lp598.loopexit.split-lp ], [ %.pn138, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ %.pn152, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330" ], [ %.pn140407, %.thread412 ], [ %lpad.thr_comm562, %bb.ji ], [ %i.jc, %.body.i.i.i.i ], [ %.pn152, %bb.io ], [ %lpad.thr_comm562, %bb.jh ], [ %lpad.thr_comm.split-lp563, %bb.jc ], [ %lpad.loopexit599, %.loopexit597 ], [ %lpad.loopexit613, %.loopexit.split-lp598.loopexit ], [ %lpad.loopexit580, %.thread425.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp581, %.thread425.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.thread425.loopexit ], [ %lpad.loopexit.split-lp605, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit330.thread" ] ; 3 uses
  %.val182 = load ptr, ptr %i.bh, align 8         ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val183 = load i64, ptr %i.hd, align 8, !noundef !44 ; 4 uses
  %i.he = icmp eq i64 %.val183, 0
  br i1 %i.he, label %.body, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i929

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i929: ; preds = %.body217
  %i.hf = mul i64 %.val183, 20
  %i.hg = icmp slt i64 %.val183, 922337203685477580
  call void @llvm.assume(i1 %i.hg)
  %i.hh = and i64 %i.hf, -16                      ; 2 uses
  %i.hi = add i64 %i.hh, 32                       ; 2 uses
  %i.hj = add nsw i64 %.val183, 17
  %i.hk = add i64 %i.hj, %i.hi                    ; 4 uses
  %i.hl = icmp uge i64 %i.hk, %i.hi
  %i.hm = icmp ult i64 %i.hk, 9223372036854775793
  call void @llvm.assume(i1 %i.hl)
  call void @llvm.assume(i1 %i.hm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val182) ]
  %i.hn = icmp eq i64 %i.hk, 0
  br i1 %i.hn, label %.body, label %bb.cd

bb.cd:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i929
  %i.ho = sub i64 -32, %i.hh
  %i.hp = getelementptr inbounds i8, ptr %.val182, i64 %i.ho
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hp, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %.body

.loopexit597:                                     ; preds = %bb.cf, %bb.il
  %lpad.loopexit599 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit.split-lp598.loopexit:                   ; preds = %bb.ce
  %lpad.loopexit613 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit.split-lp598.loopexit.split-lp:          ; preds = %bb.ch, %bb.gq
  %.sroa.072.9.ph.ph = phi i8 [ %.sroa.072.12.ph, %bb.gq ], [ 1, %bb.ch ]
  %lpad.loopexit.split-lp614 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.ce:                                            ; preds = %.lr.ph, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit336
  %.sroa.0345.0693 = phi ptr [ %i.gu, %.lr.ph ], [ %i.hq, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit336 ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0345.0693, i64 168 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0345.0693, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.hs = load ptr, ptr %i.gz, align 8, !nonnull !44, !align !50, !noundef !44
  %i.ht = load ptr, ptr %1, align 8, !nonnull !44, !align !57, !noundef !44
  %i.hu = load ptr, ptr %i.ha, align 8, !nonnull !44, !align !50, !noundef !44
  invoke void @"_ZN119_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..HasApparentType$GT$13apparent_type17h4e341b3d1cd094beE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0345.0693, ptr noundef nonnull align 8 %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bn, ptr noundef nonnull align 1 %i.ht, ptr nonnull %i.hu)
          to label %bb.it unwind label %.loopexit.split-lp598.loopexit

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit336, %bb.cc
  %.idx571 = mul nuw nsw i64 %4, 224
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx571 ; 3 uses
  %i.hw = icmp eq i64 %4, 0                       ; 3 uses
  br i1 %i.hw, label %._crit_edge700, label %.lr.ph699

.lr.ph699:                                        ; preds = %._crit_edge
  %spec.select177695 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ib = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph699, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328"
  %spec.select177697 = phi ptr [ %spec.select177695, %.lr.ph699 ], [ %spec.select177, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328" ] ; 3 uses
  %.sroa.0119.0696 = phi ptr [ %3, %.lr.ph699 ], [ %spec.select177697, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0119.0696, i64 200 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ay, ptr noundef nonnull align 8 dereferenceable(20) %i.il, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ay)
          to label %bb.gt unwind label %.loopexit597

._crit_edge700:                                   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit328", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.im = load ptr, ptr %i.bx, align 8, !nonnull !44, !align !50, !noundef !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ip = load i64, ptr %i.io, align 8, !noundef !44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !37014
  %i.iq = mul i64 %i.ip, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ip, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ch, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge700
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37015
  %i.is = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iq, i64 noundef range(i64 1, 9) 8) #66, !noalias !37015 ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.ch, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"

bb.ch:                                            ; preds = %bb.cg, %._crit_edge700
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.cg ], [ 0, %._crit_edge700 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc216 unwind label %.loopexit.split-lp598.loopexit.split-lp

.noexc216:                                        ; preds = %bb.ch
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i": ; preds = %bb.cg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.iu = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.is, %bb.cg ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ip, %bb.cg ] ; 2 uses
  %i.iv = icmp samesign ule i64 %i.ip, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.iv)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.t, align 8, !noalias !37014
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.iu, ptr %i.iw, align 8, !noalias !37014
  %i.ix = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %i.ix, align 8, !noalias !37014
  call void @llvm.experimental.noalias.scope.decl(metadata !37016)
  call void @llvm.experimental.noalias.scope.decl(metadata !37017)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !37018
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ci ], [ %i.ja, %bb.ck ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.ip, %bb.ci ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ck ]
  %i.iy = load i16, ptr %i.in, align 8, !range !94, !noalias !37019, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.im, i16 noundef %i.iy)
          to label %bb.ck unwind label %.body.i.i.i.i, !noalias !37020

bb.ck:                                            ; preds = %bb.cj
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.iz = getelementptr inbounds nuw [96 x i8], ptr %i.iu, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.iz, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !37020
  %i.ja = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.jb = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jb, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfde95640c74bae04E.exit.i.i.i.i.i.i.i.i", label %bb.cj

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfde95640c74bae04E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ck
  store i64 %i.ip, ptr %i.ix, align 8, !alias.scope !37021, !noalias !37022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37018
  br label %bb.cm

.body.i.i.i.i:                                    ; preds = %bb.cj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.ix, align 8, !alias.scope !37021, !noalias !37022
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #77
          to label %.body217 unwind label %bb.cl, !noalias !37014

bb.cl:                                            ; preds = %.body.i.i.i.i
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37014
  unreachable

.thread425.loopexit:                              ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17ha0fe7b91b9ac1b93E.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.thread425.loopexit.split-lp.loopexit:            ; preds = %bb.fb
  %lpad.loopexit580 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.thread425.loopexit.split-lp.loopexit.split-lp:   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit297", %._crit_edge703
  %lpad.loopexit.split-lp581 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit589:                                     ; preds = %bb.ds
  %lpad.loopexit590 = landingpad { ptr, i32 }
          cleanup
  br label %.thread412

.loopexit.split-lp.loopexit:                      ; preds = %bb.de
  %lpad.loopexit594 = landingpad { ptr, i32 }
          cleanup
  br label %.thread412

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.thread.i
  %lpad.loopexit.split-lp595 = landingpad { ptr, i32 }
          cleanup
  br label %.thread412

bb.cm:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfde95640c74bae04E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !37023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !37014
  %i.je = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !nonnull !44, !noundef !44 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !noundef !44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !37024
  %.sroa.3358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 3, ptr %.sroa.3358.0..sroa_idx, align 8, !noalias !37025
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i16 1, ptr %.sroa.4360.0..sroa_idx, align 8, !noalias !37025
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  store i16 0, ptr %.sroa.5361.0..sroa_idx, align 2, !noalias !37025
  br i1 %i.gy, label %.loopexit593.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cm
  %i.ji = getelementptr inbounds nuw [96 x i8], ptr %i.jf, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.jk = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.cn

bb.cn:                                            ; preds = %.noexc219, %.lr.ph.i
  %i.jm = phi ptr [ %i.ji, %.lr.ph.i ], [ %i.jr, %.noexc219 ] ; 7 uses
  %i.jn = phi ptr [ %i.gx, %.lr.ph.i ], [ %i.jo, %.noexc219 ] ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -168 ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -24 ; 2 uses
  %i.jq = icmp eq ptr %i.jf, %i.jm
  br i1 %i.jq, label %.loopexit593, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jr = getelementptr inbounds i8, ptr %i.jm, i64 -96 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !37024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !37024
  store ptr %i.jp, ptr %i.jj, align 8, !noalias !37024
  store ptr %i.jr, ptr %i.jk, align 8, !noalias !37024
  call void @llvm.experimental.noalias.scope.decl(metadata !37026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !37027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37027
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.js = load i64, ptr %i.jr, align 8, !range !51, !alias.scope !37026, !noalias !37028, !noundef !44
  %i.jt = call i64 @llvm.usub.sat.i64(i64 %i.js, i64 17)
  switch i64 %i.jt, label %default.unreachable1199 [
    i64 0, label %bb.cp
    i64 1, label %bb.cq
    i64 2, label %bb.cr
  ]

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !37027
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jr)
          to label %bb.cs unwind label %.thread11.i.i, !noalias !37028

.thread11.i.i:                                    ; preds = %bb.cp
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.thread7.i.i

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jr, i64 88, i1 false), !noalias !37028
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jv = load <2 x i16>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !37026, !noalias !37028
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !37026, !noalias !37028
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jr, i64 88, i1 false), !noalias !37028
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jw = load <2 x i16>, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !alias.scope !37026, !noalias !37028
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %.sroa.8.0.copyload10.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i, align 4, !alias.scope !37026, !noalias !37028
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.jx = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jy = load <2 x i16>, ptr %i.jx, align 8, !alias.scope !37026, !noalias !37028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false), !noalias !37027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !37027
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %.sroa.8.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.8.0.copyload.i.i, %bb.cq ], [ %.sroa.8.0.copyload10.i.i, %bb.cr ]
  %i.jz = phi <2 x i16> [ %i.jy, %bb.cs ], [ %i.jv, %bb.cq ], [ %i.jw, %bb.cr ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, i64 88, i1 false), !noalias !37027
  store <2 x i16> %i.jz, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !37027
  store i32 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx11.i.i, align 4, !noalias !37027
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37029
  %i.ka = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !37029 ; 7 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.cu, label %bb.cy, !prof !47

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75
          to label %.noexc.i.i unwind label %bb.cv, !noalias !37027

.noexc.i.i:                                       ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load i64, ptr %i.o, align 8, !range !51, !alias.scope !37030, !noalias !37027, !noundef !44
  %i.ke = icmp samesign ult i64 %i.kd, 18
  br i1 %i.ke, label %bb.cw, label %.thread7.i.i

bb.cw:                                            ; preds = %bb.cv
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %.thread7.i.i unwind label %bb.cx, !noalias !37027, !inline_history !2

bb.cx:                                            ; preds = %bb.cw
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37027
  unreachable

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ka, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !37027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37027
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37031
  %i.kg = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !37031 ; 3 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.cz, label %bb.de, !prof !47

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc20.i.i unwind label %bb.da, !noalias !37027

.noexc20.i.i:                                     ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h88e321ce1671944cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.q) #77
          to label %.body.i.i unwind label %bb.db, !noalias !37032

bb.db:                                            ; preds = %bb.da
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37027
  unreachable

end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17hf4377a37d5589a34E:bb.a
          to label %.body199 unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.ct)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211" unwind label %bb.p

bb.ca:                                            ; preds = %bb.by
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.cb:                                            ; preds = %bb.bp
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.bl) #77
          to label %bb.v unwind label %bb.bn

bb.cc:                                            ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.de, %.noexc ]
  %i.gr = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.dd, %.noexc ] ; 2 uses
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.cy, align 8, !noalias !37315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store i64 %i.gr, ptr %.sroa.4386.0..sroa_idx, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5387.0..sroa_idx, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !44 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gw, 168
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx ; 4 uses
  %i.gy = icmp eq i64 %i.gw, 0                    ; 3 uses
  br i1 %i.gy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cc
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  br label %bb.ce

.body217:                                         ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread", %.thread422.loopexit, %.thread422.loopexit.split-lp.loopexit.split-lp, %.thread422.loopexit.split-lp.loopexit, %.loopexit594, %.loopexit.split-lp595.loopexit.split-lp, %.loopexit.split-lp595.loopexit, %bb.jh, %bb.ji, %bb.jc, %bb.iw, %bb.io, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299", %.body.i.i.i.i, %bb.jj, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329", %.thread409
  %.sroa.072.8 = phi i8 [ 1, %bb.jj ], [ 1, %bb.iw ], [ %.sroa.072.9.ph.ph, %.loopexit.split-lp595.loopexit.split-lp ], [ 0, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329" ], [ %.sroa.072.10403, %.thread409 ], [ 1, %bb.ji ], [ 1, %.body.i.i.i.i ], [ 1, %bb.io ], [ 1, %bb.jh ], [ 1, %bb.jc ], [ 1, %.loopexit594 ], [ 1, %.loopexit.split-lp595.loopexit ], [ 0, %.thread422.loopexit.split-lp.loopexit ], [ 0, %.thread422.loopexit.split-lp.loopexit.split-lp ], [ 0, %.thread422.loopexit ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread" ] ; 3 uses
  %.pn154.pn = phi { ptr, i32 } [ %i.vg, %bb.jj ], [ %i.uy, %bb.iw ], [ %lpad.loopexit.split-lp611, %.loopexit.split-lp595.loopexit.split-lp ], [ %.pn138, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit299" ], [ %.pn152, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329" ], [ %.pn140404, %.thread409 ], [ %lpad.thr_comm559, %bb.ji ], [ %i.jc, %.body.i.i.i.i ], [ %.pn152, %bb.io ], [ %lpad.thr_comm559, %bb.jh ], [ %lpad.thr_comm.split-lp560, %bb.jc ], [ %lpad.loopexit596, %.loopexit594 ], [ %lpad.loopexit610, %.loopexit.split-lp595.loopexit ], [ %lpad.loopexit577, %.thread422.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp578, %.thread422.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.thread422.loopexit ], [ %lpad.loopexit.split-lp602, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329.thread" ] ; 3 uses
  %.val182 = load ptr, ptr %i.bh, align 8         ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val183 = load i64, ptr %i.hd, align 8, !noundef !44 ; 4 uses
  %i.he = icmp eq i64 %.val183, 0
  br i1 %i.he, label %.body, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i926

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i926: ; preds = %.body217
  %i.hf = mul i64 %.val183, 20
  %i.hg = icmp slt i64 %.val183, 922337203685477580
  call void @llvm.assume(i1 %i.hg)
  %i.hh = and i64 %i.hf, -16                      ; 2 uses
  %i.hi = add i64 %i.hh, 32                       ; 2 uses
  %i.hj = add nsw i64 %.val183, 17
  %i.hk = add i64 %i.hj, %i.hi                    ; 4 uses
  %i.hl = icmp uge i64 %i.hk, %i.hi
  %i.hm = icmp ult i64 %i.hk, 9223372036854775793
  call void @llvm.assume(i1 %i.hl)
  call void @llvm.assume(i1 %i.hm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val182) ]
  %i.hn = icmp eq i64 %i.hk, 0
  br i1 %i.hn, label %.body, label %bb.cd

bb.cd:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i926
  %i.ho = sub i64 -32, %i.hh
  %i.hp = getelementptr inbounds i8, ptr %.val182, i64 %i.ho
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hp, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %.body

.loopexit594:                                     ; preds = %bb.cf, %bb.il
  %lpad.loopexit596 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit.split-lp595.loopexit:                   ; preds = %bb.ce
  %lpad.loopexit610 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit.split-lp595.loopexit.split-lp:          ; preds = %bb.ch, %bb.gq
  %.sroa.072.9.ph.ph = phi i8 [ %.sroa.072.12.ph, %bb.gq ], [ 1, %bb.ch ]
  %lpad.loopexit.split-lp611 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.ce:                                            ; preds = %.lr.ph, %bb.jg
  %.sroa.0342.0690 = phi ptr [ %i.gu, %.lr.ph ], [ %i.hq, %bb.jg ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0342.0690, i64 168 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0342.0690, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.hs = load ptr, ptr %i.gz, align 8, !nonnull !44, !align !50, !noundef !44
  %i.ht = load ptr, ptr %1, align 8, !nonnull !44, !align !57, !noundef !44
  %i.hu = load ptr, ptr %i.ha, align 8, !nonnull !44, !align !50, !noundef !44
  invoke void @"_ZN119_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..HasApparentType$GT$13apparent_type17h4e341b3d1cd094beE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0342.0690, ptr noundef nonnull align 8 %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bn, ptr noundef nonnull align 1 %i.ht, ptr nonnull %i.hu)
          to label %bb.it unwind label %.loopexit.split-lp595.loopexit

._crit_edge:                                      ; preds = %bb.jg, %bb.cc
  %.idx568 = mul nuw nsw i64 %4, 224
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx568 ; 3 uses
  %i.hw = icmp eq i64 %4, 0                       ; 3 uses
  br i1 %i.hw, label %._crit_edge697, label %.lr.ph696

.lr.ph696:                                        ; preds = %._crit_edge
  %spec.select177692 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ib = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph696, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327"
  %spec.select177694 = phi ptr [ %spec.select177692, %.lr.ph696 ], [ %spec.select177, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327" ] ; 3 uses
  %.sroa.0119.0693 = phi ptr [ %3, %.lr.ph696 ], [ %spec.select177694, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0119.0693, i64 200 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ay, ptr noundef nonnull align 8 dereferenceable(20) %i.il, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ay)
          to label %bb.gt unwind label %.loopexit594

._crit_edge697:                                   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit327", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.im = load ptr, ptr %i.bx, align 8, !nonnull !44, !align !50, !noundef !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ip = load i64, ptr %i.io, align 8, !noundef !44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !37334
  %i.iq = mul i64 %i.ip, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ip, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ch, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge697
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37335
  %i.is = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iq, i64 noundef range(i64 1, 9) 8) #66, !noalias !37335 ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.ch, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"

bb.ch:                                            ; preds = %bb.cg, %._crit_edge697
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.cg ], [ 0, %._crit_edge697 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc216 unwind label %.loopexit.split-lp595.loopexit.split-lp

.noexc216:                                        ; preds = %bb.ch
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i": ; preds = %bb.cg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.iu = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.is, %bb.cg ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ip, %bb.cg ] ; 2 uses
  %i.iv = icmp samesign ule i64 %i.ip, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.iv)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.t, align 8, !noalias !37334
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.iu, ptr %i.iw, align 8, !noalias !37334
  %i.ix = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %i.ix, align 8, !noalias !37334
  call void @llvm.experimental.noalias.scope.decl(metadata !37336)
  call void @llvm.experimental.noalias.scope.decl(metadata !37337)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !37338
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ci ], [ %i.ja, %bb.ck ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.ip, %bb.ci ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.ck ]
  %i.iy = load i16, ptr %i.in, align 8, !range !94, !noalias !37339, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.im, i16 noundef %i.iy)
          to label %bb.ck unwind label %.body.i.i.i.i, !noalias !37340

bb.ck:                                            ; preds = %bb.cj
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.iz = getelementptr inbounds nuw [96 x i8], ptr %i.iu, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.iz, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !37340
  %i.ja = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.jb = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jb, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h321de619dfb1926cE.exit.i.i.i.i.i.i.i.i", label %bb.cj

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h321de619dfb1926cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ck
  store i64 %i.ip, ptr %i.ix, align 8, !alias.scope !37341, !noalias !37342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37338
  br label %bb.cm

.body.i.i.i.i:                                    ; preds = %bb.cj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.ix, align 8, !alias.scope !37341, !noalias !37342
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #77
          to label %.body217 unwind label %bb.cl, !noalias !37334

bb.cl:                                            ; preds = %.body.i.i.i.i
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37334
  unreachable

.thread422.loopexit:                              ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h4be560277c5134fbE.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.thread422.loopexit.split-lp.loopexit:            ; preds = %bb.fb
  %lpad.loopexit577 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.thread422.loopexit.split-lp.loopexit.split-lp:   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit297", %._crit_edge700
  %lpad.loopexit.split-lp578 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.loopexit586:                                     ; preds = %bb.ds
  %lpad.loopexit587 = landingpad { ptr, i32 }
          cleanup
  br label %.thread409

.loopexit.split-lp.loopexit:                      ; preds = %bb.de
  %lpad.loopexit591 = landingpad { ptr, i32 }
          cleanup
  br label %.thread409

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.thread.i
  %lpad.loopexit.split-lp592 = landingpad { ptr, i32 }
          cleanup
  br label %.thread409

bb.cm:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h321de619dfb1926cE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !37343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !37334
  %i.je = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !nonnull !44, !noundef !44 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !noundef !44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !37344
  %.sroa.3355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 3, ptr %.sroa.3355.0..sroa_idx, align 8, !noalias !37345
  %.sroa.4356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i16 1, ptr %.sroa.4357.0..sroa_idx, align 8, !noalias !37345
  %.sroa.5358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  store i16 0, ptr %.sroa.5358.0..sroa_idx, align 2, !noalias !37345
  br i1 %i.gy, label %.loopexit590.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cm
  %i.ji = getelementptr inbounds nuw [96 x i8], ptr %i.jf, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.jk = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.cn

bb.cn:                                            ; preds = %.noexc219, %.lr.ph.i
  %i.jm = phi ptr [ %i.ji, %.lr.ph.i ], [ %i.jr, %.noexc219 ] ; 7 uses
  %i.jn = phi ptr [ %i.gx, %.lr.ph.i ], [ %i.jo, %.noexc219 ] ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -168 ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -24 ; 2 uses
  %i.jq = icmp eq ptr %i.jf, %i.jm
  br i1 %i.jq, label %.loopexit590, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jr = getelementptr inbounds i8, ptr %i.jm, i64 -96 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !37344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !37344
  store ptr %i.jp, ptr %i.jj, align 8, !noalias !37344
  store ptr %i.jr, ptr %i.jk, align 8, !noalias !37344
  call void @llvm.experimental.noalias.scope.decl(metadata !37346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !37347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37347
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.js = load i64, ptr %i.jr, align 8, !range !51, !alias.scope !37346, !noalias !37348, !noundef !44
  %i.jt = call i64 @llvm.usub.sat.i64(i64 %i.js, i64 17)
  switch i64 %i.jt, label %default.unreachable1196 [
    i64 0, label %bb.cp
    i64 1, label %bb.cq
    i64 2, label %bb.cr
  ]

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !37347
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jr)
          to label %bb.cs unwind label %.thread11.i.i, !noalias !37348

.thread11.i.i:                                    ; preds = %bb.cp
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.thread7.i.i

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jr, i64 88, i1 false), !noalias !37348
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jv = load <2 x i16>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !37346, !noalias !37348
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !37346, !noalias !37348
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.jr, i64 88, i1 false), !noalias !37348
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jw = load <2 x i16>, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !alias.scope !37346, !noalias !37348
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %.sroa.8.0.copyload10.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i, align 4, !alias.scope !37346, !noalias !37348
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.jx = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %i.jy = load <2 x i16>, ptr %i.jx, align 8, !alias.scope !37346, !noalias !37348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false), !noalias !37347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !37347
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %.sroa.8.0.i.i = phi i32 [ undef, %bb.cs ], [ %.sroa.8.0.copyload.i.i, %bb.cq ], [ %.sroa.8.0.copyload10.i.i, %bb.cr ]
  %i.jz = phi <2 x i16> [ %i.jy, %bb.cs ], [ %i.jv, %bb.cq ], [ %i.jw, %bb.cr ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, i64 88, i1 false), !noalias !37347
  store <2 x i16> %i.jz, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !37347
  store i32 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx11.i.i, align 4, !noalias !37347
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37349
  %i.ka = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !37349 ; 7 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.cu, label %bb.cy, !prof !47

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75
          to label %.noexc.i.i unwind label %bb.cv, !noalias !37347

.noexc.i.i:                                       ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load i64, ptr %i.o, align 8, !range !51, !alias.scope !37350, !noalias !37347, !noundef !44
  %i.ke = icmp samesign ult i64 %i.kd, 18
  br i1 %i.ke, label %bb.cw, label %.thread7.i.i

bb.cw:                                            ; preds = %bb.cv
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %.thread7.i.i unwind label %bb.cx, !noalias !37347, !inline_history !2

bb.cx:                                            ; preds = %bb.cw
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37347
  unreachable

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ka, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !37347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37347
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37351
  %i.kg = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !37351 ; 3 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.cz, label %bb.de, !prof !47

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #75
          to label %.noexc20.i.i unwind label %bb.da, !noalias !37347

.noexc20.i.i:                                     ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h88e321ce1671944cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.q) #77
          to label %.body.i.i unwind label %bb.db, !noalias !37352

bb.db:                                            ; preds = %bb.da
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37347
  unreachable

end_hunk_1
begin_hunk_2_@_ZN3nls8requests4goto17handle_references17h963737526d75fc78E:bb.a
.noexc153:                                        ; preds = %.preheader.i
  %i.en = add nuw i64 %.sroa.06.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.eo = icmp eq i64 %i.en, %.val3.i.i.i
  br i1 %i.eo, label %.lr.ph, label %.preheader.i

.thread393.loopexit:                              ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread385.thread

.thread393.loopexit.split-lp:                     ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread385.thread

.lr.ph:                                           ; preds = %.noexc153, %.loopexit423
  %.sroa.0276.0.copyload = load i64, ptr %i.ad, align 8 ; 3 uses
  %i.ep = icmp ult i64 %.val3.i.i.i, 768614336404564651
  call void @llvm.assume(i1 %i.ep)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body178

.body178:                                         ; preds = %bb.dl, %.body.sink.split.i.i, %bb.dm, %bb.ac
  %eh.lpad-body179 = phi { ptr, i32 } [ %i.ev, %bb.ac ], [ %i.tn, %bb.dm ], [ %i.tj, %bb.dl ], [ %eh.lpad-body25.ph.i.i, %.body.sink.split.i.i ]
  %i.ew = icmp eq i64 %.sroa.0276.0.copyload, 0
  br i1 %i.ew, label %.thread385, label %bb.ad

bb.ad:                                            ; preds = %.body178
  %i.ex = mul nuw i64 %.sroa.0276.0.copyload, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !68272
  br label %.thread385

bb.ae:                                            ; preds = %.lr.ph, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit"
  %.sroa.5280.0466 = phi ptr [ %i.cx, %.lr.ph ], [ %i.ey, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit" ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.5280.0466, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5280.0466, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke fastcc void @_ZN3nls5world5World14get_field_refs17hc949882ee1de66bbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.ag, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.ab)
          to label %bb.da unwind label %bb.ac

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i", %.loopexit423.thread
  %.sroa.0276.0.copyload546.ph = load i64, ptr %i.ad, align 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit": ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split"
  %.sroa.0276.0.copyload546 = phi i64 [ %.sroa.0276.0.copyload546.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split" ], [ %.sroa.0276.0.copyload, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit" ] ; 2 uses
  %i.ez = icmp eq i64 %.sroa.0276.0.copyload546, 0
  br i1 %i.ez, label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154", label %bb.af

bb.af:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"
  %i.fa = mul nuw i64 %.sroa.0276.0.copyload546, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !68273
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"

"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154": ; preds = %bb.af, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.sroa.0284.0.copyload = load ptr, ptr %i.ac, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4285.0.copyload = load i64, ptr %.sroa.4285.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.5287.0.copyload = load i64, ptr %.sroa.5287.0..sroa_idx, align 8 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68274)
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0284.0.copyload, align 16, !noalias !68275
  %i.fb = icmp eq i64 %.sroa.4285.0.copyload, 0   ; 5 uses
  br i1 %i.fb, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"
  %i.fc = mul i64 %.sroa.4285.0.copyload, 12      ; 2 uses
  %i.fd = add i64 %i.fc, 12
  %i.fe = icmp ult i64 %i.fd, -15
  call void @llvm.assume(i1 %i.fe)
  %i.ff = add i64 %i.fc, 24
  %i.fg = and i64 %i.ff, -16                      ; 3 uses
  %i.fh = add i64 %.sroa.4285.0.copyload, 17
  %i.fi = add i64 %i.fh, %i.fg                    ; 3 uses
  %i.fj = icmp uge i64 %i.fi, %i.fg
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp ult i64 %i.fi, 9223372036854775793
  call void @llvm.assume(i1 %i.fk)
  %i.fl = sub nsw i64 0, %i.fg
  %i.fm = getelementptr inbounds i8, ptr %.sroa.0284.0.copyload, i64 %i.fl
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.fi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.fm, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !68276
  %i.fn = icmp eq i64 %.sroa.5287.0.copyload, 0
  br i1 %i.fn, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"
  %i.fo = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.fp = bitcast <16 x i1> %i.fo to i16          ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.fp, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i
  %i.fr = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fq, %bb.ag ] ; 2 uses
  %i.fs = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0284.0.copyload, %bb.ag ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fr, align 16, !noalias !68277
  %i.ft = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -192 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ft to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i": ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !68276
  %i.fw = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.fb, %i.fw
  br i1 %or.cond.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !68278
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i

bb.ai:                                            ; preds = %bb.al
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond6.i.i.i = or i1 %i.fb, %i.fy
  br i1 %or.cond6.i.i.i, label %.thread414, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !68279
  br label %.thread414

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.14.0.i.i.i = phi ptr [ %i.fq, %bb.ag ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.0284.0.copyload, %bb.ag ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.fp, %bb.ag ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fz = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ga = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = and i16 %i.fz, %.lcssa.i.i.i.i.i.i.i.i
  %i.gd = sub nsw i64 0, %i.gb
  %i.ge = getelementptr inbounds [12 x i8], ptr %.sroa.9.0.copyload.i.i.i.i.i, i64 %i.gd
  %i.gf = add i64 %.sroa.5287.0.copyload, -1      ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.gg, i64 12, i1 false), !noalias !68280
  %.sroa.0.0.i.i.i.i.i4.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.5287.0.copyload, i64 4) ; 3 uses
  %i.gh = mul i64 %.sroa.0.0.i.i.i.i.i4.i, 12     ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.5287.0.copyload, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !68281
  %i.gj = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gh, i64 noundef range(i64 1, 9) 4) #66, !noalias !68281 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.ak ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.ai, !noalias !68280

.noexc.i.i.i.i.i:                                 ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.gj, %bb.ak ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i4.i, %bb.ak ] ; 2 uses
  %i.gl = icmp ule i64 %.sroa.0.0.i.i.i.i.i4.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !noalias !68280
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !68276
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68276
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !68282)
  call void @llvm.experimental.noalias.scope.decl(metadata !68283)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.gm = icmp eq i64 %i.gf, 0
  br i1 %i.gm, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.am, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"
  %i.gn = phi ptr [ %i.hg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.am ]
  %i.go = phi i64 [ %i.hi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.am ] ; 5 uses
  %.lcssa13.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i.i, %bb.am ] ; 2 uses
  %.lcssa410.i.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.gp = phi i16 [ %i.gy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %i.gc, %bb.am ] ; 2 uses
  %.val56.i.i.i.i.i.i.i = phi i64 [ %i.hb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %i.gf, %bb.am ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gp, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gq = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.gr = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa410.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gq, align 16, !noalias !68284
  %i.gs = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -192 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gs to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa49.i.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.gw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gx = zext nneg i16 %i.gw to i64
  %i.gy = and i16 %i.gv, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.gz = sub nsw i64 0, %i.gx
  %i.ha = getelementptr inbounds [12 x i8], ptr %.lcssa49.i.i.i.i.i.i.i, i64 %i.gz
  %i.hb = add i64 %.val56.i.i.i.i.i.i.i, -1       ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.hc, i64 12, i1 false), !noalias !68285
  %4 = icmp samesign ult i64 %i.go, 768614336404564651
  call void @llvm.assume(i1 %4)
  %i.hd = load i64, ptr %i.l, align 8, !range !74, !alias.scope !68286, !noalias !68287, !noundef !44
  %i.he = icmp eq i64 %i.go, %i.hd
  br i1 %i.he, label %bb.aq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i", %bb.am
  %i.hf = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.fb, %i.hf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i, label %bb.an

bb.an:                                            ; preds = %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !68288
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.hg = phi ptr [ %.pre.i.i.i.i.i158, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.gn, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hh, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, i64 12, i1 false), !noalias !68285
  %i.hi = add nuw nsw i64 %i.go, 1                ; 2 uses
  store i64 %i.hi, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !68286, !noalias !68287
  %i.hj = icmp eq i64 %i.hb, 0
  br i1 %i.hj, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.aq
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond15.i.i.i.i.i = or i1 %i.fb, %i.hl
  br i1 %or.cond15.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !68289
  br label %.body.i.i.i.i.i

bb.aq:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.go, i64 noundef %.val56.i.i.i.i.i.i.i, i64 noundef 4, i64 noundef 12)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.ao, !noalias !68290

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.aq
  %.pre.i.i.i.i.i158 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !68286, !noalias !68287
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

.body.i.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !68276 ; 2 uses
  %i.hm = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.hm, label %.thread414, label %bb.ar

bb.ar:                                            ; preds = %.body.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68276, !nonnull !44, !noundef !44
  %i.hn = mul nuw i64 %.val.i.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !68280
  br label %.thread414

_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i: ; preds = %bb.ah, %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !68291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !68292
  br label %.thread.i

_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i: ; preds = %bb.an, %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.0.0.copyload.i155 = load i64, ptr %i.l, align 8, !noalias !68293 ; 5 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68293 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !68276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !68291
  store ptr %i.ag, ptr %i.j, align 8, !noalias !68294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !68294
  store ptr %i.j, ptr %i.i, align 8, !noalias !68295
  %i.ho = icmp eq i64 %.sroa.5287.0.copyload, 1
  br i1 %i.ho, label %.thread.i, label %bb.as, !prof !68296

bb.as:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i
  %i.hp = icmp samesign ult i64 %.sroa.5287.0.copyload, 21
  br i1 %i.hp, label %bb.au, label %bb.at, !prof !46

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hfdec7642de6e4615E(ptr noalias noundef nonnull align 4 %.sroa.6.0.copyload.i, i64 noundef %.sroa.5287.0.copyload, ptr noalias noundef align 8 dereferenceable(8) %i.i)
          to label %bb.aw unwind label %.loopexit.split-lp.i, !noalias !68297

bb.au:                                            ; preds = %bb.as
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h53adebfe3f42c0bcE(ptr noalias noundef nonnull align 4 %.sroa.6.0.copyload.i, i64 noundef %.sroa.5287.0.copyload, ptr nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.aw unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.lr.ph648
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.au, %bb.at
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i.i.i14.i, %bb.bd, %bb.bc, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.042.i = phi i64 [ %.sroa.0.04150.i, %bb.bd ], [ %.sroa.0.04150.i, %.body.i.i.i.i14.i ], [ %.sroa.0.04150.i, %bb.bc ], [ %.sroa.0.04150.i, %.loopexit.i ], [ %.sroa.0.0.copyload.i155, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.6.036.i = phi ptr [ %.sroa.6.03551.i, %bb.bd ], [ %.sroa.6.03551.i, %.body.i.i.i.i14.i ], [ %.sroa.6.03551.i, %bb.bc ], [ %.sroa.6.03551.i, %.loopexit.i ], [ %.sroa.6.0.copyload.i, %.loopexit.split-lp.i ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jp, %bb.bd ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i14.i ], [ %i.jp, %bb.bc ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.hq = icmp eq i64 %.sroa.0.042.i, 0
  br i1 %i.hq, label %.thread414, label %bb.av

bb.av:                                            ; preds = %.body.i
  %i.hr = mul nuw i64 %.sroa.0.042.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.036.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.036.i, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !68297
  br label %.thread414

.thread.i:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i
  %.sroa.0.041.ph.i = phi i64 [ %.sroa.0.0.copyload.i155, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i ]
  %.sroa.6.035.ph.i = phi ptr [ %.sroa.6.0.copyload.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i ], [ inttoptr (i64 4 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i ]
  %.sroa.12.034.ph.i = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !68294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !68291
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i"

bb.aw:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !68294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !68291
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i", %bb.aw
  %.sroa.0.024.i.i = phi i64 [ 1, %bb.aw ], [ %i.ii, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 5 uses
  %i.hs = getelementptr [12 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.0.024.i.i ; 6 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 -12
  call void @llvm.experimental.noalias.scope.decl(metadata !68298)
  call void @llvm.experimental.noalias.scope.decl(metadata !68299)
  call void @llvm.experimental.noalias.scope.decl(metadata !68300)
  call void @llvm.experimental.noalias.scope.decl(metadata !68301)
  %i.hu = load i32, ptr %i.hs, align 4, !alias.scope !68302, !noalias !68303, !noundef !44
  %i.hv = load i32, ptr %i.ht, align 4, !alias.scope !68304, !noalias !68305, !noundef !44
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.ay, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i"

bb.ay:                                            ; preds = %bb.ax
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !alias.scope !68302, !noalias !68303, !noundef !44
  %i.hz = getelementptr i8, ptr %i.hs, i64 -8
  %i.ia = load i32, ptr %i.hz, align 4, !alias.scope !68304, !noalias !68305, !noundef !44
  %i.ib = icmp eq i32 %i.hy, %i.ia
  br i1 %i.ib, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i": ; preds = %bb.ay
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.id = load i32, ptr %i.ic, align 4, !alias.scope !68302, !noalias !68303, !noundef !44
  %i.ie = getelementptr i8, ptr %i.hs, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !alias.scope !68304, !noalias !68305, !noundef !44
  %i.ig = icmp eq i32 %i.id, %i.if
  br i1 %i.ig, label %.preheader.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i"

.preheader.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i"
  %.sroa.5.025.i.i = add nuw nsw i64 %.sroa.0.024.i.i, 1 ; 2 uses
  %i.ih = icmp samesign ult i64 %.sroa.5.025.i.i, %.sroa.5287.0.copyload
  br i1 %i.ih, label %.lr.ph.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.i.i", %bb.ay, %bb.ax
  %i.ii = add nuw nsw i64 %.sroa.0.024.i.i, 1     ; 2 uses
  %.not.i.i156 = icmp eq i64 %i.ii, %.sroa.5287.0.copyload
  br i1 %.not.i.i156, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i", label %bb.ax

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ba
  %.sroa.5.027.i.i = phi i64 [ %.sroa.5.0.i.i, %bb.ba ], [ %.sroa.5.025.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.11.026.i.i = phi i64 [ %.sroa.11.1.i.i, %bb.ba ], [ %.sroa.0.024.i.i, %.preheader.i.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.5.027.i.i ; 4 uses
  %i.ik = getelementptr [12 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.11.026.i.i ; 4 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -12
  call void @llvm.experimental.noalias.scope.decl(metadata !68306)
  call void @llvm.experimental.noalias.scope.decl(metadata !68307)
  call void @llvm.experimental.noalias.scope.decl(metadata !68308)
  call void @llvm.experimental.noalias.scope.decl(metadata !68309)
  %i.im = load i32, ptr %i.ij, align 4, !alias.scope !68310, !noalias !68311, !noundef !44
  %i.in = load i32, ptr %i.il, align 4, !alias.scope !68312, !noalias !68313, !noundef !44
  %i.io = icmp eq i32 %i.im, %i.in
  br i1 %i.io, label %bb.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i"

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !68310, !noalias !68311, !noundef !44
  %i.ir = getelementptr i8, ptr %i.ik, i64 -8
  %i.is = load i32, ptr %i.ir, align 4, !alias.scope !68312, !noalias !68313, !noundef !44
  %i.it = icmp eq i32 %i.iq, %i.is
  br i1 %i.it, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i": ; preds = %bb.az
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !68310, !noalias !68311, !noundef !44
  %i.iw = getelementptr i8, ptr %i.ik, i64 -4
  %i.ix = load i32, ptr %i.iw, align 4, !alias.scope !68312, !noalias !68313, !noundef !44
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.ba, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i", %bb.az, %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ik, ptr noundef nonnull align 4 dereferenceable(12) %i.ij, i64 12, i1 false), !noalias !68314
  %i.iz = add i64 %.sroa.11.026.i.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i"
  %.sroa.11.1.i.i = phi i64 [ %i.iz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.thread.i.i" ], [ %.sroa.11.026.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit12.i.i" ] ; 2 uses
  %.sroa.5.0.i.i = add nuw nsw i64 %.sroa.5.027.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.5.0.i.i, %.sroa.5287.0.copyload
  br i1 %exitcond.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i", label %.lr.ph.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i", %bb.ba, %.preheader.i.i, %.thread.i
  %.sroa.6.03551.i = phi ptr [ %.sroa.6.035.ph.i, %.thread.i ], [ %.sroa.6.0.copyload.i, %bb.ba ], [ %.sroa.6.0.copyload.i, %.preheader.i.i ], [ %.sroa.6.0.copyload.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 8 uses
  %.sroa.0.04150.i = phi i64 [ %.sroa.0.041.ph.i, %.thread.i ], [ %.sroa.0.0.copyload.i155, %bb.ba ], [ %.sroa.0.0.copyload.i155, %.preheader.i.i ], [ %.sroa.0.0.copyload.i155, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.034.ph.i, %.thread.i ], [ %.sroa.11.1.i.i, %bb.ba ], [ %.sroa.0.024.i.i, %.preheader.i.i ], [ %.sroa.5287.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h736c741c91e7dfacE.exit.thread.i.i" ] ; 2 uses
  %.idx649 = mul nuw nsw i64 %.sroa.12.1.i, 12
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.6.03551.i, i64 %.idx649 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68315)
  call void @llvm.experimental.noalias.scope.decl(metadata !68316)
  call void @llvm.experimental.noalias.scope.decl(metadata !68317)
  call void @llvm.experimental.noalias.scope.decl(metadata !68318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !68319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !68320
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 4 uses
  %i.jc = icmp eq i64 %.sroa.12.1.i, 0
  br i1 %i.jc, label %._crit_edge, label %.lr.ph648

bb.bb:                                            ; preds = %.noexc18.i
  %i.jd = icmp eq ptr %i.jl, %i.ja
  br i1 %i.jd, label %._crit_edge, label %.lr.ph648

.lr.ph648:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i", %bb.bb
  %i.je = phi ptr [ %i.jl, %bb.bb ], [ %.sroa.6.03551.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i" ] ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !alias.scope !68321, !noalias !68322, !noundef !44
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !alias.scope !68321, !noalias !68322, !noundef !44
  %i.jk = zext i32 %i.jj to i64
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.je, align 4, !alias.scope !68321, !noalias !68322, !noundef !44
  invoke fastcc void @"_ZN71_$LT$lsp_types..Location$u20$as$u20$nls..diagnostic..LocationCompat$GT$13from_codespan17h6db607c9effbdbd5E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.g, i32 %.val.i.i.i.i.i.i.i.i.i, i64 %i.jh, i64 %i.jk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jb)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !68297

.noexc18.i:                                       ; preds = %.lr.ph648
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 12 ; 4 uses
  %i.jm = load i64, ptr %i.g, align 8, !range !70, !noalias !68323, !noundef !44 ; 4 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.jm, -9223372036854775808
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.bb, label %bb.be

._crit_edge:                                      ; preds = %bb.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h762186402974ccadE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !68320
  store i64 0, ptr %i.z, align 8, !alias.scope !68324, !noalias !68325
  %i.jn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.jn, align 8, !alias.scope !68324, !noalias !68325
  %i.jo = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.jo, align 8, !alias.scope !68324, !noalias !68325
  br label %bb.cg

bb.bc:                                            ; preds = %bb.bf
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = icmp eq i64 %i.jm, 0
  br i1 %i.jq, label %.body.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.jm, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !68326
  br label %.body.i

bb.be:                                            ; preds = %.noexc18.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !68327 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.74.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i, i64 88, i1 false), !noalias !68319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !68320
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !68328
  %i.jr = call noundef align 8 dereferenceable_or_null(416) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 416, i64 noundef range(i64 1, 9) 8) #66, !noalias !68328 ; 6 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 416, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i17.i unwind label %bb.bc, !noalias !68329
end_hunk_2
begin_hunk_3_@"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h0a629387178f6eedE":bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !105625, !noundef !44 ; 2 uses
  %i.bc = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.bd, ptr %.val1.i, align 8, !noalias !105625
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.f, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.e, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val2.i = load ptr, ptr %i.bf, align 8, !alias.scope !105624, !noalias !105623, !nonnull !44, !noundef !44 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.val3.i = load ptr, ptr %i.bg, align 8, !alias.scope !105624, !noalias !105623 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !105625, !noundef !44 ; 2 uses
  %i.bh = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.bi, ptr %.val2.i, align 8, !noalias !105625
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.g:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !105625, !noundef !44 ; 2 uses
  %i.bk = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.bl, ptr %.val3.i, align 8, !noalias !105625
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
          to label %bb.bt unwind label %.split.thread

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !44, !align !66, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !range !94, !noundef !44
  invoke void @"_ZN110_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$nickel_lang_core..typecheck..operation..PrimOpType$GT$11primop_type17h234669c19ab25f16E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i16 noundef %i.br)
          to label %bb.ce unwind label %.split.thread

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !44, !align !50, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !44, !align !50, !noundef !44
  call fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17hc30c9ff4e2362b6dE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef nonnull align 1 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dk

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit173": ; preds = %.thread240, %bb.ee
  br i1 %.sroa.036.4244, label %.thread, label %bb.ef

.split.thread:                                    ; preds = %bb.b, %bb.p, %bb.m, %bb.j, %bb.k
  %lpad.thr_comm380 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.bx = load i16, ptr %i.bw, align 8, !range !94, !alias.scope !105624, !noalias !105623, !noundef !44
  store ptr %.val.i, ptr %i.ad, align 8, !alias.scope !105623, !noalias !105624
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val1.i, ptr %i.by, align 8, !alias.scope !105623, !noalias !105624
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.val2.i, ptr %i.bz, align 8, !alias.scope !105623, !noalias !105624
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.val3.i, ptr %i.ca, align 8, !alias.scope !105623, !noalias !105624
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i16 %i.bx, ptr %i.cb, align 8, !alias.scope !105623, !noalias !105624
  invoke fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h0a629387178f6eedE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 1 %4)
          to label %bb.n unwind label %.split.thread

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
  br label %bb.ec

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
          to label %bb.q unwind label %.split.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !44 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !105626
  %i.cm = mul i64 %i.cl, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.cl, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !105627
  %i.co = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cm, i64 noundef range(i64 1, 9) 8) #66, !noalias !105627 ; 2 uses
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
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !105626
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !105626
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.cu, align 8, !noalias !105626
  call void @llvm.experimental.noalias.scope.decl(metadata !105628)
  call void @llvm.experimental.noalias.scope.decl(metadata !105629)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105630
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cx, %bb.v ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.t ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.v ]
  %i.cv = load i16, ptr %i.bw, align 8, !range !94, !noalias !105631, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ci, i16 noundef %i.cv)
          to label %bb.v unwind label %.body.i.i.i.i, !noalias !105632

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %i.cr, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !105632
  %i.cx = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd81bbccde92801deE.exit.i.i.i.i.i.i.i.i", label %bb.u

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd81bbccde92801deE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.v
  store i64 %i.cl, ptr %i.cu, align 8, !alias.scope !105633, !noalias !105634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105630
  br label %bb.y

.body.i.i.i.i:                                    ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.cu, align 8, !alias.scope !105633, !noalias !105634
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %.body.thread unwind label %bb.w, !noalias !105626

bb.w:                                             ; preds = %.body.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !105626
  unreachable

bb.x:                                             ; preds = %bb.br, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"
  br i1 %.sroa.045.2, label %.body.thread, label %.thread

.body:                                            ; preds = %bb.bp
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd81bbccde92801deE.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !105635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.dc = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.dd = load i16, ptr %i.bw, align 8, !range !94, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.dc, i16 noundef %i.dd)
          to label %bb.aa unwind label %bb.z

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit": ; preds = %.body94, %bb.ab, %bb.z
  %.sroa.045.2 = phi i1 [ %.sroa.045.3, %bb.z ], [ %.sroa.045.4, %bb.ab ], [ %.sroa.045.4, %.body94 ]
  %.sroa.039.0 = phi i8 [ %.sroa.039.1, %bb.z ], [ %.sroa.039.2, %bb.ab ], [ %.sroa.039.2, %.body94 ]
  %.pn78 = phi { ptr, i32 } [ %i.df, %bb.z ], [ %.pn76, %bb.ab ], [ %.pn76, %.body94 ] ; 2 uses
  %i.de = trunc nuw i8 %.sroa.039.0 to i1
  br i1 %i.de, label %bb.br, label %bb.x

bb.z:                                             ; preds = %bb.bm, %bb.y
  %.sroa.045.3 = phi i1 [ false, %bb.bm ], [ true, %bb.y ]
  %.sroa.039.1 = phi i8 [ %.sroa.039.4, %bb.bm ], [ 1, %bb.y ]
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.dg, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val92 = load i64, ptr %i.dh, align 8, !noundef !44 ; 3 uses
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3de5ff4f5b3157d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %.val, i64 %.val92)
          to label %bb.ad unwind label %bb.ac

.body94:                                          ; preds = %bb.bg, %bb.ah, %bb.ac, %bb.an, %bb.bq
  %.sroa.045.4 = phi i1 [ true, %bb.ah ], [ false, %bb.an ], [ true, %bb.bq ], [ %.sroa.045.5, %bb.ac ], [ false, %bb.bg ] ; 2 uses
  %.sroa.039.2 = phi i8 [ 1, %bb.ah ], [ 1, %bb.an ], [ 1, %bb.bq ], [ %.sroa.039.3, %bb.ac ], [ 0, %bb.bg ] ; 2 uses
  %.pn76 = phi { ptr, i32 } [ %i.dn, %bb.ah ], [ %i.dt, %bb.an ], [ %i.fl, %bb.bq ], [ %i.dk, %bb.ac ], [ %i.fc, %bb.bg ] ; 2 uses
  %i.di = load i64, ptr %i.z, align 8, !range !51, !alias.scope !105636, !noundef !44
  %i.dj = icmp samesign ult i64 %i.di, 18
  br i1 %i.dj, label %bb.ab, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.ab:                                            ; preds = %.body94
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" unwind label %bb.bn, !inline_history !2

bb.ac:                                            ; preds = %bb.bj, %bb.bf, %bb.av, %bb.aa, %bb.aq, %bb.ak
  %.sroa.045.5 = phi i1 [ false, %bb.bj ], [ false, %bb.bf ], [ true, %bb.aa ], [ false, %bb.ak ], [ false, %bb.av ], [ false, %bb.aq ]
  %.sroa.039.3 = phi i8 [ 0, %bb.bj ], [ 0, %bb.bf ], [ 1, %bb.aa ], [ 1, %bb.ak ], [ 1, %bb.av ], [ 1, %bb.aq ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dl = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 17)
  switch i64 %i.dm, label %default.unreachable [
    i64 0, label %bb.ae
    i64 1, label %bb.af
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit169, %bb.dl, %bb.cg, %bb.bv, %bb.ap, %bb.ad
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
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ai:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.dq = load <2 x i16>, ptr %i.do, align 8
  store <2 x i16> %i.dq, ptr %i.dp, align 8
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
  %i.dr = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.al unwind label %bb.ac     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not68 = icmp eq ptr %i.dr, null
  br i1 %.not68, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.dr, i64 232, i1 false), !noalias !105638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ax, i64 16, i1 false), !noalias !105639
  %i.ds = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.ao unwind label %bb.an, !noalias !105640

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dr, i64 noundef 232, i64 noundef 8) #66, !noalias !105641
  br label %.body94

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105637
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dr, i64 noundef 232, i64 noundef 8) #66, !noalias !105641
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.du, align 8
  store i64 20, ptr %0, align 8
  br label %bb.bl

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dv = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 17)
  switch i64 %i.dw, label %default.unreachable [
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
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.dz = load <2 x i16>, ptr %i.dx, align 8
  store <2 x i16> %i.dz, ptr %i.dy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.ea = load i64, ptr %i.u, align 8, !range !51, !alias.scope !105642, !noundef !44
  %i.eb = icmp samesign ult i64 %i.ea, 18
  br i1 %i.eb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.u)
          to label %bb.aw unwind label %bb.ac
end_hunk_3
begin_hunk_4_@"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h10a32f0e4312ca21E":bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !105736, !noundef !44 ; 2 uses
  %i.bc = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.bd, ptr %.val1.i, align 8, !noalias !105736
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.f, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.e, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val2.i = load ptr, ptr %i.bf, align 8, !alias.scope !105735, !noalias !105734, !nonnull !44, !noundef !44 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.val3.i = load ptr, ptr %i.bg, align 8, !alias.scope !105735, !noalias !105734 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !105736, !noundef !44 ; 2 uses
  %i.bh = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.bi, ptr %.val2.i, align 8, !noalias !105736
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.g:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !105736, !noundef !44 ; 2 uses
  %i.bk = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.bl, ptr %.val3.i, align 8, !noalias !105736
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
          to label %bb.bs unwind label %.split.thread

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !44, !align !66, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !range !94, !noundef !44
  invoke void @"_ZN110_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$nickel_lang_core..typecheck..operation..PrimOpType$GT$11primop_type17h234669c19ab25f16E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i16 noundef %i.br)
          to label %bb.cd unwind label %.split.thread

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !44, !align !50, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !44, !align !50, !noundef !44
  call fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17hf321c13c265583f8E(ptr noalias noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef align 8 dereferenceable(96) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.di

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit166": ; preds = %.thread233, %bb.ec
  br i1 %.sroa.036.4237, label %.thread, label %bb.ed

.split.thread:                                    ; preds = %bb.b, %bb.p, %bb.m, %bb.j, %bb.k
  %lpad.thr_comm373 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.bx = load i16, ptr %i.bw, align 8, !range !94, !alias.scope !105735, !noalias !105734, !noundef !44
  store ptr %.val.i, ptr %i.ad, align 8, !alias.scope !105734, !noalias !105735
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val1.i, ptr %i.by, align 8, !alias.scope !105734, !noalias !105735
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.val2.i, ptr %i.bz, align 8, !alias.scope !105734, !noalias !105735
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.val3.i, ptr %i.ca, align 8, !alias.scope !105734, !noalias !105735
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i16 %i.bx, ptr %i.cb, align 8, !alias.scope !105734, !noalias !105735
  invoke fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h10a32f0e4312ca21E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef align 8 dereferenceable(96) %4)
          to label %bb.n unwind label %.split.thread

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
          to label %bb.q unwind label %.split.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !44 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !105737
  %i.cm = mul i64 %i.cl, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.cl, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !105738
  %i.co = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cm, i64 noundef range(i64 1, 9) 8) #66, !noalias !105738 ; 2 uses
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
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !105737
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !105737
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.cu, align 8, !noalias !105737
  call void @llvm.experimental.noalias.scope.decl(metadata !105739)
  call void @llvm.experimental.noalias.scope.decl(metadata !105740)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105741
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cx, %bb.v ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.t ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.v ]
  %i.cv = load i16, ptr %i.bw, align 8, !range !94, !noalias !105742, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ci, i16 noundef %i.cv)
          to label %bb.v unwind label %.body.i.i.i.i, !noalias !105743

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %i.cr, i64 %.val10.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !105743
  %i.cx = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h52a031a7ecf5d880E.exit.i.i.i.i.i.i.i.i", label %bb.u

"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h52a031a7ecf5d880E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.v
  store i64 %i.cl, ptr %i.cu, align 8, !alias.scope !105744, !noalias !105745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105741
  br label %bb.y

.body.i.i.i.i:                                    ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.cu, align 8, !alias.scope !105744, !noalias !105745
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %.body.thread unwind label %bb.w, !noalias !105737

bb.w:                                             ; preds = %.body.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !105737
  unreachable

bb.x:                                             ; preds = %bb.bq, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"
  br i1 %.sroa.045.2, label %.body.thread, label %.thread

.body:                                            ; preds = %bb.bo
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %"_ZN112_$LT$core..iter..sources..repeat_with..RepeatWith$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h52a031a7ecf5d880E.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6492225678d8e748E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !105746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.dc = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !50, !noundef !44
  %i.dd = load i16, ptr %i.bw, align 8, !range !94, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.dc, i16 noundef %i.dd)
          to label %bb.aa unwind label %bb.z

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit": ; preds = %.body94, %bb.ab, %bb.z
  %.sroa.045.2 = phi i1 [ %.sroa.045.3, %bb.z ], [ %.sroa.045.4, %bb.ab ], [ %.sroa.045.4, %.body94 ]
  %.sroa.039.0 = phi i8 [ %.sroa.039.1, %bb.z ], [ %.sroa.039.2, %bb.ab ], [ %.sroa.039.2, %.body94 ]
  %.pn78 = phi { ptr, i32 } [ %i.df, %bb.z ], [ %.pn76, %bb.ab ], [ %.pn76, %.body94 ] ; 2 uses
  %i.de = trunc nuw i8 %.sroa.039.0 to i1
  br i1 %i.de, label %bb.bq, label %bb.x

bb.z:                                             ; preds = %bb.bl, %bb.y
  %.sroa.045.3 = phi i1 [ false, %bb.bl ], [ true, %bb.y ]
  %.sroa.039.1 = phi i8 [ %.sroa.039.4, %bb.bl ], [ 1, %bb.y ]
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.dg, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val92 = load i64, ptr %i.dh, align 8, !noundef !44 ; 3 uses
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3de5ff4f5b3157d0E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %.val, i64 %.val92)
          to label %bb.ad unwind label %bb.ac

.body94:                                          ; preds = %bb.bf, %bb.ah, %bb.ac, %bb.an, %bb.bp
  %.sroa.045.4 = phi i1 [ true, %bb.ah ], [ false, %bb.an ], [ true, %bb.bp ], [ %.sroa.045.5, %bb.ac ], [ false, %bb.bf ] ; 2 uses
  %.sroa.039.2 = phi i8 [ 1, %bb.ah ], [ 1, %bb.an ], [ 1, %bb.bp ], [ %.sroa.039.3, %bb.ac ], [ 0, %bb.bf ] ; 2 uses
  %.pn76 = phi { ptr, i32 } [ %i.dn, %bb.ah ], [ %i.dt, %bb.an ], [ %i.fj, %bb.bp ], [ %i.dk, %bb.ac ], [ %i.fa, %bb.bf ] ; 2 uses
  %i.di = load i64, ptr %i.z, align 8, !range !51, !alias.scope !105747, !noundef !44
  %i.dj = icmp samesign ult i64 %i.di, 18
  br i1 %i.dj, label %bb.ab, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.ab:                                            ; preds = %.body94
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" unwind label %bb.bm, !inline_history !2

bb.ac:                                            ; preds = %bb.bi, %bb.be, %bb.aa, %bb.au, %bb.aq, %bb.ak
  %.sroa.045.5 = phi i1 [ false, %bb.bi ], [ false, %bb.be ], [ true, %bb.aa ], [ false, %bb.ak ], [ false, %bb.au ], [ false, %bb.aq ]
  %.sroa.039.3 = phi i8 [ 0, %bb.bi ], [ 0, %bb.be ], [ 1, %bb.aa ], [ 1, %bb.ak ], [ 1, %bb.au ], [ 1, %bb.aq ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dl = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 17)
  switch i64 %i.dm, label %default.unreachable [
    i64 0, label %bb.ae
    i64 1, label %bb.af
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.dp, %bb.dj, %bb.cf, %bb.bu, %bb.ap, %bb.ad
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
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.ai:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.dq = load <2 x i16>, ptr %i.do, align 8
  store <2 x i16> %i.dq, ptr %i.dp, align 8
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
  %i.dr = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.al unwind label %bb.ac     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not68 = icmp eq ptr %i.dr, null
  br i1 %.not68, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.dr, i64 232, i1 false), !noalias !105749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ax, i64 16, i1 false), !noalias !105750
  %i.ds = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.ao unwind label %bb.an, !noalias !105751

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dr, i64 noundef 232, i64 noundef 8) #66, !noalias !105752
  br label %.body94

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105748
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dr, i64 noundef 232, i64 noundef 8) #66, !noalias !105752
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.du, align 8
  store i64 20, ptr %0, align 8
  br label %bb.bk

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dv = load i64, ptr %i.z, align 8, !range !51, !noundef !44
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 17)
  switch i64 %i.dw, label %default.unreachable [
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
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.dz = load <2 x i16>, ptr %i.dx, align 8
  store <2 x i16> %i.dz, ptr %i.dy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  invoke fastcc void @"_ZN94_$LT$nls..analysis..TypeCollector$u20$as$u20$nickel_lang_core..typecheck..TypecheckVisitor$GT$10visit_term17h7877c0ed82516253E"(ptr noalias noundef align 8 dereferenceable(96) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.u)
          to label %bb.av unwind label %bb.ac

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ea = load ptr, ptr %i.cj, align 8, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  %.sroa.0191.0.copyload = load i64, ptr %i.aa, align 8
end_hunk_4
