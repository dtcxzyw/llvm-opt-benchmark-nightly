Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes17h1d0cad3c5337f3f9E":bb.a
"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit.i": ; preds = %bb.dk
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit" unwind label %.loopexit839

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7128)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dx, ptr noundef nonnull align 1 dereferenceable(20) %i.bh, i64 20, i1 false)
  store i8 1, ptr %i.bg, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.pe = load ptr, ptr %i.dp, align 8, !nonnull !5
  %i.pf = load i64, ptr %i.dq, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6412
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.pf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc668 unwind label %.loopexit839

.noexc668:                                        ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit"
  %i.pg = load i64, ptr %i.c, align 8, !range !7, !noalias !6412, !noundef !5
  %i.ph = trunc nuw i64 %i.pg to i1
  %i.pi = load i64, ptr %i.dy, align 8, !range !8, !noalias !6412, !noundef !5 ; 3 uses
  br i1 %i.ph, label %bb.dn, label %bb.do, !prof !9

bb.dn:                                            ; preds = %.noexc668
  %i.pj = load i64, ptr %i.dz, align 8, !noalias !6412
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.pi, i64 %i.pj) #38
          to label %.noexc669 unwind label %.loopexit.split-lp840

.noexc669:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %.noexc668
  %i.pk = load ptr, ptr %i.dz, align 8, !noalias !6412, !nonnull !5, !noundef !5 ; 2 uses
  %i.pl = icmp ule i64 %i.pf, %i.pi
  call void @llvm.assume(i1 %i.pl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6412
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pk, ptr nonnull readonly align 1 %i.pe, i64 %i.pf, i1 false), !noalias !6413
  %i.pm = icmp ne i64 %i.me, 1
  store i64 %i.pi, ptr %i.bf, align 8
  store ptr %i.pk, ptr %.sroa.4741.0..sroa_idx, align 8
  store i64 %i.pf, ptr %.sroa.5742.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.ea, ptr noundef nonnull align 1 dereferenceable(21) %i.bg, i64 21, i1 false)
  %i.pn = load i64, ptr %i.ca, align 8, !noundef !5
  store i64 %i.pn, ptr %i.eb, align 8
  %i.po = zext i1 %i.pm to i8
  store i8 %i.po, ptr %i.ec, align 1
  %i.pp = load i64, ptr %i.cy, align 8, !alias.scope !6414, !noalias !6415, !noundef !5 ; 3 uses
  %i.pq = load i64, ptr %i.cw, align 8, !range !18, !alias.scope !6414, !noalias !6415, !noundef !5
  %i.pr = icmp eq i64 %i.pp, %i.pq
  br i1 %i.pr, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1699cdb471dda361E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %bb.ds unwind label %bb.dq, !noalias !6415

bb.dq:                                            ; preds = %bb.dp
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$anki..sync..media..database..client..changetracker..FilesystemEntry$GT$17he7810d201383bfb0E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bf) #39
          to label %.body665 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

bb.ds:                                            ; preds = %bb.do, %bb.dp
  %i.pu = load ptr, ptr %i.cx, align 8, !alias.scope !6414, !noalias !6415, !nonnull !5, !noundef !5
  %i.pv = getelementptr inbounds nuw [56 x i8], ptr %i.pu, i64 %i.pp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pv, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 56, i1 false)
  %i.pw = add i64 %i.pp, 1
  store i64 %i.pw, ptr %i.cy, align 8, !alias.scope !6414, !noalias !6415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.px = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17he6f6358534555047E monotonic, align 8
  %i.py = icmp ult i64 %i.px, 2
  br i1 %i.py, label %bb.dt, label %.thread803

bb.dt:                                            ; preds = %bb.ds
  %i.pz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.pz, label %bb.du [
    i8 0, label %.thread803
    i8 1, label %.thread800
    i8 2, label %.thread800
  ], !prof !31

bb.du:                                            ; preds = %bb.dt
  %i.qa = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17h04e030585b2863adE(ptr noundef nonnull align 8 @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E")
          to label %bb.dv unwind label %.loopexit839 ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.qb = icmp eq i8 %i.qa, 0
  br i1 %i.qb, label %.thread803, label %.thread800

.thread800:                                       ; preds = %bb.dt, %bb.dt, %bb.dv
  %.sroa.0142.0802 = phi i8 [ %i.qa, %bb.dv ], [ %i.pz, %bb.dt ], [ %i.pz, %bb.dt ]
  %i.qc = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5
  %i.qd = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17h7ea8ceed54f5561bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qc, i8 noundef %.sroa.0142.0802)
          to label %bb.dw unwind label %.loopexit839

bb.dw:                                            ; preds = %.thread800
  br i1 %i.qd, label %bb.dx, label %.thread803

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.qe = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 48 ; 3 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 56 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !noundef !5 ; 7 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  %i.qk = load ptr, ptr %i.qj, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 72
  %i.qm = load ptr, ptr %i.ql, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.not599 = icmp eq i64 %i.qi, 0
  br i1 %.not599, label %.invoke1257, label %bb.en

.thread803:                                       ; preds = %bb.dt, %bb.ds, %bb.dv, %bb.dw
  %i.qn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1
  %i.qo = icmp eq i8 %i.qn, 0
  br i1 %i.qo, label %bb.dy, label %bb.em

bb.dy:                                            ; preds = %.thread803
  %i.qp = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8 ; 2 uses
  %i.qq = icmp ult i64 %i.qp, 6
  call void @llvm.assume(i1 %i.qq)
  %i.qr = icmp samesign ugt i64 %i.qp, 3
  br i1 %i.qr, label %bb.dz, label %bb.em

bb.dz:                                            ; preds = %bb.dy
  %i.qs = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !nonnull !5, !align !15, !noundef !5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 40
  %i.qw = load i64, ptr %i.qv, align 8, !noundef !5
  store i64 4, ptr %i.av, align 8
  store ptr %i.qu, ptr %.sroa.3479.0..sroa_idx, align 8
  store i64 %i.qw, ptr %.sroa.5480.0..sroa_idx, align 8
  %i.qx = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %bb.ea unwind label %.loopexit839 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.qy = extractvalue { ptr, ptr } %i.qx, 0      ; 2 uses
  %i.qz = extractvalue { ptr, ptr } %i.qx, 1      ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8, !invariant.load !5, !nonnull !5
  %i.rc = invoke noundef zeroext i1 %i.rb(ptr noundef align 1 %i.qy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.eb unwind label %.loopexit839

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.rc, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.rd = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 48 ; 3 uses
  %i.rf = load ptr, ptr %i.re, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 56 ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 8, !noundef !5 ; 7 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 64
  %i.rj = load ptr, ptr %i.ri, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 72
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.not593 = icmp eq i64 %i.rh, 0
  br i1 %.not593, label %.invoke1257, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.sroa.0484.0.copyload = load ptr, ptr %i.re, align 8 ; 2 uses
  %.not594 = icmp eq ptr %.sroa.0484.0.copyload, null
  br i1 %.not594, label %.invoke1257, label %bb.ee, !prof !47

bb.ee:                                            ; preds = %bb.ed
  store ptr %.sroa.0484.0.copyload, ptr %i.as, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6182.0..sroa_idx183, ptr noundef nonnull align 8 dereferenceable(24) %i.rg, i64 24, i1 false)
  store i64 0, ptr %.sroa.6182.sroa.4.0..sroa.6182.0..sroa_idx183.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr @325, ptr %i.ar, align 8
  store i64 1, ptr %i.el, align 8
  store ptr null, ptr %i.em, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.en, align 8
  store i64 0, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %.not823 = icmp eq i64 %i.rh, 1
  br i1 %.not823, label %.invoke1257, label %bb.ef, !prof !9

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.rf, ptr %i.aq, align 8
  store i64 %i.rh, ptr %.sroa.6189.0..sroa_idx190, align 8
  store ptr %i.rj, ptr %.sroa.6189.sroa.0.sroa.4.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  store ptr %i.rl, ptr %.sroa.6189.sroa.0.sroa.5.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  store i64 1, ptr %.sroa.6189.sroa.4.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.rm = load ptr, ptr %i.dp, align 8, !nonnull !5, !noundef !5
  %i.rn = load i64, ptr %i.dq, align 8, !noundef !5
  store ptr %i.rm, ptr %i.ap, align 8
  store i64 %i.rn, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ro = icmp ugt i64 %i.rh, 2                   ; 2 uses
  %.sroa.0507.2 = select i1 %i.ro, i64 3, i64 2   ; 2 uses
  br i1 %i.ro, label %bb.eg, label %.invoke1257, !prof !12

bb.eg:                                            ; preds = %bb.ef
  store ptr %i.rf, ptr %i.ao, align 8
  store i64 %i.rh, ptr %.sroa.6196.0..sroa_idx197, align 8
  store ptr %i.rj, ptr %.sroa.6196.sroa.0.sroa.4.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  store ptr %i.rl, ptr %.sroa.6196.sroa.0.sroa.5.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  store i64 2, ptr %.sroa.6196.sroa.4.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.not824 = icmp ult i64 %.sroa.0507.2, %i.rh
  br i1 %.not824, label %bb.eh, label %.invoke1257, !prof !12

bb.eh:                                            ; preds = %bb.eg
  store ptr %i.rf, ptr %i.an, align 8
  store i64 %i.rh, ptr %.sroa.6203.0..sroa_idx204, align 8
  store ptr %i.rj, ptr %.sroa.6203.sroa.0.sroa.4.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  store ptr %i.rl, ptr %.sroa.6203.sroa.0.sroa.5.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  store i64 %.sroa.0507.2, ptr %.sroa.6203.sroa.4.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef 4)
          to label %bb.ei unwind label %.loopexit839

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.as, ptr %i.at, align 8
  store ptr %i.ar, ptr %.sroa.4178.0..sroa_idx, align 8
  store ptr @279, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.eq, align 8
  store ptr %i.ap, ptr %.sroa.4185.0..sroa_idx, align 8
  store ptr @318, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.ao, ptr %i.er, align 8
  store ptr %i.ca, ptr %.sroa.4192.0..sroa_idx, align 8
  store ptr @326, ptr %.sroa.5193.0..sroa_idx, align 8
  store ptr %i.an, ptr %i.es, align 8
  store ptr %i.am, ptr %.sroa.4199.0..sroa_idx, align 8
  store ptr @327, ptr %.sroa.5200.0..sroa_idx, align 8
  store ptr %i.at, ptr %i.au, align 8
  store i64 4, ptr %i.et, align 8
  store ptr %i.re, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qs, ptr noundef nonnull align 1 %i.qy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.ek unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am) #39
          to label %.body665 unwind label %bb.al

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.el unwind label %.loopexit839

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.em

bb.em:                                            ; preds = %bb.eb, %bb.el, %bb.dy, %.thread803, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit"
  %i.rq = load i64, ptr %i.ev, align 8, !noundef !5
  %i.rr = add i64 %i.rq, 1                        ; 3 uses
  store i64 %i.rr, ptr %i.ev, align 8
  %i.rs = urem i64 %i.rr, 10
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %bb.fb, label %bb.fe

bb.en:                                            ; preds = %bb.dx
  %.sroa.0447.0.copyload = load ptr, ptr %i.qf, align 8 ; 2 uses
  %.not600 = icmp eq ptr %.sroa.0447.0.copyload, null
  br i1 %.not600, label %.invoke1257, label %bb.eo, !prof !47

bb.eo:                                            ; preds = %bb.en
  store ptr %.sroa.0447.0.copyload, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152.0..sroa_idx153, ptr noundef nonnull align 8 dereferenceable(24) %i.qh, i64 24, i1 false)
  store i64 0, ptr %.sroa.6152.sroa.4.0..sroa.6152.0..sroa_idx153.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr @325, ptr %i.bb, align 8
  store i64 1, ptr %i.ed, align 8
  store ptr null, ptr %i.ee, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ef, align 8
  store i64 0, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.not821 = icmp eq i64 %i.qi, 1
  br i1 %.not821, label %.invoke1257, label %bb.ep, !prof !9

bb.ep:                                            ; preds = %bb.eo
  store ptr %i.qg, ptr %i.ba, align 8
  store i64 %i.qi, ptr %.sroa.6159.0..sroa_idx160, align 8
  store ptr %i.qk, ptr %.sroa.6159.sroa.0.sroa.4.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  store ptr %i.qm, ptr %.sroa.6159.sroa.0.sroa.5.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  store i64 1, ptr %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ru = load ptr, ptr %i.dp, align 8, !nonnull !5, !noundef !5
  %i.rv = load i64, ptr %i.dq, align 8, !noundef !5
  store ptr %i.ru, ptr %i.az, align 8
  store i64 %i.rv, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.rw = icmp ugt i64 %i.qi, 2                   ; 2 uses
  %.sroa.0470.2 = select i1 %i.rw, i64 3, i64 2   ; 2 uses
  br i1 %i.rw, label %bb.eq, label %.invoke1257, !prof !12

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.qg, ptr %i.ay, align 8
  store i64 %i.qi, ptr %.sroa.6166.0..sroa_idx167, align 8
  store ptr %i.qk, ptr %.sroa.6166.sroa.0.sroa.4.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  store ptr %i.qm, ptr %.sroa.6166.sroa.0.sroa.5.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  store i64 2, ptr %.sroa.6166.sroa.4.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %.not822 = icmp ult i64 %.sroa.0470.2, %i.qi
  br i1 %.not822, label %bb.er, label %.invoke1257, !prof !12

bb.er:                                            ; preds = %bb.eq
  store ptr %i.qg, ptr %i.ax, align 8
  store i64 %i.qi, ptr %.sroa.6173.0..sroa_idx174, align 8
  store ptr %i.qk, ptr %.sroa.6173.sroa.0.sroa.4.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  store ptr %i.qm, ptr %.sroa.6173.sroa.0.sroa.5.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  store i64 %.sroa.0470.2, ptr %.sroa.6173.sroa.4.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef 4)
          to label %bb.es unwind label %.loopexit839

bb.es:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store ptr %i.bc, ptr %i.bd, align 8
  store ptr %i.bb, ptr %.sroa.4148.0..sroa_idx, align 8
  store ptr @279, ptr %.sroa.5149.0..sroa_idx, align 8
  store ptr %i.ba, ptr %i.ei, align 8
  store ptr %i.az, ptr %.sroa.4155.0..sroa_idx, align 8
  store ptr @318, ptr %.sroa.5156.0..sroa_idx, align 8
  store ptr %i.ay, ptr %i.ej, align 8
  store ptr %i.ca, ptr %.sroa.4162.0..sroa_idx, align 8
  store ptr @326, ptr %.sroa.5163.0..sroa_idx, align 8
  store ptr %i.ax, ptr %i.ek, align 8
  store ptr %i.aw, ptr %.sroa.4169.0..sroa_idx, align 8
  store ptr @327, ptr %.sroa.5170.0..sroa_idx, align 8
  store ptr %i.bd, ptr %i.be, align 8
  store i64 4, ptr %.sroa.4145.0..sroa_idx, align 8
  store ptr %i.qf, ptr %.sroa.5146.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.rx = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !noalias !6416, !nonnull !5, !align !10, !noundef !5
  invoke void @_ZN12tracing_core5event5Event8dispatch17h90a40a5c2adbda05E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc674 unwind label %bb.ew

.noexc674:                                        ; preds = %bb.es
  %i.ry = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1, !noalias !6416
  %i.rz = icmp eq i8 %i.ry, 0
  br i1 %i.rz, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %.noexc674
  %i.sa = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8, !noalias !6416 ; 2 uses
  %i.sb = icmp ult i64 %i.sa, 6
  call void @llvm.assume(i1 %i.sb)
  %i.sc = icmp samesign ugt i64 %i.sa, 3
  br i1 %i.sc, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.sd = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !noalias !6416, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load ptr, ptr %i.se, align 8, !nonnull !5, !align !15, !noundef !5
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 40
  %i.sh = load i64, ptr %i.sg, align 8, !noundef !5
  store i64 4, ptr %i.b, align 8, !noalias !6416
  store ptr %i.sf, ptr %.sroa.3.0..sroa_idx.i672, align 8, !noalias !6416
  store i64 %i.sh, ptr %.sroa.5.0..sroa_idx.i673, align 8, !noalias !6416
  %i.si = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %.noexc675 unwind label %bb.ew ; 2 uses

.noexc675:                                        ; preds = %bb.eu
  %i.sj = extractvalue { ptr, ptr } %i.si, 0      ; 2 uses
  %i.sk = extractvalue { ptr, ptr } %i.si, 1      ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8, !invariant.load !5, !nonnull !5
  %i.sn = invoke noundef zeroext i1 %i.sm(ptr noundef align 1 %i.sj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc676 unwind label %bb.ew, !inline_history !6354

.noexc676:                                        ; preds = %.noexc675
  br i1 %i.sn, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %.noexc676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6416
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sd, ptr noundef nonnull align 1 %i.sj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc677 unwind label %bb.ew

.noexc677:                                        ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6416
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ev, %.noexc675, %bb.eu, %bb.es
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw) #39
          to label %.body665 unwind label %bb.al

bb.ex:                                            ; preds = %.noexc677, %.noexc676, %bb.et, %.noexc674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.sp = load i64, ptr %i.aw, align 8, !range !8, !alias.scope !6417, !noundef !5
  %i.sq = icmp eq i64 %i.sp, -9223372036854775808
  br i1 %i.sq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit", label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679" unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body665 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679": ; preds = %bb.ey
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit" unwind label %.loopexit839

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit": ; preds = %bb.ex, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.em

bb.fb:                                            ; preds = %bb.em
  %i.st = invoke noundef zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17ha4be227c2a8645c7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ew, i64 noundef %i.rr)
          to label %bb.fc unwind label %.loopexit839

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.st, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.fp

bb.fe:                                            ; preds = %bb.fc, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.su = load i64, ptr %i.cp, align 8, !range !8, !alias.scope !6418, !noundef !5
  %i.sv = icmp eq i64 %i.su, -9223372036854775808
  br i1 %i.sv, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit688", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i684" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body656 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i684": ; preds = %bb.ff
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit688" unwind label %.loopexit834

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit688": ; preds = %bb.fe, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i684"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i690" unwind label %bb.fi

bb.fi:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit688"
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i690": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit688"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit694" unwind label %.loopexit829

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit694": ; preds = %"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i690"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.experimental.noalias.scope.decl(metadata !6419)
  call void @llvm.experimental.noalias.scope.decl(metadata !6420)
  call void @llvm.experimental.noalias.scope.decl(metadata !6421)
  call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  %i.ta = load ptr, ptr %i.cs, align 8, !alias.scope !6423, !nonnull !5, !noundef !5
  %i.tb = atomicrmw sub ptr %i.ta, i64 1 release, align 8, !noalias !6423
  %i.tc = icmp eq i64 %i.tb, 1
  br i1 %i.tc, label %bb.fk, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h9602408a2df40bdeE.exit.i.i"

bb.fk:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit694"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cs)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h9602408a2df40bdeE.exit.i.i" unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.td = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !6424, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6424 ; 2 uses
  store i8 0, ptr %.val2.i.i, align 1
  %i.te = icmp eq i64 %.val3.i.i, 0
  br i1 %i.te, label %.body695, label %bb.fm
end_hunk_0
begin_hunk_1_@"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes17h544757b407821fa3E":bb.a
"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit.i": ; preds = %bb.dk
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit" unwind label %.loopexit843

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7128)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dz, ptr noundef nonnull align 1 dereferenceable(20) %i.bj, i64 20, i1 false)
  store i8 1, ptr %i.bi, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.pg = load ptr, ptr %i.dr, align 8, !nonnull !5
  %i.ph = load i64, ptr %i.ds, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6543
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.ph, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc668 unwind label %.loopexit843

.noexc668:                                        ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit"
  %i.pi = load i64, ptr %i.e, align 8, !range !7, !noalias !6543, !noundef !5
  %i.pj = trunc nuw i64 %i.pi to i1
  %i.pk = load i64, ptr %i.ea, align 8, !range !8, !noalias !6543, !noundef !5 ; 3 uses
  br i1 %i.pj, label %bb.dn, label %bb.do, !prof !9

bb.dn:                                            ; preds = %.noexc668
  %i.pl = load i64, ptr %i.eb, align 8, !noalias !6543
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.pk, i64 %i.pl) #38
          to label %.noexc669 unwind label %.loopexit.split-lp844

.noexc669:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %.noexc668
  %i.pm = load ptr, ptr %i.eb, align 8, !noalias !6543, !nonnull !5, !noundef !5 ; 2 uses
  %i.pn = icmp ule i64 %i.ph, %i.pk
  call void @llvm.assume(i1 %i.pn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6543
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pm, ptr nonnull readonly align 1 %i.pg, i64 %i.ph, i1 false), !noalias !6544
  %i.po = icmp ne i64 %i.mg, 1
  store i64 %i.pk, ptr %i.bh, align 8
  store ptr %i.pm, ptr %.sroa.4743.0..sroa_idx, align 8
  store i64 %i.ph, ptr %.sroa.5744.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.ec, ptr noundef nonnull align 1 dereferenceable(21) %i.bi, i64 21, i1 false)
  %i.pp = load i64, ptr %i.cc, align 8, !noundef !5
  store i64 %i.pp, ptr %i.ed, align 8
  %i.pq = zext i1 %i.po to i8
  store i8 %i.pq, ptr %i.ee, align 1
  %i.pr = load i64, ptr %i.da, align 8, !alias.scope !6545, !noalias !6546, !noundef !5 ; 3 uses
  %i.ps = load i64, ptr %i.cy, align 8, !range !18, !alias.scope !6545, !noalias !6546, !noundef !5
  %i.pt = icmp eq i64 %i.pr, %i.ps
  br i1 %i.pt, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1699cdb471dda361E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.ds unwind label %bb.dq, !noalias !6546

bb.dq:                                            ; preds = %bb.dp
  %i.pu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$anki..sync..media..database..client..changetracker..FilesystemEntry$GT$17he7810d201383bfb0E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bh) #39
          to label %.body665 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

bb.ds:                                            ; preds = %bb.do, %bb.dp
  %i.pw = load ptr, ptr %i.cz, align 8, !alias.scope !6545, !noalias !6546, !nonnull !5, !noundef !5
  %i.px = getelementptr inbounds nuw [56 x i8], ptr %i.pw, i64 %i.pr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.px, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false)
  %i.py = add i64 %i.pr, 1
  store i64 %i.py, ptr %i.da, align 8, !alias.scope !6545, !noalias !6546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.pz = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17he6f6358534555047E monotonic, align 8
  %i.qa = icmp ult i64 %i.pz, 2
  br i1 %i.qa, label %bb.dt, label %.thread805

bb.dt:                                            ; preds = %bb.ds
  %i.qb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.qb, label %bb.du [
    i8 0, label %.thread805
    i8 1, label %.thread802
    i8 2, label %.thread802
  ], !prof !31

bb.du:                                            ; preds = %bb.dt
  %i.qc = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17h04e030585b2863adE(ptr noundef nonnull align 8 @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E")
          to label %bb.dv unwind label %.loopexit843 ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.qd = icmp eq i8 %i.qc, 0
  br i1 %i.qd, label %.thread805, label %.thread802

.thread802:                                       ; preds = %bb.dt, %bb.dt, %bb.dv
  %.sroa.0142.0804 = phi i8 [ %i.qc, %bb.dv ], [ %i.qb, %bb.dt ], [ %i.qb, %bb.dt ]
  %i.qe = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5
  %i.qf = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17h7ea8ceed54f5561bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qe, i8 noundef %.sroa.0142.0804)
          to label %bb.dw unwind label %.loopexit843

bb.dw:                                            ; preds = %.thread802
  br i1 %i.qf, label %bb.dx, label %.thread805

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.qg = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 48 ; 3 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 56 ; 2 uses
  %i.qk = load i64, ptr %i.qj, align 8, !noundef !5 ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 64
  %i.qm = load ptr, ptr %i.ql, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qg, i64 72
  %i.qo = load ptr, ptr %i.qn, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %.not599 = icmp eq i64 %i.qk, 0
  br i1 %.not599, label %.invoke1261, label %bb.en

.thread805:                                       ; preds = %bb.dt, %bb.ds, %bb.dv, %bb.dw
  %i.qp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1
  %i.qq = icmp eq i8 %i.qp, 0
  br i1 %i.qq, label %bb.dy, label %bb.em

bb.dy:                                            ; preds = %.thread805
  %i.qr = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8 ; 2 uses
  %i.qs = icmp ult i64 %i.qr, 6
  call void @llvm.assume(i1 %i.qs)
  %i.qt = icmp samesign ugt i64 %i.qr, 3
  br i1 %i.qt, label %bb.dz, label %bb.em

bb.dz:                                            ; preds = %bb.dy
  %i.qu = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8, !nonnull !5, !align !15, !noundef !5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 40
  %i.qy = load i64, ptr %i.qx, align 8, !noundef !5
  store i64 4, ptr %i.ax, align 8
  store ptr %i.qw, ptr %.sroa.3479.0..sroa_idx, align 8
  store i64 %i.qy, ptr %.sroa.5480.0..sroa_idx, align 8
  %i.qz = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %bb.ea unwind label %.loopexit843 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.ra = extractvalue { ptr, ptr } %i.qz, 0      ; 2 uses
  %i.rb = extractvalue { ptr, ptr } %i.qz, 1      ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8, !invariant.load !5, !nonnull !5
  %i.re = invoke noundef zeroext i1 %i.rd(ptr noundef align 1 %i.ra, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.eb unwind label %.loopexit843

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.re, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.rf = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 48 ; 3 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 56 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !noundef !5 ; 7 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 64
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 72
  %i.rn = load ptr, ptr %i.rm, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %.not593 = icmp eq i64 %i.rj, 0
  br i1 %.not593, label %.invoke1261, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.sroa.0484.0.copyload = load ptr, ptr %i.rg, align 8 ; 2 uses
  %.not594 = icmp eq ptr %.sroa.0484.0.copyload, null
  br i1 %.not594, label %.invoke1261, label %bb.ee, !prof !47

bb.ee:                                            ; preds = %bb.ed
  store ptr %.sroa.0484.0.copyload, ptr %i.au, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6182.0..sroa_idx183, ptr noundef nonnull align 8 dereferenceable(24) %i.ri, i64 24, i1 false)
  store i64 0, ptr %.sroa.6182.sroa.4.0..sroa.6182.0..sroa_idx183.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @325, ptr %i.at, align 8
  store i64 1, ptr %i.en, align 8
  store ptr null, ptr %i.eo, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ep, align 8
  store i64 0, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.not827 = icmp eq i64 %i.rj, 1
  br i1 %.not827, label %.invoke1261, label %bb.ef, !prof !9

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.rh, ptr %i.as, align 8
  store i64 %i.rj, ptr %.sroa.6189.0..sroa_idx190, align 8
  store ptr %i.rl, ptr %.sroa.6189.sroa.0.sroa.4.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  store ptr %i.rn, ptr %.sroa.6189.sroa.0.sroa.5.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  store i64 1, ptr %.sroa.6189.sroa.4.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ro = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5
  %i.rp = load i64, ptr %i.ds, align 8, !noundef !5
  store ptr %i.ro, ptr %i.ar, align 8
  store i64 %i.rp, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.rq = icmp ugt i64 %i.rj, 2                   ; 2 uses
  %.sroa.0507.2 = select i1 %i.rq, i64 3, i64 2   ; 2 uses
  br i1 %i.rq, label %bb.eg, label %.invoke1261, !prof !12

bb.eg:                                            ; preds = %bb.ef
  store ptr %i.rh, ptr %i.aq, align 8
  store i64 %i.rj, ptr %.sroa.6196.0..sroa_idx197, align 8
  store ptr %i.rl, ptr %.sroa.6196.sroa.0.sroa.4.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  store ptr %i.rn, ptr %.sroa.6196.sroa.0.sroa.5.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  store i64 2, ptr %.sroa.6196.sroa.4.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.not828 = icmp ult i64 %.sroa.0507.2, %i.rj
  br i1 %.not828, label %bb.eh, label %.invoke1261, !prof !12

bb.eh:                                            ; preds = %bb.eg
  store ptr %i.rh, ptr %i.ap, align 8
  store i64 %i.rj, ptr %.sroa.6203.0..sroa_idx204, align 8
  store ptr %i.rl, ptr %.sroa.6203.sroa.0.sroa.4.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  store ptr %i.rn, ptr %.sroa.6203.sroa.0.sroa.5.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  store i64 %.sroa.0507.2, ptr %.sroa.6203.sroa.4.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dz, i64 noundef 4)
          to label %bb.ei unwind label %.loopexit843

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %i.au, ptr %i.av, align 8
  store ptr %i.at, ptr %.sroa.4178.0..sroa_idx, align 8
  store ptr @279, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.as, ptr %i.es, align 8
  store ptr %i.ar, ptr %.sroa.4185.0..sroa_idx, align 8
  store ptr @318, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.et, align 8
  store ptr %i.cc, ptr %.sroa.4192.0..sroa_idx, align 8
  store ptr @326, ptr %.sroa.5193.0..sroa_idx, align 8
  store ptr %i.ap, ptr %i.eu, align 8
  store ptr %i.ao, ptr %.sroa.4199.0..sroa_idx, align 8
  store ptr @327, ptr %.sroa.5200.0..sroa_idx, align 8
  store ptr %i.av, ptr %i.aw, align 8
  store i64 4, ptr %i.ev, align 8
  store ptr %i.rg, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qu, ptr noundef nonnull align 1 %i.ra, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.ek unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #39
          to label %.body665 unwind label %bb.al

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.el unwind label %.loopexit843

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.em

bb.em:                                            ; preds = %bb.eb, %bb.el, %bb.dy, %.thread805, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit"
  %i.rs = load i64, ptr %i.ex, align 8, !noundef !5
  %i.rt = add i64 %i.rs, 1                        ; 3 uses
  store i64 %i.rt, ptr %i.ex, align 8
  %i.ru = urem i64 %i.rt, 10
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %bb.fb, label %bb.fe

bb.en:                                            ; preds = %bb.dx
  %.sroa.0447.0.copyload = load ptr, ptr %i.qh, align 8 ; 2 uses
  %.not600 = icmp eq ptr %.sroa.0447.0.copyload, null
  br i1 %.not600, label %.invoke1261, label %bb.eo, !prof !47

bb.eo:                                            ; preds = %bb.en
  store ptr %.sroa.0447.0.copyload, ptr %i.be, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152.0..sroa_idx153, ptr noundef nonnull align 8 dereferenceable(24) %i.qj, i64 24, i1 false)
  store i64 0, ptr %.sroa.6152.sroa.4.0..sroa.6152.0..sroa_idx153.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr @325, ptr %i.bd, align 8
  store i64 1, ptr %i.ef, align 8
  store ptr null, ptr %i.eg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.eh, align 8
  store i64 0, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.not825 = icmp eq i64 %i.qk, 1
  br i1 %.not825, label %.invoke1261, label %bb.ep, !prof !9

bb.ep:                                            ; preds = %bb.eo
  store ptr %i.qi, ptr %i.bc, align 8
  store i64 %i.qk, ptr %.sroa.6159.0..sroa_idx160, align 8
  store ptr %i.qm, ptr %.sroa.6159.sroa.0.sroa.4.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  store ptr %i.qo, ptr %.sroa.6159.sroa.0.sroa.5.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  store i64 1, ptr %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.rw = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5
  %i.rx = load i64, ptr %i.ds, align 8, !noundef !5
  store ptr %i.rw, ptr %i.bb, align 8
  store i64 %i.rx, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.ry = icmp ugt i64 %i.qk, 2                   ; 2 uses
  %.sroa.0470.2 = select i1 %i.ry, i64 3, i64 2   ; 2 uses
  br i1 %i.ry, label %bb.eq, label %.invoke1261, !prof !12

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.qi, ptr %i.ba, align 8
  store i64 %i.qk, ptr %.sroa.6166.0..sroa_idx167, align 8
  store ptr %i.qm, ptr %.sroa.6166.sroa.0.sroa.4.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  store ptr %i.qo, ptr %.sroa.6166.sroa.0.sroa.5.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  store i64 2, ptr %.sroa.6166.sroa.4.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %.not826 = icmp ult i64 %.sroa.0470.2, %i.qk
  br i1 %.not826, label %bb.er, label %.invoke1261, !prof !12

bb.er:                                            ; preds = %bb.eq
  store ptr %i.qi, ptr %i.az, align 8
  store i64 %i.qk, ptr %.sroa.6173.0..sroa_idx174, align 8
  store ptr %i.qm, ptr %.sroa.6173.sroa.0.sroa.4.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  store ptr %i.qo, ptr %.sroa.6173.sroa.0.sroa.5.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  store i64 %.sroa.0470.2, ptr %.sroa.6173.sroa.4.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dz, i64 noundef 4)
          to label %bb.es unwind label %.loopexit843

bb.es:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %i.be, ptr %i.bf, align 8
  store ptr %i.bd, ptr %.sroa.4148.0..sroa_idx, align 8
  store ptr @279, ptr %.sroa.5149.0..sroa_idx, align 8
  store ptr %i.bc, ptr %i.ek, align 8
  store ptr %i.bb, ptr %.sroa.4155.0..sroa_idx, align 8
  store ptr @318, ptr %.sroa.5156.0..sroa_idx, align 8
  store ptr %i.ba, ptr %i.el, align 8
  store ptr %i.cc, ptr %.sroa.4162.0..sroa_idx, align 8
  store ptr @326, ptr %.sroa.5163.0..sroa_idx, align 8
  store ptr %i.az, ptr %i.em, align 8
  store ptr %i.ay, ptr %.sroa.4169.0..sroa_idx, align 8
  store ptr @327, ptr %.sroa.5170.0..sroa_idx, align 8
  store ptr %i.bf, ptr %i.bg, align 8
  store i64 4, ptr %.sroa.4145.0..sroa_idx, align 8
  store ptr %i.qh, ptr %.sroa.5146.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.rz = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !noalias !6547, !nonnull !5, !align !10, !noundef !5
  invoke void @_ZN12tracing_core5event5Event8dispatch17h90a40a5c2adbda05E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc674 unwind label %bb.ew

.noexc674:                                        ; preds = %bb.es
  %i.sa = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1, !noalias !6547
  %i.sb = icmp eq i8 %i.sa, 0
  br i1 %i.sb, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %.noexc674
  %i.sc = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8, !noalias !6547 ; 2 uses
  %i.sd = icmp ult i64 %i.sc, 6
  call void @llvm.assume(i1 %i.sd)
  %i.se = icmp samesign ugt i64 %i.sc, 3
  br i1 %i.se, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.sf = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !noalias !6547, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !nonnull !5, !align !15, !noundef !5
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  %i.sj = load i64, ptr %i.si, align 8, !noundef !5
  store i64 4, ptr %i.d, align 8, !noalias !6547
  store ptr %i.sh, ptr %.sroa.3.0..sroa_idx.i672, align 8, !noalias !6547
  store i64 %i.sj, ptr %.sroa.5.0..sroa_idx.i673, align 8, !noalias !6547
  %i.sk = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %.noexc675 unwind label %bb.ew ; 2 uses

.noexc675:                                        ; preds = %bb.eu
  %i.sl = extractvalue { ptr, ptr } %i.sk, 0      ; 2 uses
  %i.sm = extractvalue { ptr, ptr } %i.sk, 1      ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !invariant.load !5, !nonnull !5
  %i.sp = invoke noundef zeroext i1 %i.so(ptr noundef align 1 %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %.noexc676 unwind label %bb.ew, !inline_history !6485

.noexc676:                                        ; preds = %.noexc675
  br i1 %i.sp, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %.noexc676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6547
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sf, ptr noundef nonnull align 1 %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc677 unwind label %bb.ew

.noexc677:                                        ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6547
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ev, %.noexc675, %bb.eu, %bb.es
  %i.sq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay) #39
          to label %.body665 unwind label %bb.al

bb.ex:                                            ; preds = %.noexc677, %.noexc676, %bb.et, %.noexc674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.sr = load i64, ptr %i.ay, align 8, !range !8, !alias.scope !6548, !noundef !5
  %i.ss = icmp eq i64 %i.sr, -9223372036854775808
  br i1 %i.ss, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit", label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679" unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body665 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679": ; preds = %bb.ey
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit" unwind label %.loopexit843

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit": ; preds = %bb.ex, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.em

bb.fb:                                            ; preds = %bb.em
  %.val = load ptr, ptr %i.ey, align 8, !nonnull !5, !align !10, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.rt, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki8progress34ThrottlingProgressHandler$LT$P$GT$6update17hebf4c7baba221af3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %.val, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc683 unwind label %.loopexit843

.noexc683:                                        ; preds = %bb.fb
  %i.sv = load i64, ptr %i.a, align 8, !range !45, !noundef !5
  %i.sw = icmp eq i64 %i.sv, -9223372036854775773
  br i1 %i.sw, label %.thread815, label %bb.fc

.thread815:                                       ; preds = %.noexc683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.fe

bb.fc:                                            ; preds = %.noexc683
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.fd unwind label %.loopexit.split-lp844

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.fp

bb.fe:                                            ; preds = %.thread815, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.sx = load i64, ptr %i.cr, align 8, !range !8, !alias.scope !6549, !noundef !5
  %i.sy = icmp eq i64 %i.sx, -9223372036854775808
  br i1 %i.sy, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i686" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body656 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i686": ; preds = %bb.ff
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690" unwind label %.loopexit838

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690": ; preds = %bb.fe, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i686"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i692" unwind label %bb.fi

bb.fi:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690"
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %.body unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i692": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit696" unwind label %.loopexit833

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit696": ; preds = %"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i692"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.experimental.noalias.scope.decl(metadata !6550)
  call void @llvm.experimental.noalias.scope.decl(metadata !6551)
  call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  %i.td = load ptr, ptr %i.cu, align 8, !alias.scope !6554, !nonnull !5, !noundef !5
end_hunk_1
begin_hunk_2_@"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes17hda1f3a444c3f2433E":bb.a
"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit.i": ; preds = %bb.dk
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit" unwind label %.loopexit843

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7128)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dz, ptr noundef nonnull align 1 dereferenceable(20) %i.bj, i64 20, i1 false)
  store i8 1, ptr %i.bi, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.pg = load ptr, ptr %i.dr, align 8, !nonnull !5
  %i.ph = load i64, ptr %i.ds, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6676
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.ph, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc668 unwind label %.loopexit843

.noexc668:                                        ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit"
  %i.pi = load i64, ptr %i.e, align 8, !range !7, !noalias !6676, !noundef !5
  %i.pj = trunc nuw i64 %i.pi to i1
  %i.pk = load i64, ptr %i.ea, align 8, !range !8, !noalias !6676, !noundef !5 ; 3 uses
  br i1 %i.pj, label %bb.dn, label %bb.do, !prof !9

bb.dn:                                            ; preds = %.noexc668
  %i.pl = load i64, ptr %i.eb, align 8, !noalias !6676
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.pk, i64 %i.pl) #38
          to label %.noexc669 unwind label %.loopexit.split-lp844

.noexc669:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %.noexc668
  %i.pm = load ptr, ptr %i.eb, align 8, !noalias !6676, !nonnull !5, !noundef !5 ; 2 uses
  %i.pn = icmp ule i64 %i.ph, %i.pk
  call void @llvm.assume(i1 %i.pn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6676
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pm, ptr nonnull readonly align 1 %i.pg, i64 %i.ph, i1 false), !noalias !6677
  %i.po = icmp ne i64 %i.mg, 1
  store i64 %i.pk, ptr %i.bh, align 8
  store ptr %i.pm, ptr %.sroa.4743.0..sroa_idx, align 8
  store i64 %i.ph, ptr %.sroa.5744.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.ec, ptr noundef nonnull align 1 dereferenceable(21) %i.bi, i64 21, i1 false)
  %i.pp = load i64, ptr %i.cc, align 8, !noundef !5
  store i64 %i.pp, ptr %i.ed, align 8
  %i.pq = zext i1 %i.po to i8
  store i8 %i.pq, ptr %i.ee, align 1
  %i.pr = load i64, ptr %i.da, align 8, !alias.scope !6678, !noalias !6679, !noundef !5 ; 3 uses
  %i.ps = load i64, ptr %i.cy, align 8, !range !18, !alias.scope !6678, !noalias !6679, !noundef !5
  %i.pt = icmp eq i64 %i.pr, %i.ps
  br i1 %i.pt, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1699cdb471dda361E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.ds unwind label %bb.dq, !noalias !6679

bb.dq:                                            ; preds = %bb.dp
  %i.pu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$anki..sync..media..database..client..changetracker..FilesystemEntry$GT$17he7810d201383bfb0E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bh) #39
          to label %.body665 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

bb.ds:                                            ; preds = %bb.do, %bb.dp
  %i.pw = load ptr, ptr %i.cz, align 8, !alias.scope !6678, !noalias !6679, !nonnull !5, !noundef !5
  %i.px = getelementptr inbounds nuw [56 x i8], ptr %i.pw, i64 %i.pr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.px, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false)
  %i.py = add i64 %i.pr, 1
  store i64 %i.py, ptr %i.da, align 8, !alias.scope !6678, !noalias !6679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.pz = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17he6f6358534555047E monotonic, align 8
  %i.qa = icmp ult i64 %i.pz, 2
  br i1 %i.qa, label %bb.dt, label %.thread805

bb.dt:                                            ; preds = %bb.ds
  %i.qb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.qb, label %bb.du [
    i8 0, label %.thread805
    i8 1, label %.thread802
    i8 2, label %.thread802
  ], !prof !31

bb.du:                                            ; preds = %bb.dt
  %i.qc = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17h04e030585b2863adE(ptr noundef nonnull align 8 @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E")
          to label %bb.dv unwind label %.loopexit843 ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.qd = icmp eq i8 %i.qc, 0
  br i1 %i.qd, label %.thread805, label %.thread802

.thread802:                                       ; preds = %bb.dt, %bb.dt, %bb.dv
  %.sroa.0142.0804 = phi i8 [ %i.qc, %bb.dv ], [ %i.qb, %bb.dt ], [ %i.qb, %bb.dt ]
  %i.qe = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5
  %i.qf = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17h7ea8ceed54f5561bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qe, i8 noundef %.sroa.0142.0804)
          to label %bb.dw unwind label %.loopexit843

bb.dw:                                            ; preds = %.thread802
  br i1 %i.qf, label %bb.dx, label %.thread805

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.qg = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 48 ; 3 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 56 ; 2 uses
  %i.qk = load i64, ptr %i.qj, align 8, !noundef !5 ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 64
  %i.qm = load ptr, ptr %i.ql, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qg, i64 72
  %i.qo = load ptr, ptr %i.qn, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %.not599 = icmp eq i64 %i.qk, 0
  br i1 %.not599, label %.invoke1261, label %bb.en

.thread805:                                       ; preds = %bb.dt, %bb.ds, %bb.dv, %bb.dw
  %i.qp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1
  %i.qq = icmp eq i8 %i.qp, 0
  br i1 %i.qq, label %bb.dy, label %bb.em

bb.dy:                                            ; preds = %.thread805
  %i.qr = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8 ; 2 uses
  %i.qs = icmp ult i64 %i.qr, 6
  call void @llvm.assume(i1 %i.qs)
  %i.qt = icmp samesign ugt i64 %i.qr, 3
  br i1 %i.qt, label %bb.dz, label %bb.em

bb.dz:                                            ; preds = %bb.dy
  %i.qu = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8, !nonnull !5, !align !15, !noundef !5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 40
  %i.qy = load i64, ptr %i.qx, align 8, !noundef !5
  store i64 4, ptr %i.ax, align 8
  store ptr %i.qw, ptr %.sroa.3479.0..sroa_idx, align 8
  store i64 %i.qy, ptr %.sroa.5480.0..sroa_idx, align 8
  %i.qz = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %bb.ea unwind label %.loopexit843 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.ra = extractvalue { ptr, ptr } %i.qz, 0      ; 2 uses
  %i.rb = extractvalue { ptr, ptr } %i.qz, 1      ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8, !invariant.load !5, !nonnull !5
  %i.re = invoke noundef zeroext i1 %i.rd(ptr noundef align 1 %i.ra, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.eb unwind label %.loopexit843

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.re, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.rf = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 48 ; 3 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 56 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !noundef !5 ; 7 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 64
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 72
  %i.rn = load ptr, ptr %i.rm, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %.not593 = icmp eq i64 %i.rj, 0
  br i1 %.not593, label %.invoke1261, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.sroa.0484.0.copyload = load ptr, ptr %i.rg, align 8 ; 2 uses
  %.not594 = icmp eq ptr %.sroa.0484.0.copyload, null
  br i1 %.not594, label %.invoke1261, label %bb.ee, !prof !47

bb.ee:                                            ; preds = %bb.ed
  store ptr %.sroa.0484.0.copyload, ptr %i.au, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6182.0..sroa_idx183, ptr noundef nonnull align 8 dereferenceable(24) %i.ri, i64 24, i1 false)
  store i64 0, ptr %.sroa.6182.sroa.4.0..sroa.6182.0..sroa_idx183.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @325, ptr %i.at, align 8
  store i64 1, ptr %i.en, align 8
  store ptr null, ptr %i.eo, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ep, align 8
  store i64 0, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.not827 = icmp eq i64 %i.rj, 1
  br i1 %.not827, label %.invoke1261, label %bb.ef, !prof !9

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.rh, ptr %i.as, align 8
  store i64 %i.rj, ptr %.sroa.6189.0..sroa_idx190, align 8
  store ptr %i.rl, ptr %.sroa.6189.sroa.0.sroa.4.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  store ptr %i.rn, ptr %.sroa.6189.sroa.0.sroa.5.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  store i64 1, ptr %.sroa.6189.sroa.4.0..sroa.6189.0..sroa_idx190.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ro = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5
  %i.rp = load i64, ptr %i.ds, align 8, !noundef !5
  store ptr %i.ro, ptr %i.ar, align 8
  store i64 %i.rp, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.rq = icmp ugt i64 %i.rj, 2                   ; 2 uses
  %.sroa.0507.2 = select i1 %i.rq, i64 3, i64 2   ; 2 uses
  br i1 %i.rq, label %bb.eg, label %.invoke1261, !prof !12

bb.eg:                                            ; preds = %bb.ef
  store ptr %i.rh, ptr %i.aq, align 8
  store i64 %i.rj, ptr %.sroa.6196.0..sroa_idx197, align 8
  store ptr %i.rl, ptr %.sroa.6196.sroa.0.sroa.4.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  store ptr %i.rn, ptr %.sroa.6196.sroa.0.sroa.5.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  store i64 2, ptr %.sroa.6196.sroa.4.0..sroa.6196.0..sroa_idx197.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.not828 = icmp ult i64 %.sroa.0507.2, %i.rj
  br i1 %.not828, label %bb.eh, label %.invoke1261, !prof !12

bb.eh:                                            ; preds = %bb.eg
  store ptr %i.rh, ptr %i.ap, align 8
  store i64 %i.rj, ptr %.sroa.6203.0..sroa_idx204, align 8
  store ptr %i.rl, ptr %.sroa.6203.sroa.0.sroa.4.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  store ptr %i.rn, ptr %.sroa.6203.sroa.0.sroa.5.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  store i64 %.sroa.0507.2, ptr %.sroa.6203.sroa.4.0..sroa.6203.0..sroa_idx204.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dz, i64 noundef 4)
          to label %bb.ei unwind label %.loopexit843

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %i.au, ptr %i.av, align 8
  store ptr %i.at, ptr %.sroa.4178.0..sroa_idx, align 8
  store ptr @279, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.as, ptr %i.es, align 8
  store ptr %i.ar, ptr %.sroa.4185.0..sroa_idx, align 8
  store ptr @318, ptr %.sroa.5186.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.et, align 8
  store ptr %i.cc, ptr %.sroa.4192.0..sroa_idx, align 8
  store ptr @326, ptr %.sroa.5193.0..sroa_idx, align 8
  store ptr %i.ap, ptr %i.eu, align 8
  store ptr %i.ao, ptr %.sroa.4199.0..sroa_idx, align 8
  store ptr @327, ptr %.sroa.5200.0..sroa_idx, align 8
  store ptr %i.av, ptr %i.aw, align 8
  store i64 4, ptr %i.ev, align 8
  store ptr %i.rg, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qu, ptr noundef nonnull align 1 %i.ra, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.ek unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #39
          to label %.body665 unwind label %bb.al

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.el unwind label %.loopexit843

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.em

bb.em:                                            ; preds = %bb.eb, %bb.el, %bb.dy, %.thread805, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit"
  %i.rs = load i64, ptr %i.ex, align 8, !noundef !5
  %i.rt = add i64 %i.rs, 1                        ; 3 uses
  store i64 %i.rt, ptr %i.ex, align 8
  %i.ru = urem i64 %i.rt, 10
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %bb.fb, label %bb.fe

bb.en:                                            ; preds = %bb.dx
  %.sroa.0447.0.copyload = load ptr, ptr %i.qh, align 8 ; 2 uses
  %.not600 = icmp eq ptr %.sroa.0447.0.copyload, null
  br i1 %.not600, label %.invoke1261, label %bb.eo, !prof !47

bb.eo:                                            ; preds = %bb.en
  store ptr %.sroa.0447.0.copyload, ptr %i.be, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6152.0..sroa_idx153, ptr noundef nonnull align 8 dereferenceable(24) %i.qj, i64 24, i1 false)
  store i64 0, ptr %.sroa.6152.sroa.4.0..sroa.6152.0..sroa_idx153.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr @325, ptr %i.bd, align 8
  store i64 1, ptr %i.ef, align 8
  store ptr null, ptr %i.eg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.eh, align 8
  store i64 0, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.not825 = icmp eq i64 %i.qk, 1
  br i1 %.not825, label %.invoke1261, label %bb.ep, !prof !9

bb.ep:                                            ; preds = %bb.eo
  store ptr %i.qi, ptr %i.bc, align 8
  store i64 %i.qk, ptr %.sroa.6159.0..sroa_idx160, align 8
  store ptr %i.qm, ptr %.sroa.6159.sroa.0.sroa.4.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  store ptr %i.qo, ptr %.sroa.6159.sroa.0.sroa.5.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  store i64 1, ptr %.sroa.6159.sroa.4.0..sroa.6159.0..sroa_idx160.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.rw = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5
  %i.rx = load i64, ptr %i.ds, align 8, !noundef !5
  store ptr %i.rw, ptr %i.bb, align 8
  store i64 %i.rx, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.ry = icmp ugt i64 %i.qk, 2                   ; 2 uses
  %.sroa.0470.2 = select i1 %i.ry, i64 3, i64 2   ; 2 uses
  br i1 %i.ry, label %bb.eq, label %.invoke1261, !prof !12

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.qi, ptr %i.ba, align 8
  store i64 %i.qk, ptr %.sroa.6166.0..sroa_idx167, align 8
  store ptr %i.qm, ptr %.sroa.6166.sroa.0.sroa.4.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  store ptr %i.qo, ptr %.sroa.6166.sroa.0.sroa.5.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  store i64 2, ptr %.sroa.6166.sroa.4.0..sroa.6166.0..sroa_idx167.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %.not826 = icmp ult i64 %.sroa.0470.2, %i.qk
  br i1 %.not826, label %bb.er, label %.invoke1261, !prof !12

bb.er:                                            ; preds = %bb.eq
  store ptr %i.qi, ptr %i.az, align 8
  store i64 %i.qk, ptr %.sroa.6173.0..sroa_idx174, align 8
  store ptr %i.qm, ptr %.sroa.6173.sroa.0.sroa.4.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  store ptr %i.qo, ptr %.sroa.6173.sroa.0.sroa.5.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  store i64 %.sroa.0470.2, ptr %.sroa.6173.sroa.4.0..sroa.6173.0..sroa_idx174.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dz, i64 noundef 4)
          to label %bb.es unwind label %.loopexit843

bb.es:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %i.be, ptr %i.bf, align 8
  store ptr %i.bd, ptr %.sroa.4148.0..sroa_idx, align 8
  store ptr @279, ptr %.sroa.5149.0..sroa_idx, align 8
  store ptr %i.bc, ptr %i.ek, align 8
  store ptr %i.bb, ptr %.sroa.4155.0..sroa_idx, align 8
  store ptr @318, ptr %.sroa.5156.0..sroa_idx, align 8
  store ptr %i.ba, ptr %i.el, align 8
  store ptr %i.cc, ptr %.sroa.4162.0..sroa_idx, align 8
  store ptr @326, ptr %.sroa.5163.0..sroa_idx, align 8
  store ptr %i.az, ptr %i.em, align 8
  store ptr %i.ay, ptr %.sroa.4169.0..sroa_idx, align 8
  store ptr @327, ptr %.sroa.5170.0..sroa_idx, align 8
  store ptr %i.bf, ptr %i.bg, align 8
  store i64 4, ptr %.sroa.4145.0..sroa_idx, align 8
  store ptr %i.qh, ptr %.sroa.5146.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.rz = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !noalias !6680, !nonnull !5, !align !10, !noundef !5
  invoke void @_ZN12tracing_core5event5Event8dispatch17h90a40a5c2adbda05E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc674 unwind label %bb.ew

.noexc674:                                        ; preds = %bb.es
  %i.sa = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1, !noalias !6680
  %i.sb = icmp eq i8 %i.sa, 0
  br i1 %i.sb, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %.noexc674
  %i.sc = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8, !noalias !6680 ; 2 uses
  %i.sd = icmp ult i64 %i.sc, 6
  call void @llvm.assume(i1 %i.sd)
  %i.se = icmp samesign ugt i64 %i.sc, 3
  br i1 %i.se, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.sf = load ptr, ptr @"_ZN4anki4sync5media8database6client13changetracker22ChangeTracker$LT$F$GT$20media_folder_changes10__CALLSITE17hb8707c04fc4fbb90E", align 8, !noalias !6680, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !nonnull !5, !align !15, !noundef !5
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  %i.sj = load i64, ptr %i.si, align 8, !noundef !5
  store i64 4, ptr %i.d, align 8, !noalias !6680
  store ptr %i.sh, ptr %.sroa.3.0..sroa_idx.i672, align 8, !noalias !6680
  store i64 %i.sj, ptr %.sroa.5.0..sroa_idx.i673, align 8, !noalias !6680
  %i.sk = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %.noexc675 unwind label %bb.ew ; 2 uses

.noexc675:                                        ; preds = %bb.eu
  %i.sl = extractvalue { ptr, ptr } %i.sk, 0      ; 2 uses
  %i.sm = extractvalue { ptr, ptr } %i.sk, 1      ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !invariant.load !5, !nonnull !5
  %i.sp = invoke noundef zeroext i1 %i.so(ptr noundef align 1 %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %.noexc676 unwind label %bb.ew, !inline_history !6616

.noexc676:                                        ; preds = %.noexc675
  br i1 %i.sp, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %.noexc676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6680
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sf, ptr noundef nonnull align 1 %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc677 unwind label %bb.ew

.noexc677:                                        ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6680
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ev, %.noexc675, %bb.eu, %bb.es
  %i.sq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay) #39
          to label %.body665 unwind label %bb.al

bb.ex:                                            ; preds = %.noexc677, %.noexc676, %bb.et, %.noexc674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.sr = load i64, ptr %i.ay, align 8, !range !8, !alias.scope !6681, !noundef !5
  %i.ss = icmp eq i64 %i.sr, -9223372036854775808
  br i1 %i.ss, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit", label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679" unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body665 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679": ; preds = %bb.ey
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit" unwind label %.loopexit843

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit": ; preds = %bb.ex, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i679"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.em

bb.fb:                                            ; preds = %bb.em
  call void @llvm.experimental.noalias.scope.decl(metadata !6682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.rt, ptr %i.b, align 8, !noalias !6682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6682
  %i.sv = load ptr, ptr %i.ey, align 8, !alias.scope !6682, !nonnull !5, !align !10, !noundef !5
  invoke void @"_ZN4anki8progress34ThrottlingProgressHandler$LT$P$GT$6update17h54f2dae9681b5603E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.sv, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc683 unwind label %.loopexit843

.noexc683:                                        ; preds = %bb.fb
  %i.sw = load i64, ptr %i.a, align 8, !range !45, !noalias !6682, !noundef !5
  %i.sx = icmp eq i64 %i.sw, -9223372036854775773
  br i1 %i.sx, label %.thread815, label %bb.fc

.thread815:                                       ; preds = %.noexc683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.fe

bb.fc:                                            ; preds = %.noexc683
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.fd unwind label %.loopexit.split-lp844

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.fp

bb.fe:                                            ; preds = %.thread815, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.sy = load i64, ptr %i.cr, align 8, !range !8, !alias.scope !6683, !noundef !5
  %i.sz = icmp eq i64 %i.sy, -9223372036854775808
  br i1 %i.sz, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i686" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ta = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body656 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i686": ; preds = %bb.ff
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690" unwind label %.loopexit838

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690": ; preds = %bb.fe, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i686"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i692" unwind label %bb.fi

bb.fi:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690"
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %.body unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i692": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit690"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit696" unwind label %.loopexit833

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h8af38a2de52cb47bE.exit696": ; preds = %"_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h6e05767f7e91c739E.exit.i692"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.experimental.noalias.scope.decl(metadata !6684)
  call void @llvm.experimental.noalias.scope.decl(metadata !6685)
  call void @llvm.experimental.noalias.scope.decl(metadata !6686)
  call void @llvm.experimental.noalias.scope.decl(metadata !6687)
end_hunk_2
