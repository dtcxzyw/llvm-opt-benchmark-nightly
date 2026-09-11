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
begin_hunk_1_@_ZN7console5utils5style17hb381d313d45317d3E:"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21045
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h7d83de40c522954fE(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 0, 1000000001) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %spec.select.i.i, 1
  %i.d = add i64 %i.c, %spec.select.i.i13
  %i.e = lshr i64 %i.d, 1
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14": ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.val11 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.g = icmp eq i64 %.val11, 0
  br i1 %i.g, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17
  %i.i = shl nuw i64 %.val11, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h01cb7c09234c7d59E"(ptr noalias noundef align 8 dereferenceable(160) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h83970c7aa31c62daE(ptr noalias noundef nonnull align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7)
  %i.c = add i64 %spec.select.i.i, 1
  %i.d = add i64 %i.c, %spec.select.i.i13
  %i.e = lshr i64 %i.d, 1
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14": ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.val11 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.g = icmp eq i64 %.val11, 0
  br i1 %i.g, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17
  %i.i = shl nuw i64 %.val11, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %9, i32 noundef %10)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h1a3fba58b3ae2c1bE"(ptr noalias noundef align 8 dereferenceable(176) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h1e00322c539418d3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 9 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 6 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 4 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 3 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not41.not = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %.not42.not = icmp samesign ugt i64 %i.l, %i.g
  br i1 %.not42.not, label %.lr.ph132, label %bb.d, !prof !23

.lr.ph132:                                        ; preds = %bb.c
  %i.n = add i64 %spec.select.i.i, %2             ; 2 uses
  %i.o = add i64 %spec.select.i.i56, %5           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.p, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.q, align 8, !nonnull !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.r, align 8  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.s, align 8, !nonnull !17
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph132, %._crit_edge127
  %.sroa.029.1131 = phi i64 [ 1, %.lr.ph132 ], [ %.sroa.029.1, %._crit_edge127 ] ; 3 uses
  %.sroa.029.0130 = phi i64 [ 0, %.lr.ph132 ], [ %.sroa.029.1131, %._crit_edge127 ] ; 16 uses
  %i.t = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef %10)
  br i1 %i.t, label %._crit_edge133, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i64 0, %.sroa.029.0130           ; 8 uses
  %i.v = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0130, i64 %i.u)
  switch i8 %i.v, label %.loopexit [
    i8 -1, label %.lr.ph126.preheader
    i8 0, label %bb.h
    i8 1, label %bb.g
  ]

.lr.ph126.preheader:                              ; preds = %.lr.ph.peel.next, %bb.ap, %bb.n, %bb.f
  br label %.lr.ph126

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i64 %.sroa.029.0130, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.7.1.peel = phi i64 [ %.sroa.029.0130, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %.sroa.11.1.peel = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %i.x = icmp eq i64 %.sroa.029.0130, 0
  br i1 %i.x, label %._crit_edge150, label %._crit_edge148.a

._crit_edge148.a:                                 ; preds = %bb.h
  %.pre159 = add nsw i64 %.sroa.029.0130, -1
  %i.y = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.z = load i64, ptr %i.y, align 8, !noundef !17
  %i.aa = add i64 %i.z, 1
  br label %bb.i

._crit_edge150:                                   ; preds = %bb.h
  %i.ab = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !17
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge150, %._crit_edge148.a
  %.sroa.06.0.peel = phi i64 [ %i.ac, %._crit_edge150 ], [ %i.aa, %._crit_edge148.a ] ; 6 uses
  %i.ad = sub i64 %.sroa.06.0.peel, %.sroa.029.0130 ; 3 uses
  %i.ae = icmp ult i64 %.sroa.06.0.peel, %spec.select.i.i
  %i.af = icmp ult i64 %i.ad, %spec.select.i.i56
  %or.cond107.peel = and i1 %i.ae, %i.af
  br i1 %or.cond107.peel, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = add i64 %.sroa.06.0.peel, %2
  %i.ah = add i64 %i.ad, %5
  %i.ai = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.ag, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.ah, i64 noundef %6)
  %i.aj = add i64 %i.ai, %.sroa.06.0.peel
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.06.1.peel = phi i64 [ %i.aj, %bb.j ], [ %.sroa.06.0.peel, %bb.i ]
  %i.ak = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0130, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1.peel, ptr %i.ak, align 8
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sub i64 %.sroa.029.0130, %i.a           ; 2 uses
  %.sroa.012.0.peel = tail call i64 @llvm.abs.i64(i64 %i.al, i1 false)
  %.not47.not.peel = icmp slt i64 %.sroa.012.0.peel, %.sroa.029.0130
  br i1 %.not47.not.peel, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = sub i64 0, %i.al
  %i.an = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0130, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.ao = load i64, ptr %i.an, align 8, !noundef !17
  %i.ap = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !17
  %i.ar = add i64 %i.aq, %i.ao
  %.not48.peel = icmp ult i64 %i.ar, %spec.select.i.i
  br i1 %.not48.peel, label %bb.n, label %.loopexit141

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %i.u
  %or.cond108.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond108.peel, label %.lr.ph126.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.n, %bb.ap
  %.sroa.7.0118 = phi i64 [ %.sroa.7.1, %bb.ap ], [ %.sroa.7.1.peel, %bb.n ] ; 5 uses
  %i.as = add nsw i64 %.sroa.7.0118, -1           ; 8 uses
  %i.at = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.as, i64 %i.u)
  switch i8 %i.at, label %.loopexit [
    i8 -1, label %.lr.ph126.preheader
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

.loopexit:                                        ; preds = %bb.f, %.lr.ph.peel.next
  unreachable

bb.o:                                             ; preds = %.lr.ph.peel.next
  %i.au = add nsw i64 %.sroa.7.0118, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.peel.next
  %.sroa.7.1 = phi i64 [ %i.as, %.lr.ph.peel.next ], [ %i.au, %bb.o ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.o ]
  %i.av = icmp eq i64 %i.as, %i.u
  br i1 %i.av, label %bb.ak, label %bb.aj

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.ag
  %not..sroa.1793.0124 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph126.preheader ]
  %.sroa.792.0123 = phi i64 [ %.sroa.792.1, %bb.ag ], [ %.sroa.029.0130, %.lr.ph126.preheader ] ; 2 uses
  %i.aw = sub i64 %.sroa.792.0123, %not..sroa.1793.0124 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.aw, %.sroa.792.0123
  br i1 %.not.i.not.i58, label %._crit_edge127, label %bb.q

bb.q:                                             ; preds = %.lr.ph126
  %i.ax = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aw, i64 %i.u)
  switch i8 %i.ax, label %bb.r [
    i8 -1, label %._crit_edge127
    i8 0, label %bb.t
    i8 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ay = add i64 %i.aw, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.792.1 = phi i64 [ %i.aw, %bb.q ], [ %i.ay, %bb.s ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.q ], [ false, %bb.s ]
  %i.az = icmp eq i64 %i.aw, %i.u
  br i1 %i.az, label %._crit_edge152, label %bb.u

._crit_edge152:                                   ; preds = %bb.t
  %.pre = add nsw i64 %i.aw, 1
  br label %bb.v

._crit_edge127:                                   ; preds = %bb.ag, %bb.q, %.lr.ph126
  %11 = icmp samesign ule i64 %.sroa.029.1131, %i.g ; 2 uses
  %i.ba = zext i1 %11 to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1131, %i.ba
  br i1 %11, label %bb.e, label %._crit_edge133

bb.u:                                             ; preds = %bb.t
  %.not43 = icmp eq i64 %i.aw, %.sroa.029.0130
  %.pre153 = add i64 %i.aw, -1                    ; 2 uses
  br i1 %.not43, label %._crit_edge151, label %bb.w

bb.v:                                             ; preds = %._crit_edge152, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge152 ], [ %i.bi, %bb.w ]
  %i.bb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !17
  br label %bb.x

._crit_edge151:                                   ; preds = %bb.u, %bb.w
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.be = load i64, ptr %i.bd, align 8, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !17
  %i.bi = add i64 %i.aw, 1                        ; 2 uses
  %i.bj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !17
  %i.bl = icmp ult i64 %i.bh, %i.bk
  br i1 %i.bl, label %bb.v, label %._crit_edge151

bb.x:                                             ; preds = %._crit_edge151, %bb.v
  %.sroa.016.0 = phi i64 [ %i.bc, %bb.v ], [ %i.bf, %._crit_edge151 ] ; 5 uses
  %i.bm = sub i64 %.sroa.016.0, %i.aw             ; 4 uses
  %i.bn = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.bo = icmp ult i64 %i.bm, %spec.select.i.i56
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  %.sroa.022.0 = phi i64 [ %i.cn, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %i.bm, %bb.x ]
  %.sroa.016.1 = phi i64 [ %i.cm, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %.sroa.016.0, %bb.x ] ; 2 uses
  %i.bp = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.bp, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.bq = sub i64 %i.n, %.sroa.016.0              ; 3 uses
  %i.br = sub i64 %i.o, %i.bm                     ; 3 uses
  %i.bs = icmp uge i64 %2, %i.bq
  %i.bt = icmp uge i64 %5, %i.br
  %or.cond.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z
  %i.bu = sub nuw i64 %i.bq, %2                   ; 2 uses
  %i.bv = sub nuw i64 %i.br, %5                   ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %i.bw = phi i64 [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bz, %bb.ae ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.cl, %bb.ae ] ; 4 uses
  %i.bx = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.by, %bb.ae ]
  %i.by = add i64 %i.bx, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.bu
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add i64 %i.bw, -1                       ; 4 uses
  %i.ca = icmp ult i64 %i.by, %.val11.i.i.i.i.i
  br i1 %i.ca, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.by, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21071
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !21072, !nonnull !17, !align !31, !noundef !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21072, !noundef !17 ; 2 uses
  %i.cf = icmp ult i64 %i.bz, %.val9.i.i.i.i.i
  br i1 %i.cf, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bz, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21071
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21073, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.cj = load ptr, ptr %i.cg, align 8, !noalias !21073, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.cc, ptr nonnull readonly align 1 %i.cj, i64 %i.ce), !alias.scope !21074, !noalias !21075
  %i.ck = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ck, label %bb.ae, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.ae:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %i.cl = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.cl, %i.bv
  br i1 %exitcond59.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.aa

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit: ; preds = %bb.aa, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", %bb.ae, %bb.z
  %.sroa.0.0.i = phi i64 [ 0, %bb.z ], [ %i.bu, %bb.aa ], [ %.sroa.01.032.i.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i" ], [ %.sroa.01.032.i.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i" ], [ %i.bv, %bb.ae ] ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.cn = add i64 %.sroa.0.0.i, %i.bm
  br label %bb.y

bb.af:                                            ; preds = %bb.y
  %i.co = sub i64 %i.aw, %i.a                     ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.co, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0130
  br i1 %.not44, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ah, %bb.y
  %.not.i57 = icmp slt i64 %.sroa.792.1, %i.u
  %or.cond109 = or i1 %.sroa.12.1, %.not.i57
  br i1 %or.cond109, label %._crit_edge127, label %.lr.ph126

bb.ah:                                            ; preds = %bb.af
  %i.cp = sub i64 0, %i.co
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !17
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !17
  %i.cu = add i64 %i.ct, %i.cr
  %.not45 = icmp ult i64 %i.cu, %spec.select.i.i
  br i1 %.not45, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = sub i64 %i.n, %.sroa.016.1
  %i.cw = sub i64 %i.o, %.sroa.022.0
  br label %._crit_edge133.sink.split

bb.aj:                                            ; preds = %bb.p
  %.not46 = icmp eq i64 %i.as, %.sroa.029.0130
  %.pre157 = add nsw i64 %.sroa.7.0118, -2        ; 2 uses
  br i1 %.not46, label %._crit_edge149, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.p
  %i.cx = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !17
  br label %bb.am

._crit_edge149:                                   ; preds = %bb.aj, %bb.al
  %i.cz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.da = load i64, ptr %i.cz, align 8, !noundef !17
  %i.db = add i64 %i.da, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !17
  %i.de = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.df = load i64, ptr %i.de, align 8, !noundef !17
  %i.dg = icmp ult i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.ak, label %._crit_edge149

bb.am:                                            ; preds = %._crit_edge149, %bb.ak
  %.sroa.06.0 = phi i64 [ %i.cy, %bb.ak ], [ %i.db, %._crit_edge149 ] ; 6 uses
  %i.dh = sub i64 %.sroa.06.0, %i.as              ; 3 uses
  %i.di = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.dj = icmp ult i64 %i.dh, %spec.select.i.i56
  %or.cond107 = and i1 %i.di, %i.dj
  br i1 %or.cond107, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ao
  %.sroa.06.1 = phi i64 [ %i.do, %bb.ao ], [ %.sroa.06.0, %bb.am ]
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.dk, align 8
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dl = add i64 %.sroa.06.0, %2
  %i.dm = add i64 %i.dh, %5
  %i.dn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.dl, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.dm, i64 noundef %6)
  %i.do = add i64 %i.dn, %.sroa.06.0
  br label %bb.an

bb.ap:                                            ; preds = %bb.aq, %bb.ar, %bb.an
  %.not.i = icmp slt i64 %.sroa.7.1, %i.u
  %or.cond108 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond108, label %.lr.ph126.preheader, label %.lr.ph.peel.next, !llvm.loop !21070

bb.aq:                                            ; preds = %bb.an
  %i.dp = sub i64 %i.as, %i.a                     ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0130
  br i1 %.not47.not, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.dq = sub i64 0, %i.dp
  %i.dr = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !17
  %i.dt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.du = load i64, ptr %i.dt, align 8, !noundef !17
  %i.dv = add i64 %i.du, %i.ds
  %.not48 = icmp ult i64 %i.dv, %spec.select.i.i
  br i1 %.not48, label %bb.ap, label %.loopexit141

.loopexit141:                                     ; preds = %bb.m, %bb.ar
  %.sroa.06.0.lcssa = phi i64 [ %.sroa.06.0, %bb.ar ], [ %.sroa.06.0.peel, %bb.m ]
  %.lcssa = phi i64 [ %i.dh, %bb.ar ], [ %i.ad, %bb.m ]
  %i.dw = add i64 %.sroa.06.0.lcssa, %2
  %i.dx = add i64 %.lcssa, %5
  br label %._crit_edge133.sink.split

._crit_edge133.sink.split:                        ; preds = %.loopexit141, %bb.ai
  %.sink194 = phi i64 [ %i.cv, %bb.ai ], [ %i.dw, %.loopexit141 ]
  %.sink192 = phi i64 [ %i.cw, %bb.ai ], [ %i.dx, %.loopexit141 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink194, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink192, ptr %i.dz, align 8
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge127, %bb.e, %._crit_edge133.sink.split
  %.sink = phi i64 [ 1, %._crit_edge133.sink.split ], [ 0, %bb.e ], [ 0, %._crit_edge127 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h74207d7c70bc4285E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 7 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 5 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not41.not = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %.not42.not = icmp samesign ugt i64 %i.l, %i.g
  br i1 %.not42.not, label %.lr.ph150, label %bb.d, !prof !23

.lr.ph150:                                        ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i67 = load i64, ptr %i.p, align 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i68 = load i64, ptr %i.t, align 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i69 = load ptr, ptr %i.u, align 8, !nonnull !17 ; 2 uses
  %.val10.i.i.i.i.i70 = load ptr, ptr %i.q, align 8, !nonnull !17 ; 2 uses
  %i.v = add i64 %spec.select.i.i, %2             ; 2 uses
  %i.w = add i64 %spec.select.i.i56, %5           ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph150, %._crit_edge145
  %.sroa.029.1149 = phi i64 [ 1, %.lr.ph150 ], [ %.sroa.029.1, %._crit_edge145 ] ; 3 uses
  %.sroa.029.0148 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.029.1149, %._crit_edge145 ] ; 7 uses
  %i.x = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef %10)
  br i1 %i.x, label %._crit_edge151, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.y = sub nsw i64 0, %.sroa.029.0148           ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %not..sroa.1497.0137 = phi i64 [ 1, %bb.an ], [ 0, %.lr.ph.preheader ]
  %.sroa.7.0136 = phi i64 [ %.sroa.7.1, %bb.an ], [ %.sroa.029.0148, %.lr.ph.preheader ] ; 2 uses
  %i.z = sub i64 %.sroa.7.0136, %not..sroa.1497.0137 ; 13 uses
  %.not.i.not.i = icmp sgt i64 %i.z, %.sroa.7.0136
  br i1 %.not.i.not.i, label %.lr.ph144.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.z, i64 %i.y)
  switch i8 %i.aa, label %bb.g [
    i8 -1, label %.lr.ph144.preheader
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = add i64 %i.z, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.7.1 = phi i64 [ %i.z, %bb.f ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ]
  %i.ac = icmp eq i64 %i.z, %i.y
  br i1 %i.ac, label %._crit_edge162, label %bb.ac

._crit_edge162:                                   ; preds = %bb.i
  %.pre167 = add nsw i64 %i.z, 1
  br label %bb.ad

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %bb.z
  %not..sroa.17106.0142 = phi i64 [ 1, %bb.z ], [ 0, %.lr.ph144.preheader ]
  %.sroa.7105.0141 = phi i64 [ %.sroa.7105.1, %bb.z ], [ %.sroa.029.0148, %.lr.ph144.preheader ] ; 2 uses
  %i.ad = sub i64 %.sroa.7105.0141, %not..sroa.17106.0142 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.ad, %.sroa.7105.0141
  br i1 %.not.i.not.i58, label %._crit_edge145, label %bb.j

bb.j:                                             ; preds = %.lr.ph144
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ad, i64 %i.y)
  switch i8 %i.ae, label %bb.k [
    i8 -1, label %._crit_edge145
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = add i64 %i.ad, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.7105.1 = phi i64 [ %i.ad, %bb.j ], [ %i.af, %bb.l ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %i.ag = icmp eq i64 %i.ad, %i.y
  br i1 %i.ag, label %._crit_edge164, label %bb.n

._crit_edge164:                                   ; preds = %bb.m
  %.pre = add nsw i64 %i.ad, 1
  br label %bb.o

._crit_edge145:                                   ; preds = %bb.z, %bb.j, %.lr.ph144
  %11 = icmp samesign ule i64 %.sroa.029.1149, %i.g ; 2 uses
  %i.ah = zext i1 %11 to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1149, %i.ah
  br i1 %11, label %bb.e, label %._crit_edge151

bb.n:                                             ; preds = %bb.m
  %.not43 = icmp eq i64 %i.ad, %.sroa.029.0148
  %.pre165 = add i64 %i.ad, -1                    ; 2 uses
  br i1 %.not43, label %._crit_edge163, label %bb.p

bb.o:                                             ; preds = %._crit_edge164, %bb.p
  %.pre-phi = phi i64 [ %.pre, %._crit_edge164 ], [ %i.ap, %bb.p ]
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !17
  br label %bb.q

._crit_edge163:                                   ; preds = %bb.n, %bb.p
  %i.ak = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre165, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.al = load i64, ptr %i.ak, align 8, !noundef !17
  %i.am = add i64 %i.al, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.an = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre165, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.ao = load i64, ptr %i.an, align 8, !noundef !17
  %i.ap = add i64 %i.ad, 1                        ; 2 uses
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !17
  %i.as = icmp ult i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.o, label %._crit_edge163

bb.q:                                             ; preds = %._crit_edge163, %bb.o
  %.sroa.016.0 = phi i64 [ %i.aj, %bb.o ], [ %i.am, %._crit_edge163 ] ; 5 uses
  %i.at = sub i64 %.sroa.016.0, %i.ad             ; 4 uses
  %i.au = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.av = icmp ult i64 %i.at, %spec.select.i.i56
  %or.cond = and i1 %i.au, %i.av
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  %.sroa.022.0 = phi i64 [ %i.bq, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %i.at, %bb.q ]
  %.sroa.016.1 = phi i64 [ %i.bp, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %.sroa.016.0, %bb.q ] ; 2 uses
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.aw, align 8
  br i1 %.not, label %bb.y, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ax = sub i64 %i.v, %.sroa.016.0              ; 3 uses
  %i.ay = sub i64 %i.w, %i.at                     ; 3 uses
  %i.az = icmp uge i64 %2, %i.ax
  %i.ba = icmp uge i64 %5, %i.ay
  %or.cond.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.bb = sub nuw i64 %i.ax, %2                   ; 2 uses
  %i.bc = sub nuw i64 %i.ay, %5                   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.bd = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.x ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  %i.be = phi i64 [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.bf, %bb.x ]
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.bb
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = add i64 %i.bd, -1                       ; 2 uses
  %i.bh = sub i64 %i.bf, %i.o                     ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %.val11.i.i.i.i.i67
  br i1 %i.bi, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bh, i64 noundef %.val11.i.i.i.i.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21106
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.u
  %i.bj = sub i64 %i.bg, %i.s                     ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %.val9.i.i.i.i.i68
  br i1 %i.bk, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bj, i64 noundef %.val9.i.i.i.i.i68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21107
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i70, i64 %i.bh
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i69, i64 %i.bj
  %.val12.i.i.i.i.i = load i32, ptr %i.bl, align 4, !noalias !21108, !noundef !17
  %.val13.i.i.i.i.i = load i32, ptr %i.bm, align 4, !noalias !21108, !noundef !17
  %i.bn = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.bn, label %bb.x, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.x:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %i.bo = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.bo, %i.bc
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.t

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.t, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", %bb.x, %bb.s
  %.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ %i.bb, %bb.t ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i" ], [ %i.bc, %bb.x ] ; 2 uses
  %i.bp = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.bq = add i64 %.sroa.0.0.i, %i.at
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.br = sub i64 %i.ad, %i.a                     ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0148
  br i1 %.not44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.aa, %bb.r
  %.not.i57 = icmp slt i64 %.sroa.7105.1, %i.y
  %or.cond122 = select i1 %.sroa.12.1, i1 true, i1 %.not.i57
  br i1 %or.cond122, label %._crit_edge145, label %.lr.ph144

bb.aa:                                            ; preds = %bb.y
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45 = icmp ult i64 %i.bx, %spec.select.i.i
  br i1 %.not45, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = sub i64 %i.v, %.sroa.016.1
  %i.bz = sub i64 %i.w, %.sroa.022.0
  br label %._crit_edge151.sink.split

bb.ac:                                            ; preds = %bb.i
  %.not46 = icmp eq i64 %i.z, %.sroa.029.0148
  %.pre169 = add i64 %i.z, -1                     ; 2 uses
  br i1 %.not46, label %._crit_edge161, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge162, %bb.ae
  %.pre-phi168 = phi i64 [ %.pre167, %._crit_edge162 ], [ %i.ch, %bb.ae ]
  %i.ca = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre-phi168, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !17
  br label %bb.af

._crit_edge161:                                   ; preds = %bb.ac, %bb.ae
  %i.cc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !17
  %i.ce = add i64 %i.cd, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !17
  %i.ch = add i64 %i.z, 1                         ; 2 uses
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !17
  %i.ck = icmp ult i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.ad, label %._crit_edge161

bb.af:                                            ; preds = %._crit_edge161, %bb.ad
  %.sroa.06.0 = phi i64 [ %i.cb, %bb.ad ], [ %i.ce, %._crit_edge161 ] ; 6 uses
  %i.cl = sub i64 %.sroa.06.0, %i.z               ; 3 uses
  %i.cm = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.cn = icmp ult i64 %i.cl, %spec.select.i.i56
  %or.cond120 = and i1 %i.cm, %i.cn
  br i1 %or.cond120, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.06.1 = phi i64 [ %i.cz, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.06.0, %bb.af ]
  %i.co = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.co, align 8
  br i1 %.not, label %bb.an, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.cp = add i64 %.sroa.06.0, %2                 ; 3 uses
  %i.cq = add i64 %i.cl, %5                       ; 3 uses
  %i.cr = icmp uge i64 %i.cp, %3
  %i.cs = icmp uge i64 %i.cq, %6
  %or.cond.i64 = or i1 %i.cr, %i.cs
  br i1 %or.cond.i64, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %i.cq
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %i.cp
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i65, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %bb.ai
  %invariant.op.i.i.i.i = sub i64 %i.cq, %i.o     ; 2 uses
  %invariant.op.i = sub i64 %i.cp, %i.s           ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i66
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i66 ], [ %i.ct, %bb.am ] ; 4 uses
  %i.ct = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.cu = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i67
  br i1 %i.cu, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i67, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21109
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71": ; preds = %bb.aj
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.cv = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i68
  br i1 %i.cv, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72", label %bb.al

bb.al:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i68, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21110
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71"
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i70, i64 %.reass.i.i.i.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i69, i64 %.reass.i
  %.val12.i.i.i.i.i73 = load i32, ptr %i.cw, align 4, !noalias !21111, !noundef !17
  %.val13.i.i.i.i.i74 = load i32, ptr %i.cx, align 4, !noalias !21111, !noundef !17
  %i.cy = icmp eq i32 %.val12.i.i.i.i.i73, %.val13.i.i.i.i.i74
  br i1 %i.cy, label %bb.am, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.am:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72"
  %exitcond.not.i.i.i.i76 = icmp eq i64 %i.ct, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i76, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %bb.aj

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72", %bb.am, %bb.ah, %bb.ai
  %.sroa.0.0.i75 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.am ], [ %.sroa.01.034.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72" ]
  %i.cz = add i64 %.sroa.0.0.i75, %.sroa.06.0
  br label %bb.ag

bb.an:                                            ; preds = %bb.ao, %bb.ap, %bb.ag
  %.not.i = icmp slt i64 %.sroa.7.1, %i.y
  %or.cond121 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond121, label %.lr.ph144.preheader, label %.lr.ph

.lr.ph144.preheader:                              ; preds = %.lr.ph, %bb.f, %bb.an
  br label %.lr.ph144

bb.ao:                                            ; preds = %bb.ag
  %i.da = sub i64 %i.z, %i.a                      ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.da, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0148
  br i1 %.not47.not, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %i.db = sub i64 0, %i.da
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !17
  %i.de = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.df = load i64, ptr %i.de, align 8, !noundef !17
  %i.dg = add i64 %i.df, %i.dd
  %.not48 = icmp ult i64 %i.dg, %spec.select.i.i
  br i1 %.not48, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = add i64 %.sroa.06.0, %2
  %i.di = add i64 %i.cl, %5
  br label %._crit_edge151.sink.split

._crit_edge151.sink.split:                        ; preds = %bb.aq, %bb.ab
  %.sink200 = phi i64 [ %i.by, %bb.ab ], [ %i.dh, %bb.aq ]
  %.sink198 = phi i64 [ %i.bz, %bb.ab ], [ %i.di, %bb.aq ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink200, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink198, ptr %i.dk, align 8
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge145, %bb.e, %._crit_edge151.sink.split
  %.sink = phi i64 [ 1, %._crit_edge151.sink.split ], [ 0, %bb.e ], [ 0, %._crit_edge145 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17he29e0990f4fb73b2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 0, 1000000001) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3) ; 7 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7) ; 5 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not41.not = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %.not42.not = icmp samesign ugt i64 %i.l, %i.g
  br i1 %.not42.not, label %.lr.ph149, label %bb.d, !prof !23

.lr.ph149:                                        ; preds = %bb.c
  %i.n = add i64 %spec.select.i.i, %3             ; 2 uses
  %i.o = add i64 %spec.select.i.i56, %7           ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph149, %._crit_edge144
  %.sroa.029.1148 = phi i64 [ 1, %.lr.ph149 ], [ %.sroa.029.1, %._crit_edge144 ] ; 3 uses
  %.sroa.029.0147 = phi i64 [ 0, %.lr.ph149 ], [ %.sroa.029.1148, %._crit_edge144 ] ; 7 uses
  %i.p = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %11, i32 noundef %12)
  br i1 %i.p, label %._crit_edge150, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.q = sub nsw i64 0, %.sroa.029.0147           ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.am
  %not..sroa.1498.0136 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph.preheader ]
  %.sroa.7.0135 = phi i64 [ %.sroa.7.1, %bb.am ], [ %.sroa.029.0147, %.lr.ph.preheader ] ; 2 uses
  %i.r = sub i64 %.sroa.7.0135, %not..sroa.1498.0136 ; 13 uses
  %.not.i.not.i = icmp sgt i64 %i.r, %.sroa.7.0135
  br i1 %.not.i.not.i, label %.lr.ph143.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.s = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.r, i64 %i.q)
  switch i8 %i.s, label %bb.g [
    i8 -1, label %.lr.ph143.preheader
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %i.r, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.7.1 = phi i64 [ %i.r, %bb.f ], [ %i.t, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ]
  %i.u = icmp eq i64 %i.r, %i.q
  br i1 %i.u, label %._crit_edge163, label %bb.ac

._crit_edge163:                                   ; preds = %bb.i
  %.pre168 = add nsw i64 %i.r, 1
  br label %bb.ad

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.z
  %not..sroa.17107.0141 = phi i64 [ 1, %bb.z ], [ 0, %.lr.ph143.preheader ]
  %.sroa.7106.0140 = phi i64 [ %.sroa.7106.1, %bb.z ], [ %.sroa.029.0147, %.lr.ph143.preheader ] ; 2 uses
  %i.v = sub i64 %.sroa.7106.0140, %not..sroa.17107.0141 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.v, %.sroa.7106.0140
  br i1 %.not.i.not.i58, label %._crit_edge144, label %bb.j

bb.j:                                             ; preds = %.lr.ph143
  %i.w = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.v, i64 %i.q)
  switch i8 %i.w, label %bb.k [
    i8 -1, label %._crit_edge144
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = add i64 %i.v, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.7106.1 = phi i64 [ %i.v, %bb.j ], [ %i.x, %bb.l ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %i.y = icmp eq i64 %i.v, %i.q
  br i1 %i.y, label %._crit_edge165, label %bb.n

._crit_edge165:                                   ; preds = %bb.m
  %.pre = add nsw i64 %i.v, 1
  br label %bb.o

._crit_edge144:                                   ; preds = %bb.z, %bb.j, %.lr.ph143
  %13 = icmp samesign ule i64 %.sroa.029.1148, %i.g ; 2 uses
  %i.z = zext i1 %13 to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1148, %i.z
  br i1 %13, label %bb.e, label %._crit_edge150

bb.n:                                             ; preds = %bb.m
  %.not43 = icmp eq i64 %i.v, %.sroa.029.0147
  %.pre166 = add i64 %i.v, -1                     ; 2 uses
  br i1 %.not43, label %._crit_edge164, label %bb.p

bb.o:                                             ; preds = %._crit_edge165, %bb.p
  %.pre-phi = phi i64 [ %.pre, %._crit_edge165 ], [ %i.ah, %bb.p ]
  %i.aa = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !17
  br label %bb.q

._crit_edge164:                                   ; preds = %bb.n, %bb.p
  %i.ac = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !17
  %i.ae = add i64 %i.ad, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.ag = load i64, ptr %i.af, align 8, !noundef !17
  %i.ah = add i64 %i.v, 1                         ; 2 uses
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !17
  %i.ak = icmp ult i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.o, label %._crit_edge164

bb.q:                                             ; preds = %._crit_edge164, %bb.o
  %.sroa.016.0 = phi i64 [ %i.ab, %bb.o ], [ %i.ae, %._crit_edge164 ] ; 5 uses
  %i.al = sub i64 %.sroa.016.0, %i.v              ; 4 uses
  %i.am = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.an = icmp ult i64 %i.al, %spec.select.i.i56
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit
  %.sroa.022.0 = phi i64 [ %i.bi, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit ], [ %i.al, %bb.q ]
  %.sroa.016.1 = phi i64 [ %i.bh, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit ], [ %.sroa.016.0, %bb.q ] ; 2 uses
  %i.ao = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.ao, align 8
  br i1 %.not, label %bb.y, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ap = sub i64 %i.n, %.sroa.016.0              ; 3 uses
  %i.aq = sub i64 %i.o, %i.al                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21155)
  %i.ar = icmp uge i64 %3, %i.ap
  %i.as = icmp uge i64 %7, %i.aq
  %or.cond.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.at = sub nuw i64 %i.ap, %3                   ; 2 uses
  %i.au = sub nuw i64 %i.aq, %7                   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.av = phi i64 [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.x ]
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.x ] ; 4 uses
  %i.aw = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ax, %bb.x ]
  %i.ax = add i64 %i.aw, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.at
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add i64 %i.av, -1                       ; 4 uses
  %i.az = icmp ult i64 %i.ax, %6
  br i1 %i.az, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ax, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21156
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i": ; preds = %bb.u
  %i.ba = icmp ult i64 %i.ay, %2
  br i1 %i.ba, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ay, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21157
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ay ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !21155, !noalias !21158, !noundef !17 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !21154, !noalias !21159, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"
  %.val10.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !21154, !noalias !21159, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !21155, !noalias !21158, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !21160, !noalias !21161
  %i.bf = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %bb.x, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

bb.x:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %i.bg = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond63.not.i.i.i.i = icmp eq i64 %i.bg, %i.au
  br i1 %exitcond63.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.t

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit: ; preds = %bb.t, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", %bb.x, %bb.s
  %.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ %i.at, %bb.t ], [ %.sroa.01.034.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i" ], [ %.sroa.01.034.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i" ], [ %i.au, %bb.x ] ; 2 uses
  %i.bh = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.bi = add i64 %.sroa.0.0.i, %i.al
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.bj = sub i64 %i.v, %i.a                      ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.bj, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0147
  br i1 %.not44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.aa, %bb.r
  %.not.i57 = icmp slt i64 %.sroa.7106.1, %i.q
  %or.cond123 = select i1 %.sroa.12.1, i1 true, i1 %.not.i57
  br i1 %or.cond123, label %._crit_edge144, label %.lr.ph143

bb.aa:                                            ; preds = %bb.y
  %i.bk = sub i64 0, %i.bj
  %i.bl = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !17
  %i.bn = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !17
  %i.bp = add i64 %i.bo, %i.bm
  %.not45 = icmp ult i64 %i.bp, %spec.select.i.i
  br i1 %.not45, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = sub i64 %i.n, %.sroa.016.1
  %i.br = sub i64 %i.o, %.sroa.022.0
  br label %._crit_edge150.sink.split

bb.ac:                                            ; preds = %bb.i
  %.not46 = icmp eq i64 %i.r, %.sroa.029.0147
  %.pre170 = add i64 %i.r, -1                     ; 2 uses
  br i1 %.not46, label %._crit_edge162, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge163, %bb.ae
  %.pre-phi169 = phi i64 [ %.pre168, %._crit_edge163 ], [ %i.bz, %bb.ae ]
  %i.bs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre-phi169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !17
  br label %bb.af

._crit_edge162:                                   ; preds = %bb.ac, %bb.ae
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre170, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !17
  %i.bw = add i64 %i.bv, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bx = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre170, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.by = load i64, ptr %i.bx, align 8, !noundef !17
  %i.bz = add i64 %i.r, 1                         ; 2 uses
  %i.ca = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !17
  %i.cc = icmp ult i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.ad, label %._crit_edge162

bb.af:                                            ; preds = %._crit_edge162, %bb.ad
  %.sroa.06.0 = phi i64 [ %i.bt, %bb.ad ], [ %i.bw, %._crit_edge162 ] ; 6 uses
  %i.cd = sub i64 %.sroa.06.0, %i.r               ; 3 uses
  %i.ce = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.cf = icmp ult i64 %i.cd, %spec.select.i.i56
  %or.cond121 = and i1 %i.ce, %i.cf
  br i1 %or.cond121, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.06.1 = phi i64 [ %i.cr, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.06.0, %bb.af ]
  %i.cg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.cg, align 8
  br i1 %.not, label %bb.am, label %bb.an

bb.ah:                                            ; preds = %bb.af
  %i.ch = add i64 %.sroa.06.0, %3                 ; 5 uses
  %i.ci = add i64 %i.cd, %7                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21163)
  %i.cj = icmp uge i64 %i.ch, %4
  %i.ck = icmp uge i64 %i.ci, %8
  %or.cond.i64 = or i1 %i.cj, %i.ck
  br i1 %or.cond.i64, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i.i.i.i = sub nuw i64 %8, %i.ci
  %spec.select.i.i4.i.i.i = sub nuw i64 %4, %i.ch
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i65, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.ai
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %2) ; 2 uses
  %umax15.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %6) ; 2 uses
  %i.cl = sub nuw i64 %umax15.i, %i.ci
  %i.cm = sub nuw i64 %umax.i, %i.ch
  %invariant.gep.i = getelementptr [16 x i8], ptr %5, i64 %i.ci
  %invariant.gep21.i = getelementptr [16 x i8], ptr %1, i64 %i.ch
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %bb.al, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.036.i.i.i.i = phi i64 [ %i.cn, %bb.al ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 7 uses
  %i.cn = add nuw i64 %.sroa.01.036.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.cl
  br i1 %exitcond.not.i, label %bb.aj, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i66
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax15.i, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21164
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67": ; preds = %.lr.ph.i.i.i.i66
  %exitcond16.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.cm
  br i1 %exitcond16.not.i, label %bb.ak, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68"

bb.ak:                                            ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21165
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %gep22.i = getelementptr [16 x i8], ptr %invariant.gep21.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %i.co = getelementptr i8, ptr %gep.i, i64 8
  %.val9.i.i.i.i.i69 = load i64, ptr %i.co, align 8, !alias.scope !21163, !noalias !21166, !noundef !17 ; 2 uses
  %i.cp = getelementptr i8, ptr %gep22.i, i64 8
  %.val11.i.i.i.i.i70 = load i64, ptr %i.cp, align 8, !alias.scope !21162, !noalias !21167, !noundef !17
  %.not.i.i.i.i.i.i.i71 = icmp eq i64 %.val9.i.i.i.i.i69, %.val11.i.i.i.i.i70
  br i1 %.not.i.i.i.i.i.i.i71, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73", label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68"
  %.val10.i.i.i.i.i74 = load ptr, ptr %gep22.i, align 8, !alias.scope !21162, !noalias !21167, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i75 = load ptr, ptr %gep.i, align 8, !alias.scope !21163, !noalias !21166, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i76 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i75, ptr nonnull readonly align 1 %.val10.i.i.i.i.i74, i64 %.val9.i.i.i.i.i69), !alias.scope !21168, !noalias !21169
  %i.cq = icmp eq i32 %bcmp.i.i.i.i.i.i.i76, 0
  br i1 %i.cq, label %bb.al, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

bb.al:                                            ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73"
  %exitcond.not.i.i.i.i77 = icmp eq i64 %i.cn, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i77, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %.lr.ph.i.i.i.i66

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit: ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73", %bb.al, %bb.ah, %bb.ai
  %.sroa.0.0.i72 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.al ], [ %.sroa.01.036.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68" ], [ %.sroa.01.036.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73" ]
  %i.cr = add i64 %.sroa.0.0.i72, %.sroa.06.0
  br label %bb.ag

bb.am:                                            ; preds = %bb.an, %bb.ao, %bb.ag
  %.not.i = icmp slt i64 %.sroa.7.1, %i.q
  %or.cond122 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond122, label %.lr.ph143.preheader, label %.lr.ph

.lr.ph143.preheader:                              ; preds = %.lr.ph, %bb.f, %bb.am
  br label %.lr.ph143

bb.an:                                            ; preds = %bb.ag
  %i.cs = sub i64 %i.r, %i.a                      ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.cs, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0147
  br i1 %.not47.not, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.ct = sub i64 0, %i.cs
  %i.cu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !17
  %i.cw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !17
  %i.cy = add i64 %i.cx, %i.cv
  %.not48 = icmp ult i64 %i.cy, %spec.select.i.i
  br i1 %.not48, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cz = add i64 %.sroa.06.0, %3
  %i.da = add i64 %i.cd, %7
  br label %._crit_edge150.sink.split

._crit_edge150.sink.split:                        ; preds = %bb.ap, %bb.ab
  %.sink205 = phi i64 [ %i.bq, %bb.ab ], [ %i.cz, %bb.ap ]
  %.sink203 = phi i64 [ %i.br, %bb.ab ], [ %i.da, %bb.ap ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink205, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink203, ptr %i.dc, align 8
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge144, %bb.e, %._crit_edge150.sink.split
  %.sink = phi i64 [ 1, %._crit_edge150.sink.split ], [ 0, %bb.e ], [ 0, %._crit_edge144 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21231)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !21232, !noalias !21233, !noundef !17
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !21231, !noalias !21234, !noundef !17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21230, !noalias !21231
  %invariant.op.i = sub i64 %2, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21230, !noalias !21231 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !21230, !noalias !21231, !nonnull !17
  %.val10.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21231, !noalias !21230, !nonnull !17
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw i64 %.sroa.01.034.i.i.i.i, 1     ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.m = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21235
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.n = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21236
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i, i64 %.reass.i.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.o, align 4, !noalias !21237, !noundef !17
  %.val13.i.i.i.i.i = load i32, ptr %i.p, align 4, !noalias !21237, !noundef !17
  %i.q = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.q, label %bb.f, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, label %bb.c

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i82 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i86, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.r = add i64 %.sroa.0.0.i82, %2               ; 11 uses
  %i.s = add i64 %.sroa.0.0.i82, %5               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21239)
  %i.t = icmp uge i64 %i.r, %3
  %i.u = icmp uge i64 %i.s, %6
  %or.cond.i21 = or i1 %i.t, %i.u
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %i.v = sub nuw i64 %3, %i.r                     ; 2 uses
  %i.w = sub nuw i64 %6, %i.s                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21239, !noalias !21238
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i23 = load i64, ptr %i.z, align 8, !alias.scope !21239, !noalias !21238 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !21238, !noalias !21239
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i24 = load i64, ptr %i.ac, align 8, !alias.scope !21238, !noalias !21239 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i25 = load ptr, ptr %i.ad, align 8, !alias.scope !21238, !noalias !21239, !nonnull !17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i26 = load ptr, ptr %i.ae, align 8, !alias.scope !21239, !noalias !21238, !nonnull !17
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i22
  %i.af = phi i64 [ %3, %.lr.ph.i.i.i.i22 ], [ %i.ai, %bb.k ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aq, %bb.k ] ; 3 uses
  %i.ag = phi i64 [ %6, %.lr.ph.i.i.i.i22 ], [ %i.ah, %bb.k ]
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %exitcond.not.i.i.i.i27 = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i27, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.af, -1                       ; 2 uses
  %i.aj = sub i64 %i.ah, %i.y                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.val11.i.i.i.i.i23
  br i1 %i.ak, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aj, i64 noundef %.val11.i.i.i.i.i23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21240
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28": ; preds = %bb.h
  %i.al = sub i64 %i.ai, %i.ab                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val9.i.i.i.i.i24
  br i1 %i.am, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.al, i64 noundef %.val9.i.i.i.i.i24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21241
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i26, i64 %i.aj
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i25, i64 %i.al
  %.val12.i.i.i.i.i30 = load i32, ptr %i.an, align 4, !noalias !21242, !noundef !17
  %.val13.i.i.i.i.i31 = load i32, ptr %i.ao, align 4, !noalias !21242, !noundef !17
  %i.ap = icmp eq i32 %.val12.i.i.i.i.i30, %.val13.i.i.i.i.i31
  br i1 %i.ap, label %bb.k, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.k:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29"
  %i.aq = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.aq, %i.w
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.g

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.g, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", %bb.k, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %.sroa.0.0.i32 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread ], [ %i.v, %bb.g ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29" ], [ %i.w, %bb.k ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i32              ; 6 uses
  %i.as = sub i64 %6, %.sroa.0.0.i32              ; 6 uses
  %.not2 = icmp ult i64 %i.r, %i.ar               ; 2 uses
  %.not3 = icmp ult i64 %i.s, %i.as               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.m, label %bb.n

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83: ; preds = %bb.f, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i86 = phi i64 [ %.sroa.01.034.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !21243, !noalias !21244, !noundef !17 ; 3 uses
  %i.aw = load i64, ptr %i.at, align 8, !range !20, !alias.scope !21243, !noalias !21244, !noundef !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.l:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21245
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !21243, !noalias !21244, !nonnull !17, !noundef !17
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.av ; 4 uses
  store i64 0, ptr %i.ba, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %2, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %5, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.0.0.i86, ptr %.sroa.658.0..sroa_idx, align 8
  %i.bb = add i64 %i.av, 1
  store i64 %i.bb, ptr %i.au, align 8, !alias.scope !21243, !noalias !21244
  br label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread

bb.m:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  br i1 %.not3, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35", %bb.y
  %.not5 = icmp eq i64 %.sroa.0.0.i32, 0
  br i1 %.not5, label %bb.ab, label %bb.z

bb.o:                                             ; preds = %bb.m
  br i1 %.not2, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.m
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.r)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !21246, !noalias !21247, !noundef !17 ; 3 uses
  %i.bf = load i64, ptr %i.bc, align 8, !range !20, !alias.scope !21246, !noalias !21247, !noundef !17
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33"
end_hunk_1
begin_hunk_2_@_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E:bb.a
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35": ; preds = %bb.s, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !21249, !noalias !21250, !nonnull !17, !noundef !17
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bp ; 4 uses
  store i64 2, ptr %i.bu, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.r, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.s, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %spec.select.i.i34, ptr %.sroa.678.0..sroa_idx, align 8
  %i.bv = add i64 %i.bp, 1
  store i64 %i.bv, ptr %i.bo, align 8, !alias.scope !21249, !noalias !21250
  br label %bb.n

bb.u:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !17 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.r, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.bz, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bx, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bz, i64 noundef %i.as, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.ca = sub nuw i64 %i.ar, %i.r
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !21252, !noalias !21253, !noundef !17 ; 4 uses
  %i.ce = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21252, !noalias !21253, !noundef !17
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21254
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.v, %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !21252, !noalias !21253, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cd ; 4 uses
  store i64 1, ptr %i.ci, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.r, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ca, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %i.s, ptr %.sroa.663.0..sroa_idx, align 8
  %i.cj = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 8, !alias.scope !21252, !noalias !21253
  %i.ck = sub nuw i64 %i.as, %i.s
  %i.cl = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21255, !noalias !21256, !noundef !17
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21257
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %i.cn = load ptr, ptr %i.cg, align 8, !alias.scope !21255, !noalias !21256, !nonnull !17, !noundef !17
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.cj ; 4 uses
  store i64 2, ptr %i.co, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.r, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.s, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %i.ck, ptr %.sroa.673.0..sroa_idx, align 8
  %i.cp = add i64 %i.cd, 2
  store i64 %i.cp, ptr %i.cc, align 8, !alias.scope !21255, !noalias !21256
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.z:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !21258, !noalias !21259, !noundef !17 ; 3 uses
  %i.ct = load i64, ptr %i.cq, align 8, !range !20, !alias.scope !21258, !noalias !21259, !noundef !17
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.aa:                                            ; preds = %bb.z
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21260
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %bb.z, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !21258, !noalias !21259, !nonnull !17, !noundef !17
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cs ; 4 uses
  store i64 0, ptr %i.cx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.sroa.0.0.i32, ptr %.sroa.654.0..sroa_idx, align 8
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !21258, !noalias !21259
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21285
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21285
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21286
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21286
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21286
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21286
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21286
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bb, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit", %bb.ba
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bf, label %bb.be

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21287
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21287
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21287
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21287
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21287
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21287
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21289)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = sub i64 %i.f, %i.c       ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21290
  store i64 0, ptr %i.o, align 8, !noalias !21290
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21291
  store i64 0, ptr %i.p, align 8, !noalias !21291
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21288, !noalias !21290, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %.not41.not.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21291
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21289, !noalias !21292, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %.not42.not.i = icmp samesign ugt i64 %i.x, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21291
  unreachable

.lr.ph125.i:                                      ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.z = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21291
  br i1 %i.z, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph125.i
  %i.aa = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.aa) ; 2 uses
  switch i8 %i.ab, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.n ], [ false, %bb.o ]
  %i.ad = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ad, label %._crit_edge147.i.a, label %._crit_edge145.i.a

._crit_edge145.i.a:                               ; preds = %bb.p
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.ae = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21291
  %i.af = load i64, ptr %i.ae, align 8, !noalias !21291, !noundef !17
  %i.ag = add i64 %i.af, 1
  br label %bb.q

._crit_edge147.i.a:                               ; preds = %bb.p
  %i.ah = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21291
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21291, !noundef !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge147.i.a, %._crit_edge145.i.a
  %.sroa.06.0.peel.i = phi i64 [ %i.ai, %._crit_edge147.i.a ], [ %i.ag, %._crit_edge145.i.a ] ; 6 uses
  %i.aj = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.al = icmp ult i64 %i.aj, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.ak, %i.al
  br i1 %or.cond107.peel.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = add i64 %.sroa.06.0.peel.i, %i.b
  %i.an = add i64 %i.aj, %i.c
  %i.ao = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.am, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.an, i64 noundef %i.f), !noalias !21293
  %i.ap = add i64 %i.ao, %.sroa.06.0.peel.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.peel.i = phi i64 [ %i.ap, %bb.r ], [ %.sroa.06.0.peel.i, %bb.q ]
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21291
  store i64 %.sroa.06.1.peel.i, ptr %i.aq, align 8, !noalias !21291
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 0, %i.ar
  %i.at = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21291
  %i.au = load i64, ptr %i.at, align 8, !noalias !21291, !noundef !17
  %i.av = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21291
  %i.aw = load i64, ptr %i.av, align 8, !noalias !21291, !noundef !17
  %i.ax = add i64 %i.aw, %i.au
  %.not48.peel.i = icmp ult i64 %i.ax, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.v, label %.loopexit129.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.aa
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.v, %bb.ax
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ax ], [ %.sroa.7.1.peel.i, %bb.v ] ; 5 uses
  %i.ay = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %i.aa)
  switch i8 %i.az, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.peel.next.i
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next.i
  %i.ba = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.ay, %.lr.ph.peel.next.i ], [ %i.ba, %bb.w ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.w ]
  %i.bb = icmp eq i64 %i.ay, %i.aa
  br i1 %i.bb, label %bb.as, label %bb.ar

.lr.ph119.preheader.i:                            ; preds = %bb.ax, %.lr.ph.peel.next.i, %bb.v
  switch i8 %i.ab, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph119.preheader.i
  %i.bc = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.y ]
  br i1 %i.ad, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.z
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21291
  %i.be = load i64, ptr %i.bd, align 8, !noalias !21291, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.aa

._crit_edge150.i:                                 ; preds = %bb.z
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21291
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !21291, !noundef !17
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bh, %._crit_edge150.i ], [ %i.bf, %._crit_edge148.i ] ; 5 uses
  %i.bi = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bj = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bk = icmp ult i64 %i.bi, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.peel.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bm = sub i64 %i.f, %i.bi
  %i.bn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bm), !noalias !21293 ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.016.0.peel.i
  %i.bp = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.022.0.peel.i = phi i64 [ %i.bp, %bb.ab ], [ %i.bi, %bb.aa ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bo, %bb.ab ], [ %.sroa.016.0.peel.i, %bb.aa ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21291
  store i64 %.sroa.016.1.peel.i, ptr %i.bq, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21291
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21291, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21291
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !21291, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45.peel.i = icmp ult i64 %i.bx, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.aa
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.af, %bb.ap
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.ap ], [ %.sroa.792.1.peel.i, %bb.af ] ; 5 uses
  %i.by = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.by, i64 %i.aa)
  switch i8 %i.bz, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ag:                                            ; preds = %.lr.ph119.peel.next.i
  %i.ca = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.by, %.lr.ph119.peel.next.i ], [ %i.ca, %bb.ag ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ag ]
  %i.cb = icmp eq i64 %i.by, %i.aa
  br i1 %i.cb, label %bb.aj, label %bb.ai

._crit_edge120.i:                                 ; preds = %bb.ap, %.lr.ph119.peel.next.i, %bb.n, %bb.af, %.lr.ph119.preheader.i
  %11 = icmp samesign ule i64 %.sroa.029.1124.i, %i.s ; 2 uses
  %i.cc = zext i1 %11 to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.cc
  br i1 %11, label %.lr.ph125.i, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit

bb.ai:                                            ; preds = %bb.ah
  %.not43.i = icmp eq i64 %i.by, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21291
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21291, !noundef !17
  br label %bb.al

._crit_edge149.i:                                 ; preds = %bb.ak, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21291
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21291, !noundef !17
  %i.ch = add i64 %i.cg, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21291
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21291, !noundef !17
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21291
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21291, !noundef !17
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.aj, label %._crit_edge149.i

bb.al:                                            ; preds = %._crit_edge149.i, %bb.aj
  %.sroa.016.0.i = phi i64 [ %i.ce, %bb.aj ], [ %i.ch, %._crit_edge149.i ] ; 5 uses
  %i.cn = sub i64 %.sroa.016.0.i, %i.by           ; 4 uses
  %i.co = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cp = icmp ult i64 %i.cn, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.022.0.i = phi i64 [ %i.cv, %bb.an ], [ %i.cn, %bb.al ]
  %.sroa.016.1.i = phi i64 [ %i.cu, %bb.an ], [ %.sroa.016.0.i, %bb.al ] ; 2 uses
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21291
  store i64 %.sroa.016.1.i, ptr %i.cq, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cr = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cs = sub i64 %i.f, %i.cn
  %i.ct = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cs), !noalias !21293 ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.016.0.i
  %i.cv = add i64 %i.ct, %i.cn
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.cw = sub i64 %i.by, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.aa
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21273

bb.aq:                                            ; preds = %bb.ao
  %i.cx = sub i64 0, %i.cw
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21291
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !21291, !noundef !17
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21291
  %i.db = load i64, ptr %i.da, align 8, !noalias !21291, !noundef !17
  %i.dc = add i64 %i.db, %i.cz
  %.not45.i = icmp ult i64 %i.dc, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.ap, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.ae, %bb.aq
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.aq ], [ %.sroa.022.0.peel.i, %bb.ae ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.aq ], [ %.sroa.016.1.peel.i, %bb.ae ]
  %i.dd = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.de = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bb

bb.ar:                                            ; preds = %bb.x
  %.not46.i = icmp eq i64 %i.ay, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.x
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21291
  %i.dg = load i64, ptr %i.df, align 8, !noalias !21291, !noundef !17
  br label %bb.au

._crit_edge146.i:                                 ; preds = %bb.at, %bb.ar
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21291
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21291, !noundef !17
  %i.dj = add i64 %i.di, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21291
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !21291, !noundef !17
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21291
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21291, !noundef !17
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %._crit_edge146.i

bb.au:                                            ; preds = %._crit_edge146.i, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.dg, %bb.as ], [ %i.dj, %._crit_edge146.i ] ; 6 uses
  %i.dp = sub i64 %.sroa.06.0.i, %i.ay            ; 3 uses
  %i.dq = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dr = icmp ult i64 %i.dp, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.dq, %i.dr
  br i1 %or.cond107.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.sroa.06.1.i = phi i64 [ %i.dw, %bb.aw ], [ %.sroa.06.0.i, %bb.au ]
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21291
  store i64 %.sroa.06.1.i, ptr %i.ds, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dt = add i64 %.sroa.06.0.i, %i.b
  %i.du = add i64 %i.dp, %i.c
  %i.dv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dt, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.du, i64 noundef %i.f), !noalias !21293
  %i.dw = add i64 %i.dv, %.sroa.06.0.i
  br label %bb.av

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.aa
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21274

bb.ay:                                            ; preds = %bb.av
  %i.dx = sub i64 %i.ay, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.dy = sub i64 0, %i.dx
  %i.dz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21291
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !21291, !noundef !17
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21291
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21291, !noundef !17
  %i.ed = add i64 %i.ec, %i.ea
  %.not48.i = icmp ult i64 %i.ed, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ax, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.u, %bb.az
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.az ], [ %.sroa.06.0.peel.i, %bb.u ]
  %.lcssa.i = phi i64 [ %i.dp, %bb.az ], [ %i.aj, %bb.u ]
  %i.ee = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.ef = add i64 %.lcssa.i, %i.c
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  %spec.select.i.i24 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.eg, align 8, !alias.scope !21294
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21294
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21294
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21294
  %i.eh = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.eh, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.eh, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ei = select i1 %i.eh, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ei, %spec.select.i.i24
  store i64 1, ptr %i.eg, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21294
  br label %bb.e

bb.bb:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.ef, %.loopexit129.i ], [ %i.de, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.ee, %.loopexit129.i ], [ %i.dd, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit: ; preds = %._crit_edge120.i, %.lr.ph125.i
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21295
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21295
  %i.ek = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21295
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21295
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41": ; preds = %bb.bc, %bb.bd
  %.sink.i39 = phi i64 [ %i.ek, %bb.bc ], [ %spec.select.i.i.i, %bb.bd ]
  store i64 1, ptr %0, align 8, !alias.scope !21295
end_hunk_2
begin_hunk_3_@_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE:bb.a

bb.t:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !17 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.bp, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bn, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bp, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bq = sub nuw i64 %i.ab, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21423)
  %i.br = load ptr, ptr %0, align 8, !alias.scope !21423, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21424)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !21424, !noalias !21423, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 136 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !21425, !noalias !21426, !noundef !17 ; 3 uses
  %i.bw = load i64, ptr %i.bt, align 8, !range !20, !alias.scope !21425, !noalias !21426, !noundef !17
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21427
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !21425, !noalias !21426, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.bv ; 4 uses
  store i64 1, ptr %i.ca, align 8, !noalias !21428
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.j, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !21428
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.bq, ptr %.sroa.568.0..sroa_idx, align 8, !noalias !21428
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %i.k, ptr %.sroa.669.0..sroa_idx, align 8, !noalias !21428
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.bu, align 8, !alias.scope !21425, !noalias !21426
  %i.cc = sub nuw i64 %i.ac, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21429)
  %i.cd = load ptr, ptr %i.br, align 8, !alias.scope !21429, !noalias !21430, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 136 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !21431, !noalias !21432, !noundef !17 ; 3 uses
  %i.ch = load i64, ptr %i.ce, align 8, !range !20, !alias.scope !21431, !noalias !21432, !noundef !17
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21433
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !21431, !noalias !21432, !nonnull !17, !noundef !17
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cg ; 4 uses
  store i64 2, ptr %i.cl, align 8, !noalias !21434
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !21434
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !21434
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.cc, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !21434
  %i.cm = add i64 %i.cg, 1
  store i64 %i.cm, ptr %i.cf, align 8, !alias.scope !21431, !noalias !21432
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21435)
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !21435, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21436)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !21436, !noalias !21435, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 136 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !21437, !noalias !21438, !noundef !17 ; 3 uses
  %i.cs = load i64, ptr %i.cp, align 8, !range !20, !alias.scope !21437, !noalias !21438, !noundef !17
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21439
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !21437, !noalias !21438, !nonnull !17, !noundef !17
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cr ; 4 uses
  store i64 0, ptr %i.cw, align 8, !noalias !21440
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !21440
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21440
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8, !noalias !21440
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.cq, align 8, !alias.scope !21437, !noalias !21438
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21465
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21465
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21466
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21466
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21466
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21466
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21466
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bb, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit", %bb.ba
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bf, label %bb.be

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21467
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21467
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21467
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21467
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21467
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21467
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21469)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = sub i64 %i.f, %i.c       ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21470
  store i64 0, ptr %i.o, align 8, !noalias !21470
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21471
  store i64 0, ptr %i.p, align 8, !noalias !21471
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21468, !noalias !21470, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %.not41.not.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21471
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21469, !noalias !21472, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %.not42.not.i = icmp samesign ugt i64 %i.x, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21471
  unreachable

.lr.ph125.i:                                      ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.z = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21471
  br i1 %i.z, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph125.i
  %i.aa = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.aa) ; 2 uses
  switch i8 %i.ab, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.n ], [ false, %bb.o ]
  %i.ad = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ad, label %._crit_edge147.i.a, label %._crit_edge145.i.a

._crit_edge145.i.a:                               ; preds = %bb.p
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.ae = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21471
  %i.af = load i64, ptr %i.ae, align 8, !noalias !21471, !noundef !17
  %i.ag = add i64 %i.af, 1
  br label %bb.q

._crit_edge147.i.a:                               ; preds = %bb.p
  %i.ah = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21471
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21471, !noundef !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge147.i.a, %._crit_edge145.i.a
  %.sroa.06.0.peel.i = phi i64 [ %i.ai, %._crit_edge147.i.a ], [ %i.ag, %._crit_edge145.i.a ] ; 6 uses
  %i.aj = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.al = icmp ult i64 %i.aj, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.ak, %i.al
  br i1 %or.cond107.peel.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = add i64 %.sroa.06.0.peel.i, %i.b
  %i.an = add i64 %i.aj, %i.c
  %i.ao = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.am, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.an, i64 noundef %i.f), !noalias !21473
  %i.ap = add i64 %i.ao, %.sroa.06.0.peel.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.peel.i = phi i64 [ %i.ap, %bb.r ], [ %.sroa.06.0.peel.i, %bb.q ]
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21471
  store i64 %.sroa.06.1.peel.i, ptr %i.aq, align 8, !noalias !21471
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 0, %i.ar
  %i.at = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21471
  %i.au = load i64, ptr %i.at, align 8, !noalias !21471, !noundef !17
  %i.av = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21471
  %i.aw = load i64, ptr %i.av, align 8, !noalias !21471, !noundef !17
  %i.ax = add i64 %i.aw, %i.au
  %.not48.peel.i = icmp ult i64 %i.ax, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.v, label %.loopexit129.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.aa
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.v, %bb.ax
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ax ], [ %.sroa.7.1.peel.i, %bb.v ] ; 5 uses
  %i.ay = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %i.aa)
  switch i8 %i.az, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.peel.next.i
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next.i
  %i.ba = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.ay, %.lr.ph.peel.next.i ], [ %i.ba, %bb.w ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.w ]
  %i.bb = icmp eq i64 %i.ay, %i.aa
  br i1 %i.bb, label %bb.as, label %bb.ar

.lr.ph119.preheader.i:                            ; preds = %bb.ax, %.lr.ph.peel.next.i, %bb.v
  switch i8 %i.ab, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph119.preheader.i
  %i.bc = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.y ]
  br i1 %i.ad, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.z
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21471
  %i.be = load i64, ptr %i.bd, align 8, !noalias !21471, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.aa

._crit_edge150.i:                                 ; preds = %bb.z
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21471
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !21471, !noundef !17
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bh, %._crit_edge150.i ], [ %i.bf, %._crit_edge148.i ] ; 5 uses
  %i.bi = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bj = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bk = icmp ult i64 %i.bi, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.peel.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bm = sub i64 %i.f, %i.bi
  %i.bn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bm), !noalias !21473 ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.016.0.peel.i
  %i.bp = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.022.0.peel.i = phi i64 [ %i.bp, %bb.ab ], [ %i.bi, %bb.aa ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bo, %bb.ab ], [ %.sroa.016.0.peel.i, %bb.aa ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21471
  store i64 %.sroa.016.1.peel.i, ptr %i.bq, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21471
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21471, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21471
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !21471, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45.peel.i = icmp ult i64 %i.bx, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.aa
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.af, %bb.ap
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.ap ], [ %.sroa.792.1.peel.i, %bb.af ] ; 5 uses
  %i.by = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.by, i64 %i.aa)
  switch i8 %i.bz, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ag:                                            ; preds = %.lr.ph119.peel.next.i
  %i.ca = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.by, %.lr.ph119.peel.next.i ], [ %i.ca, %bb.ag ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ag ]
  %i.cb = icmp eq i64 %i.by, %i.aa
  br i1 %i.cb, label %bb.aj, label %bb.ai

._crit_edge120.i:                                 ; preds = %bb.ap, %.lr.ph119.peel.next.i, %bb.n, %bb.af, %.lr.ph119.preheader.i
  %11 = icmp samesign ule i64 %.sroa.029.1124.i, %i.s ; 2 uses
  %i.cc = zext i1 %11 to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.cc
  br i1 %11, label %.lr.ph125.i, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit

bb.ai:                                            ; preds = %bb.ah
  %.not43.i = icmp eq i64 %i.by, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21471
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21471, !noundef !17
  br label %bb.al

._crit_edge149.i:                                 ; preds = %bb.ak, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21471
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21471, !noundef !17
  %i.ch = add i64 %i.cg, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21471
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21471, !noundef !17
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21471
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21471, !noundef !17
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.aj, label %._crit_edge149.i

bb.al:                                            ; preds = %._crit_edge149.i, %bb.aj
  %.sroa.016.0.i = phi i64 [ %i.ce, %bb.aj ], [ %i.ch, %._crit_edge149.i ] ; 5 uses
  %i.cn = sub i64 %.sroa.016.0.i, %i.by           ; 4 uses
  %i.co = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cp = icmp ult i64 %i.cn, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.022.0.i = phi i64 [ %i.cv, %bb.an ], [ %i.cn, %bb.al ]
  %.sroa.016.1.i = phi i64 [ %i.cu, %bb.an ], [ %.sroa.016.0.i, %bb.al ] ; 2 uses
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21471
  store i64 %.sroa.016.1.i, ptr %i.cq, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cr = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cs = sub i64 %i.f, %i.cn
  %i.ct = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cs), !noalias !21473 ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.016.0.i
  %i.cv = add i64 %i.ct, %i.cn
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.cw = sub i64 %i.by, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.aa
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21453

bb.aq:                                            ; preds = %bb.ao
  %i.cx = sub i64 0, %i.cw
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21471
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !21471, !noundef !17
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21471
  %i.db = load i64, ptr %i.da, align 8, !noalias !21471, !noundef !17
  %i.dc = add i64 %i.db, %i.cz
  %.not45.i = icmp ult i64 %i.dc, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.ap, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.ae, %bb.aq
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.aq ], [ %.sroa.022.0.peel.i, %bb.ae ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.aq ], [ %.sroa.016.1.peel.i, %bb.ae ]
  %i.dd = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.de = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bb

bb.ar:                                            ; preds = %bb.x
  %.not46.i = icmp eq i64 %i.ay, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.x
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21471
  %i.dg = load i64, ptr %i.df, align 8, !noalias !21471, !noundef !17
  br label %bb.au

._crit_edge146.i:                                 ; preds = %bb.at, %bb.ar
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21471
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21471, !noundef !17
  %i.dj = add i64 %i.di, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21471
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !21471, !noundef !17
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21471
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21471, !noundef !17
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %._crit_edge146.i

bb.au:                                            ; preds = %._crit_edge146.i, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.dg, %bb.as ], [ %i.dj, %._crit_edge146.i ] ; 6 uses
  %i.dp = sub i64 %.sroa.06.0.i, %i.ay            ; 3 uses
  %i.dq = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dr = icmp ult i64 %i.dp, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.dq, %i.dr
  br i1 %or.cond107.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.sroa.06.1.i = phi i64 [ %i.dw, %bb.aw ], [ %.sroa.06.0.i, %bb.au ]
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21471
  store i64 %.sroa.06.1.i, ptr %i.ds, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dt = add i64 %.sroa.06.0.i, %i.b
  %i.du = add i64 %i.dp, %i.c
  %i.dv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dt, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.du, i64 noundef %i.f), !noalias !21473
  %i.dw = add i64 %i.dv, %.sroa.06.0.i
  br label %bb.av

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.aa
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21454

bb.ay:                                            ; preds = %bb.av
  %i.dx = sub i64 %i.ay, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.dy = sub i64 0, %i.dx
  %i.dz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21471
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !21471, !noundef !17
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21471
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21471, !noundef !17
  %i.ed = add i64 %i.ec, %i.ea
  %.not48.i = icmp ult i64 %i.ed, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ax, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.u, %bb.az
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.az ], [ %.sroa.06.0.peel.i, %bb.u ]
  %.lcssa.i = phi i64 [ %i.dp, %bb.az ], [ %i.aj, %bb.u ]
  %i.ee = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.ef = add i64 %.lcssa.i, %i.c
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  %spec.select.i.i24 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.eg, align 8, !alias.scope !21474
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21474
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21474
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21474
  %i.eh = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.eh, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.eh, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ei = select i1 %i.eh, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ei, %spec.select.i.i24
  store i64 1, ptr %i.eg, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21474
  br label %bb.e

bb.bb:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.ef, %.loopexit129.i ], [ %i.de, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.ee, %.loopexit129.i ], [ %i.dd, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit: ; preds = %._crit_edge120.i, %.lr.ph125.i
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21475
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21475
  %i.ek = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21475
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21475
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41": ; preds = %bb.bc, %bb.bd
  %.sink.i39 = phi i64 [ %i.ek, %bb.bc ], [ %spec.select.i.i.i, %bb.bd ]
  store i64 1, ptr %0, align 8, !alias.scope !21475
end_hunk_3
begin_hunk_4_@_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E:bb.a
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.r, %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !21749, !noalias !21750, !nonnull !17, !noundef !17
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.az ; 4 uses
  store i64 2, ptr %i.be, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.j, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.k, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %spec.select.i.i35, ptr %.sroa.679.0..sroa_idx, align 8
  %i.bf = add i64 %i.az, 1
  store i64 %i.bf, ptr %i.ay, align 8, !alias.scope !21749, !noalias !21750
  br label %bb.m

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.bj, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bh, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bj, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bk = sub nuw i64 %i.ab, %i.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !21752, !noalias !21753, !noundef !17 ; 4 uses
  %i.bo = load i64, ptr %i.bl, align 8, !range !20, !alias.scope !21752, !noalias !21753, !noundef !17
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21754
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !21752, !noalias !21753, !nonnull !17, !noundef !17
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %i.bn ; 4 uses
  store i64 1, ptr %i.bs, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.j, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bk, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 %i.k, ptr %.sroa.664.0..sroa_idx, align 8
  %i.bt = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bm, align 8, !alias.scope !21752, !noalias !21753
  %i.bu = sub nuw i64 %i.ac, %i.k
  %i.bv = load i64, ptr %i.bl, align 8, !range !20, !alias.scope !21755, !noalias !21756, !noundef !17
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21757
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.bx = load ptr, ptr %i.bq, align 8, !alias.scope !21755, !noalias !21756, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bt ; 4 uses
  store i64 2, ptr %i.by, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 %i.bu, ptr %.sroa.674.0..sroa_idx, align 8
  %i.bz = add i64 %i.bn, 2
  store i64 %i.bz, ptr %i.bm, align 8, !alias.scope !21755, !noalias !21756
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !21758, !noalias !21759, !noundef !17 ; 3 uses
  %i.cd = load i64, ptr %i.ca, align 8, !range !20, !alias.scope !21758, !noalias !21759, !noundef !17
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21760
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !21758, !noalias !21759, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cc ; 4 uses
  store i64 0, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8
  %i.ci = add i64 %i.cc, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !21758, !noalias !21759
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21785
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21785
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21786
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21786
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21786
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21786
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21786
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bb, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit", %bb.ba
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bf, label %bb.be

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21787
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21787
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21787
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21787
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21787
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21787
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21789)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = sub i64 %i.f, %i.c       ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21790
  store i64 0, ptr %i.o, align 8, !noalias !21790
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21791
  store i64 0, ptr %i.p, align 8, !noalias !21791
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21788, !noalias !21790, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %.not41.not.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21791
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21789, !noalias !21792, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %.not42.not.i = icmp samesign ugt i64 %i.x, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21791
  unreachable

.lr.ph125.i:                                      ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.z = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21791
  br i1 %i.z, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph125.i
  %i.aa = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.aa) ; 2 uses
  switch i8 %i.ab, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.n ], [ false, %bb.o ]
  %i.ad = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ad, label %._crit_edge147.i.a, label %._crit_edge145.i.a

._crit_edge145.i.a:                               ; preds = %bb.p
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.ae = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21791
  %i.af = load i64, ptr %i.ae, align 8, !noalias !21791, !noundef !17
  %i.ag = add i64 %i.af, 1
  br label %bb.q

._crit_edge147.i.a:                               ; preds = %bb.p
  %i.ah = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21791
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21791, !noundef !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge147.i.a, %._crit_edge145.i.a
  %.sroa.06.0.peel.i = phi i64 [ %i.ai, %._crit_edge147.i.a ], [ %i.ag, %._crit_edge145.i.a ] ; 6 uses
  %i.aj = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.al = icmp ult i64 %i.aj, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.ak, %i.al
  br i1 %or.cond107.peel.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = add i64 %.sroa.06.0.peel.i, %i.b
  %i.an = add i64 %i.aj, %i.c
  %i.ao = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.am, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.an, i64 noundef %i.f), !noalias !21793
  %i.ap = add i64 %i.ao, %.sroa.06.0.peel.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.peel.i = phi i64 [ %i.ap, %bb.r ], [ %.sroa.06.0.peel.i, %bb.q ]
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21791
  store i64 %.sroa.06.1.peel.i, ptr %i.aq, align 8, !noalias !21791
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 0, %i.ar
  %i.at = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21791
  %i.au = load i64, ptr %i.at, align 8, !noalias !21791, !noundef !17
  %i.av = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21791
  %i.aw = load i64, ptr %i.av, align 8, !noalias !21791, !noundef !17
  %i.ax = add i64 %i.aw, %i.au
  %.not48.peel.i = icmp ult i64 %i.ax, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.v, label %.loopexit129.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.aa
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.v, %bb.ax
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ax ], [ %.sroa.7.1.peel.i, %bb.v ] ; 5 uses
  %i.ay = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %i.aa)
  switch i8 %i.az, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.peel.next.i
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next.i
  %i.ba = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.ay, %.lr.ph.peel.next.i ], [ %i.ba, %bb.w ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.w ]
  %i.bb = icmp eq i64 %i.ay, %i.aa
  br i1 %i.bb, label %bb.as, label %bb.ar

.lr.ph119.preheader.i:                            ; preds = %bb.ax, %.lr.ph.peel.next.i, %bb.v
  switch i8 %i.ab, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph119.preheader.i
  %i.bc = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.y ]
  br i1 %i.ad, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.z
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21791
  %i.be = load i64, ptr %i.bd, align 8, !noalias !21791, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.aa

._crit_edge150.i:                                 ; preds = %bb.z
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21791
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !21791, !noundef !17
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bh, %._crit_edge150.i ], [ %i.bf, %._crit_edge148.i ] ; 5 uses
  %i.bi = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bj = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bk = icmp ult i64 %i.bi, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.peel.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bm = sub i64 %i.f, %i.bi
  %i.bn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bm), !noalias !21793 ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.016.0.peel.i
  %i.bp = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.022.0.peel.i = phi i64 [ %i.bp, %bb.ab ], [ %i.bi, %bb.aa ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bo, %bb.ab ], [ %.sroa.016.0.peel.i, %bb.aa ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21791
  store i64 %.sroa.016.1.peel.i, ptr %i.bq, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21791
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21791, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21791
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !21791, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45.peel.i = icmp ult i64 %i.bx, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.aa
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.af, %bb.ap
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.ap ], [ %.sroa.792.1.peel.i, %bb.af ] ; 5 uses
  %i.by = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.by, i64 %i.aa)
  switch i8 %i.bz, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ag:                                            ; preds = %.lr.ph119.peel.next.i
  %i.ca = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.by, %.lr.ph119.peel.next.i ], [ %i.ca, %bb.ag ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ag ]
  %i.cb = icmp eq i64 %i.by, %i.aa
  br i1 %i.cb, label %bb.aj, label %bb.ai

._crit_edge120.i:                                 ; preds = %bb.ap, %.lr.ph119.peel.next.i, %bb.n, %bb.af, %.lr.ph119.preheader.i
  %11 = icmp samesign ule i64 %.sroa.029.1124.i, %i.s ; 2 uses
  %i.cc = zext i1 %11 to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.cc
  br i1 %11, label %.lr.ph125.i, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit

bb.ai:                                            ; preds = %bb.ah
  %.not43.i = icmp eq i64 %i.by, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21791
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21791, !noundef !17
  br label %bb.al

._crit_edge149.i:                                 ; preds = %bb.ak, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21791
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21791, !noundef !17
  %i.ch = add i64 %i.cg, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21791
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21791, !noundef !17
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21791
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21791, !noundef !17
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.aj, label %._crit_edge149.i

bb.al:                                            ; preds = %._crit_edge149.i, %bb.aj
  %.sroa.016.0.i = phi i64 [ %i.ce, %bb.aj ], [ %i.ch, %._crit_edge149.i ] ; 5 uses
  %i.cn = sub i64 %.sroa.016.0.i, %i.by           ; 4 uses
  %i.co = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cp = icmp ult i64 %i.cn, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.022.0.i = phi i64 [ %i.cv, %bb.an ], [ %i.cn, %bb.al ]
  %.sroa.016.1.i = phi i64 [ %i.cu, %bb.an ], [ %.sroa.016.0.i, %bb.al ] ; 2 uses
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21791
  store i64 %.sroa.016.1.i, ptr %i.cq, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cr = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cs = sub i64 %i.f, %i.cn
  %i.ct = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cs), !noalias !21793 ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.016.0.i
  %i.cv = add i64 %i.ct, %i.cn
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.cw = sub i64 %i.by, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.aa
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21773

bb.aq:                                            ; preds = %bb.ao
  %i.cx = sub i64 0, %i.cw
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21791
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !21791, !noundef !17
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21791
  %i.db = load i64, ptr %i.da, align 8, !noalias !21791, !noundef !17
  %i.dc = add i64 %i.db, %i.cz
  %.not45.i = icmp ult i64 %i.dc, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.ap, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.ae, %bb.aq
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.aq ], [ %.sroa.022.0.peel.i, %bb.ae ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.aq ], [ %.sroa.016.1.peel.i, %bb.ae ]
  %i.dd = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.de = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bb

bb.ar:                                            ; preds = %bb.x
  %.not46.i = icmp eq i64 %i.ay, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.x
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21791
  %i.dg = load i64, ptr %i.df, align 8, !noalias !21791, !noundef !17
  br label %bb.au

._crit_edge146.i:                                 ; preds = %bb.at, %bb.ar
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21791
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21791, !noundef !17
  %i.dj = add i64 %i.di, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21791
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !21791, !noundef !17
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21791
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21791, !noundef !17
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %._crit_edge146.i

bb.au:                                            ; preds = %._crit_edge146.i, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.dg, %bb.as ], [ %i.dj, %._crit_edge146.i ] ; 6 uses
  %i.dp = sub i64 %.sroa.06.0.i, %i.ay            ; 3 uses
  %i.dq = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dr = icmp ult i64 %i.dp, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.dq, %i.dr
  br i1 %or.cond107.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.sroa.06.1.i = phi i64 [ %i.dw, %bb.aw ], [ %.sroa.06.0.i, %bb.au ]
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21791
  store i64 %.sroa.06.1.i, ptr %i.ds, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dt = add i64 %.sroa.06.0.i, %i.b
  %i.du = add i64 %i.dp, %i.c
  %i.dv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dt, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.du, i64 noundef %i.f), !noalias !21793
  %i.dw = add i64 %i.dv, %.sroa.06.0.i
  br label %bb.av

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.aa
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21774

bb.ay:                                            ; preds = %bb.av
  %i.dx = sub i64 %i.ay, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.dy = sub i64 0, %i.dx
  %i.dz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21791
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !21791, !noundef !17
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21791
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21791, !noundef !17
  %i.ed = add i64 %i.ec, %i.ea
  %.not48.i = icmp ult i64 %i.ed, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ax, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.u, %bb.az
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.az ], [ %.sroa.06.0.peel.i, %bb.u ]
  %.lcssa.i = phi i64 [ %i.dp, %bb.az ], [ %i.aj, %bb.u ]
  %i.ee = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.ef = add i64 %.lcssa.i, %i.c
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  %spec.select.i.i24 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.eg, align 8, !alias.scope !21794
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21794
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21794
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21794
  %i.eh = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.eh, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.eh, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ei = select i1 %i.eh, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ei, %spec.select.i.i24
  store i64 1, ptr %i.eg, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21794
  br label %bb.e

bb.bb:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.ef, %.loopexit129.i ], [ %i.de, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.ee, %.loopexit129.i ], [ %i.dd, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit: ; preds = %._crit_edge120.i, %.lr.ph125.i
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21795
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21795
  %i.ek = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21795
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21795
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41": ; preds = %bb.bc, %bb.bd
  %.sink.i39 = phi i64 [ %i.ek, %bb.bc ], [ %spec.select.i.i.i, %bb.bd ]
  store i64 1, ptr %0, align 8, !alias.scope !21795
end_hunk_4
