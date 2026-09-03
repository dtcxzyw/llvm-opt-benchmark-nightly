Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta8snapshot8Snapshot9from_file17heb853e059aec6017E:bb.a
  %i.cr = icmp eq i64 %i.cq, 3
  br i1 %i.cr, label %bb.aa, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.y, %bb.aa
  br label %.preheader

.split.i:                                         ; preds = %bb.w, %bb.x
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ch, i64 noundef %i.ce, i64 noundef %i.cg, i64 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @687) #54
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %.split.i
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cs = extractvalue { ptr, i64 } %i.cp, 0      ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 1
  %i.cu = xor i16 %i.ct, 11565
  %i.cv = getelementptr i8, ptr %i.cs, i64 2
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i16
  %i.cy = xor i16 %i.cx, 45
  %i.cz = or i16 %i.cu, %i.cy
  %i.da = icmp ne i16 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ab, label %.preheader.backedge

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN5alloc6string6String8truncate17hf71e28f22521745fE(ptr noalias noundef align 8 dereferenceable(24) %i.u, i64 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @688)
          to label %.loopexit416 unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %.loopexit416
  %i.dd = load i8, ptr %i.t, align 16, !range !40, !noundef !17 ; 2 uses
  %i.de = icmp eq i8 %i.dd, 30
  br i1 %i.de, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0326.0.copyload = load i64, ptr %i.df, align 8 ; 3 uses
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4327.0.copyload = load ptr, ptr %.sroa.4327.0..sroa_idx, align 16 ; 3 uses
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.5328.0.copyload = load i64, ptr %.sroa.5328.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dg = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 24, i64 noundef 8)
          to label %bb.al unwind label %bb.ae, !noalias !18727 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i = icmp sgt i64 %.sroa.0326.0.copyload, 0
  br i1 %switch.i, label %bb.af, label %bb.ec

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4327.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4327.0.copyload, i64 noundef %.sroa.0326.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18728
  br label %bb.ec

bb.ag:                                            ; preds = %bb.ac
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.477.0..sroa_idx, i64 7, i1 false)
  %.sroa.477.sroa.4.0..sroa.477.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.477.sroa.4.0.copyload = load i64, ptr %.sroa.477.sroa.4.0..sroa.477.0..sroa_idx.sroa_idx, align 8
  %.sroa.477.sroa.5.0..sroa.477.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.477.sroa.5.0.copyload = load ptr, ptr %.sroa.477.sroa.5.0..sroa.477.0..sroa_idx.sroa_idx, align 16
  %.sroa.477.sroa.6.0..sroa.477.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.477.sroa.6.0.copyload = load i64, ptr %.sroa.477.sroa.6.0..sroa.477.0..sroa_idx.sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9.0..sroa_idx16, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.578.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i8 %i.dd, ptr %i.s, align 16
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.477.sroa.4.0.copyload, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx14.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.477.sroa.5.0.copyload, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx14.sroa_idx, align 16
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.477.sroa.6.0.copyload, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx14.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_ZN5insta8snapshot8MetaData12from_content17h64f385a67ac48ca1E(ptr noalias noundef align 16 captures(address) dereferenceable(176) %i.r, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.s)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.dj = load i64, ptr %i.di, align 16, !range !34, !noundef !17 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -9223372036854775807
  %i.dl = load ptr, ptr %i.r, align 16            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  br i1 %i.dk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.dl, ptr %0, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -9223372036854775808, ptr %i.dp, align 16
  br label %bb.dy

bb.aj:                                            ; preds = %bb.ah
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.581.0..sroa_idx, i64 128, i1 false)
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.731.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.783.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.dl, ptr %i.n, align 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.dn, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store i64 %i.dj, ptr %.sroa.630.0..sroa_idx, align 16
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit, %bb.aj
  store i64 0, ptr %.sroa.571.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit191"

bb.al:                                            ; preds = %bb.ad
  store i64 %.sroa.0326.0.copyload, ptr %i.dg, align 8
  %.sroa.5311.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.sroa.4327.0.copyload, ptr %.sroa.5311.0..sroa_idx312, align 8
  %.sroa.6314.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.5328.0.copyload, ptr %.sroa.6314.0..sroa_idx315, align 8
  store ptr %i.dg, ptr %0, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @679, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -9223372036854775808, ptr %i.dr, align 16
  br label %bb.dy

bb.am:                                            ; preds = %bb.r
  store ptr %i.bx, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.ca, ptr %0, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -9223372036854775808, ptr %i.dt, align 16
  br label %bb.dy

.thread403.backedge:                              ; preds = %.noexc202, %.preheader.i.i.i, %bb.dh, %bb.dg
  br label %.thread403

.thread403:                                       ; preds = %.thread403.backedge, %.thread403.outer
  store i64 0, ptr %.sroa.571.0..sroa_idx, align 8
  %i.du = invoke fastcc { i64, ptr } @_ZN3std2io16append_to_string17h5d3e27cd4598480fE(ptr noalias noundef align 8 dereferenceable(24) %i.u, ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.an unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit ; 2 uses

.body138:                                         ; preds = %.loopexit.split-lp418.loopexit.split-lp.loopexit, %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp418.loopexit, %bb.dn, %bb.do, %bb.aq
  %.pn121 = phi { ptr, i32 } [ %i.ea, %bb.aq ], [ %i.lp, %bb.dn ], [ %i.lp, %bb.do ], [ %lpad.loopexit.split-lp428, %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit423, %.loopexit.split-lp418.loopexit ], [ %lpad.phi, %.loopexit.split-lp418.loopexit.split-lp.loopexit ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.q) #55
          to label %bb.ec unwind label %bb.cm

.loopexit.split-lp418.loopexit:                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit423 = landingpad { ptr, i32 }
          cleanup
  store ptr %.val1.i.i270504.ph, ptr %i.bt, align 16
  store i64 %.ph821.a, ptr %.sroa.6361.0..sroa_idx362, align 8
  store ptr %.val1.i.i256521.ph, ptr %i.bu, align 16
  store i64 %.ph, ptr %.sroa.6347.0..sroa_idx348, align 8
  store i64 %.ph823, ptr %i.bm, align 8
  store i64 %.ph822.a, ptr %i.bp, align 8
  br label %.body138

.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit: ; preds = %.thread403
  %lpad.loopexit824 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp418.loopexit.split-lp.loopexit

.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.dj
  %lpad.loopexit.split-lp825 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp418.loopexit.split-lp.loopexit

.loopexit.split-lp418.loopexit.split-lp.loopexit: ; preds = %.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit824, %.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp825, %.loopexit.split-lp418.loopexit.split-lp.loopexit.loopexit.split-lp ]
  store ptr %.val1.i.i270504.ph, ptr %i.bt, align 16
  store i64 %.ph821.a, ptr %.sroa.6361.0..sroa_idx362, align 8
  store ptr %.val1.i.i256521.ph, ptr %i.bu, align 16
  store i64 %.ph, ptr %.sroa.6347.0..sroa_idx348, align 8
  store i64 %.ph823, ptr %i.bm, align 8
  store i64 %.ph822.a, ptr %i.bp, align 8
  br label %.body138

.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %.body138

bb.an:                                            ; preds = %.thread403
  %i.dv = extractvalue { i64, ptr } %i.du, 0
  %i.dw = extractvalue { i64, ptr } %i.du, 1      ; 5 uses
  %i.dx = trunc nuw i64 %i.dv to i1
  br i1 %i.dx, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  store ptr %.val1.i.i270504.ph, ptr %i.bt, align 16
  store i64 %.ph821.a, ptr %.sroa.6361.0..sroa_idx362, align 8
  store ptr %.val1.i.i256521.ph, ptr %i.bu, align 16
  store i64 %.ph, ptr %.sroa.6347.0..sroa_idx348, align 8
  store i64 %.ph823, ptr %i.bm, align 8
  store i64 %.ph822.a, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.dw, ptr %i.k, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.dy = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ap, label %bb.dw, !prof !18

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc154 unwind label %bb.aq

.noexc154:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #55
          to label %.body138 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.ec = icmp eq ptr %i.dw, null
  %.pre = load i64, ptr %.sroa.571.0..sroa_idx, align 8 ; 10 uses
  br i1 %i.ec, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.ax, %bb.as
  store ptr %.val1.i.i270504.ph, ptr %i.bt, align 16
  store i64 %.ph821.a, ptr %.sroa.6361.0..sroa_idx362, align 8
  store ptr %.val1.i.i256521.ph, ptr %i.bu, align 16
  store i64 %.ph, ptr %.sroa.6347.0..sroa_idx348, align 8
  store i64 %.ph823, ptr %i.bm, align 8
  store i64 %.ph822.a, ptr %i.bp, align 8
  %i.ed = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ee = icmp sgt i64 %.pre, -1
  call void @llvm.assume(i1 %i.ee)
  %i.ef = sub nuw nsw i64 %.pre, %i.ed            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18729)
  %.not.i156 = icmp ult i64 %.pre, %i.ed
  br i1 %.not.i156, label %_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = icmp ne i64 %.pre, %i.ed
  %.not2.i = icmp ne ptr %i.dw, null
  %or.cond.i = and i1 %i.eg, %.not2.i
  br i1 %or.cond.i, label %bb.av, label %.split.i157

bb.av:                                            ; preds = %bb.au
  %i.eh = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !alias.scope !18729, !noalias !18730, !nonnull !17, !noundef !17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !18731, !noundef !17
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %.split.i157, label %bb.aw, !prof !23

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @235, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @689) #54
          to label %.noexc158 unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp

.noexc158:                                        ; preds = %bb.aw
  unreachable

.split.i157:                                      ; preds = %bb.av, %bb.au
  store i64 %i.ef, ptr %.sroa.571.0..sroa_idx, align 8, !alias.scope !18729, !noalias !18730
  br label %_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit

bb.ax:                                            ; preds = %bb.as
  %i.el = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 5 uses
  %i.em = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h550555816672d01bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.el, i64 noundef %.pre)
  %i.en = extractvalue { ptr, i64 } %i.em, 1
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.at, label %.lr.ph.split.i.i

_ZN5alloc6string6String8truncate17hf71e28f22521745fE.exit: ; preds = %.split.i157, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.n, ptr noundef nonnull align 16 dereferenceable(176) %i.q, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ak

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit191": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit191.backedge", %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !18732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18733
  store i64 0, ptr %i.f, align 8, !noalias !18733
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !18733
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !18733
  %i.ep = invoke fastcc { i64, ptr } @_ZN3std2io16append_to_string17h5d3e27cd4598480fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_ZN3std2io7BufRead9read_line17h40241fd8143992b6E.exit.i.i unwind label %bb.ay, !noalias !18734 ; 2 uses

bb.ay:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit191"
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18735)
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18735, !noalias !18733 ; 2 uses
  %i.er = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.er, label %.body136, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val1.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !18735, !noalias !18733, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18736
  br label %.body136

_ZN3std2io7BufRead9read_line17h40241fd8143992b6E.exit.i.i: ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit191"
  %i.es = extractvalue { i64, ptr } %i.ep, 0
  %i.et = extractvalue { i64, ptr } %i.ep, 1      ; 2 uses
  %i.eu = trunc nuw i64 %i.es to i1
  br i1 %i.eu, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN3std2io7BufRead9read_line17h40241fd8143992b6E.exit.i.i
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %_ZN3std2io7BufRead9read_line17h40241fd8143992b6E.exit.i.i
  %.sroa.8.0.i = phi ptr [ %i.et, %_ZN3std2io7BufRead9read_line17h40241fd8143992b6E.exit.i.i ], [ undef, %bb.ba ] ; 2 uses
  %.sroa.0.0.i160 = phi i64 [ -9223372036854775808, %_ZN3std2io7BufRead9read_line17h40241fd8143992b6E.exit.i.i ], [ -9223372036854775807, %bb.ba ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18737)
  %.val.i10.i.i = load i64, ptr %i.f, align 8, !alias.scope !18737, !noalias !18733 ; 2 uses
  %i.ew = icmp eq i64 %.val.i10.i.i, 0
  br i1 %i.ew, label %"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0286c1abf63691a9E.exit.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val1.i11.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !18737, !noalias !18733, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i11.i.i, i64 noundef %.val.i10.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18738
  br label %"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0286c1abf63691a9E.exit.i"

bb.bd:                                            ; preds = %bb.ba
  %i.ex = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !18733, !nonnull !17, !noundef !17 ; 3 uses
  %i.ey = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !18733, !noundef !17 ; 6 uses
  %.not.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i": ; preds = %bb.bd
  %i.ez = getelementptr i8, ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -1
  %rhsc.i.i = load i8, ptr %i.fa, align 1, !noalias !18734
  %i.fb = icmp eq i8 %rhsc.i.i, 10
  br i1 %i.fb, label %bb.be, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit17.i.i", %bb.be, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i", %bb.bd
  %.sroa.9.0.copyload5.i = phi i64 [ 0, %bb.bd ], [ %spec.select.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit17.i.i" ], [ 0, %bb.be ], [ %i.ey, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i" ]
  %.sroa.0.0.copyload1.i = load i64, ptr %i.f, align 8, !noalias !18739
  br label %"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0286c1abf63691a9E.exit.i"

bb.be:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i"
  %i.fc = icmp sgt i64 %i.ey, -1
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nsw i64 %i.ey, -1                   ; 4 uses
  store i64 %i.fd, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !18740, !noalias !18733
  %.not.i13.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i13.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit17.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit17.i.i": ; preds = %bb.be
  %i.fe = getelementptr i8, ptr %i.ex, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -1
  %rhsc32.i.i = load i8, ptr %i.ff, align 1, !noalias !18734
  %i.fg = icmp eq i8 %rhsc32.i.i, 13
  %i.fh = add nsw i64 %i.ey, -2
  %spec.select.i = select i1 %i.fg, i64 %i.fh, i64 %i.fd
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i"

"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0286c1abf63691a9E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i", %bb.bc, %bb.bb
  %.sroa.9.0.i = phi i64 [ undef, %bb.bb ], [ undef, %bb.bc ], [ %.sroa.9.0.copyload5.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i" ] ; 4 uses
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.i, %bb.bb ], [ %.sroa.8.0.i, %bb.bc ], [ %i.ex, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i" ] ; 7 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i160, %bb.bb ], [ %.sroa.0.0.i160, %bb.bc ], [ %.sroa.0.0.copyload1.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.thread.i.i" ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18733
  %.not.i159 = icmp eq i64 %.sroa.0.1.i, -9223372036854775807
  br i1 %.not.i159, label %bb.bg, label %bb.bf

.body136:                                         ; preds = %bb.da, %bb.cz, %bb.cs, %bb.ay, %bb.az
  %.pn127 = phi { ptr, i32 } [ %i.ja, %bb.cs ], [ %i.eq, %bb.ay ], [ %i.jo, %bb.da ], [ %i.eq, %bb.az ], [ %i.jo, %bb.cz ]
  call fastcc void @"_ZN4core3ptr153drop_in_place$LT$core..iter..adapters..enumerate..Enumerate$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$17hdc477cd00b289a61E"(ptr noalias noundef align 8 dereferenceable(56) %i.o) #55
  br label %bb.df

bb.bf:                                            ; preds = %"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0286c1abf63691a9E.exit.i"
  %i.fi = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !18732, !noalias !18741, !noundef !17 ; 2 uses
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !18732, !noalias !18741
  %i.fk = icmp eq i64 %.sroa.0.1.i, -9223372036854775808
  br i1 %i.fk, label %bb.cq, label %bb.cu

bb.bg:                                            ; preds = %"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0286c1abf63691a9E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !18742)
  call void @llvm.experimental.noalias.scope.decl(metadata !18743)
  call void @llvm.experimental.noalias.scope.decl(metadata !18744)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val3.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !18745, !noundef !17 ; 2 uses
  %i.fm = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.fm, label %bb.bi, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.bg
  %.val2.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !18745, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val3.i.i.i, i64 noundef 1) #51, !noalias !18745
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bk, %bb.bj, %.noexc170, %.noexc169, %"_ZN92_$LT$core..str..iter..RSplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42ce14be90945f97E.exit.i.i.i.i.i", %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.bi:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.bg
  %i.fo = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val.i.i.i163 = load i32, ptr %i.fo, align 8, !range !53, !alias.scope !18745, !noundef !17
  %i.fp = call noundef i32 @close(i32 noundef %.val.i.i.i163) #51, !noalias !18745 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054.i), !noalias !18746
  %i.fq = invoke { ptr, i64 } @_ZN3std4path4Path9file_stem17hae6bbfc334975c6eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc168 unwind label %bb.bh ; 2 uses

.noexc168:                                        ; preds = %bb.bi
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0      ; 2 uses
  %.not.i164 = icmp eq ptr %i.fr, null
  br i1 %.not.i164, label %bb.bj, label %"_ZN92_$LT$core..str..iter..RSplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42ce14be90945f97E.exit.i.i.i.i.i", !prof !22

"_ZN92_$LT$core..str..iter..RSplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42ce14be90945f97E.exit.i.i.i.i.i": ; preds = %.noexc168
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18746
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fr, i64 noundef %i.fs)
          to label %.noexc169 unwind label %bb.bh

.noexc169:                                        ; preds = %"_ZN92_$LT$core..str..iter..RSplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42ce14be90945f97E.exit.i.i.i.i.i"
  %i.ft = load i64, ptr %i.e, align 8, !range !44, !noalias !18746, !noundef !17
  %i.fu = trunc nuw i64 %i.ft to i1               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !18746, !nonnull !17, !align !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !18746
  %.sroa.5.0.i = select i1 %i.fu, i64 0, i64 %i.fy ; 2 uses
  %.sroa.0.0.i165 = select i1 %i.fu, ptr inttoptr (i64 1 to ptr), ptr %i.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18746
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %.sroa.054.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i165, i64 noundef %.sroa.5.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @587, i64 noundef 2)
          to label %.noexc170 unwind label %bb.bh

.noexc170:                                        ; preds = %.noexc169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.054.i, i64 104, i1 false), !alias.scope !18748, !noalias !18749
  %.sroa.4.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i166, align 8, !alias.scope !18748, !noalias !18749
  %.sroa.5.0..sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i167, align 8, !alias.scope !18748, !noalias !18749
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i8 1, ptr %.sroa.655.0..sroa_idx.i, align 8, !alias.scope !18748, !noalias !18749
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1, !alias.scope !18748, !noalias !18749
  %.sroa.856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.experimental.noalias.scope.decl(metadata !18750)
  call void @llvm.experimental.noalias.scope.decl(metadata !18751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18752
  store i64 1, ptr %.sroa.856.0..sroa_idx.i, align 8, !alias.scope !18753, !noalias !18754
end_hunk_0
