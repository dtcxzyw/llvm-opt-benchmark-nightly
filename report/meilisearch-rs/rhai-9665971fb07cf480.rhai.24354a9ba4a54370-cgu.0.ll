Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h3002e3f170ac6239E:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eu, ptr %i.dz
  %i.ev = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ev, i1 false), !alias.scope !20021
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 5 uses
  br i1 %.not.i37, label %.preheader155, label %.lr.ph.i.i

.preheader155:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i" ], [ %i.ew, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i" ], [ %i.dn, %bb.ae ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20022
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !20019

.noexc.i:                                         ; preds = %.preheader155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20023)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !20023, !noalias !20024, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20025
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !20023, !noalias !20024, !noundef !55
  store ptr %i.fa, ptr %i.q, align 8, !noalias !20025
  br label %.invoke359

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.fc = load i8, ptr %i.am, align 8, !range !57, !alias.scope !20023, !noalias !20024, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20022
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !20020

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20026)
  %i.fd = load ptr, ptr %i.s, align 8, !alias.scope !20026, !noalias !20027, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20028
  %i.fe = load i64, ptr %i.an, align 8, !alias.scope !20026, !noalias !20027, !noundef !55
  store ptr %i.fd, ptr %i.r, align 8, !noalias !20028
  br label %.invoke359

.invoke359:                                       ; preds = %bb.af, %bb.ag
  %.sink362.sroa.phi = phi ptr [ %.sink362.sroa.gep, %bb.af ], [ %.sink362.sroa.gep426, %bb.ag ]
  %.sink362 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fb, %bb.af ], [ %i.fe, %bb.ag ]
  %i.ff = phi ptr [ @1777, %bb.af ], [ @1778, %bb.ag ]
  store i64 %.sink, ptr %.sink362.sroa.phi, align 8, !noalias !20022
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink362, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #70
          to label %.cont360 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20021

.cont360:                                         ; preds = %.invoke359
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i": ; preds = %.noexc19.i
  %i.fg = load i8, ptr %i.an, align 8, !range !57, !alias.scope !20026, !noalias !20027, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20022
  %switch.offset.i.i.i.i = sub nsw i8 %i.fg, %i.fc
  %i.fh = icmp eq i8 %switch.offset.i.i.i.i, -1   ; 3 uses
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !20021, !noalias !20029
  %i.fi = xor i1 %i.fh, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dz
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbcb96cdacb9c731fE.exit.i", label %.preheader155

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i" ], [ %i.dz, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20030
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20020

.noexc29.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20031)
  %i.fp = load ptr, ptr %i.p, align 8, !alias.scope !20031, !noalias !20032, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.fp, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20033
  %i.fq = load i64, ptr %i.ak, align 8, !alias.scope !20031, !noalias !20032, !noundef !55
  store ptr %i.fp, ptr %i.m, align 8, !noalias !20033
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i": ; preds = %.noexc29.i
  %i.fr = load i8, ptr %i.ak, align 8, !range !57, !alias.scope !20031, !noalias !20032, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20030
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20019

.noexc31.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20034)
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !20034, !noalias !20035, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20036
  %i.ft = load i64, ptr %i.al, align 8, !alias.scope !20034, !noalias !20035, !noundef !55
  store ptr %i.fs, ptr %i.n, align 8, !noalias !20036
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink365.sroa.phi = phi ptr [ %.sink365.sroa.gep, %bb.ah ], [ %.sink365.sroa.gep427, %bb.ai ]
  %.sink365 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink363 = phi i64 [ %i.fq, %bb.ah ], [ %i.ft, %bb.ai ]
  %i.fu = phi ptr [ @1777, %bb.ah ], [ @1778, %bb.ai ]
  store i64 %.sink363, ptr %.sink365.sroa.phi, align 8, !noalias !20030
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink365, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20021

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i": ; preds = %.noexc31.i
  %i.fv = load i8, ptr %i.al, align 8, !range !57, !alias.scope !20034, !noalias !20035, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20030
  %switch.offset.i.i.i27.i = sub nsw i8 %i.fv, %i.fr
  %i.fw = icmp eq i8 %switch.offset.i.i.i27.i, -1 ; 3 uses
  %i.fx = xor i1 %i.fw, true
  %spec.select.i.i = select i1 %i.fw, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20021, !noalias !20037
  %i.fy = zext i1 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.ew
  %i.ge = icmp ne ptr %i.gb, %i.dn
  %or.cond.i28.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i28.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbcb96cdacb9c731fE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbcb96cdacb9c731fE.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i" ], [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i" ], [ %i.ew, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i.i" ], [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b9cf821efa7653dE.exit.i26.i" ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !20021, !noalias !20038
  br label %_ZN4core5slice4sort6stable5merge5merge17hecb24e3643f6bedbE.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i", %.preheader155
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke359, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke359 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ew, %.invoke ], [ %.sroa.7.0.i, %.invoke359 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke359 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ew, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !20021, !noalias !20039
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hecb24e3643f6bedbE.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbcb96cdacb9c731fE.exit.i"
  %i.gl = shl i64 %i.dx, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b07e48f075a658eE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h2b07e48f075a658eE.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17hecb24e3643f6bedbE.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_ZN4core5slice4sort6stable5merge5merge17hecb24e3643f6bedbE.exit ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gn = icmp ugt i64 %i.do, 1
  br i1 %i.gn, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.023.0, 1
  %i.gq = add i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gr, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7103f8e63e31f98E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19939
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h34a82d5f00e25fcdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i111 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i116 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9269f9636840a597E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !20070, !inline_history !20043 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread114, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.sroa.01.0.i.i66 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader51 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %i.r = getelementptr [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9269f9636840a597E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s), !noalias !20070, !inline_history !20043
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i69 = phi i64 [ %i.z, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %i.w = getelementptr [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9269f9636840a597E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !20070, !inline_history !20043
  br i1 %i.y, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.z = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.aa = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i111, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ab = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc208c53593c1def4E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20043
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod160 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.ae = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.an, i64 %i.ae ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !20071, !noalias !20072
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !20073, !noalias !20074
  store <2 x i64> %i.ai, ptr %i.af, align 8, !alias.scope !20071, !noalias !20072
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !20073, !noalias !20074
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i112119123, %.lr.ph.i.i39.epil.preheader ]
  %i.aj = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit

bb.o:                                             ; preds = %bb.l
  %i.al = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20075), !noalias !20070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20076), !noalias !20070
  %.not15.i.i = icmp eq i64 %i.al, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread114, %bb.o
  %i.am = phi i64 [ %i.al, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread114 ] ; 4 uses
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h0ef81618310257a0E.exit.i.thread114 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.0.i.i112119123 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ba, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !20071, !noalias !20072
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !20073, !noalias !20074
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !20071, !noalias !20072
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !20073, !noalias !20074
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h34a82d5f00e25fcdE:bb.a
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !20071, !noalias !20072
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !20073, !noalias !20074
  %i.ba = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ak, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit" ], [ %i.ad, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  %i.bb = lshr i64 %.sroa.018.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bd = sub i64 %factor, %i.bb
  %i.be = add i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit
  %.sroa.026.0 = phi i8 [ %i.bj, %_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h973257ebb70f5626E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bk = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bk, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bm, %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit ] ; 4 uses
  %i.bm = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !55
  %.not29 = icmp ult i8 %i.bo, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !55 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 8 uses
  %i.bu = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 4 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bw ; 6 uses
  %i.by = icmp ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.018.174 to i1
  %i.ca = or i64 %i.bs, %.sroa.018.174
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cd = shl i64 %i.bv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bz, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc208c53593c1def4E(ptr noalias noundef nonnull align 8 %i.bx, i64 noundef %i.bt, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20054
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35": ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc208c53593c1def4E(ptr noalias noundef nonnull align 8 %i.cj, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20054
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35", %bb.u
  %i.cp = icmp eq i64 %i.bt, 0
  %i.cq = icmp eq i64 %i.bu, 0
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd895142346935052E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 range(i64 0, -9223372036854775808) %i.bt) ; 2 uses
  %i.cr = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cr, label %_ZN4core5slice4sort6stable5merge5merge17hd895142346935052E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bt, %i.bu  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cs, ptr %i.bx
  %i.ct = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ct, i1 false), !alias.scope !20077
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cs, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cu, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.bl, %bb.y ]
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.cx = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9269f9636840a597E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cv)
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %..i.i = select i1 %i.cx, ptr %i.cv, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !20077, !noalias !20078
  %i.cz = xor i1 %i.cx, true
  %i.da = zext i1 %i.cz to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.da ; 3 uses
  %i.dc = zext i1 %i.cx to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = icmp eq ptr %i.db, %i.bx
  %i.df = icmp eq ptr %i.dd, %2
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2e80e6b721b1fabcE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.noexc20.i ], [ %i.bx, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dj, %.noexc20.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dl, %.noexc20.i ], [ %i.cs, %bb.y ] ; 3 uses
  %i.dg = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h9269f9636840a597E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dh = xor i1 %i.dg, true
  %spec.select.i.i = select i1 %i.dg, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20077, !noalias !20079
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.cu
  %i.do = icmp ne ptr %i.dl, %i.bl
  %or.cond.i19.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2e80e6b721b1fabcE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2e80e6b721b1fabcE.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.db, %.noexc.i ], [ %i.dm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cu, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dj, %.noexc20.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dr, i1 false), !alias.scope !20077, !noalias !20080
  br label %_ZN4core5slice4sort6stable5merge5merge17hd895142346935052E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cu, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ds = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.du, i1 false), !alias.scope !20077, !noalias !20081
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hd895142346935052E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2e80e6b721b1fabcE.exit.i"
  %i.dv = shl i64 %i.bv, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h624761cde564dc7dE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hd895142346935052E.exit
  %.sroa.0.0.i = phi i64 [ %i.dw, %_ZN4core5slice4sort6stable5merge5merge17hd895142346935052E.exit ], [ %i.cd, %bb.t ] ; 2 uses
  %i.dx = icmp ugt i64 %i.bm, 1
  br i1 %i.dx, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dz = lshr i64 %.sroa.023.0, 1
  %i.ea = add i64 %i.dz, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eb, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = or i64 %1, 1
  %i.ed = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc208c53593c1def4E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20054
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h357faedd31b6fef2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink360.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink360.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink363.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink363.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i234 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.aj ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h92ce162567585480E.exit.i.thread237, %_ZN4core5slice4sort6shared17find_existing_run17h92ce162567585480E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h92ce162567585480E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.t, label %bb.s

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20172
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !20173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20174), !noalias !20175
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !20174, !noalias !20176, !noundef !55 ; 2 uses
  %.not.i2.i.i46 = icmp eq ptr %i.at, null
  br i1 %.not.i2.i.i46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i47", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20177
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !20174, !noalias !20176, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !20177
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !20177
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1772) #70, !noalias !20178
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i47": ; preds = %bb.i
  %i.aw = load double, ptr %i.ae, align 8, !alias.scope !20174, !noalias !20176, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20172
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !20179
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20180), !noalias !20175
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !20180, !noalias !20181, !noundef !55 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit49", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20182
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !20180, !noalias !20181, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !20182
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !20182
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1773) #70, !noalias !20183
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit49": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i47"
  %i.ba = load double, ptr %i.af, align 8, !alias.scope !20180, !noalias !20181, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20172
  %i.bb = fcmp olt double %i.aw, %i.ba            ; 2 uses
  %.not152 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bb, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h92ce162567585480E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h92ce162567585480E.exit.i.thread237, label %.lr.ph140

.lr.ph:                                           ; preds = %.preheader59, %bb.n
  %.sroa.01.0.i.i137 = phi i64 [ %i.bo, %bb.n ], [ 2, %.preheader59 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20184
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc), !noalias !20185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20186), !noalias !20175
  %i.bd = load ptr, ptr %i.h, align 8, !alias.scope !20186, !noalias !20187, !noundef !55 ; 2 uses
  %.not.i2.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20188
  %i.be = load i64, ptr %i.ag, align 8, !alias.scope !20186, !noalias !20187, !noundef !55
  store ptr %i.bd, ptr %i.e, align 8, !noalias !20188
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !20188
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1772) #70, !noalias !20189
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i43": ; preds = %.lr.ph
  %i.bg = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load double, ptr %i.ag, align 8, !alias.scope !20186, !noalias !20187, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20184
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh), !noalias !20190
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20191), !noalias !20175
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !20191, !noalias !20192, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i44, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20193
  %i.bk = load i64, ptr %i.ah, align 8, !alias.scope !20191, !noalias !20192, !noundef !55
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h357faedd31b6fef2E:bb.a
  %i.et = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.et, label %_ZN4core5slice4sort6stable5merge5merge17h88f2b902bf364d95E.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eu, ptr %i.dz
  %i.ev = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ev, i1 false), !alias.scope !20214
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 5 uses
  br i1 %.not.i37, label %.preheader153, label %.lr.ph.i.i

.preheader153:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i" ], [ %i.ew, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i" ], [ %i.dn, %bb.ae ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20215
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !20212

.noexc.i:                                         ; preds = %.preheader153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20216)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !20216, !noalias !20217, !noundef !55 ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i2.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20218
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !20216, !noalias !20217, !noundef !55
  store ptr %i.fa, ptr %i.q, align 8, !noalias !20218
  br label %.invoke357

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i.i": ; preds = %.noexc.i
  %i.fc = load double, ptr %i.am, align 8, !alias.scope !20216, !noalias !20217, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20215
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !20213

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20219)
  %i.fd = load ptr, ptr %i.s, align 8, !alias.scope !20219, !noalias !20220, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20221
  %i.fe = load i64, ptr %i.an, align 8, !alias.scope !20219, !noalias !20220, !noundef !55
  store ptr %i.fd, ptr %i.r, align 8, !noalias !20221
  br label %.invoke357

.invoke357:                                       ; preds = %bb.af, %bb.ag
  %.sink360.sroa.phi = phi ptr [ %.sink360.sroa.gep, %bb.af ], [ %.sink360.sroa.gep424, %bb.ag ]
  %.sink360 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fb, %bb.af ], [ %i.fe, %bb.ag ]
  %i.ff = phi ptr [ @1772, %bb.af ], [ @1773, %bb.ag ]
  store i64 %.sink, ptr %.sink360.sroa.phi, align 8, !noalias !20215
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink360, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #70
          to label %.cont358 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20214

.cont358:                                         ; preds = %.invoke357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i": ; preds = %.noexc19.i
  %i.fg = load double, ptr %i.an, align 8, !alias.scope !20219, !noalias !20220, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20215
  %i.fh = fcmp olt double %i.fc, %i.fg            ; 3 uses
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !20214, !noalias !20222
  %i.fi = xor i1 %i.fh, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dz
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h787818bc5cdfc2e3E.exit.i", label %.preheader153

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i" ], [ %i.dz, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20223
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20213

.noexc28.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20224)
  %i.fp = load ptr, ptr %i.p, align 8, !alias.scope !20224, !noalias !20225, !noundef !55 ; 2 uses
  %.not.i2.i.i.i23.i = icmp eq ptr %i.fp, null
  br i1 %.not.i2.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20226
  %i.fq = load i64, ptr %i.ak, align 8, !alias.scope !20224, !noalias !20225, !noundef !55
  store ptr %i.fp, ptr %i.m, align 8, !noalias !20226
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i24.i": ; preds = %.noexc28.i
  %i.fr = load double, ptr %i.ak, align 8, !alias.scope !20224, !noalias !20225, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20223
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20212

.noexc30.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20227)
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !20227, !noalias !20228, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20229
  %i.ft = load i64, ptr %i.al, align 8, !alias.scope !20227, !noalias !20228, !noundef !55
  store ptr %i.fs, ptr %i.n, align 8, !noalias !20229
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink363.sroa.phi = phi ptr [ %.sink363.sroa.gep, %bb.ah ], [ %.sink363.sroa.gep425, %bb.ai ]
  %.sink363 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink361 = phi i64 [ %i.fq, %bb.ah ], [ %i.ft, %bb.ai ]
  %i.fu = phi ptr [ @1772, %bb.ah ], [ @1773, %bb.ai ]
  store i64 %.sink361, ptr %.sink363.sroa.phi, align 8, !noalias !20223
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20214

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i": ; preds = %.noexc30.i
  %i.fv = load double, ptr %i.al, align 8, !alias.scope !20227, !noalias !20228, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20223
  %i.fw = fcmp olt double %i.fr, %i.fv            ; 3 uses
  %i.fx = xor i1 %i.fw, true
  %spec.select.i.i = select i1 %i.fw, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20214, !noalias !20230
  %i.fy = zext i1 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.ew
  %i.ge = icmp ne ptr %i.gb, %i.dn
  %or.cond.i27.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i27.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h787818bc5cdfc2e3E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h787818bc5cdfc2e3E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i" ], [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i" ], [ %i.ew, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i.i" ], [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heee738c5094a8f30E.exit.i26.i" ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !20214, !noalias !20231
  br label %_ZN4core5slice4sort6stable5merge5merge17h88f2b902bf364d95E.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i.i", %.preheader153
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit3.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke357, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke357 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ew, %.invoke ], [ %.sroa.7.0.i, %.invoke357 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke357 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ew, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !20214, !noalias !20232
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h88f2b902bf364d95E.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h787818bc5cdfc2e3E.exit.i"
  %i.gl = shl i64 %i.dx, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6d315b6256dc07ccE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h6d315b6256dc07ccE.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17h88f2b902bf364d95E.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_ZN4core5slice4sort6stable5merge5merge17h88f2b902bf364d95E.exit ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gn = icmp ugt i64 %i.do, 1
  br i1 %i.gn, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.023.0, 1
  %i.gq = add i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gr, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf572253c7b869fecE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20132
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h535f7859af239a27E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink360.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink360.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink363.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink363.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i234 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.aj ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h4ba4373acba0a10eE.exit.i.thread237, %_ZN4core5slice4sort6shared17find_existing_run17h4ba4373acba0a10eE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h4ba4373acba0a10eE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.t, label %bb.s

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20323
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !20324
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20325), !noalias !20326
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !20325, !noalias !20327, !noundef !55 ; 2 uses
  %.not.i1.i.i46 = icmp eq ptr %i.at, null
  br i1 %.not.i1.i.i46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20328
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !20325, !noalias !20327, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !20328
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !20328
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1766) #70, !noalias !20329
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47": ; preds = %bb.i
  %i.aw = load i64, ptr %i.ae, align 8, !alias.scope !20325, !noalias !20327, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20323
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !20330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20331), !noalias !20326
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !20331, !noalias !20332, !noundef !55 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit49", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20333
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !20331, !noalias !20332, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !20333
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !20333
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1767) #70, !noalias !20334
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit49": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47"
  %i.ba = load i64, ptr %i.af, align 8, !alias.scope !20331, !noalias !20332, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20323
  %i.bb = icmp slt i64 %i.aw, %i.ba               ; 2 uses
  %.not152 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bb, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h4ba4373acba0a10eE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h4ba4373acba0a10eE.exit.i.thread237, label %.lr.ph140

.lr.ph:                                           ; preds = %.preheader59, %bb.n
  %.sroa.01.0.i.i137 = phi i64 [ %i.bo, %bb.n ], [ 2, %.preheader59 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20335
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc), !noalias !20336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20337), !noalias !20326
  %i.bd = load ptr, ptr %i.h, align 8, !alias.scope !20337, !noalias !20338, !noundef !55 ; 2 uses
  %.not.i1.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i1.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20339
  %i.be = load i64, ptr %i.ag, align 8, !alias.scope !20337, !noalias !20338, !noundef !55
  store ptr %i.bd, ptr %i.e, align 8, !noalias !20339
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !20339
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1766) #70, !noalias !20340
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i43": ; preds = %.lr.ph
  %i.bg = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load i64, ptr %i.ag, align 8, !alias.scope !20337, !noalias !20338, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20335
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh), !noalias !20341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20342), !noalias !20326
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !20342, !noalias !20343, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i44, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20344
  %i.bk = load i64, ptr %i.ah, align 8, !alias.scope !20342, !noalias !20343, !noundef !55
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17h535f7859af239a27E:bb.a
  %i.et = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.et, label %_ZN4core5slice4sort6stable5merge5merge17h8676bfdd96d6af98E.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eu, ptr %i.dz
  %i.ev = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ev, i1 false), !alias.scope !20365
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 5 uses
  br i1 %.not.i37, label %.preheader153, label %.lr.ph.i.i

.preheader153:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i" ], [ %i.ew, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i" ], [ %i.dn, %bb.ae ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20366
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !20363

.noexc.i:                                         ; preds = %.preheader153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20367)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !20367, !noalias !20368, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20369
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !20367, !noalias !20368, !noundef !55
  store ptr %i.fa, ptr %i.q, align 8, !noalias !20369
  br label %.invoke357

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.am, align 8, !alias.scope !20367, !noalias !20368, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20366
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !20364

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20370)
  %i.fd = load ptr, ptr %i.s, align 8, !alias.scope !20370, !noalias !20371, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20372
  %i.fe = load i64, ptr %i.an, align 8, !alias.scope !20370, !noalias !20371, !noundef !55
  store ptr %i.fd, ptr %i.r, align 8, !noalias !20372
  br label %.invoke357

.invoke357:                                       ; preds = %bb.af, %bb.ag
  %.sink360.sroa.phi = phi ptr [ %.sink360.sroa.gep, %bb.af ], [ %.sink360.sroa.gep424, %bb.ag ]
  %.sink360 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fb, %bb.af ], [ %i.fe, %bb.ag ]
  %i.ff = phi ptr [ @1766, %bb.af ], [ @1767, %bb.ag ]
  store i64 %.sink, ptr %.sink360.sroa.phi, align 8, !noalias !20366
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink360, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #70
          to label %.cont358 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20365

.cont358:                                         ; preds = %.invoke357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i": ; preds = %.noexc19.i
  %i.fg = load i64, ptr %i.an, align 8, !alias.scope !20370, !noalias !20371, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20366
  %i.fh = icmp slt i64 %i.fc, %i.fg               ; 3 uses
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !20365, !noalias !20373
  %i.fi = xor i1 %i.fh, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dz
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hda3f8162ff4405f5E.exit.i", label %.preheader153

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i" ], [ %i.dz, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20374
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20364

.noexc28.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20375)
  %i.fp = load ptr, ptr %i.p, align 8, !alias.scope !20375, !noalias !20376, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.fp, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20377
  %i.fq = load i64, ptr %i.ak, align 8, !alias.scope !20375, !noalias !20376, !noundef !55
  store ptr %i.fp, ptr %i.m, align 8, !noalias !20377
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i": ; preds = %.noexc28.i
  %i.fr = load i64, ptr %i.ak, align 8, !alias.scope !20375, !noalias !20376, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20374
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20363

.noexc30.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20378)
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !20378, !noalias !20379, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20380
  %i.ft = load i64, ptr %i.al, align 8, !alias.scope !20378, !noalias !20379, !noundef !55
  store ptr %i.fs, ptr %i.n, align 8, !noalias !20380
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink363.sroa.phi = phi ptr [ %.sink363.sroa.gep, %bb.ah ], [ %.sink363.sroa.gep425, %bb.ai ]
  %.sink363 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink361 = phi i64 [ %i.fq, %bb.ah ], [ %i.ft, %bb.ai ]
  %i.fu = phi ptr [ @1766, %bb.ah ], [ @1767, %bb.ai ]
  store i64 %.sink361, ptr %.sink363.sroa.phi, align 8, !noalias !20374
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20365

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i": ; preds = %.noexc30.i
  %i.fv = load i64, ptr %i.al, align 8, !alias.scope !20378, !noalias !20379, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20374
  %i.fw = icmp slt i64 %i.fr, %i.fv               ; 3 uses
  %i.fx = xor i1 %i.fw, true
  %spec.select.i.i = select i1 %i.fw, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20365, !noalias !20381
  %i.fy = zext i1 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.ew
  %i.ge = icmp ne ptr %i.gb, %i.dn
  %or.cond.i27.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i27.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hda3f8162ff4405f5E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hda3f8162ff4405f5E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i" ], [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i" ], [ %i.ew, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i.i" ], [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc49a4a1a61925f9fE.exit.i26.i" ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !20365, !noalias !20382
  br label %_ZN4core5slice4sort6stable5merge5merge17h8676bfdd96d6af98E.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i", %.preheader153
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke357, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke357 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ew, %.invoke ], [ %.sroa.7.0.i, %.invoke357 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke357 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ew, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !20365, !noalias !20383
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h8676bfdd96d6af98E.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hda3f8162ff4405f5E.exit.i"
  %i.gl = shl i64 %i.dx, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ed4a92cdc98f275E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h6ed4a92cdc98f275E.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17h8676bfdd96d6af98E.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_ZN4core5slice4sort6stable5merge5merge17h8676bfdd96d6af98E.exit ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gn = icmp ugt i64 %i.do, 1
  br i1 %i.gn, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.023.0, 1
  %i.gq = add i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gr, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h13f6edc54205717bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20283
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h62585d6ad9ad01a3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i126 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i131 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.au, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.au ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ho, %bb.au ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hm, %bb.au ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9164cb5768c33bd4E.exit", label %bb.ab

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9164cb5768c33bd4E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17had8505ffb7595f5cE.exit.i.thread129, %_ZN4core5slice4sort6shared17find_existing_run17had8505ffb7595f5cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17had8505ffb7595f5cE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9164cb5768c33bd4E.exit"
  br i1 %4, label %bb.z, label %bb.y

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9164cb5768c33bd4E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hde9d3afb5f8a9661E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20467), !noalias !20468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20469), !noalias !20468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20470), !noalias !20468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20471), !noalias !20468
  %i.p = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o), !noalias !20472
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o), !noalias !20472
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i50"

bb.k:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.o, align 8, !alias.scope !20473, !noalias !20472, !nonnull !55, !noundef !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !20473, !noalias !20472, !noundef !55
  %i.u = insertvalue { ptr, i64 } poison, ptr %i.r, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %i.t, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i50"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i50": ; preds = %bb.k, %bb.j
  %.merged.i6.i.i.i52 = phi { ptr, i64 } [ %i.q, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %i.w = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m), !noalias !20468
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i50"
  %i.x = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m), !noalias !20468 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit57"

bb.m:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i50"
  %i.aa = load ptr, ptr %i.m, align 8, !alias.scope !20474, !noalias !20475, !nonnull !55, !noundef !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !20474, !noalias !20475, !noundef !55
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit57"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit57": ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i.i53 = phi ptr [ %i.y, %bb.l ], [ %i.aa, %bb.m ] ; 2 uses
  %.merged.i.i.i.i54 = phi i64 [ %i.z, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %.merged.i6.i.i.i52, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i53) ], !noalias !20468
  %..i.i.i55 = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %.merged.i.i.i.i54)
  %i.ae = sub i64 %i.ad, %.merged.i.i.i.i54
  %i.af = extractvalue { ptr, i64 } %.merged.i6.i.i.i52, 0
  %i.ag = tail call i32 @memcmp(ptr %i.af, ptr nonnull %.sroa.0.0.i.i.i.i53, i64 %..i.i.i55), !noalias !20468 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %spec.store.select.i.i.i56 = select i1 %i.ai, i64 %i.ae, i64 %i.ah
  %i.aj = icmp slt i64 %spec.store.select.i.i.i56, 0 ; 2 uses
  %.not97 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.aj, label %.preheader, label %.preheader67

.preheader67:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit57"
  br i1 %.not97, label %_ZN4core5slice4sort6shared17find_existing_run17had8505ffb7595f5cE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit57"
  br i1 %.not97, label %_ZN4core5slice4sort6shared17find_existing_run17had8505ffb7595f5cE.exit.i.thread129, label %.lr.ph85

.lr.ph:                                           ; preds = %.preheader67, %bb.r
  %.sroa.01.0.i.i82 = phi i64 [ %i.bj, %bb.r ], [ 2, %.preheader67 ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %.sroa.01.0.i.i82 ; 4 uses
  %i.al = add i64 %.sroa.01.0.i.i82, -1           ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.l
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20478), !noalias !20468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20479), !noalias !20468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20480), !noalias !20468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20481), !noalias !20468
  %i.ao = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak), !noalias !20482
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.ap = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak), !noalias !20482
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i42"

bb.o:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.ak, align 8, !alias.scope !20483, !noalias !20482, !nonnull !55, !noundef !55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !20483, !noalias !20482, !noundef !55
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.aq, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %i.as, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i42"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i42": ; preds = %bb.o, %bb.n
  %.merged.i6.i.i.i44 = phi { ptr, i64 } [ %i.ap, %bb.n ], [ %i.au, %bb.o ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an), !noalias !20468
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i42"
  %i.aw = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an), !noalias !20468 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit49"

bb.q:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i42"
  %i.az = load ptr, ptr %i.an, align 8, !alias.scope !20484, !noalias !20485, !nonnull !55, !noundef !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !20484, !noalias !20485, !noundef !55
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit49"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit49": ; preds = %bb.p, %bb.q
  %.sroa.0.0.i.i.i.i45 = phi ptr [ %i.ax, %bb.p ], [ %i.az, %bb.q ] ; 2 uses
  %.merged.i.i.i.i46 = phi i64 [ %i.ay, %bb.p ], [ %i.bb, %bb.q ] ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %.merged.i6.i.i.i44, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i45) ], !noalias !20468
  %..i.i.i47 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %.merged.i.i.i.i46)
  %i.bd = sub i64 %i.bc, %.merged.i.i.i.i46
  %i.be = extractvalue { ptr, i64 } %.merged.i6.i.i.i44, 0
  %i.bf = tail call i32 @memcmp(ptr %i.be, ptr nonnull %.sroa.0.0.i.i.i.i45, i64 %..i.i.i47), !noalias !20468 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17h62585d6ad9ad01a3E:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ex, i1 false), !alias.scope !20512
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %i.ex ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.ak, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fy, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i" ], [ %i.ew, %bb.ak ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i" ], [ %i.ey, %bb.ak ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.fb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i" ], [ %i.dp, %bb.ak ]
  %i.ez = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -40 ; 5 uses
  %i.fa = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -40 ; 5 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20518)
  %i.fc = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fa)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.preheader.i
  br i1 %i.fc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.noexc.i
  %i.fd = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fa)
          to label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i.i" unwind label %.loopexit.i

bb.am:                                            ; preds = %.noexc.i
  %i.fe = load ptr, ptr %i.fa, align 8, !alias.scope !20519, !noalias !20520, !nonnull !55, !noundef !55
  %i.ff = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !20519, !noalias !20520, !noundef !55
  %i.fh = insertvalue { ptr, i64 } poison, ptr %i.fe, 0
  %i.fi = insertvalue { ptr, i64 } %i.fh, i64 %i.fg, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i.i": ; preds = %bb.al, %bb.am
  %.merged.i6.i.i.i.i.i = phi { ptr, i64 } [ %i.fi, %bb.am ], [ %i.fd, %bb.al ] ; 2 uses
  %i.fj = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ez)
          to label %.noexc19.i unwind label %.loopexit.i

.noexc19.i:                                       ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i.i"
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.noexc19.i
  %i.fk = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ez)
          to label %.noexc20.i unwind label %.loopexit.i ; 2 uses

.noexc20.i:                                       ; preds = %bb.an
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i"

bb.ao:                                            ; preds = %.noexc19.i
  %i.fn = load ptr, ptr %i.ez, align 8, !alias.scope !20521, !noalias !20522, !nonnull !55, !noundef !55
  %i.fo = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !20521, !noalias !20522, !noundef !55
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i": ; preds = %bb.ao, %.noexc20.i
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.fl, %.noexc20.i ], [ %i.fn, %bb.ao ] ; 2 uses
  %.merged.i.i.i.i.i.i = phi i64 [ %i.fm, %.noexc20.i ], [ %i.fp, %bb.ao ] ; 2 uses
  %i.fq = extractvalue { ptr, i64 } %.merged.i6.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i) ]
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %.merged.i.i.i.i.i.i)
  %i.fr = sub i64 %i.fq, %.merged.i.i.i.i.i.i
  %i.fs = extractvalue { ptr, i64 } %.merged.i6.i.i.i.i.i, 0
  %i.ft = tail call i32 @memcmp(ptr %i.fs, ptr nonnull %.sroa.0.0.i.i.i.i.i.i, i64 %..i.i.i.i.i), !noalias !20523 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp eq i32 %i.ft, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.fv, i64 %i.fr, i64 %i.fu ; 2 uses
  %i.fw = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.fw, ptr %i.fa, ptr %i.ez
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(40) %..i.i, i64 40, i1 false), !alias.scope !20512, !noalias !20523
  %i.fx = zext i1 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.fx ; 3 uses
  %spec.store.select.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fa, i64 %spec.store.select.i.i.i.lobit.i.i ; 3 uses
  %i.ga = icmp eq ptr %i.fy, %i.eb
  %i.gb = icmp eq ptr %i.fz, %2
  %or.cond.i.i = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb832dad5e46a06a3E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i"
  %.sroa.13.1.i = phi ptr [ %i.ha, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i" ], [ %i.eb, %bb.ak ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.gy, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i" ], [ %2, %bb.ak ] ; 7 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i" ], [ %i.ew, %bb.ak ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20529)
  %i.gc = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.02.i.i)
          to label %.noexc32.i unwind label %.loopexit.split-lp.i

.noexc32.i:                                       ; preds = %.lr.ph.i.i
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.noexc32.i
  %i.gd = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.02.i.i)
          to label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i22.i" unwind label %.loopexit.split-lp.i

bb.aq:                                            ; preds = %.noexc32.i
  %i.ge = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !20530, !noalias !20531, !nonnull !55, !noundef !55
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !20530, !noalias !20531, !noundef !55
  %i.gh = insertvalue { ptr, i64 } poison, ptr %i.ge, 0
  %i.gi = insertvalue { ptr, i64 } %i.gh, i64 %i.gg, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i22.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i22.i": ; preds = %bb.ap, %bb.aq
  %.merged.i6.i.i.i.i24.i = phi { ptr, i64 } [ %i.gi, %bb.aq ], [ %i.gd, %bb.ap ] ; 2 uses
  %i.gj = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.i38)
          to label %.noexc34.i unwind label %.loopexit.split-lp.i

.noexc34.i:                                       ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i22.i"
  br i1 %i.gj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc34.i
  %i.gk = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.i38)
          to label %.noexc35.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc35.i:                                       ; preds = %bb.ar
  %i.gl = extractvalue { ptr, i64 } %i.gk, 0
  %i.gm = extractvalue { ptr, i64 } %i.gk, 1
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i"

bb.as:                                            ; preds = %.noexc34.i
  %i.gn = load ptr, ptr %.sroa.0.0.i38, align 8, !alias.scope !20532, !noalias !20533, !nonnull !55, !noundef !55
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !20532, !noalias !20533, !noundef !55
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i": ; preds = %bb.as, %.noexc35.i
  %.sroa.0.0.i.i.i.i.i26.i = phi ptr [ %i.gl, %.noexc35.i ], [ %i.gn, %bb.as ] ; 2 uses
  %.merged.i.i.i.i.i27.i = phi i64 [ %i.gm, %.noexc35.i ], [ %i.gp, %bb.as ] ; 2 uses
  %i.gq = extractvalue { ptr, i64 } %.merged.i6.i.i.i.i24.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i26.i) ]
  %..i.i.i.i28.i = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 %.merged.i.i.i.i.i27.i)
  %i.gr = sub i64 %i.gq, %.merged.i.i.i.i.i27.i
  %i.gs = extractvalue { ptr, i64 } %.merged.i6.i.i.i.i24.i, 0
  %i.gt = tail call i32 @memcmp(ptr %i.gs, ptr nonnull %.sroa.0.0.i.i.i.i.i26.i, i64 %..i.i.i.i28.i), !noalias !20534 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp eq i32 %i.gt, 0
  %spec.store.select.i.i.i.i29.i = select i1 %i.gv, i64 %i.gr, i64 %i.gu ; 2 uses
  %i.gw = icmp sgt i64 %spec.store.select.i.i.i.i29.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.gw, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(40) %spec.select.i.i, i64 40, i1 false), !alias.scope !20512, !noalias !20534
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.i38, i64 %i.gx ; 3 uses
  %spec.store.select.i.i.i.lobit.i30.i = lshr i64 %spec.store.select.i.i.i.i29.i, 63
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.lobit.i30.i ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 40 ; 2 uses
  %i.hb = icmp ne ptr %i.gy, %i.ey
  %i.hc = icmp ne ptr %i.gz, %i.dp
  %or.cond.i31.i = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %or.cond.i31.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb832dad5e46a06a3E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb832dad5e46a06a3E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fy, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i" ], [ %i.ha, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i" ], [ %i.ey, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i.i" ], [ %i.gy, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17heaafbf758567b90fE.exit.i25.i" ] ; 2 uses
  %i.hd = ptrtoint ptr %.sroa.7.2.i to i64
  %i.he = ptrtoint ptr %.sroa.0.3.i to i64
  %i.hf = sub nuw i64 %i.hd, %i.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.hf, i1 false), !alias.scope !20512, !noalias !20535
  br label %_ZN4core5slice4sort6stable5merge5merge17h0c88a4182dc6351fE.exit

.loopexit.i:                                      ; preds = %bb.an, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i.i", %bb.al, %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp.i:                             ; preds = %bb.ar, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7.i.i.i.i22.i", %bb.ap, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ey, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.hg = ptrtoint ptr %.sroa.7.1.i to i64
  %i.hh = ptrtoint ptr %.sroa.0.2.i to i64
  %i.hi = sub nuw i64 %i.hg, %i.hh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.hi, i1 false), !alias.scope !20512, !noalias !20536
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h0c88a4182dc6351fE.exit: ; preds = %bb.ai, %bb.aj, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb832dad5e46a06a3E.exit.i"
  %i.hj = shl i64 %i.dz, 1
  %i.hk = or disjoint i64 %i.hj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h0bf1ddbfeb3284e9E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h0bf1ddbfeb3284e9E.exit: ; preds = %bb.af, %_ZN4core5slice4sort6stable5merge5merge17h0c88a4182dc6351fE.exit
  %.sroa.0.0.i = phi i64 [ %i.hk, %_ZN4core5slice4sort6stable5merge5merge17h0c88a4182dc6351fE.exit ], [ %i.eh, %bb.af ] ; 2 uses
  %i.hl = icmp ugt i64 %i.dq, 1
  br i1 %i.hl, label %bb.ac, label %._crit_edge

bb.au:                                            ; preds = %._crit_edge
  %i.hm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.hn = lshr i64 %.sroa.023.0, 1
  %i.ho = add i64 %i.hn, %.sroa.09.0
  br label %bb.f

bb.av:                                            ; preds = %._crit_edge
  %i.hp = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.hp, 0
  br i1 %.not31, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hq = or i64 %1, 1
  %i.hr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hq, i1 true)
  %i.hs = trunc nuw nsw i64 %i.hr to i32
  %i.ht = shl nuw nsw i32 %i.hs, 1
  %i.hu = xor i32 %i.ht, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9d48a3499df490ddE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.hu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20431
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.a, %bb.ax
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h664c2423c77759baE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink360.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink360.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink363.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink363.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i234 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.aj ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1eae59b248ca7cdbE.exit.i.thread237, %_ZN4core5slice4sort6shared17find_existing_run17h1eae59b248ca7cdbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h1eae59b248ca7cdbE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.t, label %bb.s

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20627
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !20628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20629), !noalias !20630
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !20629, !noalias !20631, !noundef !55 ; 2 uses
  %.not.i1.i.i46 = icmp eq ptr %i.at, null
  br i1 %.not.i1.i.i46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20632
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !20629, !noalias !20631, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !20632
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !20632
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1783) #70, !noalias !20633
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47": ; preds = %bb.i
  %i.aw = load i32, ptr %i.ae, align 8, !range !62, !alias.scope !20629, !noalias !20631, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20627
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !20634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20635), !noalias !20630
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !20635, !noalias !20636, !noundef !55 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit49", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20637
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !20635, !noalias !20636, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !20637
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !20637
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1784) #70, !noalias !20638
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit49": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47"
  %i.ba = load i32, ptr %i.af, align 8, !range !62, !alias.scope !20635, !noalias !20636, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20627
  %i.bb = icmp samesign ult i32 %i.ba, %i.aw      ; 2 uses
  %.not152 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bb, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h1eae59b248ca7cdbE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h1eae59b248ca7cdbE.exit.i.thread237, label %.lr.ph140

.lr.ph:                                           ; preds = %.preheader59, %bb.n
  %.sroa.01.0.i.i137 = phi i64 [ %i.bo, %bb.n ], [ 2, %.preheader59 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20639
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc), !noalias !20640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20641), !noalias !20630
  %i.bd = load ptr, ptr %i.h, align 8, !alias.scope !20641, !noalias !20642, !noundef !55 ; 2 uses
  %.not.i1.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i1.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20643
  %i.be = load i64, ptr %i.ag, align 8, !alias.scope !20641, !noalias !20642, !noundef !55
  store ptr %i.bd, ptr %i.e, align 8, !noalias !20643
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !20643
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1783) #70, !noalias !20644
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i43": ; preds = %.lr.ph
  %i.bg = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load i32, ptr %i.ag, align 8, !range !62, !alias.scope !20641, !noalias !20642, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20639
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh), !noalias !20645
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20646), !noalias !20630
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !20646, !noalias !20647, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i44, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20648
  %i.bk = load i64, ptr %i.ah, align 8, !alias.scope !20646, !noalias !20647, !noundef !55
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17h664c2423c77759baE:bb.a
  %i.et = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.et, label %_ZN4core5slice4sort6stable5merge5merge17hb0c168edd87b38fdE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eu, ptr %i.dz
  %i.ev = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ev, i1 false), !alias.scope !20669
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 5 uses
  br i1 %.not.i37, label %.preheader153, label %.lr.ph.i.i

.preheader153:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i" ], [ %i.ew, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i" ], [ %i.dn, %bb.ae ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20670
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !20667

.noexc.i:                                         ; preds = %.preheader153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20671)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !20671, !noalias !20672, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20673
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !20671, !noalias !20672, !noundef !55
  store ptr %i.fa, ptr %i.q, align 8, !noalias !20673
  br label %.invoke357

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.fc = load i32, ptr %i.am, align 8, !range !62, !alias.scope !20671, !noalias !20672, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20670
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !20668

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20674)
  %i.fd = load ptr, ptr %i.s, align 8, !alias.scope !20674, !noalias !20675, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20676
  %i.fe = load i64, ptr %i.an, align 8, !alias.scope !20674, !noalias !20675, !noundef !55
  store ptr %i.fd, ptr %i.r, align 8, !noalias !20676
  br label %.invoke357

.invoke357:                                       ; preds = %bb.af, %bb.ag
  %.sink360.sroa.phi = phi ptr [ %.sink360.sroa.gep, %bb.af ], [ %.sink360.sroa.gep424, %bb.ag ]
  %.sink360 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fb, %bb.af ], [ %i.fe, %bb.ag ]
  %i.ff = phi ptr [ @1783, %bb.af ], [ @1784, %bb.ag ]
  store i64 %.sink, ptr %.sink360.sroa.phi, align 8, !noalias !20670
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink360, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #70
          to label %.cont358 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20669

.cont358:                                         ; preds = %.invoke357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i": ; preds = %.noexc19.i
  %i.fg = load i32, ptr %i.an, align 8, !range !62, !alias.scope !20674, !noalias !20675, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20670
  %i.fh = icmp samesign ult i32 %i.fg, %i.fc      ; 3 uses
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !20669, !noalias !20677
  %i.fi = xor i1 %i.fh, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dz
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he7e08a0159227095E.exit.i", label %.preheader153

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i" ], [ %i.dz, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20678
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20668

.noexc28.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20679)
  %i.fp = load ptr, ptr %i.p, align 8, !alias.scope !20679, !noalias !20680, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.fp, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20681
  %i.fq = load i64, ptr %i.ak, align 8, !alias.scope !20679, !noalias !20680, !noundef !55
  store ptr %i.fp, ptr %i.m, align 8, !noalias !20681
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i": ; preds = %.noexc28.i
  %i.fr = load i32, ptr %i.ak, align 8, !range !62, !alias.scope !20679, !noalias !20680, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20678
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20667

.noexc30.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20682)
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !20682, !noalias !20683, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20684
  %i.ft = load i64, ptr %i.al, align 8, !alias.scope !20682, !noalias !20683, !noundef !55
  store ptr %i.fs, ptr %i.n, align 8, !noalias !20684
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink363.sroa.phi = phi ptr [ %.sink363.sroa.gep, %bb.ah ], [ %.sink363.sroa.gep425, %bb.ai ]
  %.sink363 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink361 = phi i64 [ %i.fq, %bb.ah ], [ %i.ft, %bb.ai ]
  %i.fu = phi ptr [ @1783, %bb.ah ], [ @1784, %bb.ai ]
  store i64 %.sink361, ptr %.sink363.sroa.phi, align 8, !noalias !20678
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20669

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i": ; preds = %.noexc30.i
  %i.fv = load i32, ptr %i.al, align 8, !range !62, !alias.scope !20682, !noalias !20683, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20678
  %i.fw = icmp samesign ult i32 %i.fv, %i.fr      ; 3 uses
  %i.fx = xor i1 %i.fw, true
  %spec.select.i.i = select i1 %i.fw, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20669, !noalias !20685
  %i.fy = zext i1 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.ew
  %i.ge = icmp ne ptr %i.gb, %i.dn
  %or.cond.i27.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i27.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he7e08a0159227095E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he7e08a0159227095E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i" ], [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i" ], [ %i.ew, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i.i" ], [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h73ebe60bacfb730dE.exit.i26.i" ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !20669, !noalias !20686
  br label %_ZN4core5slice4sort6stable5merge5merge17hb0c168edd87b38fdE.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i", %.preheader153
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke357, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke357 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ew, %.invoke ], [ %.sroa.7.0.i, %.invoke357 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke357 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ew, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !20669, !noalias !20687
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hb0c168edd87b38fdE.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he7e08a0159227095E.exit.i"
  %i.gl = shl i64 %i.dx, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha72dc684b003e57dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17ha72dc684b003e57dE.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17hb0c168edd87b38fdE.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_ZN4core5slice4sort6stable5merge5merge17hb0c168edd87b38fdE.exit ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gn = icmp ugt i64 %i.do, 1
  br i1 %i.gn, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.023.0, 1
  %i.gq = add i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gr, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0746b20dfc5d5948E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20587
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h84c46165f1641beeE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink360.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink360.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink363.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink363.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i234 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.aj ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hcaadffe408d39178E.exit.i.thread237, %_ZN4core5slice4sort6shared17find_existing_run17hcaadffe408d39178E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hcaadffe408d39178E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.t, label %bb.s

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20778
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !20779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20780), !noalias !20781
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !20780, !noalias !20782, !noundef !55 ; 2 uses
  %.not.i1.i.i46 = icmp eq ptr %i.at, null
  br i1 %.not.i1.i.i46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20783
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !20780, !noalias !20782, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !20783
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !20783
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1781) #70, !noalias !20784
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47": ; preds = %bb.i
  %i.aw = load i64, ptr %i.ae, align 8, !alias.scope !20780, !noalias !20782, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20778
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !20785
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20786), !noalias !20781
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !20786, !noalias !20787, !noundef !55 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit49", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20788
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !20786, !noalias !20787, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !20788
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !20788
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1782) #70, !noalias !20789
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit49": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i47"
  %i.ba = load i64, ptr %i.af, align 8, !alias.scope !20786, !noalias !20787, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20778
  %i.bb = icmp slt i64 %i.ba, %i.aw               ; 2 uses
  %.not152 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bb, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17hcaadffe408d39178E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17hcaadffe408d39178E.exit.i.thread237, label %.lr.ph140

.lr.ph:                                           ; preds = %.preheader59, %bb.n
  %.sroa.01.0.i.i137 = phi i64 [ %i.bo, %bb.n ], [ 2, %.preheader59 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20790
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc), !noalias !20791
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20792), !noalias !20781
  %i.bd = load ptr, ptr %i.h, align 8, !alias.scope !20792, !noalias !20793, !noundef !55 ; 2 uses
  %.not.i1.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i1.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20794
  %i.be = load i64, ptr %i.ag, align 8, !alias.scope !20792, !noalias !20793, !noundef !55
  store ptr %i.bd, ptr %i.e, align 8, !noalias !20794
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !20794
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1781) #70, !noalias !20795
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i43": ; preds = %.lr.ph
  %i.bg = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load i64, ptr %i.ag, align 8, !alias.scope !20792, !noalias !20793, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20790
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh), !noalias !20796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20797), !noalias !20781
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !20797, !noalias !20798, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i44, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20799
  %i.bk = load i64, ptr %i.ah, align 8, !alias.scope !20797, !noalias !20798, !noundef !55
end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable5drift4sort17h84c46165f1641beeE:bb.a
  %i.et = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.et, label %_ZN4core5slice4sort6stable5merge5merge17hcebe71481b8c5bd6E.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eu, ptr %i.dz
  %i.ev = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ev, i1 false), !alias.scope !20820
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 5 uses
  br i1 %.not.i37, label %.preheader153, label %.lr.ph.i.i

.preheader153:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i" ], [ %i.ew, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i" ], [ %i.dn, %bb.ae ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20821
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !20818

.noexc.i:                                         ; preds = %.preheader153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20822)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !20822, !noalias !20823, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20824
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !20822, !noalias !20823, !noundef !55
  store ptr %i.fa, ptr %i.q, align 8, !noalias !20824
  br label %.invoke357

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.am, align 8, !alias.scope !20822, !noalias !20823, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20821
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !20819

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20825)
  %i.fd = load ptr, ptr %i.s, align 8, !alias.scope !20825, !noalias !20826, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20827
  %i.fe = load i64, ptr %i.an, align 8, !alias.scope !20825, !noalias !20826, !noundef !55
  store ptr %i.fd, ptr %i.r, align 8, !noalias !20827
  br label %.invoke357

.invoke357:                                       ; preds = %bb.af, %bb.ag
  %.sink360.sroa.phi = phi ptr [ %.sink360.sroa.gep, %bb.af ], [ %.sink360.sroa.gep424, %bb.ag ]
  %.sink360 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fb, %bb.af ], [ %i.fe, %bb.ag ]
  %i.ff = phi ptr [ @1781, %bb.af ], [ @1782, %bb.ag ]
  store i64 %.sink, ptr %.sink360.sroa.phi, align 8, !noalias !20821
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink360, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #70
          to label %.cont358 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20820

.cont358:                                         ; preds = %.invoke357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i": ; preds = %.noexc19.i
  %i.fg = load i64, ptr %i.an, align 8, !alias.scope !20825, !noalias !20826, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20821
  %i.fh = icmp slt i64 %i.fg, %i.fc               ; 3 uses
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !20820, !noalias !20828
  %i.fi = xor i1 %i.fh, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dz
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8be47fc6fb8c72beE.exit.i", label %.preheader153

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i" ], [ %i.dz, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20829
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20819

.noexc28.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20830)
  %i.fp = load ptr, ptr %i.p, align 8, !alias.scope !20830, !noalias !20831, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.fp, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20832
  %i.fq = load i64, ptr %i.ak, align 8, !alias.scope !20830, !noalias !20831, !noundef !55
  store ptr %i.fp, ptr %i.m, align 8, !noalias !20832
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i": ; preds = %.noexc28.i
  %i.fr = load i64, ptr %i.ak, align 8, !alias.scope !20830, !noalias !20831, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20829
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic6as_int17h9fca4fefc495bbacE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20818

.noexc30.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20833)
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !20833, !noalias !20834, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20835
  %i.ft = load i64, ptr %i.al, align 8, !alias.scope !20833, !noalias !20834, !noundef !55
  store ptr %i.fs, ptr %i.n, align 8, !noalias !20835
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink363.sroa.phi = phi ptr [ %.sink363.sroa.gep, %bb.ah ], [ %.sink363.sroa.gep425, %bb.ai ]
  %.sink363 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink361 = phi i64 [ %i.fq, %bb.ah ], [ %i.ft, %bb.ai ]
  %i.fu = phi ptr [ @1781, %bb.ah ], [ @1782, %bb.ai ]
  store i64 %.sink361, ptr %.sink363.sroa.phi, align 8, !noalias !20829
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20820

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i": ; preds = %.noexc30.i
  %i.fv = load i64, ptr %i.al, align 8, !alias.scope !20833, !noalias !20834, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20829
  %i.fw = icmp slt i64 %i.fv, %i.fr               ; 3 uses
  %i.fx = xor i1 %i.fw, true
  %spec.select.i.i = select i1 %i.fw, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20820, !noalias !20836
  %i.fy = zext i1 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.ew
  %i.ge = icmp ne ptr %i.gb, %i.dn
  %or.cond.i27.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i27.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8be47fc6fb8c72beE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8be47fc6fb8c72beE.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i" ], [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i" ], [ %i.ew, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i.i" ], [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h065905bee4658c03E.exit.i26.i" ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !20820, !noalias !20837
  br label %_ZN4core5slice4sort6stable5merge5merge17hcebe71481b8c5bd6E.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i.i", %.preheader153
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5a4f534db56ca446E.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke357, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke357 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ew, %.invoke ], [ %.sroa.7.0.i, %.invoke357 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke357 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ew, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !20820, !noalias !20838
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hcebe71481b8c5bd6E.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8be47fc6fb8c72beE.exit.i"
  %i.gl = shl i64 %i.dx, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h53d98804f8998187E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h53d98804f8998187E.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17hcebe71481b8c5bd6E.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_ZN4core5slice4sort6stable5merge5merge17hcebe71481b8c5bd6E.exit ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gn = icmp ugt i64 %i.do, 1
  br i1 %i.gn, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.023.0, 1
  %i.gq = add i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gr, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h44a045a7d0282b7aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20738
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h984551bf198b8bfbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink368.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink368.sroa.gep432 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink371.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink371.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i242 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i247 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ah ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gn, %bb.ah ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gl, %bb.ah ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hcc9ab51d7e669a53E.exit.i.thread245, %_ZN4core5slice4sort6shared17find_existing_run17hcc9ab51d7e669a53E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hcc9ab51d7e669a53E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.r, label %bb.q

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20929
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !20930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20931), !noalias !20932
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !20931, !noalias !20933, !noundef !55 ; 2 uses
  %.not.i1.i.i47 = icmp eq ptr %i.at, null
  br i1 %.not.i1.i.i47, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i48", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20934
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !20931, !noalias !20933, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !20934
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !20934
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1785) #70, !noalias !20935
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i48": ; preds = %bb.i
  %i.aw = load double, ptr %i.ae, align 8, !alias.scope !20931, !noalias !20933, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20929
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !20936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20937), !noalias !20932
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !20937, !noalias !20938, !noundef !55 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i49, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i50", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i48"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20939
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !20937, !noalias !20938, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !20939
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !20939
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1786) #70, !noalias !20940
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i50": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i48"
  %i.ba = load double, ptr %i.af, align 8, !alias.scope !20937, !noalias !20938, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20929
  %i.bb = fcmp ogt double %i.aw, %i.ba            ; 2 uses
  %.not159 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bb, label %.preheader, label %.split.preheader

.preheader:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i50"
  br i1 %.not159, label %_ZN4core5slice4sort6shared17find_existing_run17hcc9ab51d7e669a53E.exit.i.thread245, label %.lr.ph

.split.preheader:                                 ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i50"
  br i1 %.not159, label %_ZN4core5slice4sort6shared17find_existing_run17hcc9ab51d7e669a53E.exit.i.thread, label %.lr.ph148

.lr.ph148:                                        ; preds = %.split.preheader, %.split
  %.sroa.01.0.i.i147 = phi i64 [ %i.bn, %.split ], [ 2, %.split.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20941
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc), !noalias !20942
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20943), !noalias !20932
  %i.bd = load ptr, ptr %i.h, align 8, !alias.scope !20943, !noalias !20944, !noundef !55 ; 2 uses
  %.not.i1.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i1.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20945
  %i.be = load i64, ptr %i.ai, align 8, !alias.scope !20943, !noalias !20944, !noundef !55
  store ptr %i.bd, ptr %i.e, align 8, !noalias !20945
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !20945
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1785) #70, !noalias !20946
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i43": ; preds = %.lr.ph148
  %i.bg = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i147
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load double, ptr %i.ai, align 8, !alias.scope !20943, !noalias !20944, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20941
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh), !noalias !20947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20948), !noalias !20932
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !20948, !noalias !20949, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i44, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20950
  %i.bk = load i64, ptr %i.aj, align 8, !alias.scope !20948, !noalias !20949, !noundef !55
end_hunk_6
begin_hunk_7_@_ZN4core5slice4sort6stable5drift4sort17h984551bf198b8bfbE:bb.a
  %i.er = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.er, label %_ZN4core5slice4sort6stable5merge5merge17h52ce5c56349fe943E.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dt ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dt, %i.du  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.es, ptr %i.dx
  %i.et = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.et, i1 false), !alias.scope !20971
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et ; 5 uses
  br i1 %.not.i37, label %.preheader161, label %.lr.ph.i.i

.preheader161:                                    ; preds = %bb.ac, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fi, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i" ], [ %i.es, %bb.ac ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fk, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i" ], [ %i.eu, %bb.ac ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ex, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i" ], [ %i.dl, %bb.ac ]
  %i.ev = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20972
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !20969

.noexc.i:                                         ; preds = %.preheader161
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20973)
  %i.ey = load ptr, ptr %i.t, align 8, !alias.scope !20973, !noalias !20974, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i.i", label %bb.ad, !prof !74

bb.ad:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20975
  %i.ez = load i64, ptr %i.am, align 8, !alias.scope !20973, !noalias !20974, !noundef !55
  store ptr %i.ey, ptr %i.q, align 8, !noalias !20975
  br label %.invoke365

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.fa = load double, ptr %i.am, align 8, !alias.scope !20973, !noalias !20974, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20972
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ev)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !20970

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20976)
  %i.fb = load ptr, ptr %i.s, align 8, !alias.scope !20976, !noalias !20977, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i", label %bb.ae, !prof !74

bb.ae:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20978
  %i.fc = load i64, ptr %i.an, align 8, !alias.scope !20976, !noalias !20977, !noundef !55
  store ptr %i.fb, ptr %i.r, align 8, !noalias !20978
  br label %.invoke365

.invoke365:                                       ; preds = %bb.ad, %bb.ae
  %.sink368.sroa.phi = phi ptr [ %.sink368.sroa.gep, %bb.ad ], [ %.sink368.sroa.gep432, %bb.ae ]
  %.sink368 = phi ptr [ %i.q, %bb.ad ], [ %i.r, %bb.ae ]
  %.sink = phi i64 [ %i.ez, %bb.ad ], [ %i.fc, %bb.ae ]
  %i.fd = phi ptr [ @1785, %bb.ad ], [ @1786, %bb.ae ]
  store i64 %.sink, ptr %.sink368.sroa.phi, align 8, !noalias !20972
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink368, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd) #70
          to label %.cont366 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20971

.cont366:                                         ; preds = %.invoke365
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i": ; preds = %.noexc19.i
  %i.fe = load double, ptr %i.an, align 8, !alias.scope !20976, !noalias !20977, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20972
  %brmerge.i.i = fcmp ogt double %i.fa, %i.fe     ; 3 uses
  %i.ff = select i1 %brmerge.i.i, ptr %i.ev, ptr %i.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 16, i1 false), !alias.scope !20971, !noalias !20979
  %i.fg = xor i1 %brmerge.i.i, true
  %i.fh = zext i1 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.fh ; 3 uses
  %i.fj = zext i1 %brmerge.i.i to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.fj ; 3 uses
  %i.fl = icmp eq ptr %i.fi, %i.dx
  %i.fm = icmp eq ptr %i.fk, %2
  %or.cond.i.i = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3e9f18a2d618874dE.exit.i", label %.preheader161

.lr.ph.i.i:                                       ; preds = %bb.ac, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.fz, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i" ], [ %i.dx, %bb.ac ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fw, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i" ], [ %2, %bb.ac ] ; 5 uses
  %.sroa.0.05.i.i = phi ptr [ %i.fy, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i" ], [ %i.es, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20980
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.05.i.i)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20970

.noexc29.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20981)
  %i.fn = load ptr, ptr %i.p, align 8, !alias.scope !20981, !noalias !20982, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.fn, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i24.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20983
  %i.fo = load i64, ptr %i.ak, align 8, !alias.scope !20981, !noalias !20982, !noundef !55
  store ptr %i.fn, ptr %i.m, align 8, !noalias !20983
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i24.i": ; preds = %.noexc29.i
  %i.fp = load double, ptr %i.ak, align 8, !alias.scope !20981, !noalias !20982, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20980
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic8as_float17h7884aee7ed15fe87E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !20969

.noexc31.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20984)
  %i.fq = load ptr, ptr %i.o, align 8, !alias.scope !20984, !noalias !20985, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20986
  %i.fr = load i64, ptr %i.al, align 8, !alias.scope !20984, !noalias !20985, !noundef !55
  store ptr %i.fq, ptr %i.n, align 8, !noalias !20986
  br label %.invoke

.invoke:                                          ; preds = %bb.af, %bb.ag
  %.sink371.sroa.phi = phi ptr [ %.sink371.sroa.gep, %bb.af ], [ %.sink371.sroa.gep433, %bb.ag ]
  %.sink371 = phi ptr [ %i.m, %bb.af ], [ %i.n, %bb.ag ]
  %.sink369 = phi i64 [ %i.fo, %bb.af ], [ %i.fr, %bb.ag ]
  %i.fs = phi ptr [ @1785, %bb.af ], [ @1786, %bb.ag ]
  store i64 %.sink369, ptr %.sink371.sroa.phi, align 8, !noalias !20980
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink371, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !20971

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i": ; preds = %.noexc31.i
  %i.ft = load double, ptr %i.al, align 8, !alias.scope !20984, !noalias !20985, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20980
  %brmerge.i27.i = fcmp ule double %i.fp, %i.ft   ; 3 uses
  %spec.select.i.i = select i1 %brmerge.i27.i, ptr %.sroa.0.0.i38, ptr %.sroa.0.05.i.i
  %i.fu = xor i1 %brmerge.i27.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !20971, !noalias !20987
  %i.fv = zext i1 %brmerge.i27.i to i64
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fv ; 3 uses
  %i.fx = zext i1 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.05.i.i, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.ga = icmp ne ptr %i.fw, %i.eu
  %i.gb = icmp ne ptr %i.fy, %i.dl
  %or.cond.i28.i = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond.i28.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3e9f18a2d618874dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3e9f18a2d618874dE.exit.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fi, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i" ], [ %i.fz, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fk, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i" ], [ %i.eu, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i.i" ], [ %i.fw, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit.i.i.i26.i" ] ; 2 uses
  %i.gc = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gd = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ge = sub nuw i64 %i.gc, %i.gd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ge, i1 false), !alias.scope !20971, !noalias !20988
  br label %_ZN4core5slice4sort6stable5merge5merge17h52ce5c56349fe943E.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i.i", %.preheader161
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1747bc5a8b172d4eE.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke365, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke365 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.eu, %.invoke ], [ %.sroa.7.0.i, %.invoke365 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke365 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.eu, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gf = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gh, i1 false), !alias.scope !20971, !noalias !20989
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h52ce5c56349fe943E.exit: ; preds = %bb.aa, %bb.ab, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3e9f18a2d618874dE.exit.i"
  %i.gi = shl i64 %i.dv, 1
  %i.gj = or disjoint i64 %i.gi, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf0b83a334460eb1fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hf0b83a334460eb1fE.exit: ; preds = %bb.x, %_ZN4core5slice4sort6stable5merge5merge17h52ce5c56349fe943E.exit
  %.sroa.0.0.i = phi i64 [ %i.gj, %_ZN4core5slice4sort6stable5merge5merge17h52ce5c56349fe943E.exit ], [ %i.ed, %bb.x ] ; 2 uses
  %i.gk = icmp ugt i64 %i.dm, 1
  br i1 %i.gk, label %bb.u, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.gl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gm = lshr i64 %.sroa.023.0, 1
  %i.gn = add i64 %i.gm, %.sroa.09.0
  br label %bb.f

bb.ai:                                            ; preds = %._crit_edge
  %i.go = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.go, 0
  br i1 %.not31, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gp = or i64 %1, 1
  %i.gq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gp, i1 true)
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 1
  %i.gt = xor i32 %i.gs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfde58a470cf99762E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20889
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd0adb25c60108259E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i111 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i116 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he552bd11900f684dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !21020, !inline_history !20993 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread114, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.sroa.01.0.i.i66 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader51 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %i.r = getelementptr [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he552bd11900f684dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s), !noalias !21020, !inline_history !20993
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i69 = phi i64 [ %i.z, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %i.w = getelementptr [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he552bd11900f684dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !21020, !inline_history !20993
  br i1 %i.y, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.z = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.aa = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i111, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ab = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb0030203285448b1E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20993
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod160 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.ae = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.an, i64 %i.ae ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !21021, !noalias !21022
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !21023, !noalias !21024
  store <2 x i64> %i.ai, ptr %i.af, align 8, !alias.scope !21021, !noalias !21022
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !21023, !noalias !21024
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i112119123, %.lr.ph.i.i39.epil.preheader ]
  %i.aj = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit

bb.o:                                             ; preds = %bb.l
  %i.al = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21025), !noalias !21020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21026), !noalias !21020
  %.not15.i.i = icmp eq i64 %i.al, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread114, %bb.o
  %i.am = phi i64 [ %i.al, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread114 ] ; 4 uses
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h3ad7132d48836408E.exit.i.thread114 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.0.i.i112119123 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ba, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !21021, !noalias !21022
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !21023, !noalias !21024
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !21021, !noalias !21022
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !21023, !noalias !21024
end_hunk_7
begin_hunk_8_@_ZN4core5slice4sort6stable5drift4sort17hd0adb25c60108259E:bb.a
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !21021, !noalias !21022
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !21023, !noalias !21024
  %i.ba = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ak, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit" ], [ %i.ad, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  %i.bb = lshr i64 %.sroa.018.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bd = sub i64 %factor, %i.bb
  %i.be = add i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit
  %.sroa.026.0 = phi i8 [ %i.bj, %_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h854c1d68463995e6E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bk = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bk, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bm, %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit ] ; 4 uses
  %i.bm = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !55
  %.not29 = icmp ult i8 %i.bo, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !55 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 8 uses
  %i.bu = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 4 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bw ; 6 uses
  %i.by = icmp ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.018.174 to i1
  %i.ca = or i64 %i.bs, %.sroa.018.174
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cd = shl i64 %i.bv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bz, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb0030203285448b1E(ptr noalias noundef nonnull align 8 %i.bx, i64 noundef %i.bt, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21004
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35": ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb0030203285448b1E(ptr noalias noundef nonnull align 8 %i.cj, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21004
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35", %bb.u
  %i.cp = icmp eq i64 %i.bt, 0
  %i.cq = icmp eq i64 %i.bu, 0
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17he5e5a0a6d0bbe0edE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 range(i64 0, -9223372036854775808) %i.bt) ; 2 uses
  %i.cr = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cr, label %_ZN4core5slice4sort6stable5merge5merge17he5e5a0a6d0bbe0edE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bt, %i.bu  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cs, ptr %i.bx
  %i.ct = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ct, i1 false), !alias.scope !21027
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cs, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cu, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.bl, %bb.y ]
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.cx = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he552bd11900f684dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cv)
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %..i.i = select i1 %i.cx, ptr %i.cv, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !21027, !noalias !21028
  %i.cz = xor i1 %i.cx, true
  %i.da = zext i1 %i.cz to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.da ; 3 uses
  %i.dc = zext i1 %i.cx to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = icmp eq ptr %i.db, %i.bx
  %i.df = icmp eq ptr %i.dd, %2
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb930eb8693dae08eE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.noexc20.i ], [ %i.bx, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dj, %.noexc20.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dl, %.noexc20.i ], [ %i.cs, %bb.y ] ; 3 uses
  %i.dg = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he552bd11900f684dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dh = xor i1 %i.dg, true
  %spec.select.i.i = select i1 %i.dg, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !21027, !noalias !21029
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.cu
  %i.do = icmp ne ptr %i.dl, %i.bl
  %or.cond.i19.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb930eb8693dae08eE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb930eb8693dae08eE.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.db, %.noexc.i ], [ %i.dm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cu, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dj, %.noexc20.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dr, i1 false), !alias.scope !21027, !noalias !21030
  br label %_ZN4core5slice4sort6stable5merge5merge17he5e5a0a6d0bbe0edE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cu, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ds = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.du, i1 false), !alias.scope !21027, !noalias !21031
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17he5e5a0a6d0bbe0edE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb930eb8693dae08eE.exit.i"
  %i.dv = shl i64 %i.bv, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h43baf4ac08c942dbE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17he5e5a0a6d0bbe0edE.exit
  %.sroa.0.0.i = phi i64 [ %i.dw, %_ZN4core5slice4sort6stable5merge5merge17he5e5a0a6d0bbe0edE.exit ], [ %i.cd, %bb.t ] ; 2 uses
  %i.dx = icmp ugt i64 %i.bm, 1
  br i1 %i.dx, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dz = lshr i64 %.sroa.023.0, 1
  %i.ea = add i64 %i.dz, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eb, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = or i64 %1, 1
  %i.ed = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb0030203285448b1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21004
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17he18f41ebdd949361E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i117 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21063)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread115, %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !21063, !noalias !21064, !nonnull !55, !align !56, !noundef !55 ; 3 uses
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdfd3958cecf5faf3E"(ptr nonnull %.val8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !21065, !inline_history !21036 ; 2 uses
  %.not84 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader51, label %.preheader52

.preheader52:                                     ; preds = %bb.i
  br i1 %.not84, label %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread, label %.lr.ph

.preheader51:                                     ; preds = %bb.i
  br i1 %.not84, label %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread115, label %.lr.ph71

.lr.ph:                                           ; preds = %.preheader52, %bb.j
  %.sroa.01.0.i.i67 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader52 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i67
  %i.r = getelementptr [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i67
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdfd3958cecf5faf3E"(ptr nonnull %.val8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s), !noalias !21065, !inline_history !21036
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i67, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i, label %.lr.ph

.lr.ph71:                                         ; preds = %.preheader51, %bb.k
  %.sroa.01.1.i.i70 = phi i64 [ %i.z, %bb.k ], [ 2, %.preheader51 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i70
  %i.w = getelementptr [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i70
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdfd3958cecf5faf3E"(ptr nonnull %.val8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !21065, !inline_history !21036
  br i1 %i.y, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i

bb.k:                                             ; preds = %.lr.ph71
  %i.z = add nuw i64 %.sroa.01.1.i.i70, 1         ; 2 uses
  %exitcond97.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond97.not, label %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i, label %.lr.ph71

_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph71
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i70, %.lr.ph71 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i67, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.aa = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread115: ; preds = %.preheader51
  br i1 %.not5.i117, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread: ; preds = %.preheader52
  br i1 %.not5.i112, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ab = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6920a2de2082011aE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21036
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod161 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.ae = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.an, i64 %i.ae ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !21066, !noalias !21067
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !21068, !noalias !21069
  store <2 x i64> %i.ai, ptr %i.af, align 8, !alias.scope !21066, !noalias !21067
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !21068, !noalias !21069
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread ], [ %.sroa.0.0.i.i113120124, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i113120124, %.lr.ph.i.i39.epil.preheader ]
  %i.aj = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit

bb.o:                                             ; preds = %bb.l
  %i.al = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21070), !noalias !21065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21071), !noalias !21065
  %.not15.i.i = icmp eq i64 %i.al, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread115, %bb.o
  %i.am = phi i64 [ %i.al, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread115 ] ; 4 uses
  %.sroa.0.0.i.i113120124 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h855690f81a492d5aE.exit.i.thread115 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.0.i.i113120124 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ba, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !21066, !noalias !21067
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !21068, !noalias !21069
end_hunk_8
begin_hunk_9_@_ZN4core5slice4sort6stable5drift4sort17he18f41ebdd949361E:bb.a
  %i.ba = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ak, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit" ], [ %i.ad, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  %i.bb = lshr i64 %.sroa.018.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bd = sub i64 %factor, %i.bb
  %i.be = add i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit
  %.sroa.026.0 = phi i8 [ %i.bj, %_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h53e9fab470bfc98dE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bk = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bk, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph77, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit
  %.sroa.02.176 = phi i64 [ %.sroa.02.0, %.lr.ph77 ], [ %i.bm, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit ] ; 2 uses
  %.sroa.018.175 = phi i64 [ %.sroa.018.0, %.lr.ph77 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit ] ; 4 uses
  %i.bm = add i64 %.sroa.02.176, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !55
  %.not29 = icmp ult i8 %i.bo, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.175, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.176, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !55 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 8 uses
  %i.bu = lshr i64 %.sroa.018.175, 1              ; 6 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 4 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bw ; 6 uses
  %i.by = icmp ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.018.175 to i1
  %i.ca = or i64 %i.bs, %.sroa.018.175
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cd = shl i64 %i.bv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bz, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6920a2de2082011aE(ptr noalias noundef nonnull align 8 %i.bx, i64 noundef %i.bt, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21047
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35": ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6920a2de2082011aE(ptr noalias noundef nonnull align 8 %i.cj, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21047
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit35", %bb.u
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  %i.cp = icmp eq i64 %i.bt, 0
  %i.cq = icmp eq i64 %i.bu, 0
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc2a49a752bd0c5c1E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 range(i64 0, -9223372036854775808) %i.bt) ; 2 uses
  %i.cr = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cr, label %_ZN4core5slice4sort6stable5merge5merge17hc2a49a752bd0c5c1E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bt, %i.bu  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cs, ptr %i.bx
  %i.ct = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ct, i1 false), !alias.scope !21072
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %.not.i37, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cs, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cu, %bb.y ] ; 2 uses
  %.sroa.0.0.i18.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.bl, %bb.y ]
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.cx = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdfd3958cecf5faf3E"(ptr nonnull readonly %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cv)
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i18.i, i64 -16 ; 2 uses
  %..i.i = select i1 %i.cx, ptr %i.cv, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !21072, !noalias !21073
  %i.cz = xor i1 %i.cx, true
  %i.da = zext i1 %i.cz to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.da ; 3 uses
  %i.dc = zext i1 %i.cx to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = icmp eq ptr %i.db, %i.bx
  %i.df = icmp eq ptr %i.dd, %2
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf9f2c3b506917a13E.exit.i", label %.preheader

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.noexc21.i ], [ %i.bx, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dj, %.noexc21.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dl, %.noexc21.i ], [ %i.cs, %bb.y ] ; 3 uses
  %i.dg = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdfd3958cecf5faf3E"(ptr nonnull readonly %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dh = xor i1 %i.dg, true
  %spec.select.i.i = select i1 %i.dg, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !21072, !noalias !21074
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.cu
  %i.do = icmp ne ptr %i.dl, %i.bl
  %or.cond.i20.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf9f2c3b506917a13E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf9f2c3b506917a13E.exit.i": ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.db, %.noexc.i ], [ %i.dm, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cu, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dj, %.noexc21.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dr, i1 false), !alias.scope !21072, !noalias !21075
  br label %_ZN4core5slice4sort6stable5merge5merge17hc2a49a752bd0c5c1E.exit

.loopexit.i:                                      ; preds = %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cu, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ds = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.du, i1 false), !alias.scope !21072, !noalias !21076
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hc2a49a752bd0c5c1E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf9f2c3b506917a13E.exit.i"
  %i.dv = shl i64 %i.bv, 1
  %i.dw = or disjoint i64 %i.dv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17ha6c8fc007b9588e0E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hc2a49a752bd0c5c1E.exit
  %.sroa.0.0.i = phi i64 [ %i.dw, %_ZN4core5slice4sort6stable5merge5merge17hc2a49a752bd0c5c1E.exit ], [ %i.cd, %bb.t ] ; 2 uses
  %i.dx = icmp ugt i64 %i.bm, 1
  br i1 %i.dx, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dy = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dz = lshr i64 %.sroa.023.0, 1
  %i.ea = add i64 %i.dz, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eb, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = or i64 %1, 1
  %i.ed = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = xor i32 %i.ef, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6920a2de2082011aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21047
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf82791de7a04a28bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink360.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink360.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink363.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink363.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i234 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gq, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.aj ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb499382ea27448b6E.exit.i.thread237, %_ZN4core5slice4sort6shared17find_existing_run17hb499382ea27448b6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hb499382ea27448b6E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.t, label %bb.s

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21167
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !21168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21169), !noalias !21170
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !21169, !noalias !21171, !noundef !55 ; 2 uses
  %.not.i1.i.i46 = icmp eq ptr %i.at, null
  br i1 %.not.i1.i.i46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21172
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !21169, !noalias !21171, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !21172
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !21172
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1768) #70, !noalias !21173
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47": ; preds = %bb.i
  %i.aw = load i32, ptr %i.ae, align 8, !range !62, !alias.scope !21169, !noalias !21171, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21167
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !21174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21175), !noalias !21170
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !21175, !noalias !21176, !noundef !55 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit49", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21177
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !21175, !noalias !21176, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !21177
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !21177
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1769) #70, !noalias !21178
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit49": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i47"
  %i.ba = load i32, ptr %i.af, align 8, !range !62, !alias.scope !21175, !noalias !21176, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21167
  %i.bb = icmp samesign ult i32 %i.aw, %i.ba      ; 2 uses
  %.not152 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bb, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17hb499382ea27448b6E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17hb499382ea27448b6E.exit.i.thread237, label %.lr.ph140

.lr.ph:                                           ; preds = %.preheader59, %bb.n
  %.sroa.01.0.i.i137 = phi i64 [ %i.bo, %bb.n ], [ 2, %.preheader59 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21179
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc), !noalias !21180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21181), !noalias !21170
  %i.bd = load ptr, ptr %i.h, align 8, !alias.scope !21181, !noalias !21182, !noundef !55 ; 2 uses
  %.not.i1.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i1.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21183
  %i.be = load i64, ptr %i.ag, align 8, !alias.scope !21181, !noalias !21182, !noundef !55
  store ptr %i.bd, ptr %i.e, align 8, !noalias !21183
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !21183
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1768) #70, !noalias !21184
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i43": ; preds = %.lr.ph
  %i.bg = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load i32, ptr %i.ag, align 8, !range !62, !alias.scope !21181, !noalias !21182, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21179
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh), !noalias !21185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21186), !noalias !21170
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !21186, !noalias !21187, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i44, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21188
  %i.bk = load i64, ptr %i.ah, align 8, !alias.scope !21186, !noalias !21187, !noundef !55
end_hunk_9
begin_hunk_10_@_ZN4core5slice4sort6stable5drift4sort17hf82791de7a04a28bE:bb.a
  %i.et = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.et, label %_ZN4core5slice4sort6stable5merge5merge17hd4023dc93338f78cE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eu, ptr %i.dz
  %i.ev = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ev, i1 false), !alias.scope !21209
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev ; 5 uses
  br i1 %.not.i37, label %.preheader153, label %.lr.ph.i.i

.preheader153:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i" ], [ %i.ew, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i" ], [ %i.dn, %bb.ae ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !21210
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !21207

.noexc.i:                                         ; preds = %.preheader153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21211)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !21211, !noalias !21212, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !21213
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !21211, !noalias !21212, !noundef !55
  store ptr %i.fa, ptr %i.q, align 8, !noalias !21213
  br label %.invoke357

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.fc = load i32, ptr %i.am, align 8, !range !62, !alias.scope !21211, !noalias !21212, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !21210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !21210
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ex)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !21208

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21214)
  %i.fd = load ptr, ptr %i.s, align 8, !alias.scope !21214, !noalias !21215, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !21216
  %i.fe = load i64, ptr %i.an, align 8, !alias.scope !21214, !noalias !21215, !noundef !55
  store ptr %i.fd, ptr %i.r, align 8, !noalias !21216
  br label %.invoke357

.invoke357:                                       ; preds = %bb.af, %bb.ag
  %.sink360.sroa.phi = phi ptr [ %.sink360.sroa.gep, %bb.af ], [ %.sink360.sroa.gep424, %bb.ag ]
  %.sink360 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fb, %bb.af ], [ %i.fe, %bb.ag ]
  %i.ff = phi ptr [ @1768, %bb.af ], [ @1769, %bb.ag ]
  store i64 %.sink, ptr %.sink360.sroa.phi, align 8, !noalias !21210
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink360, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #70
          to label %.cont358 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !21209

.cont358:                                         ; preds = %.invoke357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i": ; preds = %.noexc19.i
  %i.fg = load i32, ptr %i.an, align 8, !range !62, !alias.scope !21214, !noalias !21215, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !21210
  %i.fh = icmp samesign ult i32 %i.fc, %i.fg      ; 3 uses
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !21209, !noalias !21217
  %i.fi = xor i1 %i.fh, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dz
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb9dc5ffc987c9cf5E.exit.i", label %.preheader153

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i" ], [ %i.dz, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gb, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i" ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !21218
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !21208

.noexc28.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21219)
  %i.fp = load ptr, ptr %i.p, align 8, !alias.scope !21219, !noalias !21220, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.fp, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21221
  %i.fq = load i64, ptr %i.ak, align 8, !alias.scope !21219, !noalias !21220, !noundef !55
  store ptr %i.fp, ptr %i.m, align 8, !noalias !21221
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i": ; preds = %.noexc28.i
  %i.fr = load i32, ptr %i.ak, align 8, !range !62, !alias.scope !21219, !noalias !21220, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !21218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !21218
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_char17hfe97169ad32baff4E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !21207

.noexc30.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21222)
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !21222, !noalias !21223, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21224
  %i.ft = load i64, ptr %i.al, align 8, !alias.scope !21222, !noalias !21223, !noundef !55
  store ptr %i.fs, ptr %i.n, align 8, !noalias !21224
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink363.sroa.phi = phi ptr [ %.sink363.sroa.gep, %bb.ah ], [ %.sink363.sroa.gep425, %bb.ai ]
  %.sink363 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink361 = phi i64 [ %i.fq, %bb.ah ], [ %i.ft, %bb.ai ]
  %i.fu = phi ptr [ @1768, %bb.ah ], [ @1769, %bb.ai ]
  store i64 %.sink361, ptr %.sink363.sroa.phi, align 8, !noalias !21218
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !21209

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i": ; preds = %.noexc30.i
  %i.fv = load i32, ptr %i.al, align 8, !range !62, !alias.scope !21222, !noalias !21223, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !21218
  %i.fw = icmp samesign ult i32 %i.fr, %i.fv      ; 3 uses
  %i.fx = xor i1 %i.fw, true
  %spec.select.i.i = select i1 %i.fw, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !21209, !noalias !21225
  %i.fy = zext i1 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.fy ; 3 uses
  %i.ga = zext i1 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gd = icmp ne ptr %i.fz, %i.ew
  %i.ge = icmp ne ptr %i.gb, %i.dn
  %or.cond.i27.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i27.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb9dc5ffc987c9cf5E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb9dc5ffc987c9cf5E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i" ], [ %i.gc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i" ], [ %i.ew, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i.i" ], [ %i.fz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1a910deae93f28a2E.exit.i26.i" ] ; 2 uses
  %i.gf = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gh = sub nuw i64 %i.gf, %i.gg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gh, i1 false), !alias.scope !21209, !noalias !21226
  br label %_ZN4core5slice4sort6stable5merge5merge17hd4023dc93338f78cE.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i.i", %.preheader153
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h71d69ae806225ddcE.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke357, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke357 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ew, %.invoke ], [ %.sroa.7.0.i, %.invoke357 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke357 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ew, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gi = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gk = sub nuw i64 %i.gi, %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gk, i1 false), !alias.scope !21209, !noalias !21227
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hd4023dc93338f78cE.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb9dc5ffc987c9cf5E.exit.i"
  %i.gl = shl i64 %i.dx, 1
  %i.gm = or disjoint i64 %i.gl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h41ab9c2df6aa0c63E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h41ab9c2df6aa0c63E.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17hd4023dc93338f78cE.exit
  %.sroa.0.0.i = phi i64 [ %i.gm, %_ZN4core5slice4sort6stable5merge5merge17hd4023dc93338f78cE.exit ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gn = icmp ugt i64 %i.do, 1
  br i1 %i.gn, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.go = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gp = lshr i64 %.sroa.023.0, 1
  %i.gq = add i64 %i.gp, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gr, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = or i64 %1, 1
  %i.gt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = xor i32 %i.gv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haa48c55e1f99b1b0E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21127
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf8e592a52cf56c91E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [66 x i8], align 1                ; 4 uses
  %i.v = alloca [528 x i8], align 8               ; 4 uses
  %i.w = icmp ult i64 %1, 2
  %.sink360.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink360.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink363.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink363.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %i.w, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 4611686018427387904, %1
  %i.y = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.x, %i.z         ; 2 uses
  %i.aa = icmp ult i64 %1, 4097
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = lshr i64 %1, 1
  %i.ad = sub nuw nsw i64 %1, %i.ac
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.ab, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not5.i234 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gv, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gt, %bb.aj ] ; 3 uses
  %i.ao = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ao, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit": ; preds = %bb.f
  %i.ap = sub nuw i64 %1, %.sroa.09.0             ; 11 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.ap, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h50efe4c8dd450612E.exit.i.thread237, %_ZN4core5slice4sort6shared17find_existing_run17h50efe4c8dd450612E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h50efe4c8dd450612E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  br i1 %4, label %bb.t, label %bb.s

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h32c045e0691c4cb5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21318
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as), !noalias !21319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21320), !noalias !21321
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !21320, !noalias !21322, !noundef !55 ; 2 uses
  %.not.i1.i.i46 = icmp eq ptr %i.at, null
  br i1 %.not.i1.i.i46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i47", label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21323
  %i.au = load i64, ptr %i.ae, align 8, !alias.scope !21320, !noalias !21322, !noundef !55
  store ptr %i.at, ptr %i.a, align 8, !noalias !21323
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !21323
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1774) #70, !noalias !21324
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i47": ; preds = %bb.i
  %i.aw = load i8, ptr %i.ae, align 8, !range !57, !alias.scope !21320, !noalias !21322, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21318
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq), !noalias !21325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21326), !noalias !21321
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !21326, !noalias !21327, !noundef !55 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit49", label %bb.k, !prof !74

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i47"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21328
  %i.ay = load i64, ptr %i.af, align 8, !alias.scope !21326, !noalias !21327, !noundef !55
  store ptr %i.ax, ptr %i.b, align 8, !noalias !21328
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !21328
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1775) #70, !noalias !21329
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit49": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i47"
  %i.ba = load i8, ptr %i.af, align 8, !range !57, !alias.scope !21326, !noalias !21327, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21318
  %i.bb = sub nsw i8 %i.aw, %i.ba
  %i.bc = icmp eq i8 %i.bb, -1                    ; 2 uses
  %.not152 = icmp eq i64 %i.ap, 2                 ; 2 uses
  br i1 %i.bc, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h50efe4c8dd450612E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit49"
  br i1 %.not152, label %_ZN4core5slice4sort6shared17find_existing_run17h50efe4c8dd450612E.exit.i.thread237, label %.lr.ph140

.lr.ph:                                           ; preds = %.preheader59, %bb.n
  %.sroa.01.0.i.i137 = phi i64 [ %i.bq, %bb.n ], [ 2, %.preheader59 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21330
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd), !noalias !21331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21332), !noalias !21321
  %i.be = load ptr, ptr %i.h, align 8, !alias.scope !21332, !noalias !21333, !noundef !55 ; 2 uses
  %.not.i1.i.i42 = icmp eq ptr %i.be, null
  br i1 %.not.i1.i.i42, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i43", label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21334
  %i.bf = load i64, ptr %i.ag, align 8, !alias.scope !21332, !noalias !21333, !noundef !55
  store ptr %i.be, ptr %i.e, align 8, !noalias !21334
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !21334
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1774) #70, !noalias !21335
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i43": ; preds = %.lr.ph
  %i.bh = getelementptr [16 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i137
  %i.bi = getelementptr i8, ptr %i.bh, i64 -16
  %i.bj = load i8, ptr %i.ag, align 8, !range !57, !alias.scope !21332, !noalias !21333, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21330
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bi), !noalias !21336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21337), !noalias !21321
  %i.bk = load ptr, ptr %i.g, align 8, !alias.scope !21337, !noalias !21338, !noundef !55 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i44, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit45", label %bb.m, !prof !74

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i43"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21339
end_hunk_10
begin_hunk_11_@_ZN4core5slice4sort6stable5drift4sort17hf8e592a52cf56c91E:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.dy ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dy, %i.dz  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ex, ptr %i.ec
  %i.ey = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ey, i1 false), !alias.scope !21360
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey ; 5 uses
  br i1 %.not.i37, label %.preheader153, label %.lr.ph.i.i

.preheader153:                                    ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.fo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i" ], [ %i.ex, %bb.ae ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i" ], [ %i.ez, %bb.ae ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.fc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i" ], [ %i.dq, %bb.ae ]
  %i.fa = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !21361
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fb)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !21358

.noexc.i:                                         ; preds = %.preheader153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21362)
  %i.fd = load ptr, ptr %i.t, align 8, !alias.scope !21362, !noalias !21363, !noundef !55 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i1.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i", label %bb.af, !prof !74

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !21364
  %i.fe = load i64, ptr %i.am, align 8, !alias.scope !21362, !noalias !21363, !noundef !55
  store ptr %i.fd, ptr %i.q, align 8, !noalias !21364
  br label %.invoke357

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i": ; preds = %.noexc.i
  %i.ff = load i8, ptr %i.am, align 8, !range !57, !alias.scope !21362, !noalias !21363, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !21361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !21361
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fa)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !21359

.noexc19.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21365)
  %i.fg = load ptr, ptr %i.s, align 8, !alias.scope !21365, !noalias !21366, !noundef !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i", label %bb.ag, !prof !74

bb.ag:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !21367
  %i.fh = load i64, ptr %i.an, align 8, !alias.scope !21365, !noalias !21366, !noundef !55
  store ptr %i.fg, ptr %i.r, align 8, !noalias !21367
  br label %.invoke357

.invoke357:                                       ; preds = %bb.af, %bb.ag
  %.sink360.sroa.phi = phi ptr [ %.sink360.sroa.gep, %bb.af ], [ %.sink360.sroa.gep424, %bb.ag ]
  %.sink360 = phi ptr [ %i.q, %bb.af ], [ %i.r, %bb.ag ]
  %.sink = phi i64 [ %i.fe, %bb.af ], [ %i.fh, %bb.ag ]
  %i.fi = phi ptr [ @1774, %bb.af ], [ @1775, %bb.ag ]
  store i64 %.sink, ptr %.sink360.sroa.phi, align 8, !noalias !21361
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink360, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi) #70
          to label %.cont358 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !21360

.cont358:                                         ; preds = %.invoke357
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i": ; preds = %.noexc19.i
  %i.fj = load i8, ptr %i.an, align 8, !range !57, !alias.scope !21365, !noalias !21366, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !21361
  %i.fk = sub nsw i8 %i.ff, %i.fj
  %i.fl = icmp eq i8 %i.fk, -1                    ; 3 uses
  %..i.i = select i1 %i.fl, ptr %i.fa, ptr %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !21360, !noalias !21368
  %i.fm = xor i1 %i.fl, true
  %i.fn = zext i1 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.fn ; 3 uses
  %i.fp = zext i1 %i.fl to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fp ; 3 uses
  %i.fr = icmp eq ptr %i.fo, %i.ec
  %i.fs = icmp eq ptr %i.fq, %2
  %or.cond.i.i = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h347a639c69a27980E.exit.i", label %.preheader153

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i"
  %.sroa.13.1.i = phi ptr [ %i.gh, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i" ], [ %i.ec, %bb.ae ] ; 4 uses
  %.sroa.0.0.i38 = phi ptr [ %i.ge, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i" ], [ %2, %bb.ae ] ; 5 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i" ], [ %i.ex, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !21369
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.04.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !21359

.noexc28.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21370)
  %i.ft = load ptr, ptr %i.p, align 8, !alias.scope !21370, !noalias !21371, !noundef !55 ; 2 uses
  %.not.i1.i.i.i23.i = icmp eq ptr %i.ft, null
  br i1 %.not.i1.i.i.i23.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i", label %bb.ah, !prof !74

bb.ah:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21372
  %i.fu = load i64, ptr %i.ak, align 8, !alias.scope !21370, !noalias !21371, !noundef !55
  store ptr %i.ft, ptr %i.m, align 8, !noalias !21372
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i": ; preds = %.noexc28.i
  %i.fv = load i8, ptr %i.ak, align 8, !range !57, !alias.scope !21370, !noalias !21371, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !21369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !21369
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i38)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !21358

.noexc30.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21373)
  %i.fw = load ptr, ptr %i.o, align 8, !alias.scope !21373, !noalias !21374, !noundef !55 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i25.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i", label %bb.ai, !prof !74

bb.ai:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21375
  %i.fx = load i64, ptr %i.al, align 8, !alias.scope !21373, !noalias !21374, !noundef !55
  store ptr %i.fw, ptr %i.n, align 8, !noalias !21375
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ai
  %.sink363.sroa.phi = phi ptr [ %.sink363.sroa.gep, %bb.ah ], [ %.sink363.sroa.gep425, %bb.ai ]
  %.sink363 = phi ptr [ %i.m, %bb.ah ], [ %i.n, %bb.ai ]
  %.sink361 = phi i64 [ %i.fu, %bb.ah ], [ %i.fx, %bb.ai ]
  %i.fy = phi ptr [ @1774, %bb.ah ], [ @1775, %bb.ai ]
  store i64 %.sink361, ptr %.sink363.sroa.phi, align 8, !noalias !21369
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %.sink363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @428, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !21360

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i": ; preds = %.noexc30.i
  %i.fz = load i8, ptr %i.al, align 8, !range !57, !alias.scope !21373, !noalias !21374, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !21369
  %i.ga = sub nsw i8 %i.fv, %i.fz
  %i.gb = icmp eq i8 %i.ga, -1                    ; 3 uses
  %i.gc = xor i1 %i.gb, true
  %spec.select.i.i = select i1 %i.gb, ptr %.sroa.0.04.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !21360, !noalias !21376
  %i.gd = zext i1 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.gd ; 3 uses
  %i.gf = zext i1 %i.gb to i64
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.gi = icmp ne ptr %i.ge, %i.ez
  %i.gj = icmp ne ptr %i.gg, %i.dq
  %or.cond.i27.i = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %or.cond.i27.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h347a639c69a27980E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h347a639c69a27980E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.fo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i" ], [ %i.gh, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i" ]
  %.sroa.7.2.i = phi ptr [ %i.fq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i" ], [ %i.ez, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i.i" ], [ %i.ge, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8ec3a924b6ea9437E.exit.i26.i" ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gl = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gm = sub nuw i64 %i.gk, %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gm, i1 false), !alias.scope !21360, !noalias !21377
  br label %_ZN4core5slice4sort6stable5merge5merge17heb2bd798145f9d43E.exit

.loopexit.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i.i", %.preheader153
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0fb69a7058c8d4cdE.exit2.i.i.i24.i", %.lr.ph.i.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke357, %.invoke
  %.sroa.13.3.ph.ph.i = phi ptr [ %.sroa.13.1.i, %.invoke ], [ %.sroa.13.0.i, %.invoke357 ]
  %.sroa.7.1.ph.ph.i = phi ptr [ %i.ez, %.invoke ], [ %.sroa.7.0.i, %.invoke357 ]
  %.sroa.0.2.ph.ph.i = phi ptr [ %.sroa.0.0.i38, %.invoke ], [ %2, %.invoke357 ]
  %lpad.loopexit.split-lp7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.13.3.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ez, %.loopexit.split-lp.loopexit.i ], [ %.sroa.7.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit6.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp7.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.gn = ptrtoint ptr %.sroa.7.1.i to i64
  %i.go = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gp = sub nuw i64 %i.gn, %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gp, i1 false), !alias.scope !21360, !noalias !21378
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17heb2bd798145f9d43E.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h347a639c69a27980E.exit.i"
  %i.gq = shl i64 %i.ea, 1
  %i.gr = or disjoint i64 %i.gq, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h91ac16d081fe2dd8E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h91ac16d081fe2dd8E.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17heb2bd798145f9d43E.exit
  %.sroa.0.0.i = phi i64 [ %i.gr, %_ZN4core5slice4sort6stable5merge5merge17heb2bd798145f9d43E.exit ], [ %i.ei, %bb.z ] ; 2 uses
  %i.gs = icmp ugt i64 %i.dr, 1
  br i1 %i.gs, label %bb.w, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.gt = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gu = lshr i64 %.sroa.023.0, 1
  %i.gv = add i64 %i.gu, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.gw = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gw, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gx = or i64 %1, 1
  %i.gy = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gx, i1 true)
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 1
  %i.hb = xor i32 %i.ha, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9046c1553e2ea761E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.hb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !21278
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0746b20dfc5d5948E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 4 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [48 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = icmp ult i64 %1, 33
  br i1 %i.bg, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit"
  %.sroa.0.0.ph555 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.mz, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit" ] ; 23 uses
  %.sroa.15.0.ph554 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.mk, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit" ] ; 2 uses
  %.sroa.023.0.ph553 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.dp, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit" ] ; 2 uses
  %.sroa.026.0.ph552 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit" ] ; 2 uses
  %i.cj = ptrtoint ptr %.sroa.0.0.ph555 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph552, null
  %i.ck = icmp eq i32 %.sroa.023.0.ph553, 0
  br i1 %i.ck, label %.lr.ph._crit_edge, label %.lr.ph1396

bb.b:                                             ; preds = %bb.bh
  %i.cl = icmp eq i32 %i.dp, 0
  br i1 %i.cl, label %.lr.ph._crit_edge, label %.lr.ph1396

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit", %bb.bh, %bb.a
  %.sroa.0.0.ph.lcssa546 = phi ptr [ %.sroa.0.0.ph555, %bb.bh ], [ %0, %bb.a ], [ %i.mz, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit" ] ; 10 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.bh ], [ %1, %bb.a ], [ %i.mk, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7fce382128636091E.exit" ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21603)
  %i.cm = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.cm, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he62359553298a38bE.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.cn = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.co = icmp ult i64 %3, %i.cn
  br i1 %i.co, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cp = lshr i64 %.sroa.15.0.lcssa, 1           ; 9 uses
  %i.cq = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.cq, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.cr = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa546, i64 %i.cp ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cp ; 2 uses
  br i1 %i.cr, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 5 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9cf86fa1a8d6bf69E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph.lcssa546, ptr noundef nonnull %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa546, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9cf86fa1a8d6bf69E(ptr noundef readonly %i.cv, ptr noundef %i.cw)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha75d0556a9f12364E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef 8, ptr noundef nonnull align 8 %2), !noalias !21603
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa546, i64 %i.cp ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cp
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9cf86fa1a8d6bf69E(ptr noundef nonnull readonly %i.cx, ptr noundef nonnull %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9cf86fa1a8d6bf69E(ptr noundef readonly %i.da, ptr noundef %i.db)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha75d0556a9f12364E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cz, i64 noundef 8, ptr noundef nonnull %i.cy), !noalias !21603
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9cf86fa1a8d6bf69E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa546, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9cf86fa1a8d6bf69E(ptr noundef %i.cs, ptr noundef %i.ct)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa546, i64 16, i1 false), !alias.scope !21604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !21604
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.dc = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.cp ; 2 uses
  %i.dd = icmp samesign ult i64 %.sroa.0.0.i, %i.cp
  br i1 %i.dd, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa546, i64 %i.cp
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cp ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.0.i, %i.dc
end_hunk_11
begin_hunk_12_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_binary_op17h7cd09c0d2d9887e8E":bb.a
  %.not.i754 = icmp eq i64 %i.azm, 0
  br i1 %.not.i754, label %bb.pa, label %bb.oy

bb.ox:                                            ; preds = %bb.ov
  %i.azn = load ptr, ptr %i.azd, align 8, !alias.scope !41232, !noalias !41235, !nonnull !55, !noundef !55
  %.pr.i755 = load i64, ptr %i.azi, align 8, !alias.scope !41232, !noalias !41235
  br label %bb.ow

bb.oy:                                            ; preds = %bb.ow
  %i.azo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i753, i64 16
  %i.azp = shl i64 %i.azm, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.azo, ptr nonnull align 8 %.sroa.0.0.i753, i64 %i.azp, i1 false), !noalias !41235
  br label %bb.pa

bb.oz:                                            ; preds = %bb.ou
  %i.azq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !41236
  unreachable

bb.pa:                                            ; preds = %bb.ow, %bb.oy
  %i.azr = add i64 %i.azm, 1
  store i64 %i.azr, ptr %.sroa.01.0.i752, align 8, !alias.scope !41232, !noalias !41235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i753, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  store <2 x i16> %i.je, ptr %.sroa.0.0.i762, align 2
  %.sroa.17.0.copyload87 = load i8, ptr %.sroa.17.0..sroa_idx86, align 1
  %.sroa.29.0.copyload130 = load i16, ptr %.sroa.29.0..sroa_idx129, align 2
  br label %.thread1119

bb.pb:                                            ; preds = %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.azs = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #71 ; 5 uses
  %i.azt = icmp eq ptr %i.azs, null
  br i1 %i.azt, label %bb.pc, label %bb.pd, !prof !66

bb.pc:                                            ; preds = %bb.pb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #70
          to label %bb.l unwind label %.thread1249

bb.pd:                                            ; preds = %bb.pb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azs, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azu, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.azs, i64 32, i1 false), !noalias !41237
  store i64 2, ptr %i.eu, align 8, !alias.scope !41238, !noalias !41237
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azs, i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !41239, !inline_history !40894
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41240
  %i.azv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !41240 ; 3 uses
  %i.azw = icmp eq ptr %i.azv, null
  br i1 %i.azw, label %bb.pe, label %bb.ph, !prof !58

bb.pe:                                            ; preds = %bb.pd
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #70
          to label %.noexc771 unwind label %bb.pf

.noexc771:                                        ; preds = %bb.pe
  unreachable

bb.pf:                                            ; preds = %bb.pe
  %i.azx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$3$u5d$$GT$$GT$17h332fc57e2068d22fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bf) #72
          to label %.thread1062 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.azy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.ph:                                            ; preds = %bb.pd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.azv, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %.thread1119

.thread1249:                                      ; preds = %bb.pc
  %i.azz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #72
          to label %.thread1241.thread unwind label %bb.kh

.thread1249.thread:                               ; preds = %bb.ok
  %i.baa = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayl, i64 noundef 56, i64 noundef 8) #71
  br label %.thread1241.thread

.thread1249.thread2360:                           ; preds = %bb.ou
  %.val464 = load ptr, ptr %i.et, align 8, !nonnull !55, !noundef !55
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..boxed..Box$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$3$u5d$$GT$$GT$$GT$17hfb4ea921e4435364E"(ptr %.val464) #72
          to label %.thread1062 unwind label %bb.kh

.thread1241.thread:                               ; preds = %.thread1249, %.thread1249.thread, %.split1226.thread.loopexit, %.split1226.thread.loopexit.split-lp, %bb.om
  %.pn3811227 = phi { ptr, i32 } [ %i.baa, %.thread1249.thread ], [ %lpad.loopexit.split-lp1365, %.split1226.thread.loopexit.split-lp ], [ %i.ayv, %bb.om ], [ %lpad.loopexit1364, %.split1226.thread.loopexit ], [ %i.azz, %.thread1249 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg) #72
          to label %.thread1062 unwind label %bb.kh

"_ZN4core3ptr48drop_in_place$LT$rhai..ast..expr..FnCallExpr$GT$17h653fd4ed0fdec29aE.exit": ; preds = %"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$5$u5d$$GT$$GT$17h7e6f898a7eb25ebbE.exit4.i", %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.bab = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %.noexc773 unwind label %.body.thread1052.loopexit.split-lp

.noexc773:                                        ; preds = %"_ZN4core3ptr48drop_in_place$LT$rhai..ast..expr..FnCallExpr$GT$17h653fd4ed0fdec29aE.exit"
  br i1 %i.bab, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %.noexc773
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.pj unwind label %.body.thread1052.loopexit.split-lp

bb.pj:                                            ; preds = %bb.pi, %.noexc773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %.thread972

bb.pk:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.amq, ptr noundef nonnull align 8 dereferenceable(144) %i.al, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.kz

.thread1119:                                      ; preds = %bb.pa, %bb.ph, %bb.os, %bb.nk, %bb.nr, %bb.nc, %bb.kr, %bb.ky, %bb.kj
  %.sroa.29131.1.ph = phi ptr [ %i.axf, %bb.nr ], [ %i.apd, %bb.ky ], [ %.sroa.29131.0.copyload, %bb.kj ], [ %i.aol, %bb.kr ], [ %.sroa.29131.0.copyload139, %bb.nc ], [ %i.awn, %bb.nk ], [ %.sroa.29131.0.copyload143, %bb.os ], [ %i.azd, %bb.pa ], [ %i.azv, %bb.ph ]
  %.sroa.29.1.ph = phi i16 [ undef, %bb.nr ], [ undef, %bb.ky ], [ %.sroa.29.0.copyload, %bb.kj ], [ %.sroa.29.0.copyload118, %bb.kr ], [ %.sroa.29.0.copyload124, %bb.nc ], [ %.sroa.29.0.copyload126, %bb.nk ], [ %.sroa.29.0.copyload128, %bb.os ], [ %.sroa.29.0.copyload130, %bb.pa ], [ undef, %bb.ph ]
  %.sroa.17.1.ph = phi i8 [ undef, %bb.nr ], [ undef, %bb.ky ], [ %.sroa.17.0.copyload, %bb.kj ], [ %.sroa.17.0.copyload75, %bb.kr ], [ %.sroa.17.0.copyload81, %bb.nc ], [ %.sroa.17.0.copyload83, %bb.nk ], [ %.sroa.17.0.copyload85, %bb.os ], [ %.sroa.17.0.copyload87, %bb.pa ], [ undef, %bb.ph ]
  %.sroa.066.1.ph = phi i8 [ 19, %bb.nr ], [ 20, %bb.ky ], [ 20, %bb.kj ], [ 20, %bb.kr ], [ 19, %bb.nc ], [ 19, %bb.nk ], [ 18, %bb.os ], [ 18, %bb.pa ], [ 18, %bb.ph ]
  %i.bac = phi <2 x i16> [ %i.je, %bb.nr ], [ %i.je, %bb.ky ], [ %i.aok, %bb.kj ], [ %i.je, %bb.kr ], [ %i.awm, %bb.nc ], [ %i.je, %bb.nk ], [ %i.azc, %bb.os ], [ %i.je, %bb.pa ], [ %i.je, %bb.ph ]
  store i8 %.sroa.066.1.ph, ptr %i.cj, align 8
  store i8 %.sroa.17.1.ph, ptr %.sroa.17.0..sroa_idx761143, align 1
  store <2 x i16> %i.bac, ptr %.sroa.1788.0..sroa_idx911144, align 2
  store i16 %.sroa.29.1.ph, ptr %.sroa.29.0..sroa_idx1191146, align 2
  store ptr %.sroa.29131.1.ph, ptr %.sroa.29131.0..sroa_idx1341147, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !41241)
  call void @llvm.experimental.noalias.scope.decl(metadata !41242)
  call void @llvm.experimental.noalias.scope.decl(metadata !41243)
  %i.bad = load ptr, ptr %i.el, align 8, !alias.scope !41244, !nonnull !55, !noundef !55
  %i.bae = atomicrmw sub ptr %i.bad, i64 1 release, align 8, !noalias !41244
  %i.baf = icmp eq i64 %i.bae, 1
  br i1 %i.baf, label %bb.pl, label %.noexc776

bb.pl:                                            ; preds = %.thread1119
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.el)
          to label %.noexc776 unwind label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a10525b4bdbca73E"(ptr noalias noundef readonly align 8 dereferenceable(88) %i.em)
          to label %"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$5$u5d$$GT$$GT$17h7e6f898a7eb25ebbE.exit779" unwind label %bb.kh, !inline_history !116

.noexc776:                                        ; preds = %bb.pl, %.thread1119
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a10525b4bdbca73E"(ptr noalias noundef readonly align 8 dereferenceable(88) %i.em)
          to label %.critedge413 unwind label %bb.pn, !inline_history !116

bb.pn:                                            ; preds = %.noexc776
  %i.bah = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$5$u5d$$GT$$GT$17h7e6f898a7eb25ebbE.exit779"

.critedge414:                                     ; preds = %.critedge413, %bb.pp, %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.bai = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %.noexc782 unwind label %.body.thread1052.loopexit

.noexc782:                                        ; preds = %.critedge414
  br i1 %i.bai, label %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit784", label %bb.po

bb.po:                                            ; preds = %.noexc782
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit784" unwind label %.body.thread1052.loopexit

.critedge413:                                     ; preds = %.noexc776
  %i.baj = load i32, ptr %i.eo, align 8, !range !113, !alias.scope !41245, !noundef !55
  %i.bak = icmp eq i32 %i.baj, 86
  br i1 %i.bak, label %.critedge414, label %bb.pp

bb.pp:                                            ; preds = %.critedge413
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.eo)
          to label %.critedge414 unwind label %.loopexit1353

"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit784": ; preds = %.noexc782, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %bb.pq unwind label %.loopexit1332

bb.pq:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h3ebc508e0d306a65E.exit784"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.g

"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$5$u5d$$GT$$GT$17h7e6f898a7eb25ebbE.exit779": ; preds = %bb.pn, %bb.pm
  %.pn1317 = phi { ptr, i32 } [ %i.bah, %bb.pn ], [ %i.bag, %bb.pm ] ; 2 uses
  %i.bal = load i32, ptr %i.eo, align 8, !range !113, !alias.scope !41246, !noundef !55
  %i.bam = icmp eq i32 %i.bal, 86
  br i1 %i.bam, label %.critedge417, label %bb.pr

bb.pr:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$5$u5d$$GT$$GT$17h7e6f898a7eb25ebbE.exit779"
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.eo)
          to label %.critedge417 unwind label %bb.kh

.thread1062:                                      ; preds = %.thread1249.thread2360, %.thread1189.thread2356, %bb.lb, %.thread1086.loopexit, %.thread1086.loopexit.split-lp, %.thread1241.thread, %.thread1181.thread, %bb.ln, %.thread1102.thread, %bb.kw, %bb.np, %bb.pf
  %.pn397.ph.pn = phi { ptr, i32 } [ %i.apf, %bb.kw ], [ %i.awv, %.thread1189.thread2356 ], [ %.pn3811227, %.thread1241.thread ], [ %i.azl, %.thread1249.thread2360 ], [ %.pn3851167, %.thread1181.thread ], [ %i.asf, %bb.ln ], [ %i.azx, %bb.pf ], [ %.pn3951092, %.thread1102.thread ], [ %lpad.loopexit.split-lp1362, %.thread1086.loopexit.split-lp ], [ %lpad.loopexit1361, %.thread1086.loopexit ], [ %i.axh, %bb.np ], [ %i.aot, %bb.lb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41247)
  call void @llvm.experimental.noalias.scope.decl(metadata !41248)
  call void @llvm.experimental.noalias.scope.decl(metadata !41249)
  %i.ban = load ptr, ptr %i.el, align 8, !alias.scope !41250, !nonnull !55, !noundef !55
  %i.bao = atomicrmw sub ptr %i.ban, i64 1 release, align 8, !noalias !41250
  %i.bap = icmp eq i64 %i.bao, 1
  br i1 %i.bap, label %bb.ps, label %.noexc789

bb.ps:                                            ; preds = %.thread1062
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.el)
          to label %.noexc789 unwind label %bb.kh

.noexc789:                                        ; preds = %bb.ps, %.thread1062
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a10525b4bdbca73E"(ptr noalias noundef readonly align 8 dereferenceable(88) %i.em)
          to label %.critedge416 unwind label %bb.kh, !inline_history !116

.critedge416:                                     ; preds = %.noexc789
  %i.baq = load i32, ptr %i.eo, align 8, !range !113, !alias.scope !41251, !noundef !55
  %i.bar = icmp eq i32 %i.baq, 86
  br i1 %i.bar, label %.critedge417, label %bb.pt

bb.pt:                                            ; preds = %.critedge416
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.eo)
          to label %.critedge417 unwind label %bb.kh

bb.pu:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bat = load <2 x i64>, ptr %i.ai, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store <2 x i64> %i.bat, ptr %i.bas, align 8
  store i64 1, ptr %0, align 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.thread972 unwind label %.loopexit.split-lp1344

bb.pv:                                            ; preds = %.body, %.body.thread, %.noexc553
  %.sroa.48.41046 = phi i32 [ %i.pc, %.body ], [ %.sroa.48.5, %.noexc553 ], [ %i.pk, %.body.thread ]
  %.sroa.0330.41044 = phi ptr [ %i.pb, %.body ], [ %.sroa.0330.5, %.noexc553 ], [ %i.pj, %.body.thread ]
  %.sroa.0185.101042 = phi i8 [ 1, %.body ], [ %.sroa.0185.12, %.noexc553 ], [ 1, %.body.thread ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw) #72
          to label %.thread949 unwind label %bb.kh

bb.pw:                                            ; preds = %.thread975, %.thread967
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %bb.bj unwind label %.loopexit.split-lp1335

.thread954:                                       ; preds = %.thread960.loopexit, %.thread960.loopexit.split-lp, %bb.cl, %bb.ck
  %.pn1320 = phi { ptr, i32 } [ %i.nu, %bb.cl ], [ %i.nu, %bb.ck ], [ %lpad.loopexit1339, %.thread960.loopexit ], [ %lpad.loopexit.split-lp1340, %.thread960.loopexit.split-lp ] ; 2 uses
  %i.bau = extractvalue { ptr, i32 } %.pn1320, 0
  %i.bav = extractvalue { ptr, i32 } %.pn1320, 1
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt) #72
          to label %.thread949 unwind label %bb.kh

bb.px:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.baw = trunc nuw i8 %.sroa.0185.6 to i1
  br i1 %i.baw, label %bb.py, label %.critedge

.critedge.sink.split:                             ; preds = %.split, %bb.r, %bb.m
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bax, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.py, %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  ret void

bb.py:                                            ; preds = %.critedge400, %bb.px
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %.critedge unwind label %bb.e

bb.pz:                                            ; preds = %bb.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cj) #72
          to label %bb.qa unwind label %bb.kh

bb.qa:                                            ; preds = %bb.e, %bb.i, %bb.pz
  %.sroa.0330.0 = phi ptr [ %i.ct, %bb.e ], [ %.sroa.0330.1, %bb.pz ], [ %.sroa.0330.1, %bb.i ]
  %.sroa.48.0 = phi i32 [ %i.cu, %bb.e ], [ %.sroa.48.1, %bb.pz ], [ %.sroa.48.1, %bb.i ]
  %i.bay = insertvalue { ptr, i32 } poison, ptr %.sroa.0330.0, 0
  %i.baz = insertvalue { ptr, i32 } %i.bay, i32 %.sroa.48.0, 1
  resume { ptr, i32 } %i.baz
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_expr_stmt17h3cd4becd62a747f8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [120 x i8], align 8               ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [56 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [120 x i8], align 8               ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [120 x i8], align 8               ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [120 x i8], align 8               ; 6 uses
  %i.y = alloca [88 x i8], align 8                ; 23 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %.sroa.6 = alloca [12 x i8], align 4            ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 19 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.510 = alloca [16 x i8], align 8          ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 6 uses
  %i.am = load ptr, ptr %2, align 8, !nonnull !55, !align !56, !noundef !55 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 224 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !range !123, !noundef !55 ; 2 uses
  %.not.i35 = icmp eq i32 %i.ao, 87
  br i1 %.not.i35, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !41328
  call void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.am), !noalias !41329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !41330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !41328
  %.pre.i = load i32, ptr %i.an, align 8, !range !123
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit": ; preds = %bb.a, %bb.b
  %i.ap = phi i32 [ %i.ao, %bb.a ], [ %.pre.i, %bb.b ]
  %.not = icmp eq i32 %i.ap, 86
  br i1 %.not, label %bb.d, label %bb.c, !prof !66

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load <2 x i16>, ptr %i.aq, align 8
  store <2 x i16> %i.as, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_expr17hdb2973dc2f24b26aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.at = load i64, ptr %i.al, align 8, !range !63, !noundef !55
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br i1 %i.au, label %bb.e, label %bb.f

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbd57ee0bf72b5adbE.exit"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1368) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.dv

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ax = load ptr, ptr %2, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 224 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !range !123, !noundef !55 ; 2 uses
  %.not.i36 = icmp eq i32 %i.az, 87
  br i1 %.not.i36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41331
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.ax)
          to label %.noexc38 unwind label %.thread61

.noexc38:                                         ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !41332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !41331
  %.pre.i37 = load i32, ptr %i.ay, align 8, !range !123
  br label %bb.h

.thread61:                                        ; preds = %.invoke, %bb.w, %bb.g, %bb.ac
  %i.ba = landingpad { ptr, i32 }
end_hunk_12
