Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN10serde_core3ser12SerializeMap15serialize_entry17hd9531fd69de28dafE:bb.a
  %.pn30.in.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.du, %bb.z ], [ %i.dv, %.prol.preheader ]
  %.pn28.in.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dj, %bb.z ], [ %.pn28.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.dw = icmp ult i64 %.sroa.5.037.i.i.i.i68.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.dw, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.new ], [ %.pn30.in.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.dx, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.dy, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.dz, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ea, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.eb, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ec, align 8, !noalias !22149, !nonnull !175, !noundef !175
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ed, align 8, !noalias !22149, !nonnull !175, !noundef !175 ; 2 uses
  %i.ee = icmp eq i64 %.pn28.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.ee, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !22150

.noexc.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !22148
  unreachable

.critedge.i54.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #78, !noalias !22151
  unreachable

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.prol.loopexit, %.new, %bb.y, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i73136.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %bb.y ], [ %.sroa.012.0.lcssa.i.i90.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.di, %.new ], [ %i.di, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.y ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dp, %.new ], [ %i.dp, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.y ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %bb.y ], [ %.sroa.012.0.lcssa.i.i90.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ei = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ei), !noalias !22148
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 276
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = getelementptr i8, ptr %i.ej, i64 8
  %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.em, align 8, !noalias !22152, !nonnull !175, !noundef !175
  %i.en = getelementptr i8, ptr %i.ej, i64 16
  %.val10.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.en, align 8, !noalias !22152
  %.val11.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.el, align 1, !noalias !22152
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22156)
  %i.eo = load i64, ptr %i.cf, align 8, !alias.scope !22157, !noalias !22158, !noundef !175 ; 3 uses
  %i.ep = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22157, !noalias !22158, !noundef !175
  %i.eq = icmp eq i64 %i.ep, %i.eo
  br i1 %i.eq, label %bb.ac, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %i.eo, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22159
  %.pre.i.i.i.i.i.i.i10.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !22160, !noalias !22158
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ac, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.er = phi i64 [ %i.eo, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  %i.es = icmp sgt i64 %i.er, -1
  tail call void @llvm.assume(i1 %i.es)
  %i.et = load ptr, ptr %i.cl, align 8, !alias.scope !22160, !noalias !22158, !nonnull !175, !noundef !175
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i8 58, ptr %i.eu, align 1, !noalias !22161
  %i.ev = add nuw i64 %i.er, 1
  store i64 %i.ev, ptr %i.cf, align 8, !alias.scope !22160, !noalias !22158
  %i.ew = trunc nuw i8 %.val11.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %..i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ew, ptr @1212, ptr @1211
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 5)
  %i.ex = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ey = add i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 274
  %i.fa = load i16, ptr %i.ez, align 2, !noalias !22162, !noundef !175
  %i.fb = zext i16 %i.fa to i64
  %i.fc = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fb
  br i1 %i.fc, label %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fd = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.prol.loopexit31, %.new32, %bb.ae, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i174.sink228.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fe, %bb.ae ], [ %i.fe, %.new32 ], [ %i.fe, %.prol.loopexit31 ]
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fl, %bb.ae ], [ %i.fl, %.new32 ], [ %i.fl, %.prol.loopexit31 ]
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.fd, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fn, %bb.ae ], [ 0, %.new32 ], [ 0, %.prol.loopexit31 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fe, %bb.ae ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit31 ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new32 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ad
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %bb.ad ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ff, %bb.ad ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fe = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22163, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.fh = load i16, ptr %i.fg, align 8, !noalias !22163 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 274
  %i.fj = load i16, ptr %i.fi, align 2, !noalias !22162, !noundef !175
  %i.fk = icmp ult i16 %i.fh, %i.fj
  br i1 %i.fk, label %bb.ae, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fl = zext i16 %i.fh to i64                   ; 4 uses
  %i.fm = icmp eq i64 %i.ff, 0
  %i.fn = add nuw nsw i64 %i.fl, 1                ; 2 uses
  br i1 %i.fm, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 288
  %i.fp = icmp ult i16 %i.fh, 11
  tail call void @llvm.assume(i1 %i.fp), !noalias !22148
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn ; 2 uses
  %xtraiter34 = and i64 %i.ff, 7                  ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.prol.loopexit31, label %.prol.preheader30

.prol.preheader30:                                ; preds = %bb.af, %.prol.preheader30
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.fr, %.prol.preheader30 ], [ %i.fq, %bb.af ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader30 ], [ %i.ff, %bb.af ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.prol.preheader30 ], [ 0, %bb.af ]
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !22164, !nonnull !175, !noundef !175 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.prol.loopexit31, label %.prol.preheader30, !llvm.loop !21920

.prol.loopexit31:                                 ; preds = %.prol.preheader30, %bb.af
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.af ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader30 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.fq, %bb.af ], [ %i.fr, %.prol.preheader30 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ff, %bb.af ], [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader30 ]
  %i.fs = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.fs, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new32

.new32:                                           ; preds = %.prol.loopexit31, %.new32
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gb, %.new32 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit31 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new32 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit31 ]
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.ft = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ft, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.fu, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.fv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.fv, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.fw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.fw, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fx, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.fy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fy, align 8, !noalias !22164, !nonnull !175, !noundef !175
  %i.fz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fz, align 8, !noalias !22164, !nonnull !175, !noundef !175 ; 2 uses
  %i.ga = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.ga, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new32

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ah, !noalias !22165

.noexc.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !22148
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer:   ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i174.sink228.i.i.i.i.i.i.i.i.i.i.i.i.i.ph10 = phi ptr [ %.sroa.0.0.ph.i.i.i174.sink228.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.il, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i.ph11 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.is, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ey, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph12 = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph12.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13 = phi ptr [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink228.i.i.i.i.i.i.i.i.i.i.i.i.i.ph10, i64 8
  %i.ge = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i.ph11, 11
  tail call void @llvm.assume(i1 %i.ge), !noalias !22148
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i.ph11 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink228.i.i.i.i.i.i.i.i.i.i.i.i.i.ph10, i64 276
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i.ph11
  %i.gi = getelementptr i8, ptr %i.gf, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.gi, align 8, !noalias !22152 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gf, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.gj, align 8, !noalias !22152
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %i.gh, align 1, !noalias !22152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22169)
  %i.gk = load i64, ptr %i.cf, align 8, !alias.scope !22170, !noalias !22171, !noundef !175 ; 3 uses
  %i.gl = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22170, !noalias !22171, !noundef !175
  %i.gm = icmp eq i64 %i.gl, %i.gk
  br i1 %i.gm, label %bb.ai, label %bb.aj, !prof !178

bb.ai:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %i.gk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22172
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.cf, align 8, !alias.scope !22173, !noalias !22171
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  %i.gn = phi i64 [ %i.gk, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ai ] ; 3 uses
  %i.go = icmp sgt i64 %i.gn, -1
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = load ptr, ptr %i.cl, align 8, !alias.scope !22173, !noalias !22171, !nonnull !175, !noundef !175
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gn
  store i8 44, ptr %i.gq, align 1, !noalias !22174
  %i.gr = add nuw i64 %i.gn, 1
  store i64 %i.gr, ptr %i.cf, align 8, !alias.scope !22173, !noalias !22171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22178)
  %i.gs = load i64, ptr %i.cf, align 8, !alias.scope !22179, !noalias !22180, !noundef !175 ; 3 uses
  %i.gt = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22179, !noalias !22180, !noundef !175
  %i.gu = icmp eq i64 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ak, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %i.gs, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22181
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.cf, align 8, !alias.scope !22182, !noalias !22180
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.ak, %bb.aj
  %i.gv = phi i64 [ %i.gs, %bb.aj ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ak ] ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = load ptr, ptr %i.cl, align 8, !alias.scope !22182, !noalias !22180, !nonnull !175, !noundef !175
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gv
  store i8 58, ptr %i.gy, align 1, !noalias !22183
  %i.gz = add nuw i64 %i.gv, 1
  store i64 %i.gz, ptr %i.cf, align 8, !alias.scope !22182, !noalias !22180
  %i.ha = trunc nuw i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel to i1
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = select i1 %i.ha, ptr @1212, ptr @1211
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef 5)
  %i.hb = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.hb, label %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.hc = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13) ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13, i64 274
  %i.he = load i16, ptr %i.hd, align 2, !noalias !22184, !noundef !175
  %i.hf = zext i16 %i.he to i64
  %i.hg = icmp ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph12, %i.hf
  br i1 %i.hg, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13, i64 276
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13, i64 274
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph12, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hc, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.ih, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.hk), !noalias !22148
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = getelementptr i8, ptr %i.hl, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !22152 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hl, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ho, align 8, !noalias !22152
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hm, align 1, !noalias !22152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22188)
  %i.hp = load i64, ptr %i.cf, align 8, !alias.scope !22189, !noalias !22171, !noundef !175 ; 3 uses
  %i.hq = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22189, !noalias !22171, !noundef !175
  %i.hr = icmp eq i64 %i.hq, %i.hp
  br i1 %i.hr, label %bb.al, label %bb.am, !prof !178

bb.al:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %i.hp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22190
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !22191, !noalias !22171
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = phi i64 [ %i.hp, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 3 uses
  %i.ht = icmp sgt i64 %i.hs, -1
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = load ptr, ptr %i.cl, align 8, !alias.scope !22191, !noalias !22171, !nonnull !175, !noundef !175
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 44, ptr %i.hv, align 1, !noalias !22192
  %i.hw = add nuw i64 %i.hs, 1
  store i64 %i.hw, ptr %i.cf, align 8, !alias.scope !22191, !noalias !22171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22196)
  %i.hx = load i64, ptr %i.cf, align 8, !alias.scope !22197, !noalias !22180, !noundef !175 ; 3 uses
  %i.hy = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22197, !noalias !22180, !noundef !175
  %i.hz = icmp eq i64 %i.hy, %i.hx
  br i1 %i.hz, label %bb.an, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %i.hx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22198
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !22199, !noalias !22180
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an, %bb.am
  %i.ia = phi i64 [ %i.hx, %bb.am ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an ] ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = load ptr, ptr %i.cl, align 8, !alias.scope !22199, !noalias !22180, !nonnull !175, !noundef !175
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia
  store i8 58, ptr %i.id, align 1, !noalias !22200
  %i.ie = add nuw i64 %i.ia, 1
  store i64 %i.ie, ptr %i.cf, align 8, !alias.scope !22199, !noalias !22180
  %i.if = trunc nuw i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.if, ptr @1212, ptr @1211
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 5)
  %i.ig = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ig, label %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ih = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13) ]
  %i.ii = load i16, ptr %i.hj, align 2, !noalias !22184, !noundef !175
  %i.ij = zext i16 %i.ii to i64
  %i.ik = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ij
  br i1 %i.ik, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !21979

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa = phi i64 [ %i.hc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.ih, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2a0b1a8660408647E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.ao
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.il, %bb.ao ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.im, %bb.ao ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.il = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22201, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.im = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.io = load i16, ptr %i.in, align 8, !noalias !22201 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 274
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !22184, !noundef !175
  %i.ir = icmp ult i16 %i.io, %i.iq
  br i1 %i.ir, label %bb.ap, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.is = zext i16 %i.io to i64                   ; 2 uses
  %i.it = icmp eq i64 %i.im, 0
  %i.iu = add nuw nsw i64 %i.is, 1                ; 2 uses
  br i1 %i.it, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.aq

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit40, %.new41, %bb.ap
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph12.be = phi i64 [ %i.iu, %bb.ap ], [ 0, %.new41 ], [ 0, %.prol.loopexit40 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph13.be = phi ptr [ %i.il, %bb.ap ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit40 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new41 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

bb.aq:                                            ; preds = %bb.ap
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 288
  %i.iw = icmp ult i16 %i.io, 11
  tail call void @llvm.assume(i1 %i.iw), !noalias !22148
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iu ; 2 uses
  %xtraiter43 = and i64 %i.im, 7                  ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.prol.loopexit40, label %.prol.preheader39

.prol.preheader39:                                ; preds = %bb.aq, %.prol.preheader39
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.iy, %.prol.preheader39 ], [ %i.ix, %bb.aq ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader39 ], [ %i.im, %bb.aq ]
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.prol.preheader39 ], [ 0, %bb.aq ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !22202, !nonnull !175, !noundef !175 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.prol.loopexit40, label %.prol.preheader39, !llvm.loop !21985

.prol.loopexit40:                                 ; preds = %.prol.preheader39, %bb.aq
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.aq ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader39 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ix, %bb.aq ], [ %i.iy, %.prol.preheader39 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.im, %bb.aq ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader39 ]
  %i.iz = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.iz, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new41

.new41:                                           ; preds = %.prol.loopexit40, %.new41
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ji, %.new41 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit40 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new41 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit40 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.ja = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ja, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.jb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.jb, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.jc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.jc, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.jd, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.je = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.je, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.jf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.jf, align 8, !noalias !22202, !nonnull !175, !noundef !175
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.jg, align 8, !noalias !22202, !nonnull !175, !noundef !175 ; 2 uses
  %i.jh = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.jh, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new41, !llvm.loop !21986

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.as, !noalias !22203

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !22148
  unreachable

.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hccd536293713d7e0E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.jk = load i64, ptr %i.cf, align 8, !alias.scope !22204, !noalias !22205, !noundef !175 ; 3 uses
  %i.jl = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22204, !noalias !22205, !noundef !175
  %i.jm = icmp eq i64 %i.jl, %i.jk
  br i1 %i.jm, label %.thread167.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h85bc8e1abe963abfE.exit.i.i.i.i.i.i.i.i.i", !prof !178

.thread167.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.v ], [ %i.jk, %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22206
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !22206
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h85bc8e1abe963abfE.exit.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h85bc8e1abe963abfE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.thread167.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %.sink231.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jk, %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.co, %bb.v ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread167.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jn = icmp sgt i64 %.sink231.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = load ptr, ptr %i.cl, align 8, !noalias !22206, !nonnull !175, !noundef !175
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.sink231.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 125, ptr %i.jp, align 1, !noalias !22206
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %.sink231.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !noalias !22206
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i"

bb.at:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22210)
  %i.jq = getelementptr inbounds nuw i8, ptr %.val9.i6.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.jr = load i64, ptr %i.jq, align 8, !alias.scope !22211, !noalias !22212, !noundef !175 ; 3 uses
  %i.js = load i64, ptr %.val9.i6.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !22211, !noalias !22212, !noundef !175
  %i.jt = sub i64 %i.js, %i.jr
  %i.ju = icmp ult i64 %i.jt, 4
  br i1 %i.ju, label %bb.au, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i", !prof !178

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i, i64 noundef %i.jr, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !22213
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jq, align 8, !alias.scope !22214, !noalias !22212
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.au, %bb.at
  %i.jv = phi i64 [ %i.jr, %bb.at ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %i.jw = icmp sgt i64 %i.jv, -1
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr inbounds nuw i8, ptr %.val9.i6.i.i.i.i.i.i.i, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !22214, !noalias !22212, !nonnull !175, !noundef !175
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jv
  store i32 1819047278, ptr %i.jz, align 1, !noalias !22215
  %i.ka = add nuw i64 %i.jv, 4
  store i64 %i.ka, ptr %i.jq, align 8, !alias.scope !22214, !noalias !22212
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.i.i.i.i.i": ; preds = %bb.o
  %i.kb = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !22117
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h21d5eab32ba2fa2fE.exit.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i.i.i.i.i": ; preds = %bb.n
  %.sroa.436.0.copyload.pre.i.pre.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !noalias !22076
  %i.kc = icmp eq i8 %.sroa.436.0.copyload.pre.i.pre.i.i.i.i, 0
  %i.kd = select i1 %i.bb, i1 true, i1 %i.kc
  br i1 %i.kd, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h21d5eab32ba2fa2fE.exit.thread3.i", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i_crit_edge.i_crit_edge.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i_crit_edge.i_crit_edge.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i.i.i.i.i"
  %.sroa.538.0.copyload.i.pre.i.pre.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !22076
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i_crit_edge.i_crit_edge.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h85bc8e1abe963abfE.exit.i.i.i.i.i.i.i.i.i", %.thread111.i.i.i.i.i
  %.sroa.538.0.copyload.i.i.i.i.i = phi ptr [ %i.bo, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h85bc8e1abe963abfE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.bo, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.538.0.copyload.i.pre.i.pre.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i_crit_edge.i_crit_edge.i.i.i" ], [ %i.e, %.thread111.i.i.i.i.i ]
  %.val.i.i31.i.i.i.i.i = load ptr, ptr %.sroa.538.0.copyload.i.i.i.i.i, align 8, !noalias !22216, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22220)
  %i.ke = getelementptr inbounds nuw i8, ptr %.val.i.i31.i.i.i.i.i, i64 16 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !22221, !noalias !22222, !noundef !175 ; 3 uses
  %i.kg = load i64, ptr %.val.i.i31.i.i.i.i.i, align 8, !range !174, !alias.scope !22221, !noalias !22222, !noundef !175
  %i.kh = icmp eq i64 %i.kg, %i.kf
  br i1 %i.kh, label %bb.av, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i32.i.i.i.i.i, !prof !178

bb.av:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i31.i.i.i.i.i, i64 noundef %i.kf, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22223
  %.pre.i.i.i.i.i.i.i.i33.i.i.i.i.i = load i64, ptr %i.ke, align 8, !alias.scope !22224, !noalias !22222
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i32.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i32.i.i.i.i.i: ; preds = %bb.av, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i"
  %i.ki = phi i64 [ %i.kf, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h010f0f55adfca15dE.exit.thread.thread.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i33.i.i.i.i.i, %bb.av ] ; 3 uses
  %i.kj = icmp sgt i64 %i.ki, -1
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i.i31.i.i.i.i.i, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !alias.scope !22224, !noalias !22222, !nonnull !175, !noundef !175
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ki
  store i8 125, ptr %i.km, align 1, !noalias !22225
  %i.kn = add nuw i64 %i.ki, 1
  store i64 %i.kn, ptr %i.ke, align 8, !alias.scope !22224, !noalias !22222
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h21d5eab32ba2fa2fE.exit.thread3.i"

bb.aw:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !22070, !noalias !22059, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22227)
end_hunk_0
begin_hunk_1_@"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h28827bdaf121734eE":bb.a
  %i.au = icmp ult i16 %i.am, 11
  tail call void @llvm.assume(i1 %i.au), !noalias !23018
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %xtraiter71 = and i64 %i.ak, 7                  ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i.i66.i.prol = phi ptr [ %i.aw, %.prol.preheader ], [ %i.av, %bb.g ]
  %.pn28.in.i.i.i.i.i67.i.prol = phi i64 [ %.pn28.i.i.i.i.i68.i.prol, %.prol.preheader ], [ %i.ak, %bb.g ]
  %prol.iter73 = phi i64 [ %prol.iter73.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i.i68.i.prol = add i64 %.pn28.in.i.i.i.i.i67.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i69.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i66.i.prol, align 8, !noalias !23019, !nonnull !175, !noundef !175 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.prol, i64 280 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !22918

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i69.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i69.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i66.i.unr = phi ptr [ %i.av, %bb.g ], [ %i.aw, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i67.i.unr = phi i64 [ %i.ak, %bb.g ], [ %.pn28.i.i.i.i.i68.i.prol, %.prol.preheader ]
  %i.ax = icmp ult i64 %.sroa.5.037.i.i.i.i.i60.i, 7
  br i1 %i.ax, label %.lr.ph.split.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i66.i = phi ptr [ %i.bg, %.new ], [ %.pn30.in.i.i.i.i.i66.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i67.i = phi i64 [ %.pn28.i.i.i.i.i68.i.7, %.new ], [ %.pn28.in.i.i.i.i.i67.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i69.i = load ptr, ptr %.pn30.in.i.i.i.i.i66.i, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i, i64 280
  %.pn30.i.i.i.i.i69.i.1 = load ptr, ptr %i.ay, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.1, i64 280
  %.pn30.i.i.i.i.i69.i.2 = load ptr, ptr %i.az, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.2, i64 280
  %.pn30.i.i.i.i.i69.i.3 = load ptr, ptr %i.ba, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.3, i64 280
  %.pn30.i.i.i.i.i69.i.4 = load ptr, ptr %i.bb, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.4, i64 280
  %.pn30.i.i.i.i.i69.i.5 = load ptr, ptr %i.bc, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.5, i64 280
  %.pn30.i.i.i.i.i69.i.6 = load ptr, ptr %i.bd, align 8, !noalias !23019, !nonnull !175, !noundef !175
  %i.be = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.6, i64 280
  %.pn28.i.i.i.i.i68.i.7 = add i64 %.pn28.in.i.i.i.i.i67.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i69.i.7 = load ptr, ptr %i.be, align 8, !noalias !23019, !nonnull !175, !noundef !175 ; 2 uses
  %i.bf = icmp eq i64 %.pn28.i.i.i.i.i68.i.7, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.7, i64 280
  br i1 %i.bf, label %.lr.ph.split.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i58.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i74.i unwind label %bb.i, !noalias !23020

.noexc.i.i.i74.i:                                 ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !23018
  unreachable

.critedge.i.i47.i:                                ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #78, !noalias !23021
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i71.i = phi i64 [ %i.as, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i72.i = phi ptr [ %i.aj, %bb.f ], [ %.pn30.i.i.i.i.i69.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i69.i.7, %.new ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bj = icmp ult i16 %i.am, 11
  tail call void @llvm.assume(i1 %i.bj), !noalias !23018
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.aq ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val8.peel.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !23022, !nonnull !175, !noundef !175
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  %.val9.peel.i.i.i = load i64, ptr %i.bm, align 8, !noalias !23022
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i.i, i64 noundef %.val9.peel.i.i.i)
  %i.bn = icmp eq i64 %i.s, 0
  br i1 %i.bn, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.peel.i.i.thread.i": ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i53.i"
  %i.bo = getelementptr i8, ptr %.sroa.05.0.copyload.i.i.i56.i, i64 16
  %.val8.peel.i.i134.i = load ptr, ptr %i.bo, align 8, !noalias !23022, !nonnull !175, !noundef !175
  %i.bp = getelementptr i8, ptr %.sroa.05.0.copyload.i.i.i56.i, i64 24
  %.val9.peel.i.i135.i = load i64, ptr %i.bp, align 8, !noalias !23022
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i134.i, i64 noundef %.val9.peel.i.i135.i)
  %i.bq = icmp eq i64 %i.s, 0
  br i1 %i.bq, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.peel.i.i.thread.i", %.lr.ph.split.i.i.i
  %.sroa.07.0.i.i.i.i72137145151.i = phi ptr [ %.sroa.05.0.copyload.i.i.i56.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.peel.i.i.thread.i" ], [ %.sroa.07.0.i.i.i.i72.i, %.lr.ph.split.i.i.i ] ; 4 uses
  %.sroa.7.0.i.i.i.i71136146150.i = phi i64 [ 1, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.peel.i.i.thread.i" ], [ %.sroa.7.0.i.i.i.i71.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.br = add i64 %.sroa.5.0.i.i, -2
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i72137145151.i, i64 274
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !23023, !noundef !175
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i71136146150.i, %i.bu
  br i1 %i.bv, label %.thread152.i, label %.lr.ph.i.i.i.i.i24.i

.thread152.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i"
  %i.bw = add nuw nsw i64 %.sroa.7.0.i.i.i.i71136146150.i, 1
  br label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.prol.loopexit75, %.new76, %bb.k, %.thread152.i
  %.sroa.0.0.ph.i.i.i.i179.sink.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i72137145151.i, %.thread152.i ], [ %i.bx, %bb.k ], [ %i.bx, %.new76 ], [ %i.bx, %.prol.loopexit75 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph = phi i64 [ %.sroa.7.0.i.i.i.i71136146150.i, %.thread152.i ], [ %i.ce, %bb.k ], [ %i.ce, %.new76 ], [ %i.ce, %.prol.loopexit75 ]
  %.sroa.24.0.i.ph = phi i64 [ %i.bw, %.thread152.i ], [ %i.cg, %bb.k ], [ 0, %.new76 ], [ 0, %.prol.loopexit75 ]
  %.sroa.7.0.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i72137145151.i, %.thread152.i ], [ %i.bx, %bb.k ], [ %.pn30.i.i.i.i.i35.i.lcssa.unr, %.prol.loopexit75 ], [ %.pn30.i.i.i.i.i35.i.7, %.new76 ]
  br label %.peel.next.i.i.i.outer

.lr.ph.i.i.i.i.i24.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i", %bb.j
  %.sroa.0.038.i.i.i.i.i25.i = phi ptr [ %i.bx, %bb.j ], [ %.sroa.07.0.i.i.i.i72137145151.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i26.i = phi i64 [ %i.by, %bb.j ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i19.i" ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.0.038.i.i.i.i.i25.i, align 8, !noalias !23024, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i27.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i27.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.by = add i64 %.sroa.5.037.i.i.i.i.i26.i, 1   ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i25.i, i64 272
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !23024 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 274
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !23023, !noundef !175
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %bb.k, label %.lr.ph.i.i.i.i.i24.i

bb.k:                                             ; preds = %bb.j
  %i.ce = zext i16 %i.ca to i64                   ; 4 uses
  %i.cf = icmp eq i64 %i.by, 0
  %i.cg = add nuw nsw i64 %i.ce, 1                ; 2 uses
  br i1 %i.cf, label %.peel.next.i.i.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 280
  %i.ci = icmp ult i16 %i.ca, 11
  tail call void @llvm.assume(i1 %i.ci), !noalias !23018
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg ; 2 uses
  %xtraiter78 = and i64 %i.by, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.prol.loopexit75, label %.prol.preheader74

.prol.preheader74:                                ; preds = %bb.l, %.prol.preheader74
  %.pn30.in.i.i.i.i.i32.i.prol = phi ptr [ %i.ck, %.prol.preheader74 ], [ %i.cj, %bb.l ]
  %.pn28.in.i.i.i.i.i33.i.prol = phi i64 [ %.pn28.i.i.i.i.i34.i.prol, %.prol.preheader74 ], [ %i.by, %bb.l ]
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader74 ], [ 0, %bb.l ]
  %.pn28.i.i.i.i.i34.i.prol = add i64 %.pn28.in.i.i.i.i.i33.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i35.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i32.i.prol, align 8, !noalias !23025, !nonnull !175, !noundef !175 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.prol, i64 280 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit75, label %.prol.preheader74, !llvm.loop !22938

.prol.loopexit75:                                 ; preds = %.prol.preheader74, %bb.l
  %.pn30.i.i.i.i.i35.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.pn30.i.i.i.i.i35.i.prol, %.prol.preheader74 ]
  %.pn30.in.i.i.i.i.i32.i.unr = phi ptr [ %i.cj, %bb.l ], [ %i.ck, %.prol.preheader74 ]
  %.pn28.in.i.i.i.i.i33.i.unr = phi i64 [ %i.by, %bb.l ], [ %.pn28.i.i.i.i.i34.i.prol, %.prol.preheader74 ]
  %i.cl = icmp ult i64 %.sroa.5.037.i.i.i.i.i26.i, 7
  br i1 %i.cl, label %.peel.next.i.i.i.preheader, label %.new76

.new76:                                           ; preds = %.prol.loopexit75, %.new76
  %.pn30.in.i.i.i.i.i32.i = phi ptr [ %i.cu, %.new76 ], [ %.pn30.in.i.i.i.i.i32.i.unr, %.prol.loopexit75 ]
  %.pn28.in.i.i.i.i.i33.i = phi i64 [ %.pn28.i.i.i.i.i34.i.7, %.new76 ], [ %.pn28.in.i.i.i.i.i33.i.unr, %.prol.loopexit75 ]
  %.pn30.i.i.i.i.i35.i = load ptr, ptr %.pn30.in.i.i.i.i.i32.i, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i, i64 280
  %.pn30.i.i.i.i.i35.i.1 = load ptr, ptr %i.cm, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.1, i64 280
  %.pn30.i.i.i.i.i35.i.2 = load ptr, ptr %i.cn, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.2, i64 280
  %.pn30.i.i.i.i.i35.i.3 = load ptr, ptr %i.co, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.3, i64 280
  %.pn30.i.i.i.i.i35.i.4 = load ptr, ptr %i.cp, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.4, i64 280
  %.pn30.i.i.i.i.i35.i.5 = load ptr, ptr %i.cq, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.5, i64 280
  %.pn30.i.i.i.i.i35.i.6 = load ptr, ptr %i.cr, align 8, !noalias !23025, !nonnull !175, !noundef !175
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.6, i64 280
  %.pn28.i.i.i.i.i34.i.7 = add i64 %.pn28.in.i.i.i.i.i33.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i35.i.7 = load ptr, ptr %i.cs, align 8, !noalias !23025, !nonnull !175, !noundef !175 ; 2 uses
  %i.ct = icmp eq i64 %.pn28.i.i.i.i.i34.i.7, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.7, i64 280
  br i1 %i.ct, label %.peel.next.i.i.i.preheader, label %.new76

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i24.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i40.i unwind label %bb.n, !noalias !23026

.noexc.i.i.i40.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !23018
  unreachable

.peel.next.i.i.i.outer:                           ; preds = %.peel.next.i.i.i.outer.backedge, %.peel.next.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i.i179.sink.i.ph54 = phi ptr [ %.sroa.0.0.ph.i.i.i.i179.sink.i.ph, %.peel.next.i.i.i.preheader ], [ %i.ei, %.peel.next.i.i.i.outer.backedge ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph55 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph, %.peel.next.i.i.i.preheader ], [ %i.ep, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.38.0.i.ph = phi i64 [ %i.br, %.peel.next.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.24.0.i.ph56 = phi i64 [ %.sroa.24.0.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.24.0.i.ph56.be, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.0.i.ph57 = phi ptr [ %.sroa.7.0.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.7.0.i.ph57.be, %.peel.next.i.i.i.outer.backedge ] ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i179.sink.i.ph54, i64 8
  %i.cx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph55, 11
  tail call void @llvm.assume(i1 %i.cx), !noalias !23018
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph55 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %.val8.i.i.i.peel = load ptr, ptr %i.cz, align 8, !noalias !23022 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  %.val9.i.i.i.peel = load i64, ptr %i.da, align 8, !noalias !23022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23030)
  %i.db = load i64, ptr %i.f, align 8, !alias.scope !23031, !noalias !23032, !noundef !175 ; 3 uses
  %i.dc = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23031, !noalias !23032, !noundef !175
  %i.dd = icmp eq i64 %i.dc, %i.db
  br i1 %i.dd, label %bb.o, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i.peel", !prof !178

bb.o:                                             ; preds = %.peel.next.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.db, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23033
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !23034, !noalias !23032
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i.peel": ; preds = %bb.o, %.peel.next.i.i.i.outer
  %i.de = phi i64 [ %i.db, %.peel.next.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.o ] ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = load ptr, ptr %i.l, align 8, !alias.scope !23034, !noalias !23032, !nonnull !175, !noundef !175
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 44, ptr %i.dh, align 1, !noalias !23035
  %i.di = add nuw i64 %i.de, 1
  store i64 %i.di, ptr %i.f, align 8, !alias.scope !23034, !noalias !23032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.peel) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i.peel, i64 noundef %.val9.i.i.i.peel)
  %i.dj = icmp eq i64 %.sroa.38.0.i.ph, 0
  br i1 %i.dj, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i.peel"
  %i.dk = add i64 %.sroa.38.0.i.ph, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.ph57) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph57, i64 274
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !23036, !noundef !175
  %i.dn = zext i16 %i.dm to i64
  %i.do = icmp ult i64 %.sroa.24.0.i.ph56, %i.dn
  br i1 %i.do, label %.peel.next.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.preheader

.peel.next.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.peel"
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph57, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph57, i64 274
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i", %.peel.next.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i = phi i64 [ %.sroa.24.0.i.ph56, %.peel.next.i.i.i.outer.peel.newph ], [ %.sroa.24.0.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ] ; 3 uses
  %.sroa.38.0.i = phi i64 [ %i.dk, %.peel.next.i.i.i.outer.peel.newph ], [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ] ; 2 uses
  %.sroa.24.0.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i, 1 ; 2 uses
  %i.dr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i, 11
  tail call void @llvm.assume(i1 %i.dr), !noalias !23018
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val8.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !23022 ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  %.val9.i.i.i = load i64, ptr %i.du, align 8, !noalias !23022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23040)
  %i.dv = load i64, ptr %i.f, align 8, !alias.scope !23041, !noalias !23032, !noundef !175 ; 3 uses
  %i.dw = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23041, !noalias !23032, !noundef !175
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.p, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i", !prof !178

bb.p:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23042
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23043, !noalias !23032
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i": ; preds = %bb.p, %.peel.next.i.i.i
  %i.dy = phi i64 [ %i.dv, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.l, align 8, !alias.scope !23043, !noalias !23032, !nonnull !175, !noundef !175
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 44, ptr %i.eb, align 1, !noalias !23044
  %i.ec = add nuw i64 %i.dy, 1
  store i64 %i.ec, ptr %i.f, align 8, !alias.scope !23043, !noalias !23032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i, i64 noundef %.val9.i.i.i)
  %i.ed = icmp eq i64 %.sroa.38.0.i, 0
  br i1 %i.ed, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i"
  %i.ee = add i64 %.sroa.38.0.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.ph57) ]
  %i.ef = load i16, ptr %i.dq, align 2, !noalias !23036, !noundef !175
  %i.eg = zext i16 %i.ef to i64
  %i.eh = icmp samesign ult i64 %.sroa.24.0.i, %i.eg
  br i1 %i.eh, label %.peel.next.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !22979

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.peel"
  %.lcssa = phi i64 [ %i.dk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.peel" ], [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.q
  %.sroa.0.038.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.q ], [ %.sroa.7.0.i.ph57, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i = phi i64 [ %i.ej, %bb.q ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ei = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i, align 8, !noalias !23045, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ej = add i64 %.sroa.5.037.i.i.i.i.i.i, 1     ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i, i64 272
  %i.el = load i16, ptr %i.ek, align 8, !noalias !23045 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 274
  %i.en = load i16, ptr %i.em, align 2, !noalias !23036, !noundef !175
  %i.eo = icmp ult i16 %i.el, %i.en
  br i1 %i.eo, label %bb.r, label %.lr.ph.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ep = zext i16 %i.el to i64                   ; 2 uses
  %i.eq = icmp eq i64 %i.ej, 0
  %i.er = add nuw nsw i64 %i.ep, 1                ; 2 uses
  br i1 %i.eq, label %.peel.next.i.i.i.outer.backedge, label %bb.s

.peel.next.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit84, %.new85, %bb.r
  %.sroa.24.0.i.ph56.be = phi i64 [ %i.er, %bb.r ], [ 0, %.new85 ], [ 0, %.prol.loopexit84 ]
  %.sroa.7.0.i.ph57.be = phi ptr [ %i.ei, %bb.r ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit84 ], [ %.pn30.i.i.i.i.i.i.7, %.new85 ]
  br label %.peel.next.i.i.i.outer

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 280
  %i.et = icmp ult i16 %i.el, 11
  tail call void @llvm.assume(i1 %i.et), !noalias !23018
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er ; 2 uses
  %xtraiter87 = and i64 %i.ej, 7                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.prol.loopexit84, label %.prol.preheader83

.prol.preheader83:                                ; preds = %bb.s, %.prol.preheader83
  %.pn30.in.i.i.i.i.i.i.prol = phi ptr [ %i.ev, %.prol.preheader83 ], [ %i.eu, %bb.s ]
  %.pn28.in.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader83 ], [ %i.ej, %bb.s ]
  %prol.iter89 = phi i64 [ %prol.iter89.next, %.prol.preheader83 ], [ 0, %bb.s ]
  %.pn28.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.prol, align 8, !noalias !23046, !nonnull !175, !noundef !175 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %.prol.loopexit84, label %.prol.preheader83, !llvm.loop !22985

.prol.loopexit84:                                 ; preds = %.prol.preheader83, %bb.s
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.s ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.eu, %bb.s ], [ %i.ev, %.prol.preheader83 ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %i.ej, %bb.s ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %i.ew = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i, 7
  br i1 %i.ew, label %.peel.next.i.i.i.outer.backedge, label %.new85

.new85:                                           ; preds = %.prol.loopexit84, %.new85
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.ff, %.new85 ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new85 ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.ex, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.ey, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.ez, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.fa, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.fb, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.fc, align 8, !noalias !23046, !nonnull !175, !noundef !175
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.fd, align 8, !noalias !23046, !nonnull !175, !noundef !175 ; 2 uses
  %i.fe = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 280
  br i1 %i.fe, label %.peel.next.i.i.i.outer.backedge, label %.new85, !llvm.loop !22986

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i unwind label %bb.u, !noalias !23047

.noexc.i.i.i.i:                                   ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !23018
  unreachable

.thread170.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h19e3e5b17e23e4fcE.exit.peel.i.i.thread.i", %.lr.ph.split.i.i.i
  %i.fh = load i64, ptr %i.f, align 8, !alias.scope !23048, !noalias !23049, !noundef !175 ; 3 uses
  %i.fi = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23048, !noalias !23049, !noundef !175
  %i.fj = icmp eq i64 %i.fi, %i.fh
  br i1 %i.fj, label %.thread172.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_seq17hd7cc2b0e38b1e9b1E.exit, !prof !178

.thread172.sink.split.i:                          ; preds = %.thread170.i, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.c ], [ %i.fh, %.thread170.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23050
  %.pre.i.i.i.i.i.i.i12.i = load i64, ptr %i.f, align 8, !noalias !23050
  br label %_ZN10serde_core3ser10Serializer11collect_seq17hd7cc2b0e38b1e9b1E.exit

_ZN10serde_core3ser10Serializer11collect_seq17hd7cc2b0e38b1e9b1E.exit: ; preds = %bb.c, %.thread170.i, %.thread172.sink.split.i
  %.sink228.i = phi i64 [ %i.fh, %.thread170.i ], [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i.i12.i, %.thread172.sink.split.i ] ; 3 uses
  %i.fk = icmp sgt i64 %.sink228.i, -1
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = load ptr, ptr %i.l, align 8, !noalias !23050, !nonnull !175, !noundef !175
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sink228.i
  store i8 93, ptr %i.fm, align 1, !noalias !23050
  %storemerge.i = add nuw i64 %.sink228.i, 1
  store i64 %storemerge.i, ptr %i.f, align 8, !noalias !23050
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf2b00bb48ed163efE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23225 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23226)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !23227, !noundef !175 ; 4 uses
  %.not.i.not.i = icmp eq ptr %i.a, null          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !23226 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23226
  %.sink.i.i = select i1 %.not.i.not.i, i64 0, i64 %i.e ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23231)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 21 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !23232, !noalias !23233, !noundef !175 ; 3 uses
  %i.h = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23232, !noalias !23233, !noundef !175
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i, !prof !178

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23234
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23235, !noalias !23233
  br label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i

_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23235, !noalias !23233, !nonnull !175, !noundef !175
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 123, ptr %i.n, align 1, !noalias !23236
  %i.o = add nuw i64 %i.j, 1                      ; 4 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !23235, !noalias !23233
  %i.p = icmp eq i64 %.sink.i.i, 0
  br i1 %i.p, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i
  %i.q = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23237, !noalias !23238, !noundef !175
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %.thread167.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_map17hc6393d31f61a139fE.exit, !prof !178

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i
  br i1 %.not.i.not.i, label %.critedge.i54.i, label %bb.d

bb.d:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i"
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i", label %.lr.ph.i.i85.i.preheader

.lr.ph.i.i85.i.preheader:                         ; preds = %bb.d
  %xtraiter = and i64 %i.c, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i85.i.prol.loopexit, label %.lr.ph.i.i85.i.prol

.lr.ph.i.i85.i.prol:                              ; preds = %.lr.ph.i.i85.i.preheader, %.lr.ph.i.i85.i.prol
  %.sroa.012.015.i.i86.i.prol = phi ptr [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ], [ %i.a, %.lr.ph.i.i85.i.preheader ]
  %.sroa.011.014.i.i87.i.prol = phi i64 [ %i.u, %.lr.ph.i.i85.i.prol ], [ %i.c, %.lr.ph.i.i85.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i85.i.prol ], [ 0, %.lr.ph.i.i85.i.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i86.i.prol, i64 544
  %i.u = add i64 %.sroa.011.014.i.i87.i.prol, -1  ; 2 uses
  %.sroa.012.0.i.i88.i.prol = load ptr, ptr %i.t, align 8, !noalias !23239, !nonnull !175, !noundef !175 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i85.i.prol.loopexit, label %.lr.ph.i.i85.i.prol, !llvm.loop !23093

.lr.ph.i.i85.i.prol.loopexit:                     ; preds = %.lr.ph.i.i85.i.prol, %.lr.ph.i.i85.i.preheader
  %.sroa.012.0.i.i88.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i85.i.preheader ], [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ]
  %.sroa.012.015.i.i86.i.unr = phi ptr [ %i.a, %.lr.ph.i.i85.i.preheader ], [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ]
  %.sroa.011.014.i.i87.i.unr = phi i64 [ %i.c, %.lr.ph.i.i85.i.preheader ], [ %i.u, %.lr.ph.i.i85.i.prol ]
  %i.v = icmp ult i64 %i.c, 8
  br i1 %i.v, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i", label %.lr.ph.i.i85.i

.lr.ph.i.i85.i:                                   ; preds = %.lr.ph.i.i85.i.prol.loopexit, %.lr.ph.i.i85.i
  %.sroa.012.015.i.i86.i = phi ptr [ %.sroa.012.0.i.i88.i.7, %.lr.ph.i.i85.i ], [ %.sroa.012.015.i.i86.i.unr, %.lr.ph.i.i85.i.prol.loopexit ]
end_hunk_1
begin_hunk_2_@"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf2b00bb48ed163efE":bb.a
  %i.aw = icmp ult i64 %.sroa.5.037.i.i.i.i68.i, 7
  br i1 %i.aw, label %.lr.ph.split.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i74.i = phi ptr [ %i.bf, %.new ], [ %.pn30.in.i.i.i.i74.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i75.i = phi i64 [ %.pn28.i.i.i.i76.i.7, %.new ], [ %.pn28.in.i.i.i.i75.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i77.i = load ptr, ptr %.pn30.in.i.i.i.i74.i, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i, i64 544
  %.pn30.i.i.i.i77.i.1 = load ptr, ptr %i.ax, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.1, i64 544
  %.pn30.i.i.i.i77.i.2 = load ptr, ptr %i.ay, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.2, i64 544
  %.pn30.i.i.i.i77.i.3 = load ptr, ptr %i.az, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.3, i64 544
  %.pn30.i.i.i.i77.i.4 = load ptr, ptr %i.ba, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.4, i64 544
  %.pn30.i.i.i.i77.i.5 = load ptr, ptr %i.bb, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.5, i64 544
  %.pn30.i.i.i.i77.i.6 = load ptr, ptr %i.bc, align 8, !noalias !23243, !nonnull !175, !noundef !175
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.6, i64 544
  %.pn28.i.i.i.i76.i.7 = add i64 %.pn28.in.i.i.i.i75.i, -8 ; 2 uses
  %.pn30.i.i.i.i77.i.7 = load ptr, ptr %i.bd, align 8, !noalias !23243, !nonnull !175, !noundef !175 ; 2 uses
  %i.be = icmp eq i64 %.pn28.i.i.i.i76.i.7, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.7, i64 544
  br i1 %i.be, label %.lr.ph.split.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i66.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i83.i unwind label %bb.i, !noalias !23244

.noexc.i.i83.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !23242
  unreachable

.critedge.i54.i:                                  ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #78, !noalias !23245
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.prol.loopexit, %.new, %bb.f, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i"
  %.sroa.0.0.ph.i.i.i73136.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.0.lcssa.i.i90.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i" ], [ %i.ai, %.new ], [ %i.ai, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i71135.i = phi i64 [ %i.ap, %bb.f ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i" ], [ %i.ap, %.new ], [ %i.ap, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i79.i = phi i64 [ %i.ar, %bb.f ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i80.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.0.lcssa.i.i90.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i60.i" ], [ %.pn30.i.i.i.i77.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i77.i.7, %.new ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i, i64 8
  %i.bi = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i, 11
  tail call void @llvm.assume(i1 %i.bi), !noalias !23242
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i, i64 272
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val9.peel.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !23246, !nonnull !175, !noundef !175
  %i.bn = getelementptr i8, ptr %i.bj, i64 16
  %.val10.peel.i.i.i = load i64, ptr %i.bn, align 8, !noalias !23246
  %i.bo = getelementptr i8, ptr %i.bl, i64 8
  %.val11.peel.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !23246 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 16
  %.val12.peel.i.i.i = load i64, ptr %i.bp, align 8, !noalias !23246
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i, i64 noundef %.val10.peel.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23250)
  %i.bq = load i64, ptr %i.f, align 8, !alias.scope !23251, !noalias !23252, !noundef !175 ; 3 uses
  %i.br = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23251, !noalias !23252, !noundef !175
  %i.bs = icmp eq i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.j, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.peel.i.i.i", !prof !178

bb.j:                                             ; preds = %.lr.ph.split.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.bq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23253
  %.pre.i.i.i.i.i.i.i11.i.i.i.peel.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23254, !noalias !23252
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.peel.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.peel.i.i.i": ; preds = %bb.j, %.lr.ph.split.i.i.i
  %i.bt = phi i64 [ %i.bq, %.lr.ph.split.i.i.i ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.peel.i.i.i, %bb.j ] ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load ptr, ptr %i.l, align 8, !alias.scope !23254, !noalias !23252, !nonnull !175, !noundef !175
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 58, ptr %i.bw, align 1, !noalias !23255
  %i.bx = add nuw i64 %i.bt, 1
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !23254, !noalias !23252
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.peel.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.peel.i.i.i, i64 noundef %.val12.peel.i.i.i)
  %i.by = icmp eq i64 %.sink.i.i, 1
  br i1 %i.by, label %.thread165.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i22.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i22.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.peel.i.i.i"
  %i.bz = add i64 %.sink.i.i, -2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i, i64 538
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !23256, !noundef !175
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i, %i.cc
  br i1 %i.cd, label %.thread145.i, label %.lr.ph.i.i.i.i28.i

.thread145.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i22.i"
  %i.ce = add nuw nsw i64 %.sroa.7.0.i.i.i79.i, 1
  br label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.prol.loopexit79, %.new80, %bb.l, %.thread145.i
  %.sroa.0.0.ph.i.i.i174.sink228.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i, %.thread145.i ], [ %i.cf, %bb.l ], [ %i.cf, %.new80 ], [ %i.cf, %.prol.loopexit79 ]
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i, %.thread145.i ], [ %i.cm, %bb.l ], [ %i.cm, %.new80 ], [ %i.cm, %.prol.loopexit79 ]
  %.sroa.30.1.i.ph = phi i64 [ %i.ce, %.thread145.i ], [ %i.co, %bb.l ], [ 0, %.new80 ], [ 0, %.prol.loopexit79 ]
  %.sroa.7.1.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i, %.thread145.i ], [ %i.cf, %bb.l ], [ %.pn30.i.i.i.i39.i.lcssa.unr, %.prol.loopexit79 ], [ %.pn30.i.i.i.i39.i.7, %.new80 ]
  br label %.peel.next.i.i.i.outer

.lr.ph.i.i.i.i28.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i22.i", %bb.k
  %.sroa.0.038.i.i.i.i29.i = phi ptr [ %i.cf, %bb.k ], [ %.sroa.07.0.i.i.i80.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i22.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i = phi i64 [ %i.cg, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i22.i" ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.0.038.i.i.i.i29.i, align 8, !noalias !23257, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i31.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i28.i
  %i.cg = add i64 %.sroa.5.037.i.i.i.i30.i, 1     ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i, i64 536
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !23257 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 538
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !23256, !noundef !175
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %bb.l, label %.lr.ph.i.i.i.i28.i

bb.l:                                             ; preds = %bb.k
  %i.cm = zext i16 %i.ci to i64                   ; 4 uses
  %i.cn = icmp eq i64 %i.cg, 0
  %i.co = add nuw nsw i64 %i.cm, 1                ; 2 uses
  br i1 %i.cn, label %.peel.next.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 544
  %i.cq = icmp ult i16 %i.ci, 11
  tail call void @llvm.assume(i1 %i.cq), !noalias !23242
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %xtraiter82 = and i64 %i.cg, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.prol.loopexit79, label %.prol.preheader78

.prol.preheader78:                                ; preds = %bb.m, %.prol.preheader78
  %.pn30.in.i.i.i.i36.i.prol = phi ptr [ %i.cs, %.prol.preheader78 ], [ %i.cr, %bb.m ]
  %.pn28.in.i.i.i.i37.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.prol, %.prol.preheader78 ], [ %i.cg, %bb.m ]
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.prol.preheader78 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i38.i.prol = add i64 %.pn28.in.i.i.i.i37.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.prol, align 8, !noalias !23258, !nonnull !175, !noundef !175 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.prol, i64 544 ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit79, label %.prol.preheader78, !llvm.loop !23144

.prol.loopexit79:                                 ; preds = %.prol.preheader78, %bb.m
  %.pn30.i.i.i.i39.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i39.i.prol, %.prol.preheader78 ]
  %.pn30.in.i.i.i.i36.i.unr = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %.prol.preheader78 ]
  %.pn28.in.i.i.i.i37.i.unr = phi i64 [ %i.cg, %bb.m ], [ %.pn28.i.i.i.i38.i.prol, %.prol.preheader78 ]
  %i.ct = icmp ult i64 %.sroa.5.037.i.i.i.i30.i, 7
  br i1 %i.ct, label %.peel.next.i.i.i.preheader, label %.new80

.new80:                                           ; preds = %.prol.loopexit79, %.new80
  %.pn30.in.i.i.i.i36.i = phi ptr [ %i.dc, %.new80 ], [ %.pn30.in.i.i.i.i36.i.unr, %.prol.loopexit79 ]
  %.pn28.in.i.i.i.i37.i = phi i64 [ %.pn28.i.i.i.i38.i.7, %.new80 ], [ %.pn28.in.i.i.i.i37.i.unr, %.prol.loopexit79 ]
  %.pn30.i.i.i.i39.i = load ptr, ptr %.pn30.in.i.i.i.i36.i, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i, i64 544
  %.pn30.i.i.i.i39.i.1 = load ptr, ptr %i.cu, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.1, i64 544
  %.pn30.i.i.i.i39.i.2 = load ptr, ptr %i.cv, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.2, i64 544
  %.pn30.i.i.i.i39.i.3 = load ptr, ptr %i.cw, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.3, i64 544
  %.pn30.i.i.i.i39.i.4 = load ptr, ptr %i.cx, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.4, i64 544
  %.pn30.i.i.i.i39.i.5 = load ptr, ptr %i.cy, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.5, i64 544
  %.pn30.i.i.i.i39.i.6 = load ptr, ptr %i.cz, align 8, !noalias !23258, !nonnull !175, !noundef !175
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.6, i64 544
  %.pn28.i.i.i.i38.i.7 = add i64 %.pn28.in.i.i.i.i37.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.7 = load ptr, ptr %i.da, align 8, !noalias !23258, !nonnull !175, !noundef !175 ; 2 uses
  %i.db = icmp eq i64 %.pn28.i.i.i.i38.i.7, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.7, i64 544
  br i1 %i.db, label %.peel.next.i.i.i.preheader, label %.new80

bb.n:                                             ; preds = %.lr.ph.i.i.i.i28.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i unwind label %bb.o, !noalias !23259

.noexc.i.i45.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !23242
  unreachable

.peel.next.i.i.i.outer:                           ; preds = %.peel.next.i.i.i.outer.backedge, %.peel.next.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i174.sink228.i.ph58 = phi ptr [ %.sroa.0.0.ph.i.i.i174.sink228.i.ph, %.peel.next.i.i.i.preheader ], [ %i.fo, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph, %.peel.next.i.i.i.preheader ], [ %i.fv, %.peel.next.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.ph = phi i64 [ %i.bz, %.peel.next.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.ph60 = phi i64 [ %.sroa.30.1.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.30.1.i.ph60.be, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.ph61 = phi ptr [ %.sroa.7.1.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.7.1.i.ph61.be, %.peel.next.i.i.i.outer.backedge ] ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink228.i.ph58, i64 8
  %i.df = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59, 11
  tail call void @llvm.assume(i1 %i.df), !noalias !23242
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink228.i.ph58, i64 272
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 8
  %.val9.i.i.i.peel = load ptr, ptr %i.dj, align 8, !noalias !23246 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dg, i64 16
  %.val10.i.i.i.peel = load i64, ptr %i.dk, align 8, !noalias !23246
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %.val11.i.i.i.peel = load ptr, ptr %i.dl, align 8, !noalias !23246 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 16
  %.val12.i.i.i.peel = load i64, ptr %i.dm, align 8, !noalias !23246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23263)
  %i.dn = load i64, ptr %i.f, align 8, !alias.scope !23264, !noalias !23265, !noundef !175 ; 3 uses
  %i.do = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23264, !noalias !23265, !noundef !175
  %i.dp = icmp eq i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.p, label %bb.q, !prof !178

bb.p:                                             ; preds = %.peel.next.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23266
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !23267, !noalias !23265
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.peel.next.i.i.i.outer
  %i.dq = phi i64 [ %i.dn, %.peel.next.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.p ] ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = load ptr, ptr %i.l, align 8, !alias.scope !23267, !noalias !23265, !nonnull !175, !noundef !175
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 44, ptr %i.dt, align 1, !noalias !23268
  %i.du = add nuw i64 %i.dq, 1
  store i64 %i.du, ptr %i.f, align 8, !alias.scope !23267, !noalias !23265
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.peel) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.peel, i64 noundef %.val10.i.i.i.peel)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23272)
  %i.dv = load i64, ptr %i.f, align 8, !alias.scope !23273, !noalias !23274, !noundef !175 ; 3 uses
  %i.dw = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23273, !noalias !23274, !noundef !175
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.r, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i.peel", !prof !178

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23275
  %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !23276, !noalias !23274
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i.peel": ; preds = %bb.r, %bb.q
  %i.dy = phi i64 [ %i.dv, %bb.q ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i.peel, %bb.r ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.l, align 8, !alias.scope !23276, !noalias !23274, !nonnull !175, !noundef !175
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 58, ptr %i.eb, align 1, !noalias !23277
  %i.ec = add nuw i64 %i.dy, 1
  store i64 %i.ec, ptr %i.f, align 8, !alias.scope !23276, !noalias !23274
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.peel) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.i.i.i.peel, i64 noundef %.val12.i.i.i.peel)
  %i.ed = icmp eq i64 %.sroa.44.0.i.ph, 0
  br i1 %i.ed, label %.thread165.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i.peel"
  %i.ee = add i64 %.sroa.44.0.i.ph, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.ph61) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 538
  %i.eg = load i16, ptr %i.ef, align 2, !noalias !23278, !noundef !175
  %i.eh = zext i16 %i.eg to i64
  %i.ei = icmp ult i64 %.sroa.30.1.i.ph60, %i.eh
  br i1 %i.ei, label %.peel.next.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.preheader

.peel.next.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i.peel"
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 272
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 538
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i", %.peel.next.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i = phi i64 [ %.sroa.30.1.i.ph60, %.peel.next.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i" ] ; 4 uses
  %.sroa.44.0.i = phi i64 [ %i.ee, %.peel.next.i.i.i.outer.peel.newph ], [ %i.fk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i" ] ; 2 uses
  %.sroa.30.1.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i, 1 ; 2 uses
  %i.em = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i, 11
  tail call void @llvm.assume(i1 %i.em), !noalias !23242
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !23246 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.en, i64 16
  %.val10.i.i.i = load i64, ptr %i.eq, align 8, !noalias !23246
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.val11.i.i.i = load ptr, ptr %i.er, align 8, !noalias !23246 ; 2 uses
  %i.es = getelementptr i8, ptr %i.eo, i64 16
  %.val12.i.i.i = load i64, ptr %i.es, align 8, !noalias !23246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23282)
  %i.et = load i64, ptr %i.f, align 8, !alias.scope !23283, !noalias !23265, !noundef !175 ; 3 uses
  %i.eu = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23283, !noalias !23265, !noundef !175
  %i.ev = icmp eq i64 %i.eu, %i.et
  br i1 %i.ev, label %bb.s, label %bb.t, !prof !178

bb.s:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.et, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23284
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23285, !noalias !23265
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.peel.next.i.i.i
  %i.ew = phi i64 [ %i.et, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.l, align 8, !alias.scope !23285, !noalias !23265, !nonnull !175, !noundef !175
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 44, ptr %i.ez, align 1, !noalias !23286
  %i.fa = add nuw i64 %i.ew, 1
  store i64 %i.fa, ptr %i.f, align 8, !alias.scope !23285, !noalias !23265
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i, i64 noundef %.val10.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23290)
  %i.fb = load i64, ptr %i.f, align 8, !alias.scope !23291, !noalias !23274, !noundef !175 ; 3 uses
  %i.fc = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23291, !noalias !23274, !noundef !175
  %i.fd = icmp eq i64 %i.fc, %i.fb
  br i1 %i.fd, label %bb.u, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i", !prof !178

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.fb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23292
  %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !23293, !noalias !23274
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i": ; preds = %bb.u, %bb.t
  %i.fe = phi i64 [ %i.fb, %bb.t ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, -1
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = load ptr, ptr %i.l, align 8, !alias.scope !23293, !noalias !23274, !nonnull !175, !noundef !175
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 58, ptr %i.fh, align 1, !noalias !23294
  %i.fi = add nuw i64 %i.fe, 1
  store i64 %i.fi, ptr %i.f, align 8, !alias.scope !23293, !noalias !23274
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.i.i.i, i64 noundef %.val12.i.i.i)
  %i.fj = icmp eq i64 %.sroa.44.0.i, 0
  br i1 %i.fj, label %.thread165.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i"
  %i.fk = add i64 %.sroa.44.0.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.ph61) ]
  %i.fl = load i16, ptr %i.el, align 2, !noalias !23278, !noundef !175
  %i.fm = zext i16 %i.fl to i64
  %i.fn = icmp samesign ult i64 %.sroa.30.1.i, %i.fm
  br i1 %i.fn, label %.peel.next.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, !llvm.loop !23203

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i.peel"
  %.lcssa = phi i64 [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i.peel" ], [ %i.fk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h14e9cdf366361fe1E.exit.i.i" ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.v
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.fo, %bb.v ], [ %.sroa.7.1.i.ph61, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.fp, %bb.v ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.fo = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !23295, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fp = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 536
  %i.fr = load i16, ptr %i.fq, align 8, !noalias !23295 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 538
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !23278, !noundef !175
  %i.fu = icmp ult i16 %i.fr, %i.ft
  br i1 %i.fu, label %bb.w, label %.lr.ph.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fv = zext i16 %i.fr to i64                   ; 2 uses
  %i.fw = icmp eq i64 %i.fp, 0
  %i.fx = add nuw nsw i64 %i.fv, 1                ; 2 uses
  br i1 %i.fw, label %.peel.next.i.i.i.outer.backedge, label %bb.x

.peel.next.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit88, %.new89, %bb.w
  %.sroa.30.1.i.ph60.be = phi i64 [ %i.fx, %bb.w ], [ 0, %.new89 ], [ 0, %.prol.loopexit88 ]
  %.sroa.7.1.i.ph61.be = phi ptr [ %i.fo, %bb.w ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit88 ], [ %.pn30.i.i.i.i.i.7, %.new89 ]
  br label %.peel.next.i.i.i.outer

bb.x:                                             ; preds = %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 544
  %i.fz = icmp ult i16 %i.fr, 11
  tail call void @llvm.assume(i1 %i.fz), !noalias !23242
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx ; 2 uses
  %xtraiter91 = and i64 %i.fp, 7                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.prol.loopexit88, label %.prol.preheader87

.prol.preheader87:                                ; preds = %bb.x, %.prol.preheader87
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.gb, %.prol.preheader87 ], [ %i.ga, %bb.x ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader87 ], [ %i.fp, %bb.x ]
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.prol.preheader87 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !23296, !nonnull !175, !noundef !175 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.prol.loopexit88, label %.prol.preheader87, !llvm.loop !23209

.prol.loopexit88:                                 ; preds = %.prol.preheader87, %bb.x
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader87 ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.ga, %bb.x ], [ %i.gb, %.prol.preheader87 ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %i.fp, %bb.x ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader87 ]
  %i.gc = icmp ult i64 %.sroa.5.037.i.i.i.i.i, 7
  br i1 %i.gc, label %.peel.next.i.i.i.outer.backedge, label %.new89

.new89:                                           ; preds = %.prol.loopexit88, %.new89
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.gl, %.new89 ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit88 ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new89 ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit88 ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.gd, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.ge, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.gf, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.gg, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.gh, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.gi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.gi, align 8, !noalias !23296, !nonnull !175, !noundef !175
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.gj, align 8, !noalias !23296, !nonnull !175, !noundef !175 ; 2 uses
  %i.gk = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 544
  br i1 %i.gk, label %.peel.next.i.i.i.outer.backedge, label %.new89, !llvm.loop !23210

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !23297

.noexc.i.i.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !23242
  unreachable

.thread165.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h854f788ba7215cd4E.exit.peel.i.i.i"
  %i.gn = load i64, ptr %i.f, align 8, !alias.scope !23298, !noalias !23299, !noundef !175 ; 3 uses
  %i.go = load i64, ptr %.0.val, align 8, !range !174, !alias.scope !23298, !noalias !23299, !noundef !175
  %i.gp = icmp eq i64 %i.go, %i.gn
  br i1 %i.gp, label %.thread167.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_map17hc6393d31f61a139fE.exit, !prof !178

.thread167.sink.split.i:                          ; preds = %.thread165.i, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.c ], [ %i.gn, %.thread165.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !23300
  %.pre.i.i.i.i.i.i.i13.i = load i64, ptr %i.f, align 8, !noalias !23300
  br label %_ZN10serde_core3ser10Serializer11collect_map17hc6393d31f61a139fE.exit

_ZN10serde_core3ser10Serializer11collect_map17hc6393d31f61a139fE.exit: ; preds = %bb.c, %.thread165.i, %.thread167.sink.split.i
  %.sink231.i = phi i64 [ %i.gn, %.thread165.i ], [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i.i13.i, %.thread167.sink.split.i ] ; 3 uses
  %i.gq = icmp sgt i64 %.sink231.i, -1
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = load ptr, ptr %i.l, align 8, !noalias !23300, !nonnull !175, !noundef !175
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink231.i
  store i8 125, ptr %i.gs, align 1, !noalias !23300
  %storemerge.i = add nuw i64 %.sink231.i, 1
  store i64 %storemerge.i, ptr %i.f, align 8, !noalias !23300
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h4be1cd24c967b7ceE"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23388 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 12 uses
  %i.m = load ptr, ptr %1, align 8, !nonnull !175, !align !179, !noundef !175 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23390)
  %i.n = load i64, ptr %i.m, align 8, !range !252, !alias.scope !23390, !noundef !175 ; 2 uses
  %i.o = xor i64 %i.n, -9223372036854775808
  %i.p = icmp slt i64 %i.n, 0
  %i.q = select i1 %i.p, i64 %i.o, i64 5
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.i
    i64 4, label %bb.l
    i64 5, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !23391
  br label %"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h349f7dc0378ae0e4E.exit"

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !192, !alias.scope !23390, !noundef !175
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !23392
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.s, ptr %.sroa.4.0..sroa_idx.i10, align 8, !alias.scope !23392
  br label %"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h349f7dc0378ae0e4E.exit"

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23394)
  %i.u = load i64, ptr %i.t, align 8, !range !190, !alias.scope !23394, !noundef !175
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  switch i64 %i.u, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !23394, !noundef !175
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !23395
  %.sroa.4.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i9, align 8, !alias.scope !23395
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !23395
  br label %"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h349f7dc0378ae0e4E.exit"

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.v, align 8, !alias.scope !23394, !noundef !175 ; 2 uses
  %.lobit.i.i = lshr i64 %i.x, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !23396
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i, ptr %.sroa.4.0..sroa_idx.i1.i, align 8, !alias.scope !23396
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32878)
  %i.adx = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ady = load i64, ptr %i.adx, align 8, !alias.scope !32879, !noalias !32880, !noundef !175 ; 3 uses
  %i.adz = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !32879, !noalias !32880, !noundef !175
  %i.aea = icmp eq i64 %i.adz, %i.ady
  br i1 %i.aea, label %bb.hr, label %bb.hs, !prof !178

bb.hr:                                            ; preds = %.noexc13.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ady, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i.i.i.i115 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32881

.noexc14.i.i.i.i115:                              ; preds = %bb.hr
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.adx, align 8, !alias.scope !32882, !noalias !32880
  br label %bb.hs

bb.hs:                                            ; preds = %.noexc14.i.i.i.i115, %.noexc13.i.i.i.i
  %i.aeb = phi i64 [ %i.ady, %.noexc13.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc14.i.i.i.i115 ] ; 3 uses
  %i.aec = icmp sgt i64 %i.aeb, -1
  call void @llvm.assume(i1 %i.aec)
  %i.aed = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aee = load ptr, ptr %i.aed, align 8, !alias.scope !32882, !noalias !32880, !nonnull !175, !noundef !175
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.aeb
  store i8 58, ptr %i.aef, align 1, !noalias !32883
  %i.aeg = add nuw i64 %i.aeb, 1
  store i64 %i.aeg, ptr %i.adx, align 8, !alias.scope !32882, !noalias !32880
  %.val11.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !32873, !noalias !32874, !nonnull !175, !align !179, !noundef !175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val26.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc15.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc15.i.i.i.i:                                 ; preds = %bb.hs
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @805, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aeh)
          to label %.noexc16.i.i.i.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc16.i.i.i.i111:                              ; preds = %.noexc15.i.i.i.i
  %i.aei = load i8, ptr %i.d, align 8, !range !192, !alias.scope !32884, !noalias !32855, !noundef !175
  %i.aej = trunc nuw i8 %i.aei to i1
  br i1 %i.aej, label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf7aeb970af514d9fE.exit.i.i.i.i.i.i.i.i.i", label %bb.ht

bb.ht:                                            ; preds = %.noexc16.i.i.i.i111
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acy, i64 48
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @806, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aek)
          to label %.noexc17.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc17.i.i.i.i:                                 ; preds = %bb.ht
  %.sroa.033.0.copyload.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !noalias !32855
  %i.ael = trunc nuw i8 %.sroa.033.0.copyload.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.434.0.copyload.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !32855
  %i.aem = icmp eq i8 %.sroa.434.0.copyload.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ael, i1 true, i1 %i.aem
  br i1 %or.cond.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hu

bb.hu:                                            ; preds = %.noexc17.i.i.i.i
  %.sroa.536.0.copyload.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32855, !nonnull !175, !noundef !175
  %.val.i.i30.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.536.0.copyload.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32885, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32886)
  call void @llvm.experimental.noalias.scope.decl(metadata !32887)
  call void @llvm.experimental.noalias.scope.decl(metadata !32888)
  call void @llvm.experimental.noalias.scope.decl(metadata !32889)
  %i.aen = getelementptr inbounds nuw i8, ptr %.val.i.i30.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aeo = load i64, ptr %i.aen, align 8, !alias.scope !32890, !noalias !32891, !noundef !175 ; 3 uses
  %i.aep = load i64, ptr %.val.i.i30.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !32890, !noalias !32891, !noundef !175
  %i.aeq = icmp eq i64 %i.aep, %i.aeo
  br i1 %i.aeq, label %bb.hv, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.hv:                                            ; preds = %bb.hu
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i30.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aeo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32892

.noexc18.i.i.i.i:                                 ; preds = %bb.hv
  %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aen, align 8, !alias.scope !32893, !noalias !32891
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc18.i.i.i.i, %bb.hu
  %i.aer = phi i64 [ %i.aeo, %bb.hu ], [ %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i ] ; 3 uses
  %i.aes = icmp sgt i64 %i.aer, -1
  call void @llvm.assume(i1 %i.aes)
  %i.aet = getelementptr inbounds nuw i8, ptr %.val.i.i30.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !alias.scope !32893, !noalias !32891, !nonnull !175, !noundef !175
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.aer
  store i8 125, ptr %i.aev, align 1, !noalias !32894
  %i.aew = add nuw i64 %i.aer, 1
  store i64 %i.aew, ptr %i.aen, align 8, !alias.scope !32893, !noalias !32891
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc17.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32855
  %i.aex = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aex, label %.thread169.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i22.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i22.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aey = add i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i, i64 1066
  %i.afa = load i16, ptr %i.aez, align 2, !noalias !32895, !noundef !175
  %i.afb = zext i16 %i.afa to i64
  %i.afc = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i, %i.afb
  br i1 %i.afc, label %.thread145.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i

.thread145.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i22.i.i.i.i.i.i.i.i.i.i.i"
  %i.afd = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.prol.loopexit2181, %.new2182, %bb.hx, %.thread145.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i178.sink244.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afe, %bb.hx ], [ %i.afe, %.new2182 ], [ %i.afe, %.prol.loopexit2181 ]
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink243.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afl, %bb.hx ], [ %i.afl, %.new2182 ], [ %i.afl, %.prol.loopexit2181 ]
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.afd, %.thread145.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afn, %bb.hx ], [ 0, %.new2182 ], [ 0, %.prol.loopexit2181 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afe, %bb.hx ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit2181 ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.7, %.new2182 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i22.i.i.i.i.i.i.i.i.i.i.i", %bb.hw
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.afe, %bb.hw ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i22.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aff, %bb.hw ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i22.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.afe = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32896, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afe, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i, label %bb.hz, label %bb.hw

bb.hw:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i
  %i.aff = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i, i64 1064
  %i.afh = load i16, ptr %i.afg, align 8, !noalias !32896 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afe, i64 1066
  %i.afj = load i16, ptr %i.afi, align 2, !noalias !32895, !noundef !175
  %i.afk = icmp ult i16 %i.afh, %i.afj
  br i1 %i.afk, label %bb.hx, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i

bb.hx:                                            ; preds = %bb.hw
  %i.afl = zext i16 %i.afh to i64                 ; 4 uses
  %i.afm = icmp eq i64 %i.aff, 0
  %i.afn = add nuw nsw i64 %i.afl, 1              ; 2 uses
  br i1 %i.afm, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afe, i64 1072
  %i.afp = icmp ult i16 %i.afh, 11
  call void @llvm.assume(i1 %i.afp), !noalias !32833
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %i.afn ; 2 uses
  %xtraiter2184 = and i64 %i.aff, 7               ; 2 uses
  %lcmp.mod2185.not = icmp eq i64 %xtraiter2184, 0
  br i1 %lcmp.mod2185.not, label %.prol.loopexit2181, label %.prol.preheader2180

.prol.preheader2180:                              ; preds = %bb.hy, %.prol.preheader2180
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.afr, %.prol.preheader2180 ], [ %i.afq, %bb.hy ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2180 ], [ %i.aff, %bb.hy ]
  %prol.iter2186 = phi i64 [ %prol.iter2186.next, %.prol.preheader2180 ], [ 0, %bb.hy ]
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !32897, !nonnull !175, !noundef !175 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter2186.next = add i64 %prol.iter2186, 1 ; 2 uses
  %prol.iter2186.cmp.not = icmp eq i64 %prol.iter2186.next, %xtraiter2184
  br i1 %prol.iter2186.cmp.not, label %.prol.loopexit2181, label %.prol.preheader2180, !llvm.loop !32244

.prol.loopexit2181:                               ; preds = %.prol.preheader2180, %bb.hy
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.hy ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2180 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.afq, %bb.hy ], [ %i.afr, %.prol.preheader2180 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.aff, %bb.hy ], [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2180 ]
  %i.afs = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.afs, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new2182

.new2182:                                         ; preds = %.prol.loopexit2181, %.new2182
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agb, %.new2182 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2181 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.7, %.new2182 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2181 ]
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.aft = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.aft, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.afu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.afu, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.afv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.afv, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.afw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.afw, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.afx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.afx, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.afy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.afy, align 8, !noalias !32897, !nonnull !175, !noundef !175
  %i.afz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.afz, align 8, !noalias !32897, !nonnull !175, !noundef !175 ; 2 uses
  %i.aga = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.agb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.aga, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new2182

bb.hz:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ia, !noalias !32898

.noexc.i.i45.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hz
  unreachable

bb.ia:                                            ; preds = %bb.hz
  %i.agc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !32833
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer:       ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i178.sink244.i.i.i.i.i.i.i.i.i.i.i.ph1760 = phi ptr [ %.sroa.0.0.ph.i.i.i178.sink244.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.alp, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink243.i.i.i.i.i.i.i.i.i.i.i.ph1761 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i177.sink243.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.alw, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aey, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.ph1762 = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.ph1762.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph1763 = phi ptr [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph1763.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink244.i.i.i.i.i.i.i.i.i.i.i.ph1760, i64 8
  %i.age = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink243.i.i.i.i.i.i.i.i.i.i.i.ph1761, 11
  call void @llvm.assume(i1 %i.age), !noalias !32833
  %i.agf = getelementptr inbounds nuw [24 x i8], ptr %i.agd, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink243.i.i.i.i.i.i.i.i.i.i.i.ph1761 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink244.i.i.i.i.i.i.i.i.i.i.i.ph1760, i64 272
  %i.agh = getelementptr inbounds nuw [72 x i8], ptr %i.agg, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink243.i.i.i.i.i.i.i.i.i.i.i.ph1761 ; 4 uses
  %i.agi = getelementptr i8, ptr %i.agf, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.agi, align 8, !noalias !32837 ; 2 uses
  %i.agj = getelementptr i8, ptr %i.agf, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.agj, align 8, !noalias !32837
  call void @llvm.experimental.noalias.scope.decl(metadata !32899)
  call void @llvm.experimental.noalias.scope.decl(metadata !32900)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.zq, align 8, !alias.scope !32840, !noalias !32901, !nonnull !175, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32902)
  call void @llvm.experimental.noalias.scope.decl(metadata !32903)
  call void @llvm.experimental.noalias.scope.decl(metadata !32904)
  call void @llvm.experimental.noalias.scope.decl(metadata !32905)
  %i.agk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.agl = load i64, ptr %i.agk, align 8, !alias.scope !32906, !noalias !32907, !noundef !175 ; 3 uses
  %i.agm = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !32906, !noalias !32907, !noundef !175
  %i.agn = icmp eq i64 %i.agm, %i.agl
  br i1 %i.agn, label %bb.ib, label %bb.ic, !prof !178

bb.ib:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.agl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc19.i.i.i.i114.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32908

.noexc19.i.i.i.i114.peel:                         ; preds = %bb.ib
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.agk, align 8, !alias.scope !32909, !noalias !32907
  br label %bb.ic

bb.ic:                                            ; preds = %.noexc19.i.i.i.i114.peel, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  %i.ago = phi i64 [ %i.agl, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc19.i.i.i.i114.peel ] ; 3 uses
  %i.agp = icmp sgt i64 %i.ago, -1
  call void @llvm.assume(i1 %i.agp)
  %i.agq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.agr = load ptr, ptr %i.agq, align 8, !alias.scope !32909, !noalias !32907, !nonnull !175, !noundef !175
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 %i.ago
  store i8 44, ptr %i.ags, align 1, !noalias !32910
  %i.agt = add nuw i64 %i.ago, 1
  store i64 %i.agt, ptr %i.agk, align 8, !alias.scope !32909, !noalias !32907
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.zq, align 8, !alias.scope !32840, !noalias !32901
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.peel)
          to label %.noexc20.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc20.i.i.i.i.peel:                            ; preds = %bb.ic
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.zq, align 8, !alias.scope !32840, !noalias !32911, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32912)
  call void @llvm.experimental.noalias.scope.decl(metadata !32913)
  call void @llvm.experimental.noalias.scope.decl(metadata !32914)
  call void @llvm.experimental.noalias.scope.decl(metadata !32915)
  %i.agu = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.agv = load i64, ptr %i.agu, align 8, !alias.scope !32916, !noalias !32917, !noundef !175 ; 3 uses
  %i.agw = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !32916, !noalias !32917, !noundef !175
  %i.agx = icmp eq i64 %i.agw, %i.agv
  br i1 %i.agx, label %bb.id, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !178

bb.id:                                            ; preds = %.noexc20.i.i.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.agv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i113.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32918

.noexc21.i.i.i.i113.peel:                         ; preds = %bb.id
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.agu, align 8, !alias.scope !32919, !noalias !32917
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %.noexc21.i.i.i.i113.peel, %.noexc20.i.i.i.i.peel
  %i.agy = phi i64 [ %i.agv, %.noexc20.i.i.i.i.peel ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc21.i.i.i.i113.peel ] ; 3 uses
  %i.agz = icmp sgt i64 %i.agy, -1
  call void @llvm.assume(i1 %i.agz)
  %i.aha = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ahb = load ptr, ptr %i.aha, align 8, !alias.scope !32919, !noalias !32917, !nonnull !175, !noundef !175
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.agy
  store i8 58, ptr %i.ahc, align 1, !noalias !32920
  %i.ahd = add nuw i64 %i.agy, 1
  store i64 %i.ahd, ptr %i.agu, align 8, !alias.scope !32919, !noalias !32917
  call void @llvm.experimental.noalias.scope.decl(metadata !32921)
  call void @llvm.experimental.noalias.scope.decl(metadata !32922)
  call void @llvm.experimental.noalias.scope.decl(metadata !32923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32924
  call void @llvm.experimental.noalias.scope.decl(metadata !32925)
  call void @llvm.experimental.noalias.scope.decl(metadata !32926)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.zq, align 8, !alias.scope !32927, !noalias !32911, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32928)
  call void @llvm.experimental.noalias.scope.decl(metadata !32929)
  call void @llvm.experimental.noalias.scope.decl(metadata !32930)
  call void @llvm.experimental.noalias.scope.decl(metadata !32931)
  %i.ahe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.ahf = load i64, ptr %i.ahe, align 8, !alias.scope !32932, !noalias !32933, !noundef !175 ; 3 uses
  %i.ahg = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !32932, !noalias !32933, !noundef !175
  %i.ahh = icmp eq i64 %i.ahg, %i.ahf
  br i1 %i.ahh, label %bb.ie, label %bb.if, !prof !178

bb.ie:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.ahf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32934

.noexc22.i.i.i.i.peel:                            ; preds = %bb.ie
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.ahe, align 8, !alias.scope !32935, !noalias !32933
  br label %bb.if

bb.if:                                            ; preds = %.noexc22.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %i.ahi = phi i64 [ %i.ahf, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc22.i.i.i.i.peel ] ; 3 uses
  %i.ahj = icmp sgt i64 %i.ahi, -1
  call void @llvm.assume(i1 %i.ahj)
  %i.ahk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8, !alias.scope !32935, !noalias !32933, !nonnull !175, !noundef !175
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.ahi
  store i8 123, ptr %i.ahm, align 1, !noalias !32936
  %i.ahn = add nuw i64 %i.ahi, 1
  store i64 %i.ahn, ptr %i.ahe, align 8, !alias.scope !32935, !noalias !32933
  store i8 0, ptr %i.d, align 8, !noalias !32924
  store ptr %i.zq, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32924
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.aho, align 8, !alias.scope !32937, !noalias !32938 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.ahp, align 8, !alias.scope !32937, !noalias !32938
  call void @llvm.experimental.noalias.scope.decl(metadata !32939)
  call void @llvm.experimental.noalias.scope.decl(metadata !32940)
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !32941, !noalias !32924
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @804, i64 noundef range(i64 2, 20) 3)
          to label %.noexc23.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc23.i.i.i.i.peel:                            ; preds = %bb.if
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.zq, align 8, !alias.scope !32942, !noalias !32943, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32944)
  call void @llvm.experimental.noalias.scope.decl(metadata !32945)
  call void @llvm.experimental.noalias.scope.decl(metadata !32946)
  call void @llvm.experimental.noalias.scope.decl(metadata !32947)
  %i.ahq = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.ahr = load i64, ptr %i.ahq, align 8, !alias.scope !32948, !noalias !32949, !noundef !175 ; 3 uses
  %i.ahs = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !32948, !noalias !32949, !noundef !175
  %i.aht = icmp eq i64 %i.ahs, %i.ahr
  br i1 %i.aht, label %bb.ig, label %bb.ih, !prof !178

bb.ig:                                            ; preds = %.noexc23.i.i.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.ahr, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32950

.noexc24.i.i.i.i.peel:                            ; preds = %bb.ig
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.ahq, align 8, !alias.scope !32951, !noalias !32949
  br label %bb.ih

bb.ih:                                            ; preds = %.noexc24.i.i.i.i.peel, %.noexc23.i.i.i.i.peel
  %i.ahu = phi i64 [ %i.ahr, %.noexc23.i.i.i.i.peel ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc24.i.i.i.i.peel ] ; 3 uses
  %i.ahv = icmp sgt i64 %i.ahu, -1
  call void @llvm.assume(i1 %i.ahv)
  %i.ahw = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !alias.scope !32951, !noalias !32949, !nonnull !175, !noundef !175
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.ahu
  store i8 58, ptr %i.ahy, align 1, !noalias !32952
  %i.ahz = add nuw i64 %i.ahu, 1
  store i64 %i.ahz, ptr %i.ahq, align 8, !alias.scope !32951, !noalias !32949
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.zq, align 8, !alias.scope !32942, !noalias !32943, !nonnull !175, !align !179, !noundef !175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel)
          to label %.noexc25.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc25.i.i.i.i.peel:                            ; preds = %bb.ih
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @805, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aia)
          to label %.noexc26.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc26.i.i.i.i.peel:                            ; preds = %.noexc25.i.i.i.i.peel
  %i.aib = load i8, ptr %i.d, align 8, !range !192, !alias.scope !32953, !noalias !32924, !noundef !175
  %i.aic = trunc nuw i8 %i.aib to i1
  br i1 %i.aic, label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf7aeb970af514d9fE.exit.i.i.i.i.i.i.i.i.i", label %bb.ii

bb.ii:                                            ; preds = %.noexc26.i.i.i.i.peel
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agh, i64 48
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @806, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aid)
          to label %.noexc27.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc27.i.i.i.i.peel:                            ; preds = %bb.ii
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %i.d, align 8, !noalias !32924
  %i.aie = trunc nuw i8 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel to i1
  %.sroa.434.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !32924
  %i.aif = icmp eq i8 %.sroa.434.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = select i1 %i.aie, i1 true, i1 %i.aif
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", label %bb.ij

bb.ij:                                            ; preds = %.noexc27.i.i.i.i.peel
  %.sroa.536.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32924, !nonnull !175, !noundef !175
  %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.536.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !noalias !32954, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32955)
  call void @llvm.experimental.noalias.scope.decl(metadata !32956)
  call void @llvm.experimental.noalias.scope.decl(metadata !32957)
  call void @llvm.experimental.noalias.scope.decl(metadata !32958)
  %i.aig = getelementptr inbounds nuw i8, ptr %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.aih = load i64, ptr %i.aig, align 8, !alias.scope !32959, !noalias !32960, !noundef !175 ; 3 uses
  %i.aii = load i64, ptr %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !32959, !noalias !32960, !noundef !175
  %i.aij = icmp eq i64 %i.aii, %i.aih
  br i1 %i.aij, label %bb.ik, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !178

bb.ik:                                            ; preds = %bb.ij
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.aih, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28.i.i.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32961

.noexc28.i.i.i.i.peel:                            ; preds = %bb.ik
  %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.aig, align 8, !alias.scope !32962, !noalias !32960
end_hunk_3
begin_hunk_4_@"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E":bb.a

bb.il:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ajf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc19.i.i.i.i114 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32974

.noexc19.i.i.i.i114:                              ; preds = %bb.il
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aje, align 8, !alias.scope !32975, !noalias !32973
  br label %bb.im

bb.im:                                            ; preds = %.noexc19.i.i.i.i114, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aji = phi i64 [ %i.ajf, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i114 ] ; 3 uses
  %i.ajj = icmp sgt i64 %i.aji, -1
  call void @llvm.assume(i1 %i.ajj)
  %i.ajk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !alias.scope !32975, !noalias !32973, !nonnull !175, !noundef !175
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.aji
  store i8 44, ptr %i.ajm, align 1, !noalias !32976
  %i.ajn = add nuw i64 %i.aji, 1
  store i64 %i.ajn, ptr %i.aje, align 8, !alias.scope !32975, !noalias !32973
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !32840, !noalias !32967
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc20.i.i.i.i:                                 ; preds = %bb.im
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !32840, !noalias !32977, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32978)
  call void @llvm.experimental.noalias.scope.decl(metadata !32979)
  call void @llvm.experimental.noalias.scope.decl(metadata !32980)
  call void @llvm.experimental.noalias.scope.decl(metadata !32981)
  %i.ajo = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ajp = load i64, ptr %i.ajo, align 8, !alias.scope !32982, !noalias !32983, !noundef !175 ; 3 uses
  %i.ajq = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !32982, !noalias !32983, !noundef !175
  %i.ajr = icmp eq i64 %i.ajq, %i.ajp
  br i1 %i.ajr, label %bb.in, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.in:                                            ; preds = %.noexc20.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ajp, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i113 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !32984

.noexc21.i.i.i.i113:                              ; preds = %bb.in
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ajo, align 8, !alias.scope !32985, !noalias !32983
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i113, %.noexc20.i.i.i.i
  %i.ajs = phi i64 [ %i.ajp, %.noexc20.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i113 ] ; 3 uses
  %i.ajt = icmp sgt i64 %i.ajs, -1
  call void @llvm.assume(i1 %i.ajt)
  %i.aju = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ajv = load ptr, ptr %i.aju, align 8, !alias.scope !32985, !noalias !32983, !nonnull !175, !noundef !175
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.ajs
  store i8 58, ptr %i.ajw, align 1, !noalias !32986
  %i.ajx = add nuw i64 %i.ajs, 1
  store i64 %i.ajx, ptr %i.ajo, align 8, !alias.scope !32985, !noalias !32983
  call void @llvm.experimental.noalias.scope.decl(metadata !32987)
  call void @llvm.experimental.noalias.scope.decl(metadata !32988)
  call void @llvm.experimental.noalias.scope.decl(metadata !32989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32990
  call void @llvm.experimental.noalias.scope.decl(metadata !32991)
  call void @llvm.experimental.noalias.scope.decl(metadata !32992)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !32993, !noalias !32977, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32994)
  call void @llvm.experimental.noalias.scope.decl(metadata !32995)
  call void @llvm.experimental.noalias.scope.decl(metadata !32996)
  call void @llvm.experimental.noalias.scope.decl(metadata !32997)
  %i.ajy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ajz = load i64, ptr %i.ajy, align 8, !alias.scope !32998, !noalias !32999, !noundef !175 ; 3 uses
  %i.aka = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !32998, !noalias !32999, !noundef !175
  %i.akb = icmp eq i64 %i.aka, %i.ajz
  br i1 %i.akb, label %bb.io, label %bb.ip, !prof !178

bb.io:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ajz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !33000

.noexc22.i.i.i.i:                                 ; preds = %bb.io
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ajy, align 8, !alias.scope !33001, !noalias !32999
  br label %bb.ip

bb.ip:                                            ; preds = %.noexc22.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.akc = phi i64 [ %i.ajz, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i ] ; 3 uses
  %i.akd = icmp sgt i64 %i.akc, -1
  call void @llvm.assume(i1 %i.akd)
  %i.ake = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8, !alias.scope !33001, !noalias !32999, !nonnull !175, !noundef !175
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.akc
  store i8 123, ptr %i.akg, align 1, !noalias !33002
  %i.akh = add nuw i64 %i.akc, 1
  store i64 %i.akh, ptr %i.ajy, align 8, !alias.scope !33001, !noalias !32999
  store i8 0, ptr %i.d, align 8, !noalias !32990
  store ptr %i.zq, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32990
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aki, align 8, !alias.scope !33003, !noalias !33004 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16
  %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.akj, align 8, !alias.scope !33003, !noalias !33004
  call void @llvm.experimental.noalias.scope.decl(metadata !33005)
  call void @llvm.experimental.noalias.scope.decl(metadata !33006)
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !33007, !noalias !32990
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @804, i64 noundef range(i64 2, 20) 3)
          to label %.noexc23.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc23.i.i.i.i:                                 ; preds = %bb.ip
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !33008, !noalias !33009, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33010)
  call void @llvm.experimental.noalias.scope.decl(metadata !33011)
  call void @llvm.experimental.noalias.scope.decl(metadata !33012)
  call void @llvm.experimental.noalias.scope.decl(metadata !33013)
  %i.akk = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.akl = load i64, ptr %i.akk, align 8, !alias.scope !33014, !noalias !33015, !noundef !175 ; 3 uses
  %i.akm = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !33014, !noalias !33015, !noundef !175
  %i.akn = icmp eq i64 %i.akm, %i.akl
  br i1 %i.akn, label %bb.iq, label %bb.ir, !prof !178

bb.iq:                                            ; preds = %.noexc23.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.akl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !33016

.noexc24.i.i.i.i:                                 ; preds = %bb.iq
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.akk, align 8, !alias.scope !33017, !noalias !33015
  br label %bb.ir

bb.ir:                                            ; preds = %.noexc24.i.i.i.i, %.noexc23.i.i.i.i
  %i.ako = phi i64 [ %i.akl, %.noexc23.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i.i ] ; 3 uses
  %i.akp = icmp sgt i64 %i.ako, -1
  call void @llvm.assume(i1 %i.akp)
  %i.akq = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8, !alias.scope !33017, !noalias !33015, !nonnull !175, !noundef !175
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.ako
  store i8 58, ptr %i.aks, align 1, !noalias !33018
  %i.akt = add nuw i64 %i.ako, 1
  store i64 %i.akt, ptr %i.akk, align 8, !alias.scope !33017, !noalias !33015
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !33008, !noalias !33009, !nonnull !175, !align !179, !noundef !175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc25.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc25.i.i.i.i:                                 ; preds = %bb.ir
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajb, i64 24
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @805, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aku)
          to label %.noexc26.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc26.i.i.i.i:                                 ; preds = %.noexc25.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !33019)
  %i.akv = load i8, ptr %i.d, align 8, !range !192, !alias.scope !33019, !noalias !32990, !noundef !175
  %i.akw = trunc nuw i8 %i.akv to i1
  br i1 %i.akw, label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf7aeb970af514d9fE.exit.i.i.i.i.i.i.i.i.i", label %bb.is

bb.is:                                            ; preds = %.noexc26.i.i.i.i
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajb, i64 48
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @806, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akx)
          to label %.noexc27.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc27.i.i.i.i:                                 ; preds = %bb.is
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.d, align 8, !noalias !32990
  %i.aky = trunc nuw i8 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.434.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !32990
  %i.akz = icmp eq i8 %.sroa.434.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aky, i1 true, i1 %i.akz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.it

bb.it:                                            ; preds = %.noexc27.i.i.i.i
  %.sroa.536.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32990, !nonnull !175, !noundef !175
  %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.536.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33020, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33021)
  call void @llvm.experimental.noalias.scope.decl(metadata !33022)
  call void @llvm.experimental.noalias.scope.decl(metadata !33023)
  call void @llvm.experimental.noalias.scope.decl(metadata !33024)
  %i.ala = getelementptr inbounds nuw i8, ptr %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.alb = load i64, ptr %i.ala, align 8, !alias.scope !33025, !noalias !33026, !noundef !175 ; 3 uses
  %i.alc = load i64, ptr %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !33025, !noalias !33026, !noundef !175
  %i.ald = icmp eq i64 %i.alc, %i.alb
  br i1 %i.ald, label %bb.iu, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.iu:                                            ; preds = %bb.it
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.alb, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !33027

.noexc28.i.i.i.i:                                 ; preds = %bb.iu
  %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ala, align 8, !alias.scope !33028, !noalias !33026
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc28.i.i.i.i, %bb.it
  %i.ale = phi i64 [ %i.alb, %bb.it ], [ %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc28.i.i.i.i ] ; 3 uses
  %i.alf = icmp sgt i64 %i.ale, -1
  call void @llvm.assume(i1 %i.alf)
  %i.alg = getelementptr inbounds nuw i8, ptr %.val.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !alias.scope !33028, !noalias !33026, !nonnull !175, !noundef !175
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.ale
  store i8 125, ptr %i.ali, align 1, !noalias !33029
  %i.alj = add nuw i64 %i.ale, 1
  store i64 %i.alj, ptr %i.ala, align 8, !alias.scope !33028, !noalias !33026
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc27.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32990
  %i.alk = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.alk, label %.thread169.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.all = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph1763) ]
  %i.alm = load i16, ptr %i.aiy, align 2, !noalias !32964, !noundef !175
  %i.aln = zext i16 %i.alm to i64
  %i.alo = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i, %i.aln
  br i1 %i.alo, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !32415

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa = phi i64 [ %i.air, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.all, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6fd3e48e5b992117E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.iv
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.alp, %bb.iv ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph1763, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.alq, %bb.iv ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.alp = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33030, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.alp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.alq = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1064
  %i.als = load i16, ptr %i.alr, align 8, !noalias !33030 ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alp, i64 1066
  %i.alu = load i16, ptr %i.alt, align 2, !noalias !32964, !noundef !175
  %i.alv = icmp ult i16 %i.als, %i.alu
  br i1 %i.alv, label %bb.iw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.iw:                                            ; preds = %bb.iv
  %i.alw = zext i16 %i.als to i64                 ; 2 uses
  %i.alx = icmp eq i64 %i.alq, 0
  %i.aly = add nuw nsw i64 %i.alw, 1              ; 2 uses
  br i1 %i.alx, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.ix

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit2194, %.new2195, %bb.iw
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.ph1762.be = phi i64 [ %i.aly, %bb.iw ], [ 0, %.new2195 ], [ 0, %.prol.loopexit2194 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.ph1763.be = phi ptr [ %i.alp, %bb.iw ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit2194 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new2195 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

bb.ix:                                            ; preds = %bb.iw
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alp, i64 1072
  %i.ama = icmp ult i16 %i.als, 11
  call void @llvm.assume(i1 %i.ama), !noalias !32833
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.alz, i64 %i.aly ; 2 uses
  %xtraiter2197 = and i64 %i.alq, 7               ; 2 uses
  %lcmp.mod2198.not = icmp eq i64 %xtraiter2197, 0
  br i1 %lcmp.mod2198.not, label %.prol.loopexit2194, label %.prol.preheader2193

.prol.preheader2193:                              ; preds = %bb.ix, %.prol.preheader2193
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.amc, %.prol.preheader2193 ], [ %i.amb, %bb.ix ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2193 ], [ %i.alq, %bb.ix ]
  %prol.iter2199 = phi i64 [ %prol.iter2199.next, %.prol.preheader2193 ], [ 0, %bb.ix ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !33031, !nonnull !175, !noundef !175 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter2199.next = add i64 %prol.iter2199, 1 ; 2 uses
  %prol.iter2199.cmp.not = icmp eq i64 %prol.iter2199.next, %xtraiter2197
  br i1 %prol.iter2199.cmp.not, label %.prol.loopexit2194, label %.prol.preheader2193, !llvm.loop !32421

.prol.loopexit2194:                               ; preds = %.prol.preheader2193, %bb.ix
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ix ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2193 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.amb, %bb.ix ], [ %i.amc, %.prol.preheader2193 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.alq, %bb.ix ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2193 ]
  %i.amd = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.amd, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new2195

.new2195:                                         ; preds = %.prol.loopexit2194, %.new2195
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.amm, %.new2195 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2194 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new2195 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2194 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.ame = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ame, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.amf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.amf, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.amg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.amg, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.amh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.amh, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.ami = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ami, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.amj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.amj, align 8, !noalias !33031, !nonnull !175, !noundef !175
  %i.amk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.amk, align 8, !noalias !33031, !nonnull !175, !noundef !175 ; 2 uses
  %i.aml = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.amm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.aml, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new2195, !llvm.loop !32422

bb.iy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.iz, !noalias !33032

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.iy
  unreachable

bb.iz:                                            ; preds = %bb.iy
  %i.amn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !32833
  unreachable

.thread169.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h76ead8b5d3b1ff75E.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i11.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zq, align 8, !alias.scope !32840, !noalias !33033, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33034)
  call void @llvm.experimental.noalias.scope.decl(metadata !33035)
  call void @llvm.experimental.noalias.scope.decl(metadata !33036)
  call void @llvm.experimental.noalias.scope.decl(metadata !33037)
  %i.amo = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.amp = load i64, ptr %i.amo, align 8, !alias.scope !33038, !noalias !33039, !noundef !175 ; 3 uses
  %i.amq = load i64, ptr %.val.i11.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !33038, !noalias !33039, !noundef !175
  %i.amr = icmp eq i64 %i.amq, %i.amp
  br i1 %i.amr, label %bb.ja, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.ja:                                            ; preds = %.thread169.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.amp, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc29.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !33040

.noexc29.i.i.i.i:                                 ; preds = %bb.ja
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.amo, align 8, !alias.scope !33041, !noalias !33039
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i.i.i, %.thread169.i.i.i.i.i.i.i.i.i.i.i
  %i.ams = phi i64 [ %i.amp, %.thread169.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i, %.noexc29.i.i.i.i ] ; 3 uses
  %i.amt = icmp sgt i64 %i.ams, -1
  call void @llvm.assume(i1 %i.amt)
  %i.amu = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8, !alias.scope !33041, !noalias !33039, !nonnull !175, !noundef !175
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.ams
  store i8 125, ptr %i.amw, align 1, !noalias !33042
  %i.amx = add nuw i64 %i.ams, 1
  store i64 %i.amx, ptr %i.amo, align 8, !alias.scope !33041, !noalias !33039
  br label %bb.jb

"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf7aeb970af514d9fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc26.i.i.i.i, %.noexc26.i.i.i.i.peel, %.noexc16.i.i.i.i111
  %i.amy = invoke noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
          to label %.noexc30.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !33043

.noexc30.i.i.i.i:                                 ; preds = %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf7aeb970af514d9fE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32990
  br label %bb.jk

bb.jb:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i.i.i.i.i, %.thread171.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @811, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yv)
          to label %.noexc32.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc32.i.i.i.i:                                 ; preds = %bb.jb
  %i.amz = load i8, ptr %i.e, align 8, !range !192, !noalias !32786, !noundef !175
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6297180000119ddfE.exit.i.i.invoke.i.i.i.i", label %bb.jc

bb.jc:                                            ; preds = %.noexc32.i.i.i.i
  %i.anb = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32786, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.anc = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i109, align 1, !range !183, !noalias !32786, !noundef !175
  %i.and = icmp eq i8 %i.anc, 1
  %.val.i.i.i33.i.i.i.i.i.i = load ptr, ptr %i.anb, align 8, !noalias !33044 ; 6 uses
  br i1 %i.and, label %bb.jf, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i33.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33045)
  call void @llvm.experimental.noalias.scope.decl(metadata !33046)
  call void @llvm.experimental.noalias.scope.decl(metadata !33047)
  call void @llvm.experimental.noalias.scope.decl(metadata !33048)
  %i.ane = getelementptr inbounds nuw i8, ptr %.val.i.i.i33.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.anf = load i64, ptr %i.ane, align 8, !alias.scope !33049, !noalias !33050, !noundef !175 ; 3 uses
  %i.ang = load i64, ptr %.val.i.i.i33.i.i.i.i.i.i, align 8, !range !174, !alias.scope !33049, !noalias !33050, !noundef !175
  %i.anh = icmp eq i64 %i.ang, %i.anf
  br i1 %i.anh, label %bb.je, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i34.i.i.i.i.i.i", !prof !178

bb.je:                                            ; preds = %bb.jd
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i33.i.i.i.i.i.i, i64 noundef %i.anf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc33.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !33051

.noexc33.i.i.i.i:                                 ; preds = %bb.je
  %.pre.i.i.i.i.i.i.i.i.i40.i.i.i.i.i.i = load i64, ptr %i.ane, align 8, !alias.scope !33052, !noalias !33050
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i34.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i34.i.i.i.i.i.i": ; preds = %.noexc33.i.i.i.i, %bb.jd
  %i.ani = phi i64 [ %i.anf, %bb.jd ], [ %.pre.i.i.i.i.i.i.i.i.i40.i.i.i.i.i.i, %.noexc33.i.i.i.i ] ; 3 uses
  %i.anj = icmp sgt i64 %i.ani, -1
  call void @llvm.assume(i1 %i.anj)
  %i.ank = getelementptr inbounds nuw i8, ptr %.val.i.i.i33.i.i.i.i.i.i, i64 8
  %i.anl = load ptr, ptr %i.ank, align 8, !alias.scope !33052, !noalias !33050, !nonnull !175, !noundef !175
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.ani
  store i8 44, ptr %i.anm, align 1, !noalias !33053
  %i.ann = add nuw i64 %i.ani, 1
  store i64 %i.ann, ptr %i.ane, align 8, !alias.scope !33052, !noalias !33050
  %.val9.pre.i.i.i35.i.i.i.i.i.i = load ptr, ptr %i.anb, align 8, !noalias !33044
  br label %bb.jf

bb.jf:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i34.i.i.i.i.i.i", %bb.jc
  %.val9.i.i.i36.i.i.i.i.i.i = phi ptr [ %.val.i.i.i33.i.i.i.i.i.i, %bb.jc ], [ %.val9.pre.i.i.i35.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i34.i.i.i.i.i.i" ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i36.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @507, i64 noundef range(i64 3, 16) 7)
          to label %.noexc34.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc34.i.i.i.i:                                 ; preds = %bb.jf
  %.val.i5.i.i37.i.i.i.i.i.i = load ptr, ptr %i.anb, align 8, !noalias !33054, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33055)
  call void @llvm.experimental.noalias.scope.decl(metadata !33056)
  call void @llvm.experimental.noalias.scope.decl(metadata !33057)
  call void @llvm.experimental.noalias.scope.decl(metadata !33058)
  %i.ano = getelementptr inbounds nuw i8, ptr %.val.i5.i.i37.i.i.i.i.i.i, i64 16 ; 3 uses
end_hunk_4
begin_hunk_5_@"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h72b9cc5dd6638de6E":bb.a
  %i.si = load ptr, ptr %i.sh, align 8, !noalias !34545, !nonnull !175, !noundef !175
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 280
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !34545, !nonnull !175, !noundef !175
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 280
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !34545, !nonnull !175, !noundef !175
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 280
  %i.so = load ptr, ptr %i.sn, align 8, !noalias !34545, !nonnull !175, !noundef !175
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 280
  %i.sq = load ptr, ptr %i.sp, align 8, !noalias !34545, !nonnull !175, !noundef !175 ; 2 uses
  %i.sr = add i64 %.sroa.018.020.i.i.i110.i.i.i.i, -8 ; 2 uses
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %.loopexit.i.i93.i.i.i.i, label %.lr.ph.i.i.i108.i.i.i.i

.loopexit.i.i93.i.i.i.i:                          ; preds = %.lr.ph.i.i.i108.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i108.i.i.i.i, %bb.gi
  %.sroa.0.0.ph.i.i95.i.i.i.i = phi ptr [ %.sroa.8.i.sroa.6.0.copyload.i.i.i.i, %bb.gi ], [ %.lcssa3147.unr, %.lr.ph.i.i.i108.i.i.i.i.prol.loopexit ], [ %i.sq, %.lr.ph.i.i.i108.i.i.i.i ] ; 3 uses
  %i.st = load ptr, ptr %.sroa.0.0.ph.i.i95.i.i.i.i, align 8, !noalias !34546, !noundef !175 ; 2 uses
  %.not.i.i4.i.i.i96.i.i.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i4.i.i.i96.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.i.i.i.i", label %.lr.ph.i3.i.i97.i.i.i.i

.lr.ph.i3.i.i97.i.i.i.i:                          ; preds = %.loopexit.i.i93.i.i.i.i, %.lr.ph.i3.i.i97.i.i.i.i
  %i.su = phi ptr [ %i.sw, %.lr.ph.i3.i.i97.i.i.i.i ], [ %i.st, %.loopexit.i.i93.i.i.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i98.i.i.i.i = phi ptr [ %i.su, %.lr.ph.i3.i.i97.i.i.i.i ], [ %.sroa.0.0.ph.i.i95.i.i.i.i, %.loopexit.i.i93.i.i.i.i ]
  %.sroa.5.05.i.i.i99.i.i.i.i = phi i64 [ %i.sv, %.lr.ph.i3.i.i97.i.i.i.i ], [ 0, %.loopexit.i.i93.i.i.i.i ] ; 2 uses
  %i.sv = add i64 %.sroa.5.05.i.i.i99.i.i.i.i, 1  ; 2 uses
  %.not.i.i.i.i100.i.i.i.i = icmp eq i64 %.sroa.5.05.i.i.i99.i.i.i.i, 0
  %..i.i.i.i101.i.i.i.i = select i1 %.not.i.i.i.i100.i.i.i.i, i64 280, i64 376
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i98.i.i.i.i, i64 noundef %..i.i.i.i101.i.i.i.i, i64 noundef 8) #77, !noalias !34547
  %i.sw = load ptr, ptr %i.su, align 8, !noalias !34546, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i102.i.i.i.i = icmp eq ptr %i.sw, null
  br i1 %.not.i.i.i.i.i102.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.loopexit.i.i.i.i", label %.lr.ph.i3.i.i97.i.i.i.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.loopexit.i.i.i.i": ; preds = %.lr.ph.i3.i.i97.i.i.i.i
  %i.sx = icmp eq i64 %i.sv, 0
  %i.sy = select i1 %i.sx, i64 280, i64 376
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.i.i.i.i"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.loopexit.i.i.i.i", %.loopexit.i.i93.i.i.i.i
  %.sroa.5.0.lcssa.i.i.i104.i.i.i.i = phi i64 [ 280, %.loopexit.i.i93.i.i.i.i ], [ %i.sy, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.loopexit.i.i.i.i" ]
  %.sroa.0.0.lcssa.i.i.i105.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i95.i.i.i.i, %.loopexit.i.i93.i.i.i.i ], [ %i.su, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.loopexit.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i105.i.i.i.i, i64 noundef %.sroa.5.0.lcssa.i.i.i104.i.i.i.i, i64 noundef 8) #77, !noalias !34547
  br label %.noexc.i.i.i.i.backedge

bb.gj:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i.i.i.i.i.i"
  br i1 %i.rw, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i", label %.lr.ph.i.i2.i80.i.i.i.i.preheader

.lr.ph.i.i2.i80.i.i.i.i.preheader:                ; preds = %bb.gj
  %xtraiter = and i64 %.sroa.8.i.sroa.7.0.copyload.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit, label %.lr.ph.i.i2.i80.i.i.i.i.prol

.lr.ph.i.i2.i80.i.i.i.i.prol:                     ; preds = %.lr.ph.i.i2.i80.i.i.i.i.preheader, %.lr.ph.i.i2.i80.i.i.i.i.prol
  %.sroa.012.015.i.i.i81.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i83.i.i.i.i.prol, %.lr.ph.i.i2.i80.i.i.i.i.prol ], [ %.sroa.8.i.sroa.6.0.copyload.i.i.i.i, %.lr.ph.i.i2.i80.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i82.i.i.i.i.prol = phi i64 [ %i.ta, %.lr.ph.i.i2.i80.i.i.i.i.prol ], [ %.sroa.8.i.sroa.7.0.copyload.i.i.i.i, %.lr.ph.i.i2.i80.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.i80.i.i.i.i.prol ], [ 0, %.lr.ph.i.i2.i80.i.i.i.i.preheader ]
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i81.i.i.i.i.prol, i64 280
  %i.ta = add i64 %.sroa.011.014.i.i.i82.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i83.i.i.i.i.prol = load ptr, ptr %i.sz, align 8, !noalias !34548, !nonnull !175, !noundef !175 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit, label %.lr.ph.i.i2.i80.i.i.i.i.prol, !llvm.loop !33442

.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit:            ; preds = %.lr.ph.i.i2.i80.i.i.i.i.prol, %.lr.ph.i.i2.i80.i.i.i.i.preheader
  %.sroa.012.0.i.i.i83.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i80.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i83.i.i.i.i.prol, %.lr.ph.i.i2.i80.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i81.i.i.i.i.unr = phi ptr [ %.sroa.8.i.sroa.6.0.copyload.i.i.i.i, %.lr.ph.i.i2.i80.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i83.i.i.i.i.prol, %.lr.ph.i.i2.i80.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i82.i.i.i.i.unr = phi i64 [ %.sroa.8.i.sroa.7.0.copyload.i.i.i.i, %.lr.ph.i.i2.i80.i.i.i.i.preheader ], [ %i.ta, %.lr.ph.i.i2.i80.i.i.i.i.prol ]
  %i.tb = icmp ult i64 %.sroa.8.i.sroa.7.0.copyload.i.i.i.i, 8
  br i1 %i.tb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i", label %.lr.ph.i.i2.i80.i.i.i.i

.lr.ph.i.i2.i80.i.i.i.i:                          ; preds = %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit, %.lr.ph.i.i2.i80.i.i.i.i
  %.sroa.012.015.i.i.i81.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i83.i.i.i.i.7, %.lr.ph.i.i2.i80.i.i.i.i ], [ %.sroa.012.015.i.i.i81.i.i.i.i.unr, %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i82.i.i.i.i = phi i64 [ %i.tk, %.lr.ph.i.i2.i80.i.i.i.i ], [ %.sroa.011.014.i.i.i82.i.i.i.i.unr, %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i81.i.i.i.i, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i = load ptr, ptr %i.tc, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i.1 = load ptr, ptr %i.td, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i.1, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i.2 = load ptr, ptr %i.te, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i.2, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i.3 = load ptr, ptr %i.tf, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i.3, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i.4 = load ptr, ptr %i.tg, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i.4, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i.5 = load ptr, ptr %i.th, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i.5, i64 280
  %.sroa.012.0.i.i.i83.i.i.i.i.6 = load ptr, ptr %i.ti, align 8, !noalias !34548, !nonnull !175, !noundef !175
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i83.i.i.i.i.6, i64 280
  %i.tk = add i64 %.sroa.011.014.i.i.i82.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i83.i.i.i.i.7 = load ptr, ptr %i.tj, align 8, !noalias !34548, !nonnull !175, !noundef !175 ; 2 uses
  %i.tl = icmp eq i64 %i.tk, 0
  br i1 %i.tl, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i", label %.lr.ph.i.i2.i80.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i": ; preds = %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit, %.lr.ph.i.i2.i80.i.i.i.i, %bb.gj
  %.sroa.05.0.copyload.i.i.i54.i.i.i.i = phi ptr [ %.sroa.8.i.sroa.6.0.copyload.i.i.i.i, %bb.gj ], [ %.sroa.012.0.i.i.i83.i.i.i.i.lcssa.unr, %.lr.ph.i.i2.i80.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i83.i.i.i.i.7, %.lr.ph.i.i2.i80.i.i.i.i ] ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i54.i.i.i.i, i64 274
  %i.tn = load i16, ptr %i.tm, align 2, !noalias !34549, !noundef !175
  %.not.i.i.i.i = icmp eq i16 %i.tn, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i.i55.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader:         ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i.i62.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i"
  %.sroa.12176.0.i.i.i.i.ph = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i" ], [ %i.tp, %._crit_edge.i.i.i.i.i62.i.i.i.i ], [ %i.tp, %.new ], [ %i.tp, %.prol.loopexit ]
  %.sroa.25.1.i.i.i.i.ph = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i" ], [ %i.tr, %._crit_edge.i.i.i.i.i62.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.9.1.i.i.i.i.ph = phi ptr [ %.sroa.05.0.copyload.i.i.i54.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i" ], [ %i.to, %._crit_edge.i.i.i.i.i62.i.i.i.i ], [ %.pn30.i.i.i.i.i.i69.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i69.i.i.i.i.7, %.new ]
  %.ph = phi ptr [ %.sroa.05.0.copyload.i.i.i54.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i" ], [ %i.to, %._crit_edge.i.i.i.i.i62.i.i.i.i ], [ %i.to, %.new ], [ %i.to, %.prol.loopexit ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer

.lr.ph.i.i.i.i.i55.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i", %bb.gl
  %.sroa.0.060.i.i.i.i.i56.i.i.i.i = phi ptr [ %i.to, %bb.gl ], [ %.sroa.05.0.copyload.i.i.i54.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i57.i.i.i.i = phi i64 [ %i.ug, %bb.gl ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i51.i.i.i.i" ] ; 4 uses
  %i.to = load ptr, ptr %.sroa.0.060.i.i.i.i.i56.i.i.i.i, align 8, !noalias !34550, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i.i58.i.i.i.i = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i.i.i.i.i58.i.i.i.i, label %bb.gm, label %bb.gl

._crit_edge.i.i.i.i.i62.i.i.i.i:                  ; preds = %bb.gl
  %i.tp = zext i16 %i.ui to i64                   ; 4 uses
  %i.tq = icmp eq i64 %i.ug, 0
  %i.tr = add nuw nsw i64 %i.tp, 1                ; 2 uses
  br i1 %i.tq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader, label %bb.gk

bb.gk:                                            ; preds = %._crit_edge.i.i.i.i.i62.i.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 280
  %i.tt = icmp ult i16 %i.ui, 11
  call void @llvm.assume(i1 %i.tt), !noalias !34551
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tr ; 2 uses
  %xtraiter3795 = and i64 %i.ug, 7                ; 2 uses
  %lcmp.mod3796.not = icmp eq i64 %xtraiter3795, 0
  br i1 %lcmp.mod3796.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.gk, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i66.i.i.i.i.prol = phi ptr [ %i.tv, %.prol.preheader ], [ %i.tu, %bb.gk ]
  %.pn28.in.i.i.i.i.i.i67.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i68.i.i.i.i.prol, %.prol.preheader ], [ %i.ug, %bb.gk ]
  %prol.iter3797 = phi i64 [ %prol.iter3797.next, %.prol.preheader ], [ 0, %bb.gk ]
  %.pn28.i.i.i.i.i.i68.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i67.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i69.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i66.i.i.i.i.prol, align 8, !noalias !34552, !nonnull !175, !noundef !175 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter3797.next = add i64 %prol.iter3797, 1 ; 2 uses
  %prol.iter3797.cmp.not = icmp eq i64 %prol.iter3797.next, %xtraiter3795
  br i1 %prol.iter3797.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33459

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.gk
  %.pn30.i.i.i.i.i.i69.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.gk ], [ %.pn30.i.i.i.i.i.i69.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i66.i.i.i.i.unr = phi ptr [ %i.tu, %bb.gk ], [ %i.tv, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i67.i.i.i.i.unr = phi i64 [ %i.ug, %bb.gk ], [ %.pn28.i.i.i.i.i.i68.i.i.i.i.prol, %.prol.preheader ]
  %i.tw = icmp ult i64 %.sroa.5.059.i.i.i.i.i57.i.i.i.i, 7
  br i1 %i.tw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i66.i.i.i.i = phi ptr [ %i.uf, %.new ], [ %.pn30.in.i.i.i.i.i.i66.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i67.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i68.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i67.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i69.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i66.i.i.i.i, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.tx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i69.i.i.i.i.1 = load ptr, ptr %i.tx, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.ty = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i69.i.i.i.i.2 = load ptr, ptr %i.ty, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.tz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i69.i.i.i.i.3 = load ptr, ptr %i.tz, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.ua = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i69.i.i.i.i.4 = load ptr, ptr %i.ua, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.ub = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i69.i.i.i.i.5 = load ptr, ptr %i.ub, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.uc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i69.i.i.i.i.6 = load ptr, ptr %i.uc, align 8, !noalias !34552, !nonnull !175, !noundef !175
  %i.ud = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i68.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i67.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i69.i.i.i.i.7 = load ptr, ptr %i.ud, align 8, !noalias !34552, !nonnull !175, !noundef !175 ; 2 uses
  %i.ue = icmp eq i64 %.pn28.i.i.i.i.i.i68.i.i.i.i.7, 0
  %i.uf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i69.i.i.i.i.7, i64 280
  br i1 %i.ue, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader, label %.new

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i.i55.i.i.i.i
  %i.ug = add i64 %.sroa.5.059.i.i.i.i.i57.i.i.i.i, 1 ; 5 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i56.i.i.i.i, i64 272
  %i.ui = load i16, ptr %i.uh, align 8, !noalias !34550 ; 3 uses
  %.not.i.i.i.i.i.i59.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i57.i.i.i.i, 0
  %..i.i.i.i.i.i60.i.i.i.i = select i1 %.not.i.i.i.i.i.i59.i.i.i.i, i64 280, i64 376
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i56.i.i.i.i, i64 noundef %..i.i.i.i.i.i60.i.i.i.i, i64 noundef 8) #77, !noalias !34553
  %i.uj = getelementptr inbounds nuw i8, ptr %i.to, i64 274
  %i.uk = load i16, ptr %i.uj, align 2, !noalias !34549, !noundef !175
  %i.ul = icmp ult i16 %i.ui, %i.uk
  br i1 %i.ul, label %._crit_edge.i.i.i.i.i62.i.i.i.i, label %.lr.ph.i.i.i.i.i55.i.i.i.i

bb.gm:                                            ; preds = %.lr.ph.i.i.i.i.i55.i.i.i.i
  %.not.i54.i.i.i.i.i76.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i57.i.i.i.i, 0
  %..i55.i.i.i.i.i77.i.i.i.i = select i1 %.not.i54.i.i.i.i.i76.i.i.i.i, i64 280, i64 376
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i56.i.i.i.i, i64 noundef %..i55.i.i.i.i.i77.i.i.i.i, i64 noundef 8) #77, !noalias !34553
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2536) #78
          to label %.noexc.i.i.i78.i.i.i.i unwind label %bb.gn, !noalias !34554

.noexc.i.i.i78.i.i.i.i:                           ; preds = %bb.gm
  unreachable

bb.gn:                                            ; preds = %bb.gm
  %i.um = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !34551
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader
  %.sroa.12176.0.i.i.i.i.ph3127 = phi i64 [ %.sroa.12176.0.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader ], [ %i.vm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge ]
  %.sroa.38.0.in.i.i.i.i.ph = phi i64 [ %.sroa.8.i.sroa.8.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader ], [ %.sroa.38.0.i.i.i.i.lcssa3137, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge ]
  %.sroa.25.1.i.i.i.i.ph3128 = phi i64 [ %.sroa.25.1.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader ], [ %.sroa.25.1.i.i.i.i.ph3128.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge ] ; 2 uses
  %.sroa.9.1.i.i.i.i.ph3129 = phi ptr [ %.sroa.9.1.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader ], [ %.sroa.9.1.i.i.i.i.ph3129.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge ] ; 9 uses
  %.ph3130 = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.preheader ], [ %i.vl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge ]
  %.sroa.38.0.i.i.i.i.peel = add i64 %.sroa.38.0.in.i.i.i.i.ph, -1 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.ph3130, i64 8
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.un, i64 %.sroa.12176.0.i.i.i.i.ph3127 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34555), !noalias !34556
  call void @llvm.experimental.noalias.scope.decl(metadata !34557), !noalias !34556
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.uo, align 8, !range !174, !alias.scope !34558, !noalias !34559, !noundef !175 ; 2 uses
  %i.up = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 0
  br i1 %i.up, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i.peel", label %bb.go

bb.go:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.uq, align 8, !alias.scope !34558, !noalias !34559, !nonnull !175, !noundef !175
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34560
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.go, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer
  %i.ur = icmp eq i64 %.sroa.38.0.i.i.i.i.peel, 0
  br i1 %i.ur, label %.loopexit.i.i.i.i.i.i83, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i.peel": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i.peel"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.i.i.i.ph3129) ]
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.ph3129, i64 274
  %i.ut = load i16, ptr %i.us, align 2, !noalias !34561, !noundef !175
  %i.uu = zext i16 %i.ut to i64
  %i.uv = icmp ult i64 %.sroa.25.1.i.i.i.i.ph3128, %i.uu
  br i1 %i.uv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.peel.newph:  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i.peel"
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.ph3129, i64 8
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.ph3129, i64 274
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81

.lr.ph.i.i.i.i.i.i.i.i.i.i.i81:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.peel.newph
  %.sroa.12176.0.i.i.i.i = phi i64 [ %.sroa.25.1.i.i.i.i.ph3128, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.peel.newph ], [ %.sroa.25.1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.38.0.in.i.i.i.i = phi i64 [ %.sroa.38.0.i.i.i.i.peel, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.peel.newph ], [ %.sroa.38.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i" ]
  %.sroa.25.1.i.i.i.i = add nuw nsw i64 %.sroa.12176.0.i.i.i.i, 1 ; 2 uses
  %.sroa.38.0.i.i.i.i = add i64 %.sroa.38.0.in.i.i.i.i, -1 ; 3 uses
  %i.uy = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %.sroa.12176.0.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34562), !noalias !34556
  call void @llvm.experimental.noalias.scope.decl(metadata !34563), !noalias !34556
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uy, align 8, !range !174, !alias.scope !34564, !noalias !34559, !noundef !175 ; 2 uses
  %i.uz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.uz, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.gp

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.va, align 8, !alias.scope !34564, !noalias !34559, !nonnull !175, !noundef !175
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34565
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81
  %i.vb = icmp eq i64 %.sroa.38.0.i.i.i.i, 0
  br i1 %i.vb, label %.loopexit.i.i.i.i.i.i83, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i83:                          ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.vc = load ptr, ptr %.sroa.9.1.i.i.i.i.ph3129, align 8, !noalias !34566, !noundef !175 ; 2 uses
  %.not.i.i4.i.i.i.i.i.i.i = icmp eq ptr %i.vc, null
  br i1 %.not.i.i4.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

.lr.ph.i3.i.i.i.i.i.i:                            ; preds = %.loopexit.i.i.i.i.i.i83, %.lr.ph.i3.i.i.i.i.i.i
  %i.vd = phi ptr [ %i.vf, %.lr.ph.i3.i.i.i.i.i.i ], [ %i.vc, %.loopexit.i.i.i.i.i.i83 ] ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.vd, %.lr.ph.i3.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.ph3129, %.loopexit.i.i.i.i.i.i83 ]
  %.sroa.5.05.i.i.i.i.i.i.i = phi i64 [ %i.ve, %.lr.ph.i3.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i83 ] ; 2 uses
  %i.ve = add i64 %.sroa.5.05.i.i.i.i.i.i.i, 1    ; 2 uses
  %.not.i.i.i.i.i.i3.i.i = icmp eq i64 %.sroa.5.05.i.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i3.i.i, i64 280, i64 376
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i.i, i64 noundef 8) #77, !noalias !34567
  %i.vf = load ptr, ptr %i.vd, align 8, !noalias !34566, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i43.i.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i.i43.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.loopexit.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.loopexit.i.i.i.i": ; preds = %.lr.ph.i3.i.i.i.i.i.i
  %i.vg = icmp eq i64 %i.ve, 0
  %i.vh = select i1 %i.vg, i64 280, i64 376
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.loopexit.i.i.i.i", %.loopexit.i.i.i.i.i.i83
  %.sroa.5.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 280, %.loopexit.i.i.i.i.i.i83 ], [ %i.vh, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.loopexit.i.i.i.i" ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.ph3129, %.loopexit.i.i.i.i.i.i83 ], [ %i.vd, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.loopexit.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i.i.i.i.i, i64 noundef %.sroa.5.0.lcssa.i.i.i.i.i.i.i, i64 noundef 8) #77, !noalias !34567
  br label %.noexc.i.i.i.i.backedge

.noexc.i.i.i.i.backedge:                          ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hb245dec0236868d8E.exit.i.i103.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i37.i.i.i.i"
  br label %.noexc.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.i.i.i.ph3129) ]
  %i.vi = load i16, ptr %i.ux, align 2, !noalias !34561, !noundef !175
  %i.vj = zext i16 %i.vi to i64
  %i.vk = icmp ult i64 %.sroa.25.1.i.i.i.i, %i.vj
  br i1 %i.vk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !33493

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i.peel"
  %.sroa.38.0.i.i.i.i.lcssa3137 = phi i64 [ %.sroa.38.0.i.i.i.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i.peel" ], [ %.sroa.38.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0f552350328e4a6bE.exit.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %bb.gr
  %.sroa.0.060.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vl, %bb.gr ], [ %.sroa.9.1.i.i.i.i.ph3129, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wd, %bb.gr ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.vl = load ptr, ptr %.sroa.0.060.i.i.i.i.i.i.i.i.i, align 8, !noalias !34568, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i40.i.i.i.i = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i.i.i.i.i40.i.i.i.i, label %bb.gs, label %bb.gr

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.gr
  %i.vm = zext i16 %i.wf to i64                   ; 2 uses
  %i.vn = icmp eq i64 %i.wd, 0
  %i.vo = add nuw nsw i64 %i.vm, 1                ; 2 uses
  br i1 %i.vn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge, label %bb.gq

.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge:    ; preds = %.prol.loopexit3802, %.new3803, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.25.1.i.i.i.i.ph3128.be = phi i64 [ %i.vo, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %.new3803 ], [ 0, %.prol.loopexit3802 ]
  %.sroa.9.1.i.i.i.i.ph3129.be = phi ptr [ %i.vl, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit3802 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new3803 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer

bb.gq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 280
  %i.vq = icmp ult i16 %i.wf, 11
  call void @llvm.assume(i1 %i.vq), !noalias !34551
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.vo ; 2 uses
  %xtraiter3806 = and i64 %i.wd, 7                ; 2 uses
  %lcmp.mod3807.not = icmp eq i64 %xtraiter3806, 0
  br i1 %lcmp.mod3807.not, label %.prol.loopexit3802, label %.prol.preheader3801

.prol.preheader3801:                              ; preds = %bb.gq, %.prol.preheader3801
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.vs, %.prol.preheader3801 ], [ %i.vr, %bb.gq ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader3801 ], [ %i.wd, %bb.gq ]
  %prol.iter3808 = phi i64 [ %prol.iter3808.next, %.prol.preheader3801 ], [ 0, %bb.gq ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !34569, !nonnull !175, !noundef !175 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter3808.next = add i64 %prol.iter3808, 1 ; 2 uses
  %prol.iter3808.cmp.not = icmp eq i64 %prol.iter3808.next, %xtraiter3806
  br i1 %prol.iter3808.cmp.not, label %.prol.loopexit3802, label %.prol.preheader3801, !llvm.loop !33501

.prol.loopexit3802:                               ; preds = %.prol.preheader3801, %bb.gq
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.gq ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader3801 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.vr, %bb.gq ], [ %i.vs, %.prol.preheader3801 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.wd, %bb.gq ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader3801 ]
  %i.vt = icmp ult i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.vt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge, label %.new3803

.new3803:                                         ; preds = %.prol.loopexit3802, %.new3803
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wc, %.new3803 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit3802 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new3803 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit3802 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.vu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.vu, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.vv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.vv, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.vw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.vw, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.vx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.vx, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.vy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.vy, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.vz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.vz, align 8, !noalias !34569, !nonnull !175, !noundef !175
  %i.wa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.wa, align 8, !noalias !34569, !nonnull !175, !noundef !175 ; 2 uses
  %i.wb = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.wc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 280
  br i1 %i.wb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i81.outer.backedge, label %.new3803

bb.gr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.wd = add i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 272
  %i.wf = load i16, ptr %i.we, align 8, !noalias !34568 ; 3 uses
  %.not.i.i.i.i.i.i41.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i41.i.i.i.i, i64 280, i64 376
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i.i.i.i, i64 noundef 8) #77, !noalias !34570
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vl, i64 274
  %i.wh = load i16, ptr %i.wg, align 2, !noalias !34561, !noundef !175
  %i.wi = icmp ult i16 %i.wf, %i.wh
  br i1 %i.wi, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.not.i54.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 0
  %..i55.i.i.i.i.i.i.i.i.i = select i1 %.not.i54.i.i.i.i.i.i.i.i.i, i64 280, i64 376
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 noundef %..i55.i.i.i.i.i.i.i.i.i, i64 noundef 8) #77, !noalias !34570
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2536) #78
          to label %.noexc.i.i.i.i.i.i.i82 unwind label %bb.gt, !noalias !34571

.noexc.i.i.i.i.i.i.i82:                           ; preds = %bb.gs
  unreachable

bb.gt:                                            ; preds = %bb.gs
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !34551
  unreachable

.critedge.i.i.i.i.sink.split:                     ; preds = %bb.ho, %bb.hh
  %.pn.i.i.i.i77.ph = phi { ptr, i32 } [ %i.zz, %bb.hh ], [ %i.adr, %bb.ho ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.i.sroa.0.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.i.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34528
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.sink.split, %bb.ho, %bb.hh
  %.pn.i.i.i.i77 = phi { ptr, i32 } [ %i.zz, %bb.hh ], [ %i.adr, %bb.ho ], [ %.pn.i.i.i.i77.ph, %.critedge.i.i.i.i.sink.split ]
  invoke fastcc void @"_ZN4core3ptr264drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$$GT$$GT$17he350898049791420E"(ptr noalias noundef align 8 dereferenceable(80) %i.ag) #79
          to label %bb.nh unwind label %bb.hn, !noalias !34528

.loopexit247.i.i.i.i:                             ; preds = %_ZN4core3cmp9PartialEq2ne17h0ce3c1776220f6b0E.exit.i.i.i.i.i, %bb.gf, %.thread.i.i.i.i.i
  store ptr %.sroa.8.i.sroa.6.0.copyload.i.i.i.i, ptr %i.ae, align 8, !noalias !34528
  store i64 %.sroa.8.i.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.8.sroa.7.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !34528
  store i64 %.sroa.8.i.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.8.sroa.7.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !34528
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0.0177.i.i.i.i, i64 538 ; 2 uses
  %i.wl = load i16, ptr %i.wk, align 2, !noalias !34528, !noundef !175 ; 3 uses
  %i.wm = icmp ult i16 %i.wl, 11
  br i1 %i.wm, label %bb.hl, label %.preheader.i.i.i.i

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h052843aac782cc51E.exit.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h046f291d2914d1e7E.exit.i.i.i.i.i", %bb.gc
  invoke fastcc void @"_ZN4core3ptr264drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$$GT$$GT$17he350898049791420E"(ptr noalias noundef align 8 dereferenceable(80) %i.ag)
          to label %.noexc86 unwind label %bb.ht, !noalias !34528

.noexc86:                                         ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h052843aac782cc51E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !34528
  %i.wn = icmp eq i64 %.sroa.8.0.i.i.i, 0
  br i1 %i.wn, label %.loopexit.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %.noexc86
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gw, %.lr.ph.i17.i.i.i.i
  %.sroa.02.010.i.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i, %.lr.ph.i17.i.i.i.i ], [ %i.ww, %bb.gw ]
  %.sroa.03.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i17.i.i.i.i ], [ %i.wz, %bb.gw ] ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i, i64 538
  %i.wq = load i16, ptr %i.wp, align 2, !noalias !34528, !noundef !175 ; 3 uses
  %.not.i18.i.i.i.i = icmp eq i16 %i.wq, 0
  br i1 %.not.i18.i.i.i.i, label %.noexc20.i.i.i.i.invoke, label %bb.gv, !prof !178

bb.gv:                                            ; preds = %bb.gu
  %i.wr = zext nneg i16 %i.wq to i64
  %i.ws = add nsw i64 %i.wr, -1                   ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i, i64 544
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %i.ws ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !noalias !34572, !nonnull !175, !noundef !175 ; 4 uses
  %i.ww = add i64 %.sroa.02.010.i.i.i.i.i, -1     ; 3 uses
  %i.wx = icmp ult i16 %i.wq, 12
  call void @llvm.assume(i1 %i.wx)
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !noalias !34573, !nonnull !175, !noundef !175 ; 16 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 538 ; 2 uses
  %i.xb = load i16, ptr %i.xa, align 2, !noalias !34528, !noundef !175 ; 3 uses
  %i.xc = icmp ult i16 %i.xb, 5
  br i1 %i.xc, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h45535d836f1606b7E.exit.i.i.i.i.i", %bb.gv
  %i.xd = icmp eq i64 %i.ww, 0
  br i1 %i.xd, label %.loopexit.i.i, label %bb.gu

bb.gx:                                            ; preds = %bb.gv
  %narrow.i.i.i.i.i = sub nuw nsw i16 5, %i.xb    ; 2 uses
  %i.xe = zext nneg i16 %narrow.i.i.i.i.i to i64  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wv, i64 538 ; 2 uses
  %i.xg = load i16, ptr %i.xf, align 2, !noalias !34574, !noundef !175 ; 2 uses
  %i.xh = zext nneg i16 %i.xb to i64              ; 2 uses
  %.not.i.i.i.i4.i.i = icmp ugt i16 %narrow.i.i.i.i.i, %i.xg
  br i1 %.not.i.i.i.i4.i.i, label %.noexc20.i.i.i.i.invoke, label %_ZN5alloc11collections5btree4node13move_to_slice17h9ea004d8a6321d77E.exit.i.i.i.i.i.i, !prof !178

.noexc20.i.i.i.i.invoke:                          ; preds = %bb.gx, %bb.gu
  %i.xi = phi ptr [ @2499, %bb.gu ], [ @2524, %bb.gx ]
  %i.xj = phi i64 [ 25, %bb.gu ], [ 39, %bb.gx ]
  %i.xk = phi ptr [ @2501, %bb.gu ], [ @2525, %bb.gx ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xi, i64 noundef %i.xj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xk) #78
          to label %.noexc20.i.i.i.i.cont unwind label %bb.ht, !noalias !34574

.noexc20.i.i.i.i.cont:                            ; preds = %.noexc20.i.i.i.i.invoke
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h9ea004d8a6321d77E.exit.i.i.i.i.i.i: ; preds = %bb.gx
  %i.xl = zext i16 %i.xg to i64                   ; 2 uses
  %i.xm = sub nuw nsw i64 %i.xl, %i.xe            ; 4 uses
  %i.xn = trunc nuw i64 %i.xm to i16
  store i16 %i.xn, ptr %i.xf, align 2, !noalias !34574
  store i16 5, ptr %i.xa, align 2, !noalias !34574
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 4 uses
  %i.xp = getelementptr inbounds nuw [24 x i8], ptr %i.xo, i64 %i.xe
  %i.xq = mul nuw nsw i64 %i.xh, 24               ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xp, ptr nonnull align 8 %i.xo, i64 %i.xq, i1 false), !alias.scope !34575, !noalias !34574
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wz, i64 272 ; 4 uses
  %i.xs = getelementptr inbounds nuw [24 x i8], ptr %i.xr, i64 %i.xe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xs, ptr nonnull align 8 %i.xr, i64 %i.xq, i1 false), !alias.scope !34576, !noalias !34574
end_hunk_5
begin_hunk_6_@_ZN15index_scheduler12index_mapper11IndexMapper18try_for_each_index17h74c90eda622eb993E:bb.a
  %prol.iter2394 = phi i64 [ %prol.iter2394.next, %.prol.preheader ], [ 0, %bb.ed ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !43061, !nonnull !175, !noundef !175 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 304 ; 2 uses
  %prol.iter2394.next = add i64 %prol.iter2394, 1 ; 2 uses
  %prol.iter2394.cmp.not = icmp eq i64 %prol.iter2394.next, %xtraiter2392
  br i1 %prol.iter2394.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !42773

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ed
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ed ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.nr, %bb.ed ], [ %i.ns, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ng, %bb.ed ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.nt = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.nt, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.oc, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.nu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.nu, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.nv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.nv, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.nw, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.nx, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ny, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.nz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.nz, align 8, !noalias !43061, !nonnull !175, !noundef !175
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 304
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.oa, align 8, !noalias !43061, !nonnull !175, !noundef !175 ; 2 uses
  %i.ob = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.oc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 304
  br i1 %i.ob, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ef, !noalias !43062

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ee
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !43060
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.prol.loopexit, %.new, %bb.ec, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nf, %bb.ec ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.nf, %.new ], [ %i.nf, %.prol.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nm, %bb.ec ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.nm, %.new ], [ %i.nm, %.prol.loopexit ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.no, %bb.ec ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nf, %bb.ec ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i, i64 276
  %i.of = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.of), !noalias !43060
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.oe, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.og, align 2, !noalias !43063, !noundef !175
  %i.oh = call i64 @llvm.uadd.sat.i64(i64 %i.mo, i64 1)
  %.sroa.0.0.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.oh, i64 4) ; 5 uses
  %i.oi = shl i64 %.sroa.0.0.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.oj = icmp slt i64 %.sroa.0.0.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ok = icmp ugt i64 %i.oi, 9223372036854775806
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.oj, %i.ok
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !43064
  %i.ol = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.oi, i64 noundef range(i64 1, 9) 2) #77, !noalias !43064 ; 5 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %bb.eg, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.eg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.oi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ev, !noalias !43065

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.eg
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i16 %.val.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ol, align 2, !noalias !43065
  store i64 %.sroa.0.0.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !43056
  store ptr %i.ol, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43056
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43056
  call void @llvm.experimental.noalias.scope.decl(metadata !43066), !noalias !43067
  call void @llvm.experimental.noalias.scope.decl(metadata !43068), !noalias !43067
  %i.on = icmp eq i64 %i.mo, 0
  br i1 %i.on, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 274
  %i.op = load i16, ptr %i.oo, align 2, !noalias !43069, !noundef !175
  %i.oq = zext i16 %i.op to i64
  %i.or = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.oq
  br i1 %i.or, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.os = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.prol.loopexit2396, %.new2397, %bb.ei, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i37.sink77.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ot, %bb.ei ], [ %i.ot, %.new2397 ], [ %i.ot, %.prol.loopexit2396 ]
  %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pa, %bb.ei ], [ %i.pa, %.new2397 ], [ %i.pa, %.prol.loopexit2396 ]
  %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ot, %bb.ei ], [ %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit2396 ], [ %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new2397 ]
  %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.os, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pc, %bb.ei ], [ 0, %.new2397 ], [ 0, %.prol.loopexit2396 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.eh
  %.sroa.0.038.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ot, %bb.eh ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ou, %bb.eh ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ot = load ptr, ptr %.sroa.0.038.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43070, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ou = add i64 %.sroa.5.037.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.ow = load i16, ptr %i.ov, align 8, !noalias !43070 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 274
  %i.oy = load i16, ptr %i.ox, align 2, !noalias !43069, !noundef !175
  %i.oz = icmp ult i16 %i.ow, %i.oy
  br i1 %i.oz, label %bb.ei, label %.lr.ph.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.pa = zext i16 %i.ow to i64                   ; 4 uses
  %i.pb = icmp eq i64 %i.ou, 0
  %i.pc = add nuw nsw i64 %i.pa, 1                ; 2 uses
  br i1 %i.pb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ot, i64 304
  %i.pe = icmp ult i16 %i.ow, 11
  call void @llvm.assume(i1 %i.pe), !noalias !43071
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pc ; 2 uses
  %xtraiter2399 = and i64 %i.ou, 7                ; 2 uses
  %lcmp.mod2400.not = icmp eq i64 %xtraiter2399, 0
  br i1 %lcmp.mod2400.not, label %.prol.loopexit2396, label %.prol.preheader2395

.prol.preheader2395:                              ; preds = %bb.ej, %.prol.preheader2395
  %.pn30.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.pg, %.prol.preheader2395 ], [ %i.pf, %bb.ej ]
  %.pn28.in.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2395 ], [ %i.ou, %bb.ej ]
  %prol.iter2401 = phi i64 [ %prol.iter2401.next, %.prol.preheader2395 ], [ 0, %bb.ej ]
  %.pn28.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !43072, !nonnull !175, !noundef !175 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 304 ; 2 uses
  %prol.iter2401.next = add i64 %prol.iter2401, 1 ; 2 uses
  %prol.iter2401.cmp.not = icmp eq i64 %prol.iter2401.next, %xtraiter2399
  br i1 %prol.iter2401.cmp.not, label %.prol.loopexit2396, label %.prol.preheader2395, !llvm.loop !42802

.prol.loopexit2396:                               ; preds = %.prol.preheader2395, %bb.ej
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ej ], [ %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2395 ]
  %.pn30.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.pf, %bb.ej ], [ %i.pg, %.prol.preheader2395 ]
  %.pn28.in.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ou, %bb.ej ], [ %.pn28.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2395 ]
  %i.ph = icmp ult i64 %.sroa.5.037.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new2397

.new2397:                                         ; preds = %.prol.loopexit2396, %.new2397
  %.pn30.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pq, %.new2397 ], [ %.pn30.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2396 ]
  %.pn28.in.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new2397 ], [ %.pn28.in.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2396 ]
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 304
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.pi, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.pj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 304
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.pj, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.pk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 304
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.pk, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.pl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 304
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.pl, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 304
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.pm, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 304
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.pn, align 8, !noalias !43072, !nonnull !175, !noundef !175
  %i.po = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 304
  %.pn28.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.po, align 8, !noalias !43072, !nonnull !175, !noundef !175 ; 2 uses
  %i.pp = icmp eq i64 %.pn28.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.pq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 304
  br i1 %i.pp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new2397

bb.ek:                                            ; preds = %.lr.ph.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.el, !noalias !43073

.noexc.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.ek
  unreachable

bb.el:                                            ; preds = %bb.ek
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !43071
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i37.sink77.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1913 = phi ptr [ %.sroa.0.0.ph.i.i.i37.sink77.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.qz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ]
  %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1914 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.rg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.ph = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa1941, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ]
  %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915 = phi ptr [ %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 6 uses
  %.sroa.256.1.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa1936, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ]
  %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1916 = phi i64 [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1916.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.ph1917 = phi i64 [ %.sroa.0.0.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa1939, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph1918 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa1937, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i37.sink77.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1913, i64 276
  %i.pt = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1914, 11
  call void @llvm.assume(i1 %i.pt), !noalias !43071
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.ps, i64 %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1914
  %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = add i64 %.sroa.256.1.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, -1 ; 4 uses
  %.val.i.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i16, ptr %i.pu, align 2, !noalias !43074, !noundef !175
  %i.pv = icmp samesign ult i64 %.ph1918, 4611686018427387904
  call void @llvm.assume(i1 %i.pv), !noalias !43067
  %i.pw = icmp eq i64 %.ph1918, %.ph1917
  br i1 %i.pw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", label %bb.em

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  %i.px = call i64 @llvm.uadd.sat.i64(i64 %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.ph1917, i64 noundef range(i64 1, 0) %i.px, i64 noundef 2, i64 noundef 2)
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp, !noalias !43075

.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel:    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.pre5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.a, align 8, !range !174, !alias.scope !43076, !noalias !43056
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43076, !noalias !43056
  br label %bb.em

bb.em:                                            ; preds = %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  %i.py = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ] ; 3 uses
  %i.pz = phi i64 [ %.ph1917, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ] ; 2 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %.ph1918
  store i16 %.val.i.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr %i.qa, align 2, !noalias !43077
  %i.qb = add nuw nsw i64 %.ph1918, 1             ; 3 uses
  store i64 %i.qb, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43076, !noalias !43056
  %i.qc = icmp eq i64 %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 0
  br i1 %i.qc, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915) ], !noalias !43067
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915, i64 274
  %i.qe = load i16, ptr %i.qd, align 2, !noalias !43078, !noundef !175
  %i.qf = zext i16 %i.qe to i64
  %i.qg = icmp ult i64 %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1916, %i.qf
  br i1 %i.qg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915, i64 276
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915, i64 274
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1916, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.qj = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.qr, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.256.1.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.qk = phi i64 [ %i.pz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.qs, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ql = phi i64 [ %i.qb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.qu, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qm = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.qm), !noalias !43071
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qh, i64 %.sroa.6.sroa.4.0.ph.i.i.i35.sink76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.256.1.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 4 uses
  %.val.i.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.qn, align 2, !noalias !43074, !noundef !175
  %i.qo = icmp samesign ult i64 %i.ql, 4611686018427387904
  call void @llvm.assume(i1 %i.qo), !noalias !43067
  %i.qp = icmp eq i64 %i.ql, %i.qk
  br i1 %i.qp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.en

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qq = call i64 @llvm.uadd.sat.i64(i64 %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.qk, i64 noundef range(i64 1, 0) %i.qq, i64 noundef 2, i64 noundef 2)
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp, !noalias !43075

.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !174, !alias.scope !43076, !noalias !43056
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43076, !noalias !43056
  br label %bb.en

bb.en:                                            ; preds = %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qr = phi ptr [ %i.qj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qs = phi i64 [ %i.qk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.qr, i64 %i.ql
  store i16 %.val.i.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.qt, align 2, !noalias !43077
  %i.qu = add nuw nsw i64 %i.ql, 1                ; 3 uses
  store i64 %i.qu, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43076, !noalias !43056
  %i.qv = icmp eq i64 %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.qv, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915) ], !noalias !43067
  %i.qw = load i16, ptr %i.qi, align 2, !noalias !43078, !noundef !175
  %i.qx = zext i16 %i.qw to i64
  %i.qy = icmp samesign ult i64 %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.qx
  br i1 %i.qy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !42818

.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa1941 = phi ptr [ %i.py, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.qr, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa1939 = phi i64 [ %i.pz, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.qs, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa1937 = phi i64 [ %i.qb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.qu, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa1936 = phi i64 [ %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %.sroa.256.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8548ff98cc88e788E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.eo
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qz, %bb.eo ], [ %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915, %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ra, %bb.eo ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.qz = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43079, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ra = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.rc = load i16, ptr %i.rb, align 8, !noalias !43079 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 274
  %i.re = load i16, ptr %i.rd, align 2, !noalias !43078, !noundef !175
  %i.rf = icmp ult i16 %i.rc, %i.re
  br i1 %i.rf, label %bb.ep, label %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.rg = zext i16 %i.rc to i64                   ; 2 uses
  %i.rh = icmp eq i64 %i.ra, 0
  %i.ri = add nuw nsw i64 %i.rg, 1                ; 2 uses
  br i1 %i.rh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.eq

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit2408, %.new2409, %bb.ep
  %.sroa.53.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1915.be = phi ptr [ %i.qz, %bb.ep ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit2408 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new2409 ]
  %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph1916.be = phi i64 [ %i.ri, %bb.ep ], [ 0, %.new2409 ], [ 0, %.prol.loopexit2408 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

bb.eq:                                            ; preds = %bb.ep
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 304
  %i.rk = icmp ult i16 %i.rc, 11
  call void @llvm.assume(i1 %i.rk), !noalias !43071
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.ri ; 2 uses
  %xtraiter2411 = and i64 %i.ra, 7                ; 2 uses
  %lcmp.mod2412.not = icmp eq i64 %xtraiter2411, 0
  br i1 %lcmp.mod2412.not, label %.prol.loopexit2408, label %.prol.preheader2407

.prol.preheader2407:                              ; preds = %bb.eq, %.prol.preheader2407
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.rm, %.prol.preheader2407 ], [ %i.rl, %bb.eq ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2407 ], [ %i.ra, %bb.eq ]
  %prol.iter2413 = phi i64 [ %prol.iter2413.next, %.prol.preheader2407 ], [ 0, %bb.eq ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !43080, !nonnull !175, !noundef !175 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 304 ; 2 uses
  %prol.iter2413.next = add i64 %prol.iter2413, 1 ; 2 uses
  %prol.iter2413.cmp.not = icmp eq i64 %prol.iter2413.next, %xtraiter2411
  br i1 %prol.iter2413.cmp.not, label %.prol.loopexit2408, label %.prol.preheader2407, !llvm.loop !42824

.prol.loopexit2408:                               ; preds = %.prol.preheader2407, %bb.eq
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.eq ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2407 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.rl, %bb.eq ], [ %i.rm, %.prol.preheader2407 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ra, %bb.eq ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader2407 ]
  %i.rn = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.rn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new2409

.new2409:                                         ; preds = %.prol.loopexit2408, %.new2409
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rw, %.new2409 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2408 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new2409 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2408 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.ro = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ro, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.rp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.rp, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.rq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.rq, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.rr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.rr, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.rs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.rs, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.rt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.rt, align 8, !noalias !43080, !nonnull !175, !noundef !175
  %i.ru = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 304
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ru, align 8, !noalias !43080, !nonnull !175, !noundef !175 ; 2 uses
  %i.rv = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.rw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 304
  br i1 %i.rv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new2409

bb.er:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.es, !noalias !43081

.noexc.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.er
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !43071
  unreachable

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b1b91a25b0b0e58E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %lpad.loopexit.split-lp2404 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !43056 ; 2 uses
  %i.ry = icmp eq i64 %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ry, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.loopexit.split-lp.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp
  %.val7.i.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43056
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !43065
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.em, %bb.en
  %.sroa.03.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !43082
  %.sroa.8.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43082
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.et:                                            ; preds = %bb.jj, %bb.dy
  %.sroa.47.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.dy ], [ %.sroa.47.sroa.0.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %.sroa.22.sroa.20.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.22.sroa.20.0.extract.trunc83.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dy ], [ %.sroa.22.sroa.20.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %.sroa.22.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.22.sroa.0.0.extract.trunc62.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dy ], [ %.sroa.22.sroa.0.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %.sroa.43.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.050.i.i.i.i.sroa.8.0.copyload141.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dy ], [ %.sroa.43.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %.sroa.40.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.050.i.i.i.i.sroa.7.0.copyload137.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dy ], [ %.sroa.40.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 127, %bb.dy ], [ %.sroa.01.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$std..fs..File$GT$$GT$17hf6b737d716580e0dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bz)
          to label %"_ZN4core3ptr46drop_in_place$LT$dump..writer..IndexWriter$GT$17hf68070f5c1ecb024E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.eu, !noalias !42998

bb.eu:                                            ; preds = %bb.et
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.746.i.i.i.i.sroa.8.0..sroa.449.0..sroa_idx.i.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !279, !alias.scope !43083, !noalias !42993, !noundef !175
  %i.sa = call noundef i32 @close(i32 noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #77, !noalias !42998 ; 0 uses
  br label %.body533.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr46drop_in_place$LT$dump..writer..IndexWriter$GT$17hf68070f5c1ecb024E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.et
  %.val.i532.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.746.i.i.i.i.sroa.8.0..sroa.449.0..sroa_idx.i.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !279, !alias.scope !43083, !noalias !42993, !noundef !175
  %i.sb = call noundef i32 @close(i32 noundef %.val.i532.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #77, !noalias !42998 ; 0 uses
  br label %bb.jk

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ew, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ev, %.loopexit.split-lp.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp
  %.sroa.0194.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0194.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ew ], [ %.sroa.0194.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp ], [ 1, %.loopexit.split-lp.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ev ]
  %.pn477.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn475.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ew ], [ %.pn475.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %lpad.loopexit.split-lp2404, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp2404, %.loopexit.split-lp.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sc, %bb.ev ]
  invoke void @"_ZN4core3ptr56drop_in_place$LT$milli..fields_ids_map..FieldsIdsMap$GT$17hf2cb2acbe9a1065fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bx) #79
          to label %bb.dv unwind label %bb.gi, !noalias !42998

bb.ev:                                            ; preds = %bb.eg
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.dz
  %.sroa.13.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dz ], [ %i.ml, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.dz ], [ %.sroa.8.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ol, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.03.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dz ], [ %.sroa.03.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43056
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.872.i.i.i.i.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @_ZN5milli5index5Index19number_of_documents17h70c9e105518eb957E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd)
          to label %bb.ex unwind label %.loopexit28.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !42998

"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ff, %bb.fe, %.loopexit.split-lp29.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit28.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0194.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0194.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fe ], [ %.sroa.0194.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ff ], [ %.sroa.0194.5.i.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit28.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.loopexit.split-lp29.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn475.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn473.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fe ], [ %.pn473.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ff ], [ %lpad.loopexit30.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit28.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp31.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp29.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sd = icmp eq i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sd, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ew

bb.ew:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.se = shl nuw i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !42998
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit28.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.gk, %bb.ge, %bb.ey, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0194.5.i.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.ey ], [ 0, %bb.ge ], [ %.sroa.0194.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gk ]
  %lpad.loopexit30.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit.split-lp29.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.fc
  %lpad.loopexit.split-lp31.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU32$GT$$GT$17h3df98b419b268f45E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ex:                                            ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9b03eb564258e41aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.sf = load i64, ptr %i.aq, align 8, !range !229, !noalias !42993, !noundef !175
  %.not434.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sf, 97
  br i1 %.not434.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread681.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !42993
  invoke fastcc void @_ZN4core3ops8function6FnOnce9call_once17h47af6d844a85d359E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf, ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.aq)
          to label %bb.ez unwind label %.loopexit28.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !42998

.thread681.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.ex
  %i.sg = load i64, ptr %i.eb, align 8, !noalias !42993, !noundef !175
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %.sroa.067.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !42993 ; 2 uses
end_hunk_6
begin_hunk_7_@"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h87f48b9444e579c0E":bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.lr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82370
  %.pre.i.i.i.i.i.i.i9.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !82371, !noalias !82369
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i: ; preds = %bb.be, %.lr.ph.split.i.i.i.i.i.i.i46
  %i.lu = phi i64 [ %i.lr, %.lr.ph.split.i.i.i.i.i.i.i46 ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.peel.i.i.i.i.i.i.i, %bb.be ] ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  tail call void @llvm.assume(i1 %i.lv)
  %i.lw = load ptr, ptr %i.jo, align 8, !alias.scope !82371, !noalias !82369, !nonnull !175, !noundef !175
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 58, ptr %i.lx, align 1, !noalias !82372
  %i.ly = add nuw i64 %i.lu, 1                    ; 4 uses
  store i64 %i.ly, ptr %i.ji, align 8, !alias.scope !82371, !noalias !82369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82376)
  %i.lz = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82377, !noalias !82378, !noundef !175
  %i.ma = icmp eq i64 %i.lz, %i.ly
  br i1 %i.ma, label %bb.bf, label %bb.bg, !prof !178

bb.bf:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.ly, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82379
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !82380, !noalias !82378
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i
  %i.mb = phi i64 [ %i.ly, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.bf ] ; 3 uses
  %i.mc = icmp sgt i64 %i.mb, -1
  tail call void @llvm.assume(i1 %i.mc)
  %i.md = load ptr, ptr %i.jo, align 8, !alias.scope !82380, !noalias !82378, !nonnull !175, !noundef !175
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mb
  store i8 123, ptr %i.me, align 1, !noalias !82381
  %i.mf = add nuw i64 %i.mb, 1
  store i64 %i.mf, ptr %i.ji, align 8, !alias.scope !82380, !noalias !82378
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @809, i64 noundef 7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82385)
  %i.mg = load i64, ptr %i.ji, align 8, !alias.scope !82386, !noalias !82387, !noundef !175 ; 3 uses
  %i.mh = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82386, !noalias !82387, !noundef !175
  %i.mi = icmp eq i64 %i.mh, %i.mg
  br i1 %i.mi, label %bb.bh, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i", !prof !178

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.mg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82388
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !82389, !noalias !82387
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i": ; preds = %bb.bh, %bb.bg
  %i.mj = phi i64 [ %i.mg, %bb.bg ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.bh ] ; 3 uses
  %i.mk = icmp sgt i64 %i.mj, -1
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = load ptr, ptr %i.jo, align 8, !alias.scope !82389, !noalias !82387, !nonnull !175, !noundef !175
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mj
  store i8 58, ptr %i.mm, align 1, !noalias !82390
  %i.mn = add nuw i64 %i.mj, 1
  store i64 %i.mn, ptr %i.ji, align 8, !alias.scope !82389, !noalias !82387
  %i.mo = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h28827bdaf121734eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo, ptr nonnull %.val9.i6.i.i), !noalias !82391 ; 2 uses
  %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, label %bb.bi, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h64ceeffd7c1cd732E.exit"

bb.bi:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82395)
  %i.mp = load i64, ptr %i.ji, align 8, !alias.scope !82396, !noalias !82397, !noundef !175 ; 3 uses
  %i.mq = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82396, !noalias !82397, !noundef !175
  %i.mr = icmp eq i64 %i.mq, %i.mp
  br i1 %i.mr, label %bb.bj, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.peel.i.i.i.i.i.i.i", !prof !178

bb.bj:                                            ; preds = %bb.bi
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.mp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82398
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !82399, !noalias !82397
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.peel.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.peel.i.i.i.i.i.i.i": ; preds = %bb.bj, %bb.bi
  %i.ms = phi i64 [ %i.mp, %bb.bi ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.bj ] ; 3 uses
  %i.mt = icmp sgt i64 %i.ms, -1
  tail call void @llvm.assume(i1 %i.mt)
  %i.mu = load ptr, ptr %i.jo, align 8, !alias.scope !82399, !noalias !82397, !nonnull !175, !noundef !175
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.ms
  store i8 125, ptr %i.mv, align 1, !noalias !82400
  %i.mw = add nuw i64 %i.ms, 1                    ; 3 uses
  store i64 %i.mw, ptr %i.ji, align 8, !alias.scope !82399, !noalias !82397
  %i.mx = icmp eq i64 %.sink.i.i.i.i.i.i42, 1
  br i1 %i.mx, label %.thread169.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i22.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i22.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.peel.i.i.i.i.i.i.i"
  %i.my = add i64 %.sink.i.i.i.i.i.i42, -2
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i, i64 538
  %i.na = load i16, ptr %i.mz, align 2, !noalias !82401, !noundef !175
  %i.nb = zext i16 %i.na to i64
  %i.nc = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i, %i.nb
  br i1 %i.nc, label %.thread145.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i48

.thread145.i.i.i.i.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i22.i.i.i.i.i"
  %i.nd = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.preheader:               ; preds = %.prol.loopexit305, %.new306, %bb.bl, %.thread145.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i, %.thread145.i.i.i.i.i ], [ %i.ne, %bb.bl ], [ %i.ne, %.new306 ], [ %i.ne, %.prol.loopexit305 ]
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i, %.thread145.i.i.i.i.i ], [ %i.nl, %bb.bl ], [ %i.nl, %.new306 ], [ %i.nl, %.prol.loopexit305 ]
  %.sroa.30.1.i.i.i.i.i.ph = phi i64 [ %i.nd, %.thread145.i.i.i.i.i ], [ %i.nn, %bb.bl ], [ 0, %.new306 ], [ 0, %.prol.loopexit305 ]
  %.sroa.7.1.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i, %.thread145.i.i.i.i.i ], [ %i.ne, %bb.bl ], [ %.pn30.i.i.i.i39.i.i.i.i.i55.lcssa.unr, %.prol.loopexit305 ], [ %.pn30.i.i.i.i39.i.i.i.i.i55.7, %.new306 ]
  br label %.peel.next.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i48:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i22.i.i.i.i.i", %bb.bk
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i49 = phi ptr [ %i.ne, %bb.bk ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i22.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i50 = phi i64 [ %i.nf, %bb.bk ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i22.i.i.i.i.i" ] ; 2 uses
  %i.ne = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i49, align 8, !noalias !82402, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i51 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i51, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i48
  %i.nf = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i50, 1 ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i49, i64 536
  %i.nh = load i16, ptr %i.ng, align 8, !noalias !82402 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 538
  %i.nj = load i16, ptr %i.ni, align 2, !noalias !82401, !noundef !175
  %i.nk = icmp ult i16 %i.nh, %i.nj
  br i1 %i.nk, label %bb.bl, label %.lr.ph.i.i.i.i28.i.i.i.i.i48

bb.bl:                                            ; preds = %bb.bk
  %i.nl = zext i16 %i.nh to i64                   ; 4 uses
  %i.nm = icmp eq i64 %i.nf, 0
  %i.nn = add nuw nsw i64 %i.nl, 1                ; 2 uses
  br i1 %i.nm, label %.peel.next.i.i.i.i.i.i.i.preheader, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 544
  %i.np = icmp ult i16 %i.nh, 11
  tail call void @llvm.assume(i1 %i.np), !noalias !82359
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nn ; 2 uses
  %xtraiter308 = and i64 %i.nf, 7                 ; 2 uses
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.prol.loopexit305, label %.prol.preheader304

.prol.preheader304:                               ; preds = %bb.bm, %.prol.preheader304
  %.pn30.in.i.i.i.i36.i.i.i.i.i52.prol = phi ptr [ %i.nr, %.prol.preheader304 ], [ %i.nq, %bb.bm ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i53.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i54.prol, %.prol.preheader304 ], [ %i.nf, %bb.bm ]
  %prol.iter310 = phi i64 [ %prol.iter310.next, %.prol.preheader304 ], [ 0, %bb.bm ]
  %.pn28.i.i.i.i38.i.i.i.i.i54.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i53.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i55.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i52.prol, align 8, !noalias !82403, !nonnull !175, !noundef !175 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.prol, i64 544 ; 2 uses
  %prol.iter310.next = add i64 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i64 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %.prol.loopexit305, label %.prol.preheader304, !llvm.loop !82006

.prol.loopexit305:                                ; preds = %.prol.preheader304, %bb.bm
  %.pn30.i.i.i.i39.i.i.i.i.i55.lcssa.unr = phi ptr [ poison, %bb.bm ], [ %.pn30.i.i.i.i39.i.i.i.i.i55.prol, %.prol.preheader304 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i52.unr = phi ptr [ %i.nq, %bb.bm ], [ %i.nr, %.prol.preheader304 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i53.unr = phi i64 [ %i.nf, %bb.bm ], [ %.pn28.i.i.i.i38.i.i.i.i.i54.prol, %.prol.preheader304 ]
  %i.ns = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i50, 7
  br i1 %i.ns, label %.peel.next.i.i.i.i.i.i.i.preheader, label %.new306

.new306:                                          ; preds = %.prol.loopexit305, %.new306
  %.pn30.in.i.i.i.i36.i.i.i.i.i52 = phi ptr [ %i.ob, %.new306 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i52.unr, %.prol.loopexit305 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i53 = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i54.7, %.new306 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i53.unr, %.prol.loopexit305 ]
  %.pn30.i.i.i.i39.i.i.i.i.i55 = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i52, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.nt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i55.1 = load ptr, ptr %i.nt, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.nu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.1, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i55.2 = load ptr, ptr %i.nu, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.nv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.2, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i55.3 = load ptr, ptr %i.nv, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.3, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i55.4 = load ptr, ptr %i.nw, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.4, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i55.5 = load ptr, ptr %i.nx, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.5, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i55.6 = load ptr, ptr %i.ny, align 8, !noalias !82403, !nonnull !175, !noundef !175
  %i.nz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.6, i64 544
  %.pn28.i.i.i.i38.i.i.i.i.i54.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i53, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i55.7 = load ptr, ptr %i.nz, align 8, !noalias !82403, !nonnull !175, !noundef !175 ; 2 uses
  %i.oa = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i54.7, 0
  %i.ob = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i55.7, i64 544
  br i1 %i.oa, label %.peel.next.i.i.i.i.i.i.i.preheader, label %.new306

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i48
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i76 unwind label %bb.bo, !noalias !82404

.noexc.i.i45.i.i.i.i.i76:                         ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.oc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !82359
  unreachable

.peel.next.i.i.i.i.i.i.i.outer:                   ; preds = %.peel.next.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.ph254 = phi ptr [ %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.preheader ], [ %i.se, %.peel.next.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.ph255 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.preheader ], [ %i.sl, %.peel.next.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph = phi i64 [ %i.mw, %.peel.next.i.i.i.i.i.i.i.preheader ], [ %.lcssa261, %.peel.next.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.ph = phi i64 [ %i.my, %.peel.next.i.i.i.i.i.i.i.preheader ], [ %.lcssa262, %.peel.next.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.ph256 = phi i64 [ %.sroa.30.1.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.ph256.be, %.peel.next.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.ph257 = phi ptr [ %.sroa.7.1.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.ph257.be, %.peel.next.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.ph254, i64 8
  %i.oe = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.ph255, 11
  tail call void @llvm.assume(i1 %i.oe), !noalias !82359
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.ph255 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.ph254, i64 272
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.ph255
  %i.oi = getelementptr i8, ptr %i.of, i64 8
  %.val9.i.i.i.i.i.i.i58.peel = load ptr, ptr %i.oi, align 8, !noalias !82363 ; 2 uses
  %i.oj = getelementptr i8, ptr %i.of, i64 16
  %.val10.i.i.i.i.i.i.i59.peel = load i64, ptr %i.oj, align 8, !noalias !82363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82408)
  %i.ok = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82409, !noalias !82410, !noundef !175
  %i.ol = icmp eq i64 %i.ok, %.ph
  br i1 %i.ol, label %bb.bp, label %bb.bq, !prof !178

bb.bp:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %.ph, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82411
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i75.peel = load i64, ptr %i.ji, align 8, !alias.scope !82412, !noalias !82410
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.peel.next.i.i.i.i.i.i.i.outer
  %i.om = phi i64 [ %.ph, %.peel.next.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i75.peel, %bb.bp ] ; 3 uses
  %i.on = icmp sgt i64 %i.om, -1
  tail call void @llvm.assume(i1 %i.on)
  %i.oo = load ptr, ptr %i.jo, align 8, !alias.scope !82412, !noalias !82410, !nonnull !175, !noundef !175
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.om
  store i8 44, ptr %i.op, align 1, !noalias !82413
  %i.oq = add nuw i64 %i.om, 1
  store i64 %i.oq, ptr %i.ji, align 8, !alias.scope !82412, !noalias !82410
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i58.peel) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i58.peel, i64 noundef %.val10.i.i.i.i.i.i.i59.peel)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82417)
  %i.or = load i64, ptr %i.ji, align 8, !alias.scope !82418, !noalias !82419, !noundef !175 ; 3 uses
  %i.os = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82418, !noalias !82419, !noundef !175
  %i.ot = icmp eq i64 %i.os, %i.or
  br i1 %i.ot, label %bb.br, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60.peel, !prof !178

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.or, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82420
  %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.ji, align 8, !alias.scope !82421, !noalias !82419
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60.peel

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60.peel: ; preds = %bb.br, %bb.bq
  %i.ou = phi i64 [ %i.or, %bb.bq ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.peel, %bb.br ] ; 3 uses
  %i.ov = icmp sgt i64 %i.ou, -1
  tail call void @llvm.assume(i1 %i.ov)
  %i.ow = load ptr, ptr %i.jo, align 8, !alias.scope !82421, !noalias !82419, !nonnull !175, !noundef !175
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ou
  store i8 58, ptr %i.ox, align 1, !noalias !82422
  %i.oy = add nuw i64 %i.ou, 1                    ; 4 uses
  store i64 %i.oy, ptr %i.ji, align 8, !alias.scope !82421, !noalias !82419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82426)
  %i.oz = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82427, !noalias !82428, !noundef !175
  %i.pa = icmp eq i64 %i.oz, %i.oy
  br i1 %i.pa, label %bb.bs, label %bb.bt, !prof !178

bb.bs:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60.peel
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.oy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82429
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.peel = load i64, ptr %i.ji, align 8, !alias.scope !82430, !noalias !82428
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60.peel
  %i.pb = phi i64 [ %i.oy, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.peel, %bb.bs ] ; 3 uses
  %i.pc = icmp sgt i64 %i.pb, -1
  tail call void @llvm.assume(i1 %i.pc)
  %i.pd = load ptr, ptr %i.jo, align 8, !alias.scope !82430, !noalias !82428, !nonnull !175, !noundef !175
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pb
  store i8 123, ptr %i.pe, align 1, !noalias !82431
  %i.pf = add nuw i64 %i.pb, 1
  store i64 %i.pf, ptr %i.ji, align 8, !alias.scope !82430, !noalias !82428
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @809, i64 noundef 7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82435)
  %i.pg = load i64, ptr %i.ji, align 8, !alias.scope !82436, !noalias !82437, !noundef !175 ; 3 uses
  %i.ph = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82436, !noalias !82437, !noundef !175
  %i.pi = icmp eq i64 %i.ph, %i.pg
  br i1 %i.pi, label %bb.bu, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.bu:                                            ; preds = %bb.bt
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.pg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82438
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.peel = load i64, ptr %i.ji, align 8, !alias.scope !82439, !noalias !82437
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.bu, %bb.bt
  %i.pj = phi i64 [ %i.pg, %bb.bt ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.peel, %bb.bu ] ; 3 uses
  %i.pk = icmp sgt i64 %i.pj, -1
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = load ptr, ptr %i.jo, align 8, !alias.scope !82439, !noalias !82437, !nonnull !175, !noundef !175
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pj
  store i8 58, ptr %i.pm, align 1, !noalias !82440
  %i.pn = add nuw i64 %i.pj, 1
  store i64 %i.pn, ptr %i.ji, align 8, !alias.scope !82439, !noalias !82437
  %i.po = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h28827bdaf121734eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oh, ptr nonnull %.val9.i6.i.i), !noalias !82441 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.bv, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h64ceeffd7c1cd732E.exit"

bb.bv:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82445)
  %i.pp = load i64, ptr %i.ji, align 8, !alias.scope !82446, !noalias !82447, !noundef !175 ; 3 uses
  %i.pq = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82446, !noalias !82447, !noundef !175
  %i.pr = icmp eq i64 %i.pq, %i.pp
  br i1 %i.pr, label %bb.bw, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i.peel", !prof !178

bb.bw:                                            ; preds = %bb.bv
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.pp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82448
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.ji, align 8, !alias.scope !82449, !noalias !82447
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i.peel": ; preds = %bb.bw, %bb.bv
  %i.ps = phi i64 [ %i.pp, %bb.bv ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.bw ] ; 3 uses
  %i.pt = icmp sgt i64 %i.ps, -1
  tail call void @llvm.assume(i1 %i.pt)
  %i.pu = load ptr, ptr %i.jo, align 8, !alias.scope !82449, !noalias !82447, !nonnull !175, !noundef !175
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.ps
  store i8 125, ptr %i.pv, align 1, !noalias !82450
  %i.pw = add nuw i64 %i.ps, 1                    ; 4 uses
  store i64 %i.pw, ptr %i.ji, align 8, !alias.scope !82449, !noalias !82447
  %i.px = icmp eq i64 %.sroa.44.0.i.i.i.i.i.ph, 0
  br i1 %i.px, label %.thread169.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i.peel"
  %i.py = add i64 %.sroa.44.0.i.i.i.i.i.ph, -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.ph257) ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.ph257, i64 538
  %i.qa = load i16, ptr %i.pz, align 2, !noalias !82451, !noundef !175
  %i.qb = zext i16 %i.qa to i64
  %i.qc = icmp ult i64 %.sroa.30.1.i.i.i.i.i.ph256, %i.qb
  br i1 %i.qc, label %.peel.next.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i61.preheader

.peel.next.i.i.i.i.i.i.i.outer.peel.newph:        ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i.peel"
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.ph257, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.ph257, i64 272
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.ph257, i64 538
  br label %.peel.next.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i = phi i64 [ %.sroa.30.1.i.i.i.i.i.ph256, %.peel.next.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i" ] ; 4 uses
  %i.qg = phi i64 [ %i.pw, %.peel.next.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.ry, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i = phi i64 [ %i.py, %.peel.next.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.sa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i, 1 ; 2 uses
  %i.qh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.qh), !noalias !82359
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i ; 2 uses
  %i.qj = getelementptr inbounds nuw [24 x i8], ptr %i.qe, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i
  %i.qk = getelementptr i8, ptr %i.qi, i64 8
  %.val9.i.i.i.i.i.i.i58 = load ptr, ptr %i.qk, align 8, !noalias !82363 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qi, i64 16
  %.val10.i.i.i.i.i.i.i59 = load i64, ptr %i.ql, align 8, !noalias !82363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82455)
  %i.qm = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82456, !noalias !82410, !noundef !175
  %i.qn = icmp eq i64 %i.qm, %i.qg
  br i1 %i.qn, label %bb.bx, label %bb.by, !prof !178

bb.bx:                                            ; preds = %.peel.next.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.qg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82457
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i75 = load i64, ptr %i.ji, align 8, !alias.scope !82458, !noalias !82410
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.peel.next.i.i.i.i.i.i.i
  %i.qo = phi i64 [ %i.qg, %.peel.next.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i75, %bb.bx ] ; 3 uses
  %i.qp = icmp sgt i64 %i.qo, -1
  tail call void @llvm.assume(i1 %i.qp)
  %i.qq = load ptr, ptr %i.jo, align 8, !alias.scope !82458, !noalias !82410, !nonnull !175, !noundef !175
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qo
  store i8 44, ptr %i.qr, align 1, !noalias !82459
  %i.qs = add nuw i64 %i.qo, 1
  store i64 %i.qs, ptr %i.ji, align 8, !alias.scope !82458, !noalias !82410
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i58) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i58, i64 noundef %.val10.i.i.i.i.i.i.i59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82463)
  %i.qt = load i64, ptr %i.ji, align 8, !alias.scope !82464, !noalias !82419, !noundef !175 ; 3 uses
  %i.qu = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82464, !noalias !82419, !noundef !175
  %i.qv = icmp eq i64 %i.qu, %i.qt
  br i1 %i.qv, label %bb.bz, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60, !prof !178

bb.bz:                                            ; preds = %bb.by
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.qt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82465
  %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !82466, !noalias !82419
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %bb.bz, %bb.by
  %i.qw = phi i64 [ %i.qt, %bb.by ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i, %bb.bz ] ; 3 uses
  %i.qx = icmp sgt i64 %i.qw, -1
  tail call void @llvm.assume(i1 %i.qx)
  %i.qy = load ptr, ptr %i.jo, align 8, !alias.scope !82466, !noalias !82419, !nonnull !175, !noundef !175
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qw
  store i8 58, ptr %i.qz, align 1, !noalias !82467
  %i.ra = add nuw i64 %i.qw, 1                    ; 4 uses
  store i64 %i.ra, ptr %i.ji, align 8, !alias.scope !82466, !noalias !82419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82471)
  %i.rb = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82472, !noalias !82428, !noundef !175
  %i.rc = icmp eq i64 %i.rb, %i.ra
  br i1 %i.rc, label %bb.ca, label %bb.cb, !prof !178

bb.ca:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.ra, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82473
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74 = load i64, ptr %i.ji, align 8, !alias.scope !82474, !noalias !82428
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60
  %i.rd = phi i64 [ %i.ra, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i60 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74, %bb.ca ] ; 3 uses
  %i.re = icmp sgt i64 %i.rd, -1
  tail call void @llvm.assume(i1 %i.re)
  %i.rf = load ptr, ptr %i.jo, align 8, !alias.scope !82474, !noalias !82428, !nonnull !175, !noundef !175
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rd
  store i8 123, ptr %i.rg, align 1, !noalias !82475
  %i.rh = add nuw i64 %i.rd, 1
  store i64 %i.rh, ptr %i.ji, align 8, !alias.scope !82474, !noalias !82428
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @809, i64 noundef 7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82479)
  %i.ri = load i64, ptr %i.ji, align 8, !alias.scope !82480, !noalias !82437, !noundef !175 ; 3 uses
  %i.rj = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82480, !noalias !82437, !noundef !175
  %i.rk = icmp eq i64 %i.rj, %i.ri
  br i1 %i.rk, label %bb.cc, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.cc:                                            ; preds = %bb.cb
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.ri, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82481
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73 = load i64, ptr %i.ji, align 8, !alias.scope !82482, !noalias !82437
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cc, %bb.cb
  %i.rl = phi i64 [ %i.ri, %bb.cb ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73, %bb.cc ] ; 3 uses
  %i.rm = icmp sgt i64 %i.rl, -1
  tail call void @llvm.assume(i1 %i.rm)
  %i.rn = load ptr, ptr %i.jo, align 8, !alias.scope !82482, !noalias !82437, !nonnull !175, !noundef !175
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rl
  store i8 58, ptr %i.ro, align 1, !noalias !82483
  %i.rp = add nuw i64 %i.rl, 1
  store i64 %i.rp, ptr %i.ji, align 8, !alias.scope !82482, !noalias !82437
  %i.rq = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h28827bdaf121734eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qj, ptr nonnull %.val9.i6.i.i), !noalias !82441 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cd, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h64ceeffd7c1cd732E.exit"

bb.cd:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82487)
  %i.rr = load i64, ptr %i.ji, align 8, !alias.scope !82488, !noalias !82447, !noundef !175 ; 3 uses
  %i.rs = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82488, !noalias !82447, !noundef !175
  %i.rt = icmp eq i64 %i.rs, %i.rr
  br i1 %i.rt, label %bb.ce, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i", !prof !178

bb.ce:                                            ; preds = %bb.cd
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %i.rr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82489
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !82490, !noalias !82447
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i": ; preds = %bb.ce, %bb.cd
  %i.ru = phi i64 [ %i.rr, %bb.cd ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce ] ; 3 uses
  %i.rv = icmp sgt i64 %i.ru, -1
  tail call void @llvm.assume(i1 %i.rv)
  %i.rw = load ptr, ptr %i.jo, align 8, !alias.scope !82490, !noalias !82447, !nonnull !175, !noundef !175
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.ru
  store i8 125, ptr %i.rx, align 1, !noalias !82491
  %i.ry = add nuw i64 %i.ru, 1                    ; 4 uses
  store i64 %i.ry, ptr %i.ji, align 8, !alias.scope !82490, !noalias !82447
  %i.rz = icmp eq i64 %.sroa.44.0.i.i.i.i.i, 0
  br i1 %i.rz, label %.thread169.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i"
  %i.sa = add i64 %.sroa.44.0.i.i.i.i.i, -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.ph257) ]
  %i.sb = load i16, ptr %i.qf, align 2, !noalias !82451, !noundef !175
  %i.sc = zext i16 %i.sb to i64
  %i.sd = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i, %i.sc
  br i1 %i.sd, label %.peel.next.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i61.preheader, !llvm.loop !82125

.lr.ph.i.i.i.i.i.i.i.i.i61.preheader:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i.peel"
  %.lcssa262 = phi i64 [ %i.py, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i.peel" ], [ %i.sa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i" ]
  %.lcssa261 = phi i64 [ %i.pw, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i.peel" ], [ %i.ry, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6c96857c40106bfE.exit.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i61:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i61.preheader, %bb.cf
  %.sroa.0.038.i.i.i.i.i.i.i.i.i62 = phi ptr [ %i.se, %bb.cf ], [ %.sroa.7.1.i.i.i.i.i.ph257, %.lr.ph.i.i.i.i.i.i.i.i.i61.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i63 = phi i64 [ %i.sf, %bb.cf ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i61.preheader ] ; 2 uses
  %i.se = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i62, align 8, !noalias !82492, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i64 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i64, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i61
  %i.sf = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i63, 1 ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i62, i64 536
  %i.sh = load i16, ptr %i.sg, align 8, !noalias !82492 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 538
  %i.sj = load i16, ptr %i.si, align 2, !noalias !82451, !noundef !175
  %i.sk = icmp ult i16 %i.sh, %i.sj
  br i1 %i.sk, label %bb.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i61

bb.cg:                                            ; preds = %bb.cf
  %i.sl = zext i16 %i.sh to i64                   ; 2 uses
  %i.sm = icmp eq i64 %i.sf, 0
  %i.sn = add nuw nsw i64 %i.sl, 1                ; 2 uses
  br i1 %i.sm, label %.peel.next.i.i.i.i.i.i.i.outer.backedge, label %bb.ch

.peel.next.i.i.i.i.i.i.i.outer.backedge:          ; preds = %.prol.loopexit317, %.new318, %bb.cg
  %.sroa.30.1.i.i.i.i.i.ph256.be = phi i64 [ %i.sn, %bb.cg ], [ 0, %.new318 ], [ 0, %.prol.loopexit317 ]
  %.sroa.7.1.i.i.i.i.i.ph257.be = phi ptr [ %i.se, %bb.cg ], [ %.pn30.i.i.i.i.i.i.i.i.i68.lcssa.unr, %.prol.loopexit317 ], [ %.pn30.i.i.i.i.i.i.i.i.i68.7, %.new318 ]
  br label %.peel.next.i.i.i.i.i.i.i.outer

bb.ch:                                            ; preds = %bb.cg
  %i.so = getelementptr inbounds nuw i8, ptr %i.se, i64 544
  %i.sp = icmp ult i16 %i.sh, 11
  tail call void @llvm.assume(i1 %i.sp), !noalias !82359
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sn ; 2 uses
  %xtraiter320 = and i64 %i.sf, 7                 ; 2 uses
  %lcmp.mod321.not = icmp eq i64 %xtraiter320, 0
  br i1 %lcmp.mod321.not, label %.prol.loopexit317, label %.prol.preheader316

.prol.preheader316:                               ; preds = %bb.ch, %.prol.preheader316
  %.pn30.in.i.i.i.i.i.i.i.i.i65.prol = phi ptr [ %i.sr, %.prol.preheader316 ], [ %i.sq, %bb.ch ]
  %.pn28.in.i.i.i.i.i.i.i.i.i66.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i67.prol, %.prol.preheader316 ], [ %i.sf, %bb.ch ]
  %prol.iter322 = phi i64 [ %prol.iter322.next, %.prol.preheader316 ], [ 0, %bb.ch ]
  %.pn28.i.i.i.i.i.i.i.i.i67.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i66.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i68.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i65.prol, align 8, !noalias !82493, !nonnull !175, !noundef !175 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.prol, i64 544 ; 2 uses
  %prol.iter322.next = add i64 %prol.iter322, 1   ; 2 uses
  %prol.iter322.cmp.not = icmp eq i64 %prol.iter322.next, %xtraiter320
  br i1 %prol.iter322.cmp.not, label %.prol.loopexit317, label %.prol.preheader316, !llvm.loop !82131

.prol.loopexit317:                                ; preds = %.prol.preheader316, %bb.ch
  %.pn30.i.i.i.i.i.i.i.i.i68.lcssa.unr = phi ptr [ poison, %bb.ch ], [ %.pn30.i.i.i.i.i.i.i.i.i68.prol, %.prol.preheader316 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i65.unr = phi ptr [ %i.sq, %bb.ch ], [ %i.sr, %.prol.preheader316 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i66.unr = phi i64 [ %i.sf, %bb.ch ], [ %.pn28.i.i.i.i.i.i.i.i.i67.prol, %.prol.preheader316 ]
  %i.ss = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i63, 7
  br i1 %i.ss, label %.peel.next.i.i.i.i.i.i.i.outer.backedge, label %.new318

.new318:                                          ; preds = %.prol.loopexit317, %.new318
  %.pn30.in.i.i.i.i.i.i.i.i.i65 = phi ptr [ %i.tb, %.new318 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i65.unr, %.prol.loopexit317 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i66 = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i67.7, %.new318 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i66.unr, %.prol.loopexit317 ]
  %.pn30.i.i.i.i.i.i.i.i.i68 = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i65, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.st = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i68.1 = load ptr, ptr %i.st, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.su = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.1, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i68.2 = load ptr, ptr %i.su, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.sv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.2, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i68.3 = load ptr, ptr %i.sv, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.sw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.3, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i68.4 = load ptr, ptr %i.sw, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.sx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.4, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i68.5 = load ptr, ptr %i.sx, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.5, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i68.6 = load ptr, ptr %i.sy, align 8, !noalias !82493, !nonnull !175, !noundef !175
  %i.sz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.6, i64 544
  %.pn28.i.i.i.i.i.i.i.i.i67.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i66, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i68.7 = load ptr, ptr %i.sz, align 8, !noalias !82493, !nonnull !175, !noundef !175 ; 2 uses
  %i.ta = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i67.7, 0
  %i.tb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i68.7, i64 544
  br i1 %i.ta, label %.peel.next.i.i.i.i.i.i.i.outer.backedge, label %.new318, !llvm.loop !82132

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i61
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i71 unwind label %bb.cj, !noalias !82494

.noexc.i.i.i.i.i.i.i71:                           ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !82359
  unreachable

.thread169.i.i.i.i.i:                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.peel.i.i.i.i.i.i.i"
  %i.td = phi i64 [ %i.mw, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.peel.i.i.i.i.i.i.i" ], [ %i.ry, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i" ], [ %i.pw, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1210313cd92a8a97E.exit.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.te = load i64, ptr %.val9.i6.i.i, align 8, !range !174, !alias.scope !82495, !noalias !82496, !noundef !175
  %i.tf = icmp eq i64 %i.te, %i.td
  br i1 %i.tf, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit.sink.split.i.i.i.i.i", label %bb.ck, !prof !178

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit.sink.split.i.i.i.i.i": ; preds = %.thread169.i.i.i.i.i, %bb.ax
  %.sink.i.i.i.i.i = phi i64 [ %i.jr, %bb.ax ], [ %i.td, %.thread169.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i, i64 noundef %.sink.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !82497
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i72 = load i64, ptr %i.ji, align 8, !noalias !82497
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ax, %.thread169.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit.sink.split.i.i.i.i.i"
  %.sink263.i.i.i.i.i = phi i64 [ %i.td, %.thread169.i.i.i.i.i ], [ %i.jr, %bb.ax ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i72, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit.sink.split.i.i.i.i.i" ] ; 3 uses
  %i.tg = icmp sgt i64 %.sink263.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.tg)
  %i.th = load ptr, ptr %i.jo, align 8, !noalias !82497, !nonnull !175, !noundef !175
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %.sink263.i.i.i.i.i
  store i8 125, ptr %i.ti, align 1, !noalias !82497
  %storemerge.i.i.i.i.i = add nuw i64 %.sink263.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i, ptr %i.ji, align 8, !noalias !82497
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @811, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tj)
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tl = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6297180000119ddfE"(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @507, i64 noundef 7, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.tk) ; 2 uses
  %.not33 = icmp eq ptr %i.tl, null
  br i1 %.not33, label %bb.cl, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h64ceeffd7c1cd732E.exit"

bb.cl:                                            ; preds = %bb.ck
  call fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b)
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h64ceeffd7c1cd732E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h64ceeffd7c1cd732E.exit": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %bb.ck, %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17h4ffd10e15bb55ed8E.exit.i.i.i", %bb.aq, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i", %bb.cl
  %.sroa.0.0 = phi ptr [ null, %bb.cl ], [ %i.tl, %bb.ck ], [ %i.mo, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i" ], [ %i.ia, %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17h4ffd10e15bb55ed8E.exit.i.i.i" ], [ %i.ib, %bb.aq ], [ %i.rq, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.po, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdb6194228d074ad7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17meilisearch_types7network1_93_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..network..Network$GT$11deserialize17h3e8534e144129dceE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !82725 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.0122.i.i = alloca [7 x i8], align 8      ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.7.sroa.0.i.i = alloca [7 x i8], align 1  ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 26 uses
  %i.v = alloca [32 x i8], align 8                ; 26 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.058.i.i = alloca [6 x i8], align 8       ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [24 x i8], align 8               ; 10 uses
  %i.aj = alloca [16 x i8], align 8               ; 14 uses
  %i.ak = alloca [112 x i8], align 8              ; 19 uses
  %i.al = alloca [120 x i8], align 8              ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [112 x i8], align 8              ; 15 uses
  %i.ao = alloca [120 x i8], align 8              ; 9 uses
  %.sroa.21.i = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.22.i = alloca [24 x i8], align 8         ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.18.i = alloca [96 x i8], align 8         ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82727)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0122.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82728)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !82729, !noundef !175 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ar, align 8, !alias.scope !82730 ; 2 uses
  %i.au = icmp ult i64 %.promoted.i.i, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %.loopexit.i
end_hunk_7
begin_hunk_8_@_ZN4core4iter6traits8iterator8Iterator7collect17he270e56d1cb1fe1cE:bb.a
  br i1 %prol.iter73.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !134346

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.aj, %bb.g ], [ %i.ak, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i, %bb.g ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.al = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 8
  br i1 %i.al, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.au, %.new ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.am = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.am, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.an = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.an, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.ao, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.ap, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.aq, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.ar, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.as, align 8, !noalias !134407, !nonnull !175, !noundef !175 ; 2 uses
  %i.at = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 280
  br i1 %i.at, label %.loopexit.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i unwind label %bb.i, !noalias !134408

.noexc.i.i.i.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !134406
  unreachable

.critedge.i.i.i:                                  ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #78, !noalias !134409
  unreachable

.loopexit.i:                                      ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i, %bb.f ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 8
  %i.ax = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ax), !noalias !134406
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !134410, !nonnull !175, !noundef !175
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !134410, !noundef !175
  %i.bb = tail call i64 @llvm.uadd.sat.i64(i64 %i.c, i64 1) ; 2 uses
  %.sroa.0.0.i11.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bb, i64 4) ; 3 uses
  %i.bc = shl i64 %.sroa.0.0.i11.i.i.i, 4         ; 3 uses
  %i.bd = icmp ugt i64 %i.bb, 1152921504606846975
  %i.be = icmp ugt i64 %i.bc, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.bd, %i.be
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.loopexit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !134411
  %i.bf = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #77, !noalias !134411 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i"

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %.loopexit.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 0, %.loopexit.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !134402
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.bf, align 8, !noalias !134402
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.bh, align 8, !noalias !134402
  store i64 %.sroa.0.0.i11.i.i.i, ptr %i.a, align 8, !noalias !134402
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !134402
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !134402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134413)
  %i.bi = icmp eq i64 %i.c, 0
  br i1 %i.bi, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 274
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !134414, !noundef !175
  %i.bl = zext i16 %i.bk to i64
  %i.bm = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i, %i.bl
  br i1 %i.bm, label %.thread.i, label %.lr.ph.i.i.i.i.i27.i.i.i

.thread.i:                                        ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i"
  %i.bn = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.prol.loopexit75, %.new76, %bb.l, %.thread.i
  %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i.i, %.thread.i ], [ %i.bo, %bb.l ], [ %i.bo, %.new76 ], [ %i.bo, %.prol.loopexit75 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i.i.i, %.thread.i ], [ %i.bv, %bb.l ], [ %i.bv, %.new76 ], [ %i.bv, %.prol.loopexit75 ]
  %.sroa.53.1.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i.i, %.thread.i ], [ %i.bo, %bb.l ], [ %.pn30.i.i.i.i.i38.i.i.i.lcssa.unr, %.prol.loopexit75 ], [ %.pn30.i.i.i.i.i38.i.i.i.7, %.new76 ]
  %.sroa.15.1.i.i.i.ph = phi i64 [ %i.bn, %.thread.i ], [ %i.bx, %bb.l ], [ 0, %.new76 ], [ 0, %.prol.loopexit75 ]
  br label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i27.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i", %bb.k
  %.sroa.0.038.i.i.i.i.i28.i.i.i = phi ptr [ %i.bo, %bb.k ], [ %.sroa.07.0.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i29.i.i.i = phi i64 [ %i.bp, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i" ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.0.038.i.i.i.i.i28.i.i.i, align 8, !noalias !134415, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i30.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i30.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i27.i.i.i
  %i.bp = add i64 %.sroa.5.037.i.i.i.i.i29.i.i.i, 1 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i28.i.i.i, i64 272
  %i.br = load i16, ptr %i.bq, align 8, !noalias !134415 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 274
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !134414, !noundef !175
  %i.bu = icmp ult i16 %i.br, %i.bt
  br i1 %i.bu, label %bb.l, label %.lr.ph.i.i.i.i.i27.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bv = zext i16 %i.br to i64                   ; 4 uses
  %i.bw = icmp eq i64 %i.bp, 0
  %i.bx = add nuw nsw i64 %i.bv, 1                ; 2 uses
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 280
  %i.bz = icmp ult i16 %i.br, 11
  tail call void @llvm.assume(i1 %i.bz), !noalias !134416
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %xtraiter78 = and i64 %i.bp, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.prol.loopexit75, label %.prol.preheader74

.prol.preheader74:                                ; preds = %bb.m, %.prol.preheader74
  %.pn30.in.i.i.i.i.i35.i.i.i.prol = phi ptr [ %i.cb, %.prol.preheader74 ], [ %i.ca, %bb.m ]
  %.pn28.in.i.i.i.i.i36.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i37.i.i.i.prol, %.prol.preheader74 ], [ %i.bp, %bb.m ]
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader74 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i.i37.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i36.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i38.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i35.i.i.i.prol, align 8, !noalias !134417, !nonnull !175, !noundef !175 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit75, label %.prol.preheader74, !llvm.loop !134374

.prol.loopexit75:                                 ; preds = %.prol.preheader74, %bb.m
  %.pn30.i.i.i.i.i38.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i.i38.i.i.i.prol, %.prol.preheader74 ]
  %.pn30.in.i.i.i.i.i35.i.i.i.unr = phi ptr [ %i.ca, %bb.m ], [ %i.cb, %.prol.preheader74 ]
  %.pn28.in.i.i.i.i.i36.i.i.i.unr = phi i64 [ %i.bp, %bb.m ], [ %.pn28.i.i.i.i.i37.i.i.i.prol, %.prol.preheader74 ]
  %i.cc = icmp ult i64 %.sroa.5.037.i.i.i.i.i29.i.i.i, 7
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.preheader, label %.new76

.new76:                                           ; preds = %.prol.loopexit75, %.new76
  %.pn30.in.i.i.i.i.i35.i.i.i = phi ptr [ %i.cl, %.new76 ], [ %.pn30.in.i.i.i.i.i35.i.i.i.unr, %.prol.loopexit75 ]
  %.pn28.in.i.i.i.i.i36.i.i.i = phi i64 [ %.pn28.i.i.i.i.i37.i.i.i.7, %.new76 ], [ %.pn28.in.i.i.i.i.i36.i.i.i.unr, %.prol.loopexit75 ]
  %.pn30.i.i.i.i.i38.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i35.i.i.i, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.1 = load ptr, ptr %i.cd, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.2 = load ptr, ptr %i.ce, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.3 = load ptr, ptr %i.cf, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.4 = load ptr, ptr %i.cg, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.5 = load ptr, ptr %i.ch, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.6 = load ptr, ptr %i.ci, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i37.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i36.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i38.i.i.i.7 = load ptr, ptr %i.cj, align 8, !noalias !134417, !nonnull !175, !noundef !175 ; 2 uses
  %i.ck = icmp eq i64 %.pn28.i.i.i.i.i37.i.i.i.7, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.7, i64 280
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.preheader, label %.new76

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i27.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i43.i.i.i unwind label %bb.o, !noalias !134418

.noexc.i.i.i43.i.i.i:                             ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !134416
  unreachable

.lr.ph.i.i.i.i.i.outer:                           ; preds = %.lr.ph.i.i.i.i.i.outer.backedge, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph49 = phi ptr [ %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph50 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %.lcssa61, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.sroa.53.1.i.i.i.ph51 = phi ptr [ %.sroa.53.1.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.53.1.i.i.i.ph51.be, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 6 uses
  %.sroa.15.1.i.i.i.ph52 = phi i64 [ %.sroa.15.1.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.15.1.i.i.i.ph52.be, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.216.1.in.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.216.1.i.i.i.lcssa56, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.ph53 = phi i64 [ %.sroa.0.0.i11.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.lcssa59, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph54 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %.lcssa57, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph49, i64 8
  %i.co = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph50, 11
  tail call void @llvm.assume(i1 %i.co), !noalias !134416
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph50 ; 2 uses
  %.sroa.216.1.i.i.i.peel = add i64 %.sroa.216.1.in.i.i.i.ph, -1 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %.val.i.i.i.i.i.i.peel = load ptr, ptr %i.cq, align 8, !noalias !134419, !nonnull !175, !noundef !175
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val3.i.i.i.i.i.i.peel = load i64, ptr %i.cr, align 8, !noalias !134419, !noundef !175
  %i.cs = icmp samesign ult i64 %.ph54, 576460752303423488
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %.ph54, %.ph53
  br i1 %i.ct, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel", label %bb.p

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel": ; preds = %.lr.ph.i.i.i.i.i.outer
  %i.cu = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.216.1.i.i.i.peel, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.ph53, i64 noundef %i.cu, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i.i.i.peel unwind label %.loopexit.split-lp.i.i.i.loopexit.split-lp, !noalias !134420

.noexc12.i.i.i.peel:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel"
  %.pre5.i.i.i.i.i.peel = load i64, ptr %i.a, align 8, !range !174, !alias.scope !134416, !noalias !134402
  %.pre.i.i.i.peel = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  br label %bb.p

bb.p:                                             ; preds = %.noexc12.i.i.i.peel, %.lr.ph.i.i.i.i.i.outer
  %i.cv = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.outer ], [ %.pre.i.i.i.peel, %.noexc12.i.i.i.peel ] ; 3 uses
  %i.cw = phi i64 [ %.ph53, %.lr.ph.i.i.i.i.i.outer ], [ %.pre5.i.i.i.i.i.peel, %.noexc12.i.i.i.peel ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.ph54 ; 2 uses
  store ptr %.val.i.i.i.i.i.i.peel, ptr %i.cx, align 8, !noalias !134421
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.val3.i.i.i.i.i.i.peel, ptr %i.cy, align 8, !noalias !134421
  %i.cz = add nuw nsw i64 %.ph54, 1               ; 3 uses
  store i64 %i.cz, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  %i.da = icmp eq i64 %.sroa.216.1.i.i.i.peel, 0
  br i1 %i.da, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel": ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.1.i.i.i.ph51) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.ph51, i64 274
  %i.dc = load i16, ptr %i.db, align 2, !noalias !134422, !noundef !175
  %i.dd = zext i16 %i.dc to i64
  %i.de = icmp ult i64 %.sroa.15.1.i.i.i.ph52, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel"
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.ph51, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.ph51, i64 274
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.ph52, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %.sroa.15.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ] ; 3 uses
  %i.dh = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %i.dr, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.sroa.216.1.in.i.i.i = phi i64 [ %.sroa.216.1.i.i.i.peel, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %.sroa.216.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %i.di = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %i.ds, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ] ; 3 uses
  %i.dj = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %i.dv, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ] ; 4 uses
  %.sroa.15.1.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i, 1 ; 2 uses
  %i.dk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dk), !noalias !134416
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i ; 2 uses
  %.sroa.216.1.i.i.i = add i64 %.sroa.216.1.in.i.i.i, -1 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !134419, !nonnull !175, !noundef !175
  %i.dn = getelementptr i8, ptr %i.dl, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !noalias !134419, !noundef !175
  %i.do = icmp samesign ult i64 %i.dj, 576460752303423488
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.dj, %i.di
  br i1 %i.dp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i", label %bb.q

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.dq = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.216.1.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.di, i64 noundef %i.dq, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i.loopexit.split-lp, !noalias !134420

.noexc12.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i"
  %.pre5.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !174, !alias.scope !134416, !noalias !134402
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  br label %bb.q

bb.q:                                             ; preds = %.noexc12.i.i.i, %.lr.ph.i.i.i.i.i
  %i.dr = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc12.i.i.i ] ; 3 uses
  %i.ds = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.pre5.i.i.i.i.i, %.noexc12.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dj ; 2 uses
  store ptr %.val.i.i.i.i.i.i, ptr %i.dt, align 8, !noalias !134421
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.val3.i.i.i.i.i.i, ptr %i.du, align 8, !noalias !134421
  %i.dv = add nuw nsw i64 %i.dj, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  %i.dw = icmp eq i64 %.sroa.216.1.i.i.i, 0
  br i1 %i.dw, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i": ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.1.i.i.i.ph51) ]
  %i.dx = load i16, ptr %i.dg, align 2, !noalias !134422, !noundef !175
  %i.dy = zext i16 %i.dx to i64
  %i.dz = icmp samesign ult i64 %.sroa.15.1.i.i.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !llvm.loop !134391

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel"
  %.lcssa61 = phi ptr [ %i.cv, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %i.dr, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.lcssa59 = phi i64 [ %i.cw, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %i.ds, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.lcssa57 = phi i64 [ %i.cz, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %i.dv, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.sroa.216.1.i.i.i.lcssa56 = phi i64 [ %.sroa.216.1.i.i.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %.sroa.216.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.r
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %bb.r ], [ %.sroa.53.1.i.i.i.ph51, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.eb, %bb.r ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ea = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, align 8, !noalias !134423, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.eb = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 272
  %i.ed = load i16, ptr %i.ec, align 8, !noalias !134423 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 274
  %i.ef = load i16, ptr %i.ee, align 2, !noalias !134422, !noundef !175
  %i.eg = icmp ult i16 %i.ed, %i.ef
  br i1 %i.eg, label %bb.s, label %.lr.ph.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.eh = zext i16 %i.ed to i64                   ; 2 uses
  %i.ei = icmp eq i64 %i.eb, 0
  %i.ej = add nuw nsw i64 %i.eh, 1                ; 2 uses
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.outer.backedge, label %bb.t

.lr.ph.i.i.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit84, %.new85, %bb.s
  %.sroa.53.1.i.i.i.ph51.be = phi ptr [ %i.ea, %bb.s ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit84 ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new85 ]
  %.sroa.15.1.i.i.i.ph52.be = phi i64 [ %i.ej, %bb.s ], [ 0, %.new85 ], [ 0, %.prol.loopexit84 ]
  br label %.lr.ph.i.i.i.i.i.outer

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  %i.el = icmp ult i16 %i.ed, 11
  tail call void @llvm.assume(i1 %i.el), !noalias !134416
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej ; 2 uses
  %xtraiter87 = and i64 %i.eb, 7                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.prol.loopexit84, label %.prol.preheader83

.prol.preheader83:                                ; preds = %bb.t, %.prol.preheader83
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.en, %.prol.preheader83 ], [ %i.em, %bb.t ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader83 ], [ %i.eb, %bb.t ]
  %prol.iter89 = phi i64 [ %prol.iter89.next, %.prol.preheader83 ], [ 0, %bb.t ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !134424, !nonnull !175, !noundef !175 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %.prol.loopexit84, label %.prol.preheader83, !llvm.loop !134397

.prol.loopexit84:                                 ; preds = %.prol.preheader83, %bb.t
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.t ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.em, %bb.t ], [ %i.en, %.prol.preheader83 ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.eb, %bb.t ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %i.eo = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new85

.new85:                                           ; preds = %.prol.loopexit84, %.new85
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.new85 ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new85 ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ep, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.eq, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.er, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.es = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.es, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.et, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.eu, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ev, align 8, !noalias !134424, !nonnull !175, !noundef !175 ; 2 uses
  %i.ew = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 280
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new85

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i unwind label %bb.v, !noalias !134425

.noexc.i.i.i.i.i.i:                               ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !134416
  unreachable

bb.w:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !134426
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ez, align 8, !alias.scope !134426
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.fa, align 8, !alias.scope !134426
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h753cb2e38182c209E.exit"

.loopexit.split-lp.i.i.i.loopexit.split-lp:       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !134402 ; 2 uses
  %i.fb = icmp eq i64 %.val.pre.i.i.i, 0
  br i1 %i.fb, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit.i.i.i", label %.loopexit.split-lp.i._crit_edge.i.i

.loopexit.split-lp.i._crit_edge.i.i:              ; preds = %.loopexit.split-lp.i.i.i.loopexit.split-lp
  %.val9.i.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !134402
  %.pre.i.i = shl nuw i64 %.val.pre.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.pre.i.i, i64 noundef %.pre.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !134402
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i": ; preds = %bb.q, %bb.p, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !134427
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h753cb2e38182c209E.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit.i.i.i": ; preds = %.loopexit.split-lp.i._crit_edge.i.i, %.loopexit.split-lp.i.i.i.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h753cb2e38182c209E.exit": ; preds = %bb.w, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134402
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he777f832c00ca33fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !134489 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134490
  store i64 0, ptr %i.c, align 8, !noalias !134490
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !134490
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !134490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(136) %1, i64 136, i1 false), !alias.scope !134493, !noalias !134494
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !134495, !noalias !134492, !noundef !175 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread88.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !134495, !noalias !134492
  %i.h = invoke { i32, i32 } @"_ZN90_$LT$roaring..bitmap..iter..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7e74563c59613b97E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.c unwind label %.thread.i.i, !noalias !134496 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.d, label %.thread88.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i32 } %i.h, 1        ; 3 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = trunc nuw i32 %i.l to i16                ; 5 uses
  %i.n = trunc i32 %i.k to i16                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134497)
  %i.o = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !134498, !noalias !134490, !nonnull !175, !noundef !175 ; 3 uses
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !134498, !noalias !134490, !noundef !175 ; 12 uses
  switch i64 %i.p, label %.lr.ph.i.i.i.i.i [
    i64 0, label %bb.f
    i64 1, label %._crit_edge.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.q = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.p
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.05.0.lcssa.i.i.i.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %.val20.i.i.i.i.i = load i16, ptr %i.s, align 8, !alias.scope !134499, !noalias !134500, !noundef !175 ; 2 uses
  %i.t = icmp eq i16 %.val20.i.i.i.i.i, %i.m
  br i1 %i.t, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit.i.i", label %bb.e

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.u = lshr i64 %.sroa.01.025.i.i.i.i.i, 1      ; 2 uses
  %i.v = add i64 %i.u, %.sroa.05.024.i.i.i.i.i    ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.p
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val22.i.i.i.i.i = load i16, ptr %i.y, align 8, !alias.scope !134499, !noalias !134500, !noundef !175
  %i.z = icmp ugt i16 %.val22.i.i.i.i.i, %i.m
end_hunk_8
begin_hunk_9_@"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E":bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gx = icmp ult i16 %i.ga, 11
  call void @llvm.assume(i1 %i.gx), !noalias !141599
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ge
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ge
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val10.peel.i.i154.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fw, %.lr.ph.split.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val9.peel.i.i153.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fv, %.lr.ph.split.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.0.i.i.i80152.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0.lcssa.i.i90.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.0.i.i.i79151.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.split.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.val9.peel.i.i153.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.val9.peel.i.i153.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !141602 ; 2 uses
  %.val10.peel.i.i154.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.val10.peel.i.i154.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !141602
  %i.hb = zext nneg i8 %.val9.peel.i.i153.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E.9082", i64 %i.hb
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.hc = zext nneg i8 %.val9.peel.i.i153.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %switch.gep302 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$meilisearch_types..tasks..Status$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d6acd8a09968eaE", i64 %i.hc
  %switch.load303 = load i8, ptr %switch.gep302, align 1
  %switch.ext = zext i8 %switch.load303 to i64
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load, i64 noundef %switch.ext)
          to label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !141603)
  call void @llvm.experimental.noalias.scope.decl(metadata !141604)
  call void @llvm.experimental.noalias.scope.decl(metadata !141605)
  call void @llvm.experimental.noalias.scope.decl(metadata !141606)
  %i.hd = load i64, ptr %i.eo, align 8, !alias.scope !141607, !noalias !141608, !noundef !175 ; 3 uses
  %i.he = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141607, !noalias !141608, !noundef !175
  %i.hf = icmp eq i64 %i.he, %i.hd
  br i1 %i.hf, label %bb.ah, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.ah:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hd, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141609

.noexc25.i.i:                                     ; preds = %bb.ah
  %.pre.i.i.i.i.i.i.i10.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !141610, !noalias !141608
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc25.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.hg = phi i64 [ %i.hd, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i ] ; 3 uses
  %i.hh = icmp sgt i64 %i.hg, -1
  call void @llvm.assume(i1 %i.hh)
  %i.hi = load ptr, ptr %i.eu, align 8, !alias.scope !141610, !noalias !141608, !nonnull !175, !noundef !175
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hg
  store i8 58, ptr %i.hj, align 1, !noalias !141611
  %i.hk = add nuw i64 %i.hg, 1
  store i64 %i.hk, ptr %i.eo, align 8, !alias.scope !141610, !noalias !141608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !141612
  %i.hl = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val10.peel.i.i154.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.e)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141613 ; 2 uses

.noexc26.i.i:                                     ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = sub nuw i64 10, %i.hl                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141614)
  call void @llvm.experimental.noalias.scope.decl(metadata !141615)
  call void @llvm.experimental.noalias.scope.decl(metadata !141616)
  call void @llvm.experimental.noalias.scope.decl(metadata !141617)
  %i.hn = load i64, ptr %i.eo, align 8, !alias.scope !141618, !noalias !141619, !noundef !175 ; 3 uses
  %i.ho = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141618, !noalias !141619, !noundef !175
  %i.hp = sub i64 %i.ho, %i.hn
  %i.hq = icmp ugt i64 %i.hm, %i.hp
  br i1 %i.hq, label %bb.ai, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.ai:                                            ; preds = %.noexc26.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hn, i64 noundef %i.hm, i64 noundef 1, i64 noundef 1)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141620

.noexc27.i.i:                                     ; preds = %bb.ai
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !141621, !noalias !141619
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc27.i.i, %.noexc26.i.i
  %i.hr = phi i64 [ %i.hn, %.noexc26.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc27.i.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hl
  %i.ht = icmp sgt i64 %i.hr, -1
  call void @llvm.assume(i1 %i.ht)
  %i.hu = load ptr, ptr %i.eu, align 8, !alias.scope !141621, !noalias !141619, !nonnull !175, !noundef !175
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hv, ptr nonnull readonly align 1 %i.hs, i64 %i.hm, i1 false), !noalias !141622
  %i.hw = add nuw i64 %i.hr, %i.hm                ; 3 uses
  store i64 %i.hw, ptr %i.eo, align 8, !alias.scope !141621, !noalias !141619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !141612
  %i.hx = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.hx, label %.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.hy = add i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80152.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 54
  %i.ia = load i16, ptr %i.hz, align 2, !noalias !141623, !noundef !175
  %i.ib = zext i16 %i.ia to i64
  %i.ic = icmp samesign ult i64 %.sroa.7.0.i.i.i79151.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ib
  br i1 %i.ic, label %.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.id = add nuw nsw i64 %.sroa.7.0.i.i.i79151.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.prol.loopexit381, %.new382, %bb.ak, %.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i184.sink243.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80152.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ie, %bb.ak ], [ %i.ie, %.new382 ], [ %i.ie, %.prol.loopexit381 ]
  %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79151.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.il, %bb.ak ], [ %i.il, %.new382 ], [ %i.il, %.prol.loopexit381 ]
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.id, %.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.in, %bb.ak ], [ 0, %.new382 ], [ 0, %.prol.loopexit381 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80152.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread155.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ie, %bb.ak ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit381 ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new382 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aj
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ie, %bb.aj ], [ %.sroa.07.0.i.i.i80152.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.if, %bb.aj ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ie = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !141624, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.if = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 52
  %i.ih = load i16, ptr %i.ig, align 4, !noalias !141624 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 54
  %i.ij = load i16, ptr %i.ii, align 2, !noalias !141623, !noundef !175
  %i.ik = icmp ult i16 %i.ih, %i.ij
  br i1 %i.ik, label %bb.ak, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.il = zext i16 %i.ih to i64                   ; 4 uses
  %i.im = icmp eq i64 %i.if, 0
  %i.in = add nuw nsw i64 %i.il, 1                ; 2 uses
  br i1 %i.im, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.ip = icmp ult i16 %i.ih, 11
  call void @llvm.assume(i1 %i.ip), !noalias !141599
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.in ; 2 uses
  %xtraiter384 = and i64 %i.if, 7                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.prol.loopexit381, label %.prol.preheader380

.prol.preheader380:                               ; preds = %bb.al, %.prol.preheader380
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ir, %.prol.preheader380 ], [ %i.iq, %bb.al ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader380 ], [ %i.if, %bb.al ]
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.prol.preheader380 ], [ 0, %bb.al ]
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !141625, !nonnull !175, !noundef !175 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.prol.loopexit381, label %.prol.preheader380, !llvm.loop !140783

.prol.loopexit381:                                ; preds = %.prol.preheader380, %bb.al
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.al ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader380 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.iq, %bb.al ], [ %i.ir, %.prol.preheader380 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.if, %bb.al ], [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader380 ]
  %i.is = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.is, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new382

.new382:                                          ; preds = %.prol.loopexit381, %.new382
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jb, %.new382 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit381 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new382 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit381 ]
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.it = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.it, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.iu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.iu, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.iv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.iv, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.iw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.iw, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.ix = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ix, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.iy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.iy, align 8, !noalias !141625, !nonnull !175, !noundef !175
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 72
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.iz, align 8, !noalias !141625, !nonnull !175, !noundef !175 ; 2 uses
  %i.ja = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.jb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 72
  br i1 %i.ja, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.new382

bb.am:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.an, !noalias !141626

.noexc.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !141599
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer:   ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i184.sink243.i.i.i.i.i.i.i.i.i.i.i.i.i.ph356 = phi ptr [ %.sroa.0.0.ph.i.i.i184.sink243.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mi, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i.ph357 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mp, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph358 = phi i64 [ %i.hw, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa362, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.hy, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa363, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph359 = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph359.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360 = phi ptr [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i184.sink243.i.i.i.i.i.i.i.i.i.i.i.i.i.ph356, i64 56
  %i.je = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i.ph357, 11
  call void @llvm.assume(i1 %i.je), !noalias !141599
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i.ph357
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i184.sink243.i.i.i.i.i.i.i.i.i.i.i.i.i.ph356, i64 8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i.ph357
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %i.jf, align 1, !noalias !141602 ; 3 uses
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i32, ptr %i.jh, align 4, !noalias !141602
  call void @llvm.experimental.noalias.scope.decl(metadata !141627)
  call void @llvm.experimental.noalias.scope.decl(metadata !141628)
  call void @llvm.experimental.noalias.scope.decl(metadata !141629)
  call void @llvm.experimental.noalias.scope.decl(metadata !141630)
  %i.ji = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141631, !noalias !141632, !noundef !175
  %i.jj = icmp eq i64 %i.ji, %.ph358
  br i1 %i.jj, label %bb.ao, label %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !178

bb.ao:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %.ph358, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141633

.noexc28.i.i.peel:                                ; preds = %bb.ao
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.eo, align 8, !alias.scope !141634, !noalias !141632
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %.noexc28.i.i.peel, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer
  %i.jk = phi i64 [ %.ph358, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc28.i.i.peel ] ; 3 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = load ptr, ptr %i.eu, align 8, !alias.scope !141634, !noalias !141632, !nonnull !175, !noundef !175
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  store i8 44, ptr %i.jn, align 1, !noalias !141635
  %i.jo = add nuw i64 %i.jk, 1
  store i64 %i.jo, ptr %i.eo, align 8, !alias.scope !141634, !noalias !141632
  %i.jp = icmp ult i8 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 5
  call void @llvm.assume(i1 %i.jp)
  %i.jq = zext nneg i8 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel to i64
  %switch.gep304.peel = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E.9082", i64 %i.jq
  %switch.load305.peel = load ptr, ptr %switch.gep304.peel, align 8
  %i.jr = zext nneg i8 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel to i64
  %switch.gep306.peel = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$meilisearch_types..tasks..Status$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d6acd8a09968eaE", i64 %i.jr
  %switch.load307.peel = load i8, ptr %switch.gep306.peel, align 1
  %switch.ext308.peel = zext i8 %switch.load307.peel to i64
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load305.peel, i64 noundef %switch.ext308.peel)
          to label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !141636)
  call void @llvm.experimental.noalias.scope.decl(metadata !141637)
  call void @llvm.experimental.noalias.scope.decl(metadata !141638)
  call void @llvm.experimental.noalias.scope.decl(metadata !141639)
  %i.js = load i64, ptr %i.eo, align 8, !alias.scope !141640, !noalias !141641, !noundef !175 ; 3 uses
  %i.jt = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141640, !noalias !141641, !noundef !175
  %i.ju = icmp eq i64 %i.jt, %i.js
  br i1 %i.ju, label %bb.ap, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !178

bb.ap:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.js, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141642

.noexc34.i.i.peel:                                ; preds = %bb.ap
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.eo, align 8, !alias.scope !141643, !noalias !141641
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %.noexc34.i.i.peel, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.jv = phi i64 [ %i.js, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc34.i.i.peel ] ; 3 uses
  %i.jw = icmp sgt i64 %i.jv, -1
  call void @llvm.assume(i1 %i.jw)
  %i.jx = load ptr, ptr %i.eu, align 8, !alias.scope !141643, !noalias !141641, !nonnull !175, !noundef !175
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jv
  store i8 58, ptr %i.jy, align 1, !noalias !141644
  %i.jz = add nuw i64 %i.jv, 1
  store i64 %i.jz, ptr %i.eo, align 8, !alias.scope !141643, !noalias !141641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !141645
  %i.ka = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.e)
          to label %.noexc35.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141646 ; 2 uses

.noexc35.i.i.peel:                                ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %i.kb = sub nuw i64 10, %i.ka                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141647)
  call void @llvm.experimental.noalias.scope.decl(metadata !141648)
  call void @llvm.experimental.noalias.scope.decl(metadata !141649)
  call void @llvm.experimental.noalias.scope.decl(metadata !141650)
  %i.kc = load i64, ptr %i.eo, align 8, !alias.scope !141651, !noalias !141652, !noundef !175 ; 3 uses
  %i.kd = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141651, !noalias !141652, !noundef !175
  %i.ke = sub i64 %i.kd, %i.kc
  %i.kf = icmp ugt i64 %i.kb, %i.ke
  br i1 %i.kf, label %bb.aq, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.aq:                                            ; preds = %.noexc35.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.kc, i64 noundef %i.kb, i64 noundef 1, i64 noundef 1)
          to label %.noexc36.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141653

.noexc36.i.i.peel:                                ; preds = %bb.aq
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.eo, align 8, !alias.scope !141654, !noalias !141652
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc36.i.i.peel, %.noexc35.i.i.peel
  %i.kg = phi i64 [ %i.kc, %.noexc35.i.i.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc36.i.i.peel ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ka
  %i.ki = icmp sgt i64 %i.kg, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = load ptr, ptr %i.eu, align 8, !alias.scope !141654, !noalias !141652, !nonnull !175, !noundef !175
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr nonnull readonly align 1 %i.kh, i64 %i.kb, i1 false), !noalias !141655
  %i.kl = add nuw i64 %i.kg, %i.kb                ; 4 uses
  store i64 %i.kl, ptr %i.eo, align 8, !alias.scope !141654, !noalias !141652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !141645
  %i.km = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.km, label %.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.kn = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360, i64 54
  %i.kp = load i16, ptr %i.ko, align 2, !noalias !141656, !noundef !175
  %i.kq = zext i16 %i.kp to i64
  %i.kr = icmp ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph359, %i.kq
  br i1 %i.kr, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360, i64 56
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360, i64 54
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph359, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.kv = phi i64 [ %i.kl, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.mc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kn, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.me, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.kw = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.kw), !noalias !141599
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.sroa.6.sroa.4.0.ph.i.i.i183.sink242.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.kx, align 1, !noalias !141602 ; 3 uses
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ky, align 4, !noalias !141602
  call void @llvm.experimental.noalias.scope.decl(metadata !141657)
  call void @llvm.experimental.noalias.scope.decl(metadata !141658)
  call void @llvm.experimental.noalias.scope.decl(metadata !141659)
  call void @llvm.experimental.noalias.scope.decl(metadata !141660)
  %i.kz = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141661, !noalias !141632, !noundef !175
  %i.la = icmp eq i64 %i.kz, %i.kv
  br i1 %i.la, label %bb.ar, label %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.ar:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.kv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141662

.noexc28.i.i:                                     ; preds = %bb.ar
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !141663, !noalias !141632
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc28.i.i, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lb = phi i64 [ %i.kv, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc28.i.i ] ; 3 uses
  %i.lc = icmp sgt i64 %i.lb, -1
  call void @llvm.assume(i1 %i.lc)
  %i.ld = load ptr, ptr %i.eu, align 8, !alias.scope !141663, !noalias !141632, !nonnull !175, !noundef !175
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 44, ptr %i.le, align 1, !noalias !141664
  %i.lf = add nuw i64 %i.lb, 1
  store i64 %i.lf, ptr %i.eo, align 8, !alias.scope !141663, !noalias !141632
  %i.lg = icmp ult i8 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  call void @llvm.assume(i1 %i.lg)
  %i.lh = zext nneg i8 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %switch.gep304 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E.9082", i64 %i.lh
  %switch.load305 = load ptr, ptr %switch.gep304, align 8
  %i.li = zext nneg i8 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %switch.gep306 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$meilisearch_types..tasks..Status$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d6acd8a09968eaE", i64 %i.li
  %switch.load307 = load i8, ptr %switch.gep306, align 1
  %switch.ext308 = zext i8 %switch.load307 to i64
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load305, i64 noundef %switch.ext308)
          to label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !141665)
  call void @llvm.experimental.noalias.scope.decl(metadata !141666)
  call void @llvm.experimental.noalias.scope.decl(metadata !141667)
  call void @llvm.experimental.noalias.scope.decl(metadata !141668)
  %i.lj = load i64, ptr %i.eo, align 8, !alias.scope !141669, !noalias !141641, !noundef !175 ; 3 uses
  %i.lk = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141669, !noalias !141641, !noundef !175
  %i.ll = icmp eq i64 %i.lk, %i.lj
  br i1 %i.ll, label %bb.as, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.as:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.lj, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141670

.noexc34.i.i:                                     ; preds = %bb.as
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !141671, !noalias !141641
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc34.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.lm = phi i64 [ %i.lj, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h34bf3e09f4a185f3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc34.i.i ] ; 3 uses
  %i.ln = icmp sgt i64 %i.lm, -1
  call void @llvm.assume(i1 %i.ln)
  %i.lo = load ptr, ptr %i.eu, align 8, !alias.scope !141671, !noalias !141641, !nonnull !175, !noundef !175
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lm
  store i8 58, ptr %i.lp, align 1, !noalias !141672
  %i.lq = add nuw i64 %i.lm, 1
  store i64 %i.lq, ptr %i.eo, align 8, !alias.scope !141671, !noalias !141641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !141645
  %i.lr = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.e)
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141646 ; 2 uses

.noexc35.i.i:                                     ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ls = sub nuw i64 10, %i.lr                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141673)
  call void @llvm.experimental.noalias.scope.decl(metadata !141674)
  call void @llvm.experimental.noalias.scope.decl(metadata !141675)
  call void @llvm.experimental.noalias.scope.decl(metadata !141676)
  %i.lt = load i64, ptr %i.eo, align 8, !alias.scope !141677, !noalias !141652, !noundef !175 ; 3 uses
  %i.lu = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141677, !noalias !141652, !noundef !175
  %i.lv = sub i64 %i.lu, %i.lt
  %i.lw = icmp ugt i64 %i.ls, %i.lv
  br i1 %i.lw, label %bb.at, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.at:                                            ; preds = %.noexc35.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.lt, i64 noundef %i.ls, i64 noundef 1, i64 noundef 1)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141678

.noexc36.i.i:                                     ; preds = %bb.at
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !141679, !noalias !141652
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc36.i.i, %.noexc35.i.i
  %i.lx = phi i64 [ %i.lt, %.noexc35.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc36.i.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.lr
  %i.lz = icmp sgt i64 %i.lx, -1
  call void @llvm.assume(i1 %i.lz)
  %i.ma = load ptr, ptr %i.eu, align 8, !alias.scope !141679, !noalias !141652, !nonnull !175, !noundef !175
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mb, ptr nonnull readonly align 1 %i.ly, i64 %i.ls, i1 false), !noalias !141680
  %i.mc = add nuw i64 %i.lx, %i.ls                ; 4 uses
  store i64 %i.mc, ptr %i.eo, align 8, !alias.scope !141679, !noalias !141652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !141645
  %i.md = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.md, label %.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.me = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360) ]
  %i.mf = load i16, ptr %i.ku, align 2, !noalias !141656, !noundef !175
  %i.mg = zext i16 %i.mf to i64
  %i.mh = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.mg
  br i1 %i.mh, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !140862

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa363 = phi i64 [ %i.kn, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.me, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa362 = phi i64 [ %i.kl, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.mc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.au
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mi, %bb.au ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mj, %bb.au ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mi = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !141681, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mj = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 52
  %i.ml = load i16, ptr %i.mk, align 4, !noalias !141681 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 54
  %i.mn = load i16, ptr %i.mm, align 2, !noalias !141656, !noundef !175
  %i.mo = icmp ult i16 %i.ml, %i.mn
  br i1 %i.mo, label %bb.av, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.mp = zext i16 %i.ml to i64                   ; 2 uses
  %i.mq = icmp eq i64 %i.mj, 0
  %i.mr = add nuw nsw i64 %i.mp, 1                ; 2 uses
  br i1 %i.mq, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.aw

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit393, %.new394, %bb.av
  %.sroa.30.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph359.be = phi i64 [ %i.mr, %bb.av ], [ 0, %.new394 ], [ 0, %.prol.loopexit393 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph360.be = phi ptr [ %i.mi, %bb.av ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit393 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new394 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

bb.aw:                                            ; preds = %bb.av
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 72
  %i.mt = icmp ult i16 %i.ml, 11
  call void @llvm.assume(i1 %i.mt), !noalias !141599
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mr ; 2 uses
  %xtraiter396 = and i64 %i.mj, 7                 ; 2 uses
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %.prol.loopexit393, label %.prol.preheader392

.prol.preheader392:                               ; preds = %bb.aw, %.prol.preheader392
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mv, %.prol.preheader392 ], [ %i.mu, %bb.aw ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader392 ], [ %i.mj, %bb.aw ]
  %prol.iter398 = phi i64 [ %prol.iter398.next, %.prol.preheader392 ], [ 0, %bb.aw ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !141682, !nonnull !175, !noundef !175 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter398.next = add i64 %prol.iter398, 1   ; 2 uses
  %prol.iter398.cmp.not = icmp eq i64 %prol.iter398.next, %xtraiter396
  br i1 %prol.iter398.cmp.not, label %.prol.loopexit393, label %.prol.preheader392, !llvm.loop !140868

.prol.loopexit393:                                ; preds = %.prol.preheader392, %bb.aw
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.aw ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader392 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mu, %bb.aw ], [ %i.mv, %.prol.preheader392 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.mj, %bb.aw ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader392 ]
  %i.mw = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.mw, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new394

.new394:                                          ; preds = %.prol.loopexit393, %.new394
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nf, %.new394 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit393 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new394 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit393 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.mx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mx, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.my = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.my, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mz, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.na = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.na, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.nb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.nb, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.nc, align 8, !noalias !141682, !nonnull !175, !noundef !175
  %i.nd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 72
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.nd, align 8, !noalias !141682, !nonnull !175, !noundef !175 ; 2 uses
  %i.ne = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.nf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 72
  br i1 %i.ne, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new394, !llvm.loop !140869

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !141683

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !141599
  unreachable

.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.nh = phi i64 [ %i.hw, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mc, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.kl, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he81f6060e5f38d8bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.ni = load i64, ptr %.val9.i6.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141684, !noalias !141685, !noundef !175
  %i.nj = icmp eq i64 %i.ni, %i.nh
  br i1 %i.nj, label %bb.az, label %bb.ba, !prof !178

bb.az:                                            ; preds = %.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141686

.noexc37.i.i:                                     ; preds = %bb.az
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !141687, !noalias !141685
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc37.i.i, %.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nk = phi i64 [ %i.nh, %.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc37.i.i ] ; 3 uses
  %i.nl = icmp sgt i64 %i.nk, -1
  call void @llvm.assume(i1 %i.nl)
  %i.nm = load ptr, ptr %i.eu, align 8, !noalias !141595, !nonnull !175, !noundef !175
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nk
  store i8 125, ptr %i.nn, align 1, !noalias !141595
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.nk, 1
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eo, align 8, !noalias !141595
  call void @llvm.experimental.noalias.scope.decl(metadata !141688)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i.i.i.i.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 1040
  call void @llvm.experimental.noalias.scope.decl(metadata !141689)
  %.val.i.i.i63.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141690, !nonnull !175, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141691)
  call void @llvm.experimental.noalias.scope.decl(metadata !141692)
  call void @llvm.experimental.noalias.scope.decl(metadata !141693)
  call void @llvm.experimental.noalias.scope.decl(metadata !141694)
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i.i.i63.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !141695, !noalias !141696, !noundef !175 ; 3 uses
  %i.nr = load i64, ptr %.val.i.i.i63.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141695, !noalias !141696, !noundef !175
  %i.ns = icmp eq i64 %i.nr, %i.nq
  br i1 %i.ns, label %bb.bc, label %bb.bd, !prof !178

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i63.i.i.i.i.i.i.i.i, i64 noundef %i.nq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141697

.noexc38.i.i:                                     ; preds = %bb.bc
  %.pre.i.i.i.i.i.i.i.i.i113.i.i.i.i.i.i.i.i = load i64, ptr %i.np, align 8, !alias.scope !141698, !noalias !141696
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc38.i.i, %bb.bb
  %i.nt = phi i64 [ %i.nq, %bb.bb ], [ %.pre.i.i.i.i.i.i.i.i.i113.i.i.i.i.i.i.i.i, %.noexc38.i.i ] ; 3 uses
  %i.nu = icmp sgt i64 %i.nt, -1
  call void @llvm.assume(i1 %i.nu)
  %i.nv = getelementptr inbounds nuw i8, ptr %.val.i.i.i63.i.i.i.i.i.i.i.i, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !alias.scope !141698, !noalias !141696, !nonnull !175, !noundef !175
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nt
  store i8 44, ptr %i.nx, align 1, !noalias !141699
  %i.ny = add nuw i64 %i.nt, 1
  store i64 %i.ny, ptr %i.np, align 8, !alias.scope !141698, !noalias !141696
  %.val9.pre.i.i.i65.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141690
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !141552
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.pre.i.i.i65.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @689, i64 noundef 5)
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc39.i.i:                                     ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !141700)
  %.val.i5.i.i67.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141701, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141702)
  call void @llvm.experimental.noalias.scope.decl(metadata !141703)
  call void @llvm.experimental.noalias.scope.decl(metadata !141704)
  call void @llvm.experimental.noalias.scope.decl(metadata !141705)
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i5.i.i67.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !141706, !noalias !141707, !noundef !175 ; 3 uses
  %i.ob = load i64, ptr %.val.i5.i.i67.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141706, !noalias !141707, !noundef !175
  %i.oc = icmp eq i64 %i.ob, %i.oa
  br i1 %i.oc, label %bb.be, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i68.i.i.i.i.i.i.i.i, !prof !178

bb.be:                                            ; preds = %.noexc39.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i67.i.i.i.i.i.i.i.i, i64 noundef %i.oa, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141708

.noexc40.i.i:                                     ; preds = %bb.be
  %.pre.i.i.i.i.i.i.i7.i.i112.i.i.i.i.i.i.i.i = load i64, ptr %i.nz, align 8, !alias.scope !141709, !noalias !141707
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i68.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i68.i.i.i.i.i.i.i.i: ; preds = %.noexc40.i.i, %.noexc39.i.i
  %i.od = phi i64 [ %i.oa, %.noexc39.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i112.i.i.i.i.i.i.i.i, %.noexc40.i.i ] ; 3 uses
  %i.oe = icmp sgt i64 %i.od, -1
  call void @llvm.assume(i1 %i.oe)
  %i.of = getelementptr inbounds nuw i8, ptr %.val.i5.i.i67.i.i.i.i.i.i.i.i, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !alias.scope !141709, !noalias !141707, !nonnull !175, !noundef !175
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.od
  store i8 58, ptr %i.oh, align 1, !noalias !141710
  %i.oi = add nuw i64 %i.od, 1
  store i64 %i.oi, ptr %i.nz, align 8, !alias.scope !141709, !noalias !141707
  %.val9.i6.i.i69.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !141711, !noalias !141701, !nonnull !175, !align !179, !noundef !175 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141712)
  call void @llvm.experimental.noalias.scope.decl(metadata !141713)
  %i.oj = load ptr, ptr %i.no, align 8, !alias.scope !141714, !noundef !175 ; 4 uses
  %.not.i.not.i.i.i.i.i70.i.i.i.i.i.i.i.i = icmp eq ptr %i.oj, null ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.ol = load i64, ptr %i.ok, align 8, !alias.scope !141715 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.on = load i64, ptr %i.om, align 8, !alias.scope !141715
  %.sink.i.i.i.i.i.i71.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i70.i.i.i.i.i.i.i.i, i64 0, i64 %i.on ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141716)
  call void @llvm.experimental.noalias.scope.decl(metadata !141717)
  call void @llvm.experimental.noalias.scope.decl(metadata !141718)
  call void @llvm.experimental.noalias.scope.decl(metadata !141719)
  %i.oo = getelementptr inbounds nuw i8, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 16 ; 21 uses
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !141720, !noalias !141721, !noundef !175 ; 3 uses
  %i.oq = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141720, !noalias !141721, !noundef !175
  %i.or = icmp eq i64 %i.oq, %i.op
  br i1 %i.or, label %bb.bf, label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i72.i.i.i.i.i.i.i.i, !prof !178

bb.bf:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i68.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %i.op, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc41.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141722

.noexc41.i.i:                                     ; preds = %bb.bf
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !alias.scope !141723, !noalias !141721
  br label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i72.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i72.i.i.i.i.i.i.i.i: ; preds = %.noexc41.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i68.i.i.i.i.i.i.i.i
  %i.os = phi i64 [ %i.op, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i68.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i, %.noexc41.i.i ] ; 3 uses
  %i.ot = icmp sgt i64 %i.os, -1
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds nuw i8, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 8 ; 8 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !141723, !noalias !141721, !nonnull !175, !noundef !175
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.os
  store i8 123, ptr %i.ow, align 1, !noalias !141724
  %i.ox = add nuw i64 %i.os, 1                    ; 5 uses
  store i64 %i.ox, ptr %i.oo, align 8, !alias.scope !141723, !noalias !141721
  %i.oy = icmp eq i64 %.sink.i.i.i.i.i.i71.i.i.i.i.i.i.i.i, 0
  br i1 %i.oy, label %bb.bg, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i73.i.i.i.i.i.i.i.i"

bb.bg:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i72.i.i.i.i.i.i.i.i
  %i.oz = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141725, !noalias !141726, !noundef !175
  %i.pa = icmp eq i64 %i.oz, %i.ox
  br i1 %i.pa, label %.thread110.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i, label %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i73.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i72.i.i.i.i.i.i.i.i
  br i1 %.not.i.not.i.i.i.i.i70.i.i.i.i.i.i.i.i, label %.critedge.i54.i.i.i.i.i182.i.i.i.i.i.i.invoke.i.i, label %bb.bh

bb.bh:                                            ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i73.i.i.i.i.i.i.i.i"
  %i.pb = icmp eq i64 %i.ol, 0
  br i1 %i.pb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.bh
  %xtraiter399 = and i64 %i.ol, 7                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:      ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.oj, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.pd, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 72
  %i.pd = add i64 %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.pc, align 8, !noalias !141727, !nonnull !175, !noundef !175 ; 3 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !140973

.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.oj, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.pd, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.pe = icmp ult i64 %i.ol, 8
  br i1 %i.pe, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pn, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.pg, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ph, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.pi, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.pj, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.pk, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 72
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.pl, align 8, !noalias !141727, !nonnull !175, !noundef !175
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 72
  %i.pn = add i64 %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.pm, align 8, !noalias !141727, !nonnull !175, !noundef !175 ; 2 uses
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh
  %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.oj, %bb.bh ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 54
  %i.pq = load i16, ptr %i.pp, align 2, !noalias !141728, !noundef !175
  %.not.i.i.i.i.i74.i.i.i.i.i.i.i.i = icmp eq i16 %i.pq, 0
  br i1 %.not.i.i.i.i.i74.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i101.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader: ; preds = %.prol.loopexit403, %.new404, %bb.bj, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i117.i.i.i.i.i.sink.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.pr, %bb.bj ], [ %i.pr, %.new404 ], [ %i.pr, %.prol.loopexit403 ]
  %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.py, %bb.bj ], [ %i.py, %.new404 ], [ %i.py, %.prol.loopexit403 ]
  %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.qa, %bb.bj ], [ 0, %.new404 ], [ 0, %.prol.loopexit403 ]
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.pr, %bb.bj ], [ %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit403 ], [ %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.7, %.new404 ]
  br label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i101.i.i.i.i.i.i.i.i:    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.bi
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i102.i.i.i.i.i.i.i.i = phi ptr [ %i.pr, %bb.bi ], [ %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i103.i.i.i.i.i.i.i.i = phi i64 [ %i.ps, %bb.bi ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.pr = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i102.i.i.i.i.i.i.i.i, align 8, !noalias !141729, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i104.i.i.i.i.i.i.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i104.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i101.i.i.i.i.i.i.i.i
  %i.ps = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i103.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i102.i.i.i.i.i.i.i.i, i64 52
  %i.pu = load i16, ptr %i.pt, align 4, !noalias !141729 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 54
  %i.pw = load i16, ptr %i.pv, align 2, !noalias !141728, !noundef !175
  %i.px = icmp ult i16 %i.pu, %i.pw
  br i1 %i.px, label %bb.bj, label %.lr.ph.i.i.i.i28.i.i.i.i.i101.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.py = zext i16 %i.pu to i64                   ; 4 uses
  %i.pz = icmp eq i64 %i.ps, 0
  %i.qa = add nuw nsw i64 %i.py, 1                ; 2 uses
  br i1 %i.pz, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pr, i64 72
  %i.qc = icmp ult i16 %i.pu, 11
  call void @llvm.assume(i1 %i.qc), !noalias !141730
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qa ; 2 uses
  %xtraiter406 = and i64 %i.ps, 7                 ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.prol.loopexit403, label %.prol.preheader402

.prol.preheader402:                               ; preds = %bb.bk, %.prol.preheader402
  %.pn30.in.i.i.i.i36.i.i.i.i.i105.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.qe, %.prol.preheader402 ], [ %i.qd, %bb.bk ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i106.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i107.i.i.i.i.i.i.i.i.prol, %.prol.preheader402 ], [ %i.ps, %bb.bk ]
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.prol.preheader402 ], [ 0, %bb.bk ]
  %.pn28.i.i.i.i38.i.i.i.i.i107.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i106.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i105.i.i.i.i.i.i.i.i.prol, align 8, !noalias !141731, !nonnull !175, !noundef !175 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.prol.loopexit403, label %.prol.preheader402, !llvm.loop !140987

.prol.loopexit403:                                ; preds = %.prol.preheader402, %bb.bk
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bk ], [ %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.prol, %.prol.preheader402 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i105.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.qd, %bb.bk ], [ %i.qe, %.prol.preheader402 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i106.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ps, %bb.bk ], [ %.pn28.i.i.i.i38.i.i.i.i.i107.i.i.i.i.i.i.i.i.prol, %.prol.preheader402 ]
  %i.qf = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i103.i.i.i.i.i.i.i.i, 7
  br i1 %i.qf, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader, label %.new404

.new404:                                          ; preds = %.prol.loopexit403, %.new404
  %.pn30.in.i.i.i.i36.i.i.i.i.i105.i.i.i.i.i.i.i.i = phi ptr [ %i.qo, %.new404 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i105.i.i.i.i.i.i.i.i.unr, %.prol.loopexit403 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i106.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i107.i.i.i.i.i.i.i.i.7, %.new404 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i106.i.i.i.i.i.i.i.i.unr, %.prol.loopexit403 ]
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i105.i.i.i.i.i.i.i.i, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.qg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.qg, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.qh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.1, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.qh, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.qi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.2, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.qi, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.qj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.3, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.qj, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.qk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.4, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.qk, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.ql = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.5, i64 72
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ql, align 8, !noalias !141731, !nonnull !175, !noundef !175
  %i.qm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.6, i64 72
  %.pn28.i.i.i.i38.i.i.i.i.i107.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i106.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.qm, align 8, !noalias !141731, !nonnull !175, !noundef !175 ; 2 uses
  %i.qn = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i107.i.i.i.i.i.i.i.i.7, 0
  %i.qo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i108.i.i.i.i.i.i.i.i.7, i64 72
  br i1 %i.qn, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader, label %.new404

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i101.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i109.i.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !141732

.noexc.i.i45.i.i.i.i.i109.i.i.i.i.i.i.i.i:        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.qp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !141730
  unreachable

.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer: ; preds = %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i117.i.i.i.i.i.sink.i.i.i.i.i.i.i.i.ph335 = phi ptr [ %.sroa.0.0.ph.i.i.i117.i.i.i.i.i.sink.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ %i.tt, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i.ph336 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ %i.ua, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph337 = phi i64 [ %i.ox, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa344, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.33.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sink.i.i.i.i.i.i71.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa342, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ]
  %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph338 = phi i64 [ %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph338.be, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339 = phi ptr [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339.be, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %.ph340 = phi i1 [ true, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.preheader ], [ false, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i117.i.i.i.i.i.sink.i.i.i.i.i.i.i.i.ph335, i64 56
  %i.qr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i.ph336, 11
  call void @llvm.assume(i1 %i.qr), !noalias !141730
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i.ph336
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i117.i.i.i.i.i.sink.i.i.i.i.i.i.i.i.ph335, i64 8
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i.ph336
  %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = add i64 %.sroa.33.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, -1 ; 3 uses
  %.val9.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i.peel = load i8, ptr %i.qs, align 1, !noalias !141733 ; 2 uses
  %.val10.i.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.peel = load i32, ptr %i.qu, align 4, !noalias !141733
  br i1 %.ph340, label %switch.lookup.peel, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !141734)
  call void @llvm.experimental.noalias.scope.decl(metadata !141735)
  call void @llvm.experimental.noalias.scope.decl(metadata !141736)
  call void @llvm.experimental.noalias.scope.decl(metadata !141737)
  %i.qv = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141738, !noalias !141739, !noundef !175
  %i.qw = icmp eq i64 %i.qv, %.ph337
  br i1 %i.qw, label %bb.bo, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %.ph337, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141740

.noexc43.i.i.peel:                                ; preds = %bb.bo
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.oo, align 8, !alias.scope !141741, !noalias !141739
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc43.i.i.peel, %bb.bn
  %i.qx = phi i64 [ %.ph337, %bb.bn ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i.peel, %.noexc43.i.i.peel ] ; 3 uses
  %i.qy = icmp sgt i64 %i.qx, -1
  call void @llvm.assume(i1 %i.qy)
  %i.qz = load ptr, ptr %i.ou, align 8, !alias.scope !141741, !noalias !141739, !nonnull !175, !noundef !175
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qx
  store i8 44, ptr %i.ra, align 1, !noalias !141742
  %i.rb = add nuw i64 %i.qx, 1
  store i64 %i.rb, ptr %i.oo, align 8, !alias.scope !141741, !noalias !141739
  br label %switch.lookup.peel

switch.lookup.peel:                               ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer
  %i.rc = zext nneg i8 %.val9.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i.peel to i64
  %switch.gep309.peel = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN94_$LT$index_scheduler..IndexScheduler..notify_webhooks..TaskReader$u20$as$u20$std..io..Read$GT$4read17h3f046459bd7c7037E", i64 %i.rc
  %switch.load310.peel = load ptr, ptr %switch.gep309.peel, align 8
  %i.rd = zext nneg i8 %.val9.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i.peel to i64
  %switch.gep311.peel = getelementptr inbounds nuw i8, ptr @"switch.table._ZN94_$LT$index_scheduler..IndexScheduler..notify_webhooks..TaskReader$u20$as$u20$std..io..Read$GT$4read17h3f046459bd7c7037E.9096", i64 %i.rd
  %switch.load312.peel = load i8, ptr %switch.gep311.peel, align 1
  %switch.ext313.peel = zext i8 %switch.load312.peel to i64
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i69.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load310.peel, i64 noundef %switch.ext313.peel)
          to label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %switch.lookup.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !141743)
  call void @llvm.experimental.noalias.scope.decl(metadata !141744)
  call void @llvm.experimental.noalias.scope.decl(metadata !141745)
  call void @llvm.experimental.noalias.scope.decl(metadata !141746)
  %i.re = load i64, ptr %i.oo, align 8, !alias.scope !141747, !noalias !141748, !noundef !175 ; 3 uses
  %i.rf = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141747, !noalias !141748, !noundef !175
  %i.rg = icmp eq i64 %i.rf, %i.re
  br i1 %i.rg, label %bb.bp, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.peel, !prof !178

bb.bp:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %i.re, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc62.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141749

.noexc62.i.i.peel:                                ; preds = %bb.bp
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.oo, align 8, !alias.scope !141750, !noalias !141748
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.peel: ; preds = %.noexc62.i.i.peel, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.rh = phi i64 [ %i.re, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i.peel, %.noexc62.i.i.peel ] ; 3 uses
  %i.ri = icmp sgt i64 %i.rh, -1
  call void @llvm.assume(i1 %i.ri)
  %i.rj = load ptr, ptr %i.ou, align 8, !alias.scope !141750, !noalias !141748, !nonnull !175, !noundef !175
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rh
  store i8 58, ptr %i.rk, align 1, !noalias !141751
  %i.rl = add nuw i64 %i.rh, 1
  store i64 %i.rl, ptr %i.oo, align 8, !alias.scope !141750, !noalias !141748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !141752
  %i.rm = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val10.i.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.d)
          to label %.noexc63.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141753 ; 2 uses

.noexc63.i.i.peel:                                ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.peel
  %i.rn = sub nuw i64 10, %i.rm                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141754)
  call void @llvm.experimental.noalias.scope.decl(metadata !141755)
  call void @llvm.experimental.noalias.scope.decl(metadata !141756)
  call void @llvm.experimental.noalias.scope.decl(metadata !141757)
  %i.ro = load i64, ptr %i.oo, align 8, !alias.scope !141758, !noalias !141759, !noundef !175 ; 3 uses
  %i.rp = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141758, !noalias !141759, !noundef !175
  %i.rq = sub i64 %i.rp, %i.ro
  %i.rr = icmp ugt i64 %i.rn, %i.rq
  br i1 %i.rr, label %bb.bq, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.bq:                                            ; preds = %.noexc63.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %i.ro, i64 noundef %i.rn, i64 noundef 1, i64 noundef 1)
          to label %.noexc64.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141760

.noexc64.i.i.peel:                                ; preds = %bb.bq
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.oo, align 8, !alias.scope !141761, !noalias !141759
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc64.i.i.peel, %.noexc63.i.i.peel
  %i.rs = phi i64 [ %i.ro, %.noexc63.i.i.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i.peel, %.noexc64.i.i.peel ] ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rm
  %i.ru = icmp sgt i64 %i.rs, -1
  call void @llvm.assume(i1 %i.ru)
  %i.rv = load ptr, ptr %i.ou, align 8, !alias.scope !141761, !noalias !141759, !nonnull !175, !noundef !175
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rw, ptr nonnull readonly align 1 %i.rt, i64 %i.rn, i1 false), !noalias !141762
  %i.rx = add nuw i64 %i.rs, %i.rn                ; 4 uses
  store i64 %i.rx, ptr %i.oo, align 8, !alias.scope !141761, !noalias !141759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141752
  %i.ry = icmp eq i64 %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 0
  br i1 %i.ry, label %.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339) ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339, i64 54
  %i.sa = load i16, ptr %i.rz, align 2, !noalias !141763, !noundef !175
  %i.sb = zext i16 %i.sa to i64
  %i.sc = icmp ult i64 %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph338, %i.sb
  br i1 %i.sc, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.peel.newph: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339, i64 56
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339, i64 54
  br label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i:     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph338, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.sg = phi i64 [ %i.rx, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.tm, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.33.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.sh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.sh), !noalias !141730
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %.sroa.6.sroa.4.0.ph.i.i.i116.i.i.i.i.i.sink391.i.i.i.i.i.i.i.i
  %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.33.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %.val9.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i = load i8, ptr %i.si, align 1, !noalias !141733 ; 2 uses
  %.val10.i.i.i.i.i.i.i79.i.i.i.i.i.i.i.i = load i32, ptr %i.sj, align 4, !noalias !141733
  call void @llvm.experimental.noalias.scope.decl(metadata !141764)
  call void @llvm.experimental.noalias.scope.decl(metadata !141765)
  call void @llvm.experimental.noalias.scope.decl(metadata !141766)
  call void @llvm.experimental.noalias.scope.decl(metadata !141767)
  %i.sk = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141768, !noalias !141739, !noundef !175
  %i.sl = icmp eq i64 %i.sk, %i.sg
  br i1 %i.sl, label %bb.br, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.br:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %i.sg, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141769

.noexc43.i.i:                                     ; preds = %bb.br
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !alias.scope !141770, !noalias !141739
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc43.i.i, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i
  %i.sm = phi i64 [ %i.sg, %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i, %.noexc43.i.i ] ; 3 uses
  %i.sn = icmp sgt i64 %i.sm, -1
  call void @llvm.assume(i1 %i.sn)
  %i.so = load ptr, ptr %i.ou, align 8, !alias.scope !141770, !noalias !141739, !nonnull !175, !noundef !175
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sm
  store i8 44, ptr %i.sp, align 1, !noalias !141771
  %i.sq = add nuw i64 %i.sm, 1
  store i64 %i.sq, ptr %i.oo, align 8, !alias.scope !141770, !noalias !141739
  %i.sr = zext nneg i8 %.val9.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i to i64
  %switch.gep309 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN94_$LT$index_scheduler..IndexScheduler..notify_webhooks..TaskReader$u20$as$u20$std..io..Read$GT$4read17h3f046459bd7c7037E", i64 %i.sr
  %switch.load310 = load ptr, ptr %switch.gep309, align 8
  %i.ss = zext nneg i8 %.val9.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i to i64
  %switch.gep311 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN94_$LT$index_scheduler..IndexScheduler..notify_webhooks..TaskReader$u20$as$u20$std..io..Read$GT$4read17h3f046459bd7c7037E.9096", i64 %i.ss
  %switch.load312 = load i8, ptr %switch.gep311, align 1
  %switch.ext313 = zext i8 %switch.load312 to i64
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i69.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load310, i64 noundef %switch.ext313)
          to label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !141772)
  call void @llvm.experimental.noalias.scope.decl(metadata !141773)
  call void @llvm.experimental.noalias.scope.decl(metadata !141774)
  call void @llvm.experimental.noalias.scope.decl(metadata !141775)
  %i.st = load i64, ptr %i.oo, align 8, !alias.scope !141776, !noalias !141748, !noundef !175 ; 3 uses
  %i.su = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141776, !noalias !141748, !noundef !175
  %i.sv = icmp eq i64 %i.su, %i.st
  br i1 %i.sv, label %bb.bs, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i, !prof !178

bb.bs:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %i.st, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc62.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141777

.noexc62.i.i:                                     ; preds = %bb.bs
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !alias.scope !141778, !noalias !141748
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i: ; preds = %.noexc62.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.sw = phi i64 [ %i.st, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h2a32e128319c74d4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i, %.noexc62.i.i ] ; 3 uses
  %i.sx = icmp sgt i64 %i.sw, -1
  call void @llvm.assume(i1 %i.sx)
  %i.sy = load ptr, ptr %i.ou, align 8, !alias.scope !141778, !noalias !141748, !nonnull !175, !noundef !175
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sw
  store i8 58, ptr %i.sz, align 1, !noalias !141779
  %i.ta = add nuw i64 %i.sw, 1
  store i64 %i.ta, ptr %i.oo, align 8, !alias.scope !141778, !noalias !141748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !141752
  %i.tb = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val10.i.i.i.i.i.i.i79.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.d)
          to label %.noexc63.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141753 ; 2 uses

.noexc63.i.i:                                     ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i
  %i.tc = sub nuw i64 10, %i.tb                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141780)
  call void @llvm.experimental.noalias.scope.decl(metadata !141781)
  call void @llvm.experimental.noalias.scope.decl(metadata !141782)
  call void @llvm.experimental.noalias.scope.decl(metadata !141783)
  %i.td = load i64, ptr %i.oo, align 8, !alias.scope !141784, !noalias !141759, !noundef !175 ; 3 uses
  %i.te = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141784, !noalias !141759, !noundef !175
  %i.tf = sub i64 %i.te, %i.td
  %i.tg = icmp ugt i64 %i.tc, %i.tf
  br i1 %i.tg, label %bb.bt, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.bt:                                            ; preds = %.noexc63.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %i.td, i64 noundef %i.tc, i64 noundef 1, i64 noundef 1)
          to label %.noexc64.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141785

.noexc64.i.i:                                     ; preds = %bb.bt
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !alias.scope !141786, !noalias !141759
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc64.i.i, %.noexc63.i.i
  %i.th = phi i64 [ %i.td, %.noexc63.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i, %.noexc64.i.i ] ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.tb
  %i.tj = icmp sgt i64 %i.th, -1
  call void @llvm.assume(i1 %i.tj)
  %i.tk = load ptr, ptr %i.ou, align 8, !alias.scope !141786, !noalias !141759, !nonnull !175, !noundef !175
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.th
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tl, ptr nonnull readonly align 1 %i.ti, i64 %i.tc, i1 false), !noalias !141787
  %i.tm = add nuw i64 %i.th, %i.tc                ; 4 uses
  store i64 %i.tm, ptr %i.oo, align 8, !alias.scope !141786, !noalias !141759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141752
  %i.tn = icmp eq i64 %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tn, label %.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa343 = phi i64 [ %i.tm, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.rx, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.to = load i64, ptr %.val9.i6.i.i69.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141788, !noalias !141789, !noundef !175
  %i.tp = icmp eq i64 %i.to, %.lcssa343
  br i1 %i.tp, label %.thread110.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i, label %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5244cb386e3ed4f7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339) ]
  %i.tq = load i16, ptr %i.sf, align 2, !noalias !141763, !noundef !175
  %i.tr = zext i16 %i.tq to i64
  %i.ts = icmp samesign ult i64 %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.tr
  br i1 %i.ts, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.preheader, !llvm.loop !141093

.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.preheader: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa344 = phi i64 [ %i.rx, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.tm, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa342 = phi i64 [ %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6e259aa8814af25E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.preheader, %bb.bu
  %.sroa.0.038.i.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.i.i = phi ptr [ %i.tt, %bb.bu ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i84.i.i.i.i.i.i.i.i = phi i64 [ %i.tu, %bb.bu ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.tt = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.i.i, align 8, !noalias !141790, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i85.i.i.i.i.i.i.i.i = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i85.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i
  %i.tu = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i84.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.i.i, i64 52
  %i.tw = load i16, ptr %i.tv, align 4, !noalias !141790 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 54
  %i.ty = load i16, ptr %i.tx, align 2, !noalias !141763, !noundef !175
  %i.tz = icmp ult i16 %i.tw, %i.ty
  br i1 %i.tz, label %bb.bv, label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.ua = zext i16 %i.tw to i64                   ; 2 uses
  %i.ub = icmp eq i64 %i.tu, 0
  %i.uc = add nuw nsw i64 %i.ua, 1                ; 2 uses
  br i1 %i.ub, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge, label %bb.bw

.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit416, %.new417, %bb.bv
  %.sroa.22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph338.be = phi i64 [ %i.uc, %bb.bv ], [ 0, %.new417 ], [ 0, %.prol.loopexit416 ]
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.ph339.be = phi ptr [ %i.tt, %bb.bv ], [ %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit416 ], [ %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.7, %.new417 ]
  br label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer

bb.bw:                                            ; preds = %bb.bv
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 72
  %i.ue = icmp ult i16 %i.tw, 11
  call void @llvm.assume(i1 %i.ue), !noalias !141730
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.uc ; 2 uses
  %xtraiter419 = and i64 %i.tu, 7                 ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.prol.loopexit416, label %.prol.preheader415

.prol.preheader415:                               ; preds = %bb.bw, %.prol.preheader415
  %.pn30.in.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ug, %.prol.preheader415 ], [ %i.uf, %bb.bw ]
  %.pn28.in.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.prol, %.prol.preheader415 ], [ %i.tu, %bb.bw ]
  %prol.iter421 = phi i64 [ %prol.iter421.next, %.prol.preheader415 ], [ 0, %bb.bw ]
  %.pn28.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i.prol, align 8, !noalias !141791, !nonnull !175, !noundef !175 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter421.next = add i64 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i64 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %.prol.loopexit416, label %.prol.preheader415, !llvm.loop !141099

.prol.loopexit416:                                ; preds = %.prol.preheader415, %bb.bw
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bw ], [ %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.prol, %.prol.preheader415 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.uf, %bb.bw ], [ %i.ug, %.prol.preheader415 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.tu, %bb.bw ], [ %.pn28.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.prol, %.prol.preheader415 ]
  %i.uh = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i84.i.i.i.i.i.i.i.i, 7
  br i1 %i.uh, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge, label %.new417

.new417:                                          ; preds = %.prol.loopexit416, %.new417
  %.pn30.in.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i = phi ptr [ %i.uq, %.new417 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i.unr, %.prol.loopexit416 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.7, %.new417 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.unr, %.prol.loopexit416 ]
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.ui = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ui, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.uj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.1, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.uj, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.uk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.2, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.uk, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.3, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ul, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.um = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.4, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.um, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.un = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.5, i64 72
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.un, align 8, !noalias !141791, !nonnull !175, !noundef !175
  %i.uo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.6, i64 72
  %.pn28.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.uo, align 8, !noalias !141791, !nonnull !175, !noundef !175 ; 2 uses
  %i.up = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.7, 0
  %i.uq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i.7, i64 72
  br i1 %i.up, label %.lr.ph.split.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.outer.backedge, label %.new417

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i92.i.i.i.i.i.i.i.i unwind label %bb.by, !noalias !141792

.noexc.i.i.i.i.i.i.i92.i.i.i.i.i.i.i.i:           ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.ur = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !141730
  unreachable

.thread110.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i:  ; preds = %.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bg
  %.lcssa370.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.ox, %bb.bg ], [ %.lcssa343, %.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i69.i.i.i.i.i.i.i.i, i64 noundef %.lcssa370.sink.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc65.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141793

.noexc65.i.i:                                     ; preds = %.thread110.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i96.i.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !noalias !141793
  br label %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.noexc65.i.i, %.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bg
  %.sink392.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa343, %.thread108.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ox, %bb.bg ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i96.i.i.i.i.i.i.i.i, %.noexc65.i.i ] ; 3 uses
  %i.us = icmp sgt i64 %.sink392.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.us)
  %i.ut = load ptr, ptr %i.ou, align 8, !noalias !141793, !nonnull !175, !noundef !175
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 %.sink392.i.i.i.i.i.i.i.i
  store i8 125, ptr %i.uu, align 1, !noalias !141793
  %storemerge.i.i.i.i.i94.i.i.i.i.i.i.i.i = add nuw i64 %.sink392.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i94.i.i.i.i.i.i.i.i, ptr %i.oo, align 8, !noalias !141793
  %i.uv = getelementptr inbounds nuw i8, ptr %2, i64 1064
  call void @llvm.experimental.noalias.scope.decl(metadata !141794)
  call void @llvm.experimental.noalias.scope.decl(metadata !141795)
  %.val.i.i.i114.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141796, !nonnull !175, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141797)
  call void @llvm.experimental.noalias.scope.decl(metadata !141798)
  call void @llvm.experimental.noalias.scope.decl(metadata !141799)
  call void @llvm.experimental.noalias.scope.decl(metadata !141800)
  %i.uw = getelementptr inbounds nuw i8, ptr %.val.i.i.i114.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ux = load i64, ptr %i.uw, align 8, !alias.scope !141801, !noalias !141802, !noundef !175 ; 3 uses
  %i.uy = load i64, ptr %.val.i.i.i114.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141801, !noalias !141802, !noundef !175
  %i.uz = icmp eq i64 %i.uy, %i.ux
  br i1 %i.uz, label %bb.bz, label %bb.ca, !prof !178

bb.bz:                                            ; preds = %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i114.i.i.i.i.i.i.i.i, i64 noundef %i.ux, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141803

.noexc66.i.i:                                     ; preds = %bb.bz
  %.pre.i.i.i.i.i.i.i.i.i186.i.i.i.i.i.i.i.i = load i64, ptr %i.uw, align 8, !alias.scope !141804, !noalias !141802
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc66.i.i, %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.va = phi i64 [ %i.ux, %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i186.i.i.i.i.i.i.i.i, %.noexc66.i.i ] ; 3 uses
  %i.vb = icmp sgt i64 %i.va, -1
  call void @llvm.assume(i1 %i.vb)
  %i.vc = getelementptr inbounds nuw i8, ptr %.val.i.i.i114.i.i.i.i.i.i.i.i, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !141804, !noalias !141802, !nonnull !175, !noundef !175
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.va
  store i8 44, ptr %i.ve, align 1, !noalias !141805
  %i.vf = add nuw i64 %i.va, 1
  store i64 %i.vf, ptr %i.uw, align 8, !alias.scope !141804, !noalias !141802
  %.val9.pre.i.i.i116.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141796
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !141552
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.pre.i.i.i116.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1464, i64 noundef 9)
          to label %.noexc67.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc67.i.i:                                     ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !141806)
  %.val.i5.i.i118.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141807, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141808)
  call void @llvm.experimental.noalias.scope.decl(metadata !141809)
  call void @llvm.experimental.noalias.scope.decl(metadata !141810)
  call void @llvm.experimental.noalias.scope.decl(metadata !141811)
  %i.vg = getelementptr inbounds nuw i8, ptr %.val.i5.i.i118.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.vh = load i64, ptr %i.vg, align 8, !alias.scope !141812, !noalias !141813, !noundef !175 ; 3 uses
  %i.vi = load i64, ptr %.val.i5.i.i118.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141812, !noalias !141813, !noundef !175
  %i.vj = icmp eq i64 %i.vi, %i.vh
  br i1 %i.vj, label %bb.cb, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i119.i.i.i.i.i.i.i.i, !prof !178

bb.cb:                                            ; preds = %.noexc67.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i118.i.i.i.i.i.i.i.i, i64 noundef %i.vh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc68.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141814

.noexc68.i.i:                                     ; preds = %bb.cb
  %.pre.i.i.i.i.i.i.i7.i.i185.i.i.i.i.i.i.i.i = load i64, ptr %i.vg, align 8, !alias.scope !141815, !noalias !141813
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i119.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i119.i.i.i.i.i.i.i.i: ; preds = %.noexc68.i.i, %.noexc67.i.i
  %i.vk = phi i64 [ %i.vh, %.noexc67.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i185.i.i.i.i.i.i.i.i, %.noexc68.i.i ] ; 3 uses
  %i.vl = icmp sgt i64 %i.vk, -1
  call void @llvm.assume(i1 %i.vl)
  %i.vm = getelementptr inbounds nuw i8, ptr %.val.i5.i.i118.i.i.i.i.i.i.i.i, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !alias.scope !141815, !noalias !141813, !nonnull !175, !noundef !175
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vk
  store i8 58, ptr %i.vo, align 1, !noalias !141816
  %i.vp = add nuw i64 %i.vk, 1
  store i64 %i.vp, ptr %i.vg, align 8, !alias.scope !141815, !noalias !141813
  %.val9.i6.i.i120.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !141817, !noalias !141807, !nonnull !175, !align !179, !noundef !175 ; 26 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141818)
  call void @llvm.experimental.noalias.scope.decl(metadata !141819)
  %i.vq = load ptr, ptr %i.uv, align 8, !alias.scope !141820, !noundef !175 ; 4 uses
  %.not.i.not.i.i.i.i.i121.i.i.i.i.i.i.i.i = icmp eq ptr %i.vq, null ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.vs = load i64, ptr %i.vr, align 8, !alias.scope !141821 ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.vu = load i64, ptr %i.vt, align 8, !alias.scope !141821
  %.sink.i.i.i.i.i.i122.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i121.i.i.i.i.i.i.i.i, i64 0, i64 %i.vu ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141822)
  call void @llvm.experimental.noalias.scope.decl(metadata !141823)
  call void @llvm.experimental.noalias.scope.decl(metadata !141824)
  call void @llvm.experimental.noalias.scope.decl(metadata !141825)
end_hunk_9
begin_hunk_10_@"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E":bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #78
          to label %.critedge.i54.i.i.i.i.i182.i.i.i.i.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141839

.critedge.i54.i.i.i.i.i182.i.i.i.i.i.i.cont.i.i:  ; preds = %.critedge.i54.i.i.i.i.i182.i.i.i.i.i.i.invoke.i.i
  unreachable

.lr.ph.split.i.i.i.i.i.i.i131.i.i.i.i.i.i.i.i:    ; preds = %.prol.loopexit426, %.new427, %bb.cg, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i73136.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wy, %bb.cg ], [ %.sroa.012.0.lcssa.i.i90.i.i.i.i.i129.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.wy, %.new427 ], [ %i.wy, %.prol.loopexit426 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xf, %bb.cg ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.xf, %.new427 ], [ %i.xf, %.prol.loopexit426 ] ; 3 uses
  %.sroa.7.0.i.i.i79.i.i.i.i.i132.i.i.i.i.i.i.i.i = phi i64 [ %i.xh, %bb.cg ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.new427 ], [ 0, %.prol.loopexit426 ] ; 3 uses
  %.sroa.07.0.i.i.i80.i.i.i.i.i133.i.i.i.i.i.i.i.i = phi ptr [ %i.wy, %bb.cg ], [ %.sroa.012.0.lcssa.i.i90.i.i.i.i.i129.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i60.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i77.i.i.i.i.i180.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit426 ], [ %.pn30.i.i.i.i77.i.i.i.i.i180.i.i.i.i.i.i.i.i.7, %.new427 ] ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.xy = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.xy), !noalias !141836
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %i.xx, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yc = getelementptr i8, ptr %i.xz, i64 8
  %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.yc, align 8, !noalias !141840, !nonnull !175, !noundef !175
  %i.yd = getelementptr i8, ptr %i.xz, i64 16
  %.val10.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.yd, align 8, !noalias !141840
  %.val11.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.yb, align 4, !noalias !141840
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i120.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc71.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc71.i.i:                                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i131.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !141841)
  call void @llvm.experimental.noalias.scope.decl(metadata !141842)
  call void @llvm.experimental.noalias.scope.decl(metadata !141843)
  call void @llvm.experimental.noalias.scope.decl(metadata !141844)
  %i.ye = load i64, ptr %i.vv, align 8, !alias.scope !141845, !noalias !141846, !noundef !175 ; 3 uses
  %i.yf = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141845, !noalias !141846, !noundef !175
  %i.yg = icmp eq i64 %i.yf, %i.ye
  br i1 %i.yg, label %bb.ck, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i, !prof !178

bb.ck:                                            ; preds = %.noexc71.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.ye, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141847

.noexc72.i.i:                                     ; preds = %bb.ck
  %.pre.i.i.i.i.i.i.i10.i.i.i.peel.i.i.i.i.i.i.i172.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !141848, !noalias !141846
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i: ; preds = %.noexc72.i.i, %.noexc71.i.i
  %i.yh = phi i64 [ %i.ye, %.noexc71.i.i ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.peel.i.i.i.i.i.i.i172.i.i.i.i.i.i.i.i, %.noexc72.i.i ] ; 3 uses
  %i.yi = icmp sgt i64 %i.yh, -1
  call void @llvm.assume(i1 %i.yi)
  %i.yj = load ptr, ptr %i.wb, align 8, !alias.scope !141848, !noalias !141846, !nonnull !175, !noundef !175
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.yh
  store i8 58, ptr %i.yk, align 1, !noalias !141849
  %i.yl = add nuw i64 %i.yh, 1
  store i64 %i.yl, ptr %i.vv, align 8, !alias.scope !141848, !noalias !141846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141850
  %i.ym = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val11.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.c)
          to label %.noexc73.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141851 ; 2 uses

.noexc73.i.i:                                     ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i
  %i.yn = sub nuw i64 10, %i.ym                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141852)
  call void @llvm.experimental.noalias.scope.decl(metadata !141853)
  call void @llvm.experimental.noalias.scope.decl(metadata !141854)
  call void @llvm.experimental.noalias.scope.decl(metadata !141855)
  %i.yo = load i64, ptr %i.vv, align 8, !alias.scope !141856, !noalias !141857, !noundef !175 ; 3 uses
  %i.yp = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141856, !noalias !141857, !noundef !175
  %i.yq = sub i64 %i.yp, %i.yo
  %i.yr = icmp ugt i64 %i.yn, %i.yq
  br i1 %i.yr, label %bb.cl, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.cl:                                            ; preds = %.noexc73.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.yo, i64 noundef %i.yn, i64 noundef 1, i64 noundef 1)
          to label %.noexc74.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141858

.noexc74.i.i:                                     ; preds = %bb.cl
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i171.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !141859, !noalias !141857
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc74.i.i, %.noexc73.i.i
  %i.ys = phi i64 [ %i.yo, %.noexc73.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i171.i.i.i.i.i.i.i.i, %.noexc74.i.i ] ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ym
  %i.yu = icmp sgt i64 %i.ys, -1
  call void @llvm.assume(i1 %i.yu)
  %i.yv = load ptr, ptr %i.wb, align 8, !alias.scope !141859, !noalias !141857, !nonnull !175, !noundef !175
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.ys
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yw, ptr nonnull readonly align 1 %i.yt, i64 %i.yn, i1 false), !noalias !141860
  %i.yx = add nuw i64 %i.ys, %i.yn                ; 3 uses
  store i64 %i.yx, ptr %i.vv, align 8, !alias.scope !141859, !noalias !141857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141850
  %i.yy = icmp eq i64 %.sink.i.i.i.i.i.i122.i.i.i.i.i.i.i.i, 1
  br i1 %i.yy, label %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.yz = add i64 %.sink.i.i.i.i.i.i122.i.i.i.i.i.i.i.i, -2
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i133.i.i.i.i.i.i.i.i, i64 318
  %i.zb = load i16, ptr %i.za, align 2, !noalias !141861, !noundef !175
  %i.zc = zext i16 %i.zb to i64
  %i.zd = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i132.i.i.i.i.i.i.i.i, %i.zc
  br i1 %i.zd, label %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i135.i.i.i.i.i.i.i.i

.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ze = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i132.i.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader: ; preds = %.prol.loopexit433, %.new434, %bb.cn, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i174.sink233.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i133.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zf, %bb.cn ], [ %i.zf, %.new434 ], [ %i.zf, %.prol.loopexit433 ]
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i132.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zm, %bb.cn ], [ %i.zm, %.new434 ], [ %i.zm, %.prol.loopexit433 ]
  %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ze, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zo, %bb.cn ], [ 0, %.new434 ], [ 0, %.prol.loopexit433 ]
  %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i133.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zf, %bb.cn ], [ %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit433 ], [ %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.7, %.new434 ]
  br label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i135.i.i.i.i.i.i.i.i:    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cm
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i136.i.i.i.i.i.i.i.i = phi ptr [ %i.zf, %bb.cm ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i133.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i137.i.i.i.i.i.i.i.i = phi i64 [ %i.zg, %bb.cm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i22.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.zf = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i136.i.i.i.i.i.i.i.i, align 8, !noalias !141862, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i138.i.i.i.i.i.i.i.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i138.i.i.i.i.i.i.i.i, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i135.i.i.i.i.i.i.i.i
  %i.zg = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i137.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i136.i.i.i.i.i.i.i.i, i64 316
  %i.zi = load i16, ptr %i.zh, align 4, !noalias !141862 ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 318
  %i.zk = load i16, ptr %i.zj, align 2, !noalias !141861, !noundef !175
  %i.zl = icmp ult i16 %i.zi, %i.zk
  br i1 %i.zl, label %bb.cn, label %.lr.ph.i.i.i.i28.i.i.i.i.i135.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.zm = zext i16 %i.zi to i64                   ; 4 uses
  %i.zn = icmp eq i64 %i.zg, 0
  %i.zo = add nuw nsw i64 %i.zm, 1                ; 2 uses
  br i1 %i.zn, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zf, i64 320
  %i.zq = icmp ult i16 %i.zi, 11
  call void @llvm.assume(i1 %i.zq), !noalias !141836
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.zo ; 2 uses
  %xtraiter436 = and i64 %i.zg, 7                 ; 2 uses
  %lcmp.mod437.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %.prol.loopexit433, label %.prol.preheader432

.prol.preheader432:                               ; preds = %bb.co, %.prol.preheader432
  %.pn30.in.i.i.i.i36.i.i.i.i.i139.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.zs, %.prol.preheader432 ], [ %i.zr, %bb.co ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i140.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i141.i.i.i.i.i.i.i.i.prol, %.prol.preheader432 ], [ %i.zg, %bb.co ]
  %prol.iter438 = phi i64 [ %prol.iter438.next, %.prol.preheader432 ], [ 0, %bb.co ]
  %.pn28.i.i.i.i38.i.i.i.i.i141.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i140.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i139.i.i.i.i.i.i.i.i.prol, align 8, !noalias !141863, !nonnull !175, !noundef !175 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.prol.loopexit433, label %.prol.preheader432, !llvm.loop !141252

.prol.loopexit433:                                ; preds = %.prol.preheader432, %bb.co
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.co ], [ %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.prol, %.prol.preheader432 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i139.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.zr, %bb.co ], [ %i.zs, %.prol.preheader432 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i140.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.zg, %bb.co ], [ %.pn28.i.i.i.i38.i.i.i.i.i141.i.i.i.i.i.i.i.i.prol, %.prol.preheader432 ]
  %i.zt = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i137.i.i.i.i.i.i.i.i, 7
  br i1 %i.zt, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader, label %.new434

.new434:                                          ; preds = %.prol.loopexit433, %.new434
  %.pn30.in.i.i.i.i36.i.i.i.i.i139.i.i.i.i.i.i.i.i = phi ptr [ %i.aac, %.new434 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i139.i.i.i.i.i.i.i.i.unr, %.prol.loopexit433 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i140.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i141.i.i.i.i.i.i.i.i.7, %.new434 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i140.i.i.i.i.i.i.i.i.unr, %.prol.loopexit433 ]
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i139.i.i.i.i.i.i.i.i, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.zu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i, i64 320
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.zu, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.zv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.1, i64 320
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.zv, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.zw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.2, i64 320
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.zw, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.zx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.3, i64 320
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.zx, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.zy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.4, i64 320
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.zy, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.zz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.5, i64 320
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.zz, align 8, !noalias !141863, !nonnull !175, !noundef !175
  %i.aaa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.6, i64 320
  %.pn28.i.i.i.i38.i.i.i.i.i141.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i140.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.aaa, align 8, !noalias !141863, !nonnull !175, !noundef !175 ; 2 uses
  %i.aab = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i141.i.i.i.i.i.i.i.i.7, 0
  %i.aac = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i142.i.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.aab, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader, label %.new434

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i135.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i170.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !141864

.noexc.i.i45.i.i.i.i.i170.i.i.i.i.i.i.i.i:        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !141836
  unreachable

.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer: ; preds = %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i174.sink233.i.i.i.i.i.i.i.i.i.i.i.i.i.ph315 = phi ptr [ %.sroa.0.0.ph.i.i.i174.sink233.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader ], [ %i.adh, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i.ph316 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader ], [ %i.ado, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph = phi i64 [ %i.yx, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa319, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i146.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.yz, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa320, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph317 = phi i64 [ %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph317.be, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318 = phi ptr [ %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318.be, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink233.i.i.i.i.i.i.i.i.i.i.i.i.i.ph315, i64 8
  %i.aaf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i.ph316, 11
  call void @llvm.assume(i1 %i.aaf), !noalias !141836
  %i.aag = getelementptr inbounds nuw [24 x i8], ptr %i.aae, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i.ph316 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink233.i.i.i.i.i.i.i.i.i.i.i.i.i.ph315, i64 272
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i.ph316
  %i.aaj = getelementptr i8, ptr %i.aag, i64 8
  %.val9.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.aaj, align 8, !noalias !141840 ; 2 uses
  %i.aak = getelementptr i8, ptr %i.aag, i64 16
  %.val10.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.aak, align 8, !noalias !141840
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i32, ptr %i.aai, align 4, !noalias !141840
  call void @llvm.experimental.noalias.scope.decl(metadata !141865)
  call void @llvm.experimental.noalias.scope.decl(metadata !141866)
  call void @llvm.experimental.noalias.scope.decl(metadata !141867)
  call void @llvm.experimental.noalias.scope.decl(metadata !141868)
  %i.aal = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141869, !noalias !141870, !noundef !175
  %i.aam = icmp eq i64 %i.aal, %.ph
  br i1 %i.aam, label %bb.cr, label %bb.cs, !prof !178

bb.cr:                                            ; preds = %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %.ph, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc75.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141871

.noexc75.i.i.peel:                                ; preds = %bb.cr
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i169.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.vv, align 8, !alias.scope !141872, !noalias !141870
  br label %bb.cs

bb.cs:                                            ; preds = %.noexc75.i.i.peel, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer
  %i.aan = phi i64 [ %.ph, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i169.i.i.i.i.i.i.i.i.peel, %.noexc75.i.i.peel ] ; 3 uses
  %i.aao = icmp sgt i64 %i.aan, -1
  call void @llvm.assume(i1 %i.aao)
  %i.aap = load ptr, ptr %i.wb, align 8, !alias.scope !141872, !noalias !141870, !nonnull !175, !noundef !175
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aan
  store i8 44, ptr %i.aaq, align 1, !noalias !141873
  %i.aar = add nuw i64 %i.aan, 1
  store i64 %i.aar, ptr %i.vv, align 8, !alias.scope !141872, !noalias !141870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i.peel) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i120.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i.peel)
          to label %.noexc76.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc76.i.i.peel:                                ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !141874)
  call void @llvm.experimental.noalias.scope.decl(metadata !141875)
  call void @llvm.experimental.noalias.scope.decl(metadata !141876)
  call void @llvm.experimental.noalias.scope.decl(metadata !141877)
  %i.aas = load i64, ptr %i.vv, align 8, !alias.scope !141878, !noalias !141879, !noundef !175 ; 3 uses
  %i.aat = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141878, !noalias !141879, !noundef !175
  %i.aau = icmp eq i64 %i.aat, %i.aas
  br i1 %i.aau, label %bb.ct, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i.peel, !prof !178

bb.ct:                                            ; preds = %.noexc76.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.aas, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc77.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141880

.noexc77.i.i.peel:                                ; preds = %bb.ct
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i168.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.vv, align 8, !alias.scope !141881, !noalias !141879
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i.peel: ; preds = %.noexc77.i.i.peel, %.noexc76.i.i.peel
  %i.aav = phi i64 [ %i.aas, %.noexc76.i.i.peel ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i168.i.i.i.i.i.i.i.i.peel, %.noexc77.i.i.peel ] ; 3 uses
  %i.aaw = icmp sgt i64 %i.aav, -1
  call void @llvm.assume(i1 %i.aaw)
  %i.aax = load ptr, ptr %i.wb, align 8, !alias.scope !141881, !noalias !141879, !nonnull !175, !noundef !175
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aav
  store i8 58, ptr %i.aay, align 1, !noalias !141882
  %i.aaz = add nuw i64 %i.aav, 1
  store i64 %i.aaz, ptr %i.vv, align 8, !alias.scope !141881, !noalias !141879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141883
  %i.aba = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.c)
          to label %.noexc78.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141884 ; 2 uses

.noexc78.i.i.peel:                                ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i.peel
  %i.abb = sub nuw i64 10, %i.aba                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141885)
  call void @llvm.experimental.noalias.scope.decl(metadata !141886)
  call void @llvm.experimental.noalias.scope.decl(metadata !141887)
  call void @llvm.experimental.noalias.scope.decl(metadata !141888)
  %i.abc = load i64, ptr %i.vv, align 8, !alias.scope !141889, !noalias !141890, !noundef !175 ; 3 uses
  %i.abd = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141889, !noalias !141890, !noundef !175
  %i.abe = sub i64 %i.abd, %i.abc
  %i.abf = icmp ugt i64 %i.abb, %i.abe
  br i1 %i.abf, label %bb.cu, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.cu:                                            ; preds = %.noexc78.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.abc, i64 noundef %i.abb, i64 noundef 1, i64 noundef 1)
          to label %.noexc79.i.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141891

.noexc79.i.i.peel:                                ; preds = %bb.cu
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i167.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.vv, align 8, !alias.scope !141892, !noalias !141890
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc79.i.i.peel, %.noexc78.i.i.peel
  %i.abg = phi i64 [ %i.abc, %.noexc78.i.i.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i167.i.i.i.i.i.i.i.i.peel, %.noexc79.i.i.peel ] ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aba
  %i.abi = icmp sgt i64 %i.abg, -1
  call void @llvm.assume(i1 %i.abi)
  %i.abj = load ptr, ptr %i.wb, align 8, !alias.scope !141892, !noalias !141890, !nonnull !175, !noundef !175
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abk, ptr nonnull readonly align 1 %i.abh, i64 %i.abb, i1 false), !noalias !141893
  %i.abl = add nuw i64 %i.abg, %i.abb             ; 4 uses
  store i64 %i.abl, ptr %i.vv, align 8, !alias.scope !141892, !noalias !141890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141883
  %i.abm = icmp eq i64 %.sroa.44.0.i.i.i.i.i146.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.abm, label %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.abn = add i64 %.sroa.44.0.i.i.i.i.i146.i.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318) ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318, i64 318
  %i.abp = load i16, ptr %i.abo, align 2, !noalias !141894, !noundef !175
  %i.abq = zext i16 %i.abp to i64
  %i.abr = icmp ult i64 %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph317, %i.abq
  br i1 %i.abr, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.peel.newph: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318, i64 8
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318, i64 272
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318, i64 318
  br label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i:      ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph317, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.abv = phi i64 [ %i.abl, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.adb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i146.i.i.i.i.i.i.i.i = phi i64 [ %i.abn, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.add, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abw = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.abw), !noalias !141836
  %i.abx = getelementptr inbounds nuw [24 x i8], ptr %i.abs, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink232.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abz = getelementptr i8, ptr %i.abx, i64 8
  %.val9.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i = load ptr, ptr %i.abz, align 8, !noalias !141840 ; 2 uses
  %i.aca = getelementptr i8, ptr %i.abx, i64 16
  %.val10.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i = load i64, ptr %i.aca, align 8, !noalias !141840
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aby, align 4, !noalias !141840
  call void @llvm.experimental.noalias.scope.decl(metadata !141895)
  call void @llvm.experimental.noalias.scope.decl(metadata !141896)
  call void @llvm.experimental.noalias.scope.decl(metadata !141897)
  call void @llvm.experimental.noalias.scope.decl(metadata !141898)
  %i.acb = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141899, !noalias !141870, !noundef !175
  %i.acc = icmp eq i64 %i.acb, %i.abv
  br i1 %i.acc, label %bb.cv, label %bb.cw, !prof !178

bb.cv:                                            ; preds = %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.abv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc75.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141900

.noexc75.i.i:                                     ; preds = %bb.cv
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i169.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !141901, !noalias !141870
  br label %bb.cw

bb.cw:                                            ; preds = %.noexc75.i.i, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i
  %i.acd = phi i64 [ %i.abv, %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i169.i.i.i.i.i.i.i.i, %.noexc75.i.i ] ; 3 uses
  %i.ace = icmp sgt i64 %i.acd, -1
  call void @llvm.assume(i1 %i.ace)
  %i.acf = load ptr, ptr %i.wb, align 8, !alias.scope !141901, !noalias !141870, !nonnull !175, !noundef !175
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.acd
  store i8 44, ptr %i.acg, align 1, !noalias !141902
  %i.ach = add nuw i64 %i.acd, 1
  store i64 %i.ach, ptr %i.vv, align 8, !alias.scope !141901, !noalias !141870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i.i120.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i)
          to label %.noexc76.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc76.i.i:                                     ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !141903)
  call void @llvm.experimental.noalias.scope.decl(metadata !141904)
  call void @llvm.experimental.noalias.scope.decl(metadata !141905)
  call void @llvm.experimental.noalias.scope.decl(metadata !141906)
  %i.aci = load i64, ptr %i.vv, align 8, !alias.scope !141907, !noalias !141879, !noundef !175 ; 3 uses
  %i.acj = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141907, !noalias !141879, !noundef !175
  %i.ack = icmp eq i64 %i.acj, %i.aci
  br i1 %i.ack, label %bb.cx, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i, !prof !178

bb.cx:                                            ; preds = %.noexc76.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.aci, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141908

.noexc77.i.i:                                     ; preds = %bb.cx
  %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i168.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !141909, !noalias !141879
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i: ; preds = %.noexc77.i.i, %.noexc76.i.i
  %i.acl = phi i64 [ %i.aci, %.noexc76.i.i ], [ %.pre.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i168.i.i.i.i.i.i.i.i, %.noexc77.i.i ] ; 3 uses
  %i.acm = icmp sgt i64 %i.acl, -1
  call void @llvm.assume(i1 %i.acm)
  %i.acn = load ptr, ptr %i.wb, align 8, !alias.scope !141909, !noalias !141879, !nonnull !175, !noundef !175
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acl
  store i8 58, ptr %i.aco, align 1, !noalias !141910
  %i.acp = add nuw i64 %i.acl, 1
  store i64 %i.acp, ptr %i.vv, align 8, !alias.scope !141909, !noalias !141879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141883
  %i.acq = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.c)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141884 ; 2 uses

.noexc78.i.i:                                     ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i
  %i.acr = sub nuw i64 10, %i.acq                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141911)
  call void @llvm.experimental.noalias.scope.decl(metadata !141912)
  call void @llvm.experimental.noalias.scope.decl(metadata !141913)
  call void @llvm.experimental.noalias.scope.decl(metadata !141914)
  %i.acs = load i64, ptr %i.vv, align 8, !alias.scope !141915, !noalias !141890, !noundef !175 ; 3 uses
  %i.act = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141915, !noalias !141890, !noundef !175
  %i.acu = sub i64 %i.act, %i.acs
  %i.acv = icmp ugt i64 %i.acr, %i.acu
  br i1 %i.acv, label %bb.cy, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.cy:                                            ; preds = %.noexc78.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %i.acs, i64 noundef %i.acr, i64 noundef 1, i64 noundef 1)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141916

.noexc79.i.i:                                     ; preds = %bb.cy
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i167.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !141917, !noalias !141890
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc79.i.i, %.noexc78.i.i
  %i.acw = phi i64 [ %i.acs, %.noexc78.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i167.i.i.i.i.i.i.i.i, %.noexc79.i.i ] ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.acq
  %i.acy = icmp sgt i64 %i.acw, -1
  call void @llvm.assume(i1 %i.acy)
  %i.acz = load ptr, ptr %i.wb, align 8, !alias.scope !141917, !noalias !141890, !nonnull !175, !noundef !175
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.acw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ada, ptr nonnull readonly align 1 %i.acx, i64 %i.acr, i1 false), !noalias !141918
  %i.adb = add nuw i64 %i.acw, %i.acr             ; 4 uses
  store i64 %i.adb, ptr %i.vv, align 8, !alias.scope !141917, !noalias !141890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141883
  %i.adc = icmp eq i64 %.sroa.44.0.i.i.i.i.i146.i.i.i.i.i.i.i.i, 0
  br i1 %i.adc, label %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.add = add i64 %.sroa.44.0.i.i.i.i.i146.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318) ]
  %i.ade = load i16, ptr %i.abu, align 2, !noalias !141894, !noundef !175
  %i.adf = zext i16 %i.ade to i64
  %i.adg = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i, %i.adf
  br i1 %i.adg, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader, !llvm.loop !141331

.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa320 = phi i64 [ %i.abn, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.add, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa319 = phi i64 [ %i.abl, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.adb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader, %bb.cz
  %.sroa.0.038.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i = phi ptr [ %i.adh, %bb.cz ], [ %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318, %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i = phi i64 [ %i.adi, %bb.cz ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.adh = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i, align 8, !noalias !141919, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i = icmp eq ptr %i.adh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i
  %i.adi = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i, i64 316
  %i.adk = load i16, ptr %i.adj, align 4, !noalias !141919 ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 318
  %i.adm = load i16, ptr %i.adl, align 2, !noalias !141894, !noundef !175
  %i.adn = icmp ult i16 %i.adk, %i.adm
  br i1 %i.adn, label %bb.da, label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.ado = zext i16 %i.adk to i64                 ; 2 uses
  %i.adp = icmp eq i64 %i.adi, 0
  %i.adq = add nuw nsw i64 %i.ado, 1              ; 2 uses
  br i1 %i.adp, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, label %bb.db

.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit446, %.new447, %bb.da
  %.sroa.30.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph317.be = phi i64 [ %i.adq, %bb.da ], [ 0, %.new447 ], [ 0, %.prol.loopexit446 ]
  %.sroa.7.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph318.be = phi ptr [ %i.adh, %bb.da ], [ %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit446 ], [ %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.7, %.new447 ]
  br label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer

bb.db:                                            ; preds = %bb.da
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adh, i64 320
  %i.ads = icmp ult i16 %i.adk, 11
  call void @llvm.assume(i1 %i.ads), !noalias !141836
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.adq ; 2 uses
  %xtraiter449 = and i64 %i.adi, 7                ; 2 uses
  %lcmp.mod450.not = icmp eq i64 %xtraiter449, 0
  br i1 %lcmp.mod450.not, label %.prol.loopexit446, label %.prol.preheader445

.prol.preheader445:                               ; preds = %bb.db, %.prol.preheader445
  %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.adu, %.prol.preheader445 ], [ %i.adt, %bb.db ]
  %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.prol, %.prol.preheader445 ], [ %i.adi, %bb.db ]
  %prol.iter451 = phi i64 [ %prol.iter451.next, %.prol.preheader445 ], [ 0, %bb.db ]
  %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.prol, align 8, !noalias !141920, !nonnull !175, !noundef !175 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter451.next = add i64 %prol.iter451, 1   ; 2 uses
  %prol.iter451.cmp.not = icmp eq i64 %prol.iter451.next, %xtraiter449
  br i1 %prol.iter451.cmp.not, label %.prol.loopexit446, label %.prol.preheader445, !llvm.loop !141337

.prol.loopexit446:                                ; preds = %.prol.preheader445, %bb.db
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.db ], [ %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.prol, %.prol.preheader445 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.adt, %bb.db ], [ %i.adu, %.prol.preheader445 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.adi, %bb.db ], [ %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.prol, %.prol.preheader445 ]
  %i.adv = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i, 7
  br i1 %i.adv, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, label %.new447

.new447:                                          ; preds = %.prol.loopexit446, %.new447
  %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i = phi ptr [ %i.aee, %.new447 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.unr, %.prol.loopexit446 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.7, %.new447 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.unr, %.prol.loopexit446 ]
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.adw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.adw, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.adx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.1, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.adx, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.ady = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.2, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ady, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.adz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.3, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.adz, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.aea = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.4, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.aea, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.aeb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.5, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.aeb, align 8, !noalias !141920, !nonnull !175, !noundef !175
  %i.aec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.6, i64 320
  %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.aec, align 8, !noalias !141920, !nonnull !175, !noundef !175 ; 2 uses
  %i.aed = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.7, 0
  %i.aee = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.aed, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, label %.new447, !llvm.loop !141338

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i162.i.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !141921

.noexc.i.i.i.i.i.i.i162.i.i.i.i.i.i.i.i:          ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !141836
  unreachable

.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aeg = phi i64 [ %i.yx, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.adb, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.abl, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.aeh = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141922, !noalias !141923, !noundef !175
  %i.aei = icmp eq i64 %i.aeh, %i.aeg
  br i1 %i.aei, label %.thread167.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i, label %.thread167.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

.thread167.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i:  ; preds = %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.we, %bb.cd ], [ %i.aeg, %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %.sink.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc80.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141924

.noexc80.i.i:                                     ; preds = %.thread167.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i166.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !noalias !141924
  br label %.thread167.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread167.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.noexc80.i.i, %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %.sink393.i.i.i.i.i.i.i.i = phi i64 [ %i.aeg, %.thread165.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.we, %bb.cd ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i166.i.i.i.i.i.i.i.i, %.noexc80.i.i ] ; 3 uses
  %i.aej = icmp sgt i64 %.sink393.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aej)
  %i.aek = load ptr, ptr %i.wb, align 8, !noalias !141924, !nonnull !175, !noundef !175
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %.sink393.i.i.i.i.i.i.i.i
  store i8 125, ptr %i.ael, align 1, !noalias !141924
  %storemerge.i.i.i.i.i164.i.i.i.i.i.i.i.i = add nuw i64 %.sink393.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i164.i.i.i.i.i.i.i.i, ptr %i.vv, align 8, !noalias !141924
  br i1 %i.cq, label %bb.di, label %bb.de

bb.de:                                            ; preds = %.thread167.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !141925)
  call void @llvm.experimental.noalias.scope.decl(metadata !141926)
  call void @llvm.experimental.noalias.scope.decl(metadata !141927)
  %.val.i.i.i12.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141928, !nonnull !175, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141929)
  call void @llvm.experimental.noalias.scope.decl(metadata !141930)
  call void @llvm.experimental.noalias.scope.decl(metadata !141931)
  call void @llvm.experimental.noalias.scope.decl(metadata !141932)
  %i.aem = getelementptr inbounds nuw i8, ptr %.val.i.i.i12.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aen = load i64, ptr %i.aem, align 8, !alias.scope !141933, !noalias !141934, !noundef !175 ; 3 uses
  %i.aeo = load i64, ptr %.val.i.i.i12.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141933, !noalias !141934, !noundef !175
  %i.aep = icmp eq i64 %i.aeo, %i.aen
  br i1 %i.aep, label %bb.df, label %bb.dg, !prof !178

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i12.i.i.i.i.i.i.i, i64 noundef %i.aen, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc81.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141935

.noexc81.i.i:                                     ; preds = %bb.df
  %.pre.i.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.aem, align 8, !alias.scope !141936, !noalias !141934
  br label %bb.dg

bb.dg:                                            ; preds = %.noexc81.i.i, %bb.de
  %i.aeq = phi i64 [ %i.aen, %bb.de ], [ %.pre.i.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i, %.noexc81.i.i ] ; 3 uses
  %i.aer = icmp sgt i64 %i.aeq, -1
  call void @llvm.assume(i1 %i.aer)
  %i.aes = getelementptr inbounds nuw i8, ptr %.val.i.i.i12.i.i.i.i.i.i.i, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !alias.scope !141936, !noalias !141934, !nonnull !175, !noundef !175
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeq
  store i8 44, ptr %i.aeu, align 1, !noalias !141937
  %i.aev = add nuw i64 %i.aeq, 1
  store i64 %i.aev, ptr %i.aem, align 8, !alias.scope !141936, !noalias !141934
  %.val9.pre.i.i.i14.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141928
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !alias.scope !141938, !noalias !141537
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.pre.i.i.i14.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1465, i64 noundef range(i64 13, 22) 13)
          to label %.noexc82.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc82.i.i:                                     ; preds = %bb.dg
  %.val.i5.i.i16.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !141939, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141940)
  call void @llvm.experimental.noalias.scope.decl(metadata !141941)
  call void @llvm.experimental.noalias.scope.decl(metadata !141942)
  call void @llvm.experimental.noalias.scope.decl(metadata !141943)
  %i.aew = getelementptr inbounds nuw i8, ptr %.val.i5.i.i16.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aex = load i64, ptr %i.aew, align 8, !alias.scope !141944, !noalias !141945, !noundef !175 ; 3 uses
  %i.aey = load i64, ptr %.val.i5.i.i16.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !141944, !noalias !141945, !noundef !175
  %i.aez = icmp eq i64 %i.aey, %i.aex
  br i1 %i.aez, label %bb.dh, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i", !prof !178

bb.dh:                                            ; preds = %.noexc82.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i16.i.i.i.i.i.i.i, i64 noundef %i.aex, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141946

.noexc83.i.i:                                     ; preds = %bb.dh
  %.pre.i.i.i.i.i.i.i6.i.i19.i.i.i.i.i.i.i = load i64, ptr %i.aew, align 8, !alias.scope !141947, !noalias !141945
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i": ; preds = %.noexc83.i.i, %.noexc82.i.i
  %i.afa = phi i64 [ %i.aex, %.noexc82.i.i ], [ %.pre.i.i.i.i.i.i.i6.i.i19.i.i.i.i.i.i.i, %.noexc83.i.i ] ; 3 uses
  %i.afb = icmp sgt i64 %i.afa, -1
  call void @llvm.assume(i1 %i.afb)
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i5.i.i16.i.i.i.i.i.i.i, i64 8
  %i.afd = load ptr, ptr %i.afc, align 8, !alias.scope !141947, !noalias !141945, !nonnull !175, !noundef !175
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.afa
  store i8 58, ptr %i.afe, align 1, !noalias !141948
  %i.aff = add nuw i64 %i.afa, 1
  store i64 %i.aff, ptr %i.aew, align 8, !alias.scope !141947, !noalias !141945
  %i.afg = invoke fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.bt, ptr noalias noundef align 8 dereferenceable(8) %i.dm)
          to label %.noexc84.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !141949 ; 2 uses

.noexc84.i.i:                                     ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i"
  %.not57.i.i.i.i.i.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not57.i.i.i.i.i.i.i.i, label %bb.di, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i"
end_hunk_10
begin_hunk_11_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h59a8f6170108c91dE":bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !147061, !nonnull !175, !noundef !175
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 544
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !147061, !nonnull !175, !noundef !175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 544
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !147061, !nonnull !175, !noundef !175
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 544
  %i.an = load ptr, ptr %i.am, align 8, !noalias !147061, !nonnull !175, !noundef !175
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 544
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !147061, !nonnull !175, !noundef !175 ; 2 uses
  %i.aq = add i64 %.sroa.018.020.i.i.i105.i, -8   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.loopexit.i.i88.i, label %.lr.ph.i.i.i103.i

.loopexit.i.i88.i:                                ; preds = %.lr.ph.i.i.i103.i.prol.loopexit, %.lr.ph.i.i.i103.i, %bb.k
  %.sroa.0.0.ph.i.i90.i = phi ptr [ %.sroa.9.i.sroa.6.0.copyload.i, %bb.k ], [ %.lcssa299.unr, %.lr.ph.i.i.i103.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i.i103.i ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.0.ph.i.i90.i, align 8, !noalias !147062, !noundef !175 ; 2 uses
  %.not.i.i4.i.i.i91.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i4.i.i.i91.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.i", label %.lr.ph.i3.i.i92.i

.lr.ph.i3.i.i92.i:                                ; preds = %.loopexit.i.i88.i, %.lr.ph.i3.i.i92.i
  %i.at = phi ptr [ %i.av, %.lr.ph.i3.i.i92.i ], [ %i.as, %.loopexit.i.i88.i ] ; 3 uses
  %.sroa.0.06.i.i.i93.i = phi ptr [ %i.at, %.lr.ph.i3.i.i92.i ], [ %.sroa.0.0.ph.i.i90.i, %.loopexit.i.i88.i ]
  %.sroa.5.05.i.i.i94.i = phi i64 [ %i.au, %.lr.ph.i3.i.i92.i ], [ 0, %.loopexit.i.i88.i ] ; 2 uses
  %i.au = add i64 %.sroa.5.05.i.i.i94.i, 1        ; 2 uses
  %.not.i.i.i.i95.i = icmp eq i64 %.sroa.5.05.i.i.i94.i, 0
  %..i.i.i.i96.i = select i1 %.not.i.i.i.i95.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i93.i, i64 noundef %..i.i.i.i96.i, i64 noundef 8) #77, !noalias !147063
  %i.av = load ptr, ptr %i.at, align 8, !noalias !147062, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i97.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i97.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.loopexit.i", label %.lr.ph.i3.i.i92.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.loopexit.i": ; preds = %.lr.ph.i3.i.i92.i
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = select i1 %i.aw, i64 544, i64 640
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.i"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.i": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.loopexit.i", %.loopexit.i.i88.i
  %.sroa.5.0.lcssa.i.i.i99.i = phi i64 [ 544, %.loopexit.i.i88.i ], [ %i.ax, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.loopexit.i" ]
  %.sroa.0.0.lcssa.i.i.i100.i = phi ptr [ %.sroa.0.0.ph.i.i90.i, %.loopexit.i.i88.i ], [ %i.at, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.loopexit.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i100.i, i64 noundef %.sroa.5.0.lcssa.i.i.i99.i, i64 noundef 8) #77, !noalias !147063
  br label %.noexc.i.backedge

bb.l:                                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5168bcedc4131307E.exit.i.i.i"
  br i1 %i.v, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i", label %.lr.ph.i.i2.i75.i.preheader

.lr.ph.i.i2.i75.i.preheader:                      ; preds = %bb.l
  %xtraiter = and i64 %.sroa.9.i.sroa.7.0.copyload.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.i75.i.prol.loopexit, label %.lr.ph.i.i2.i75.i.prol

.lr.ph.i.i2.i75.i.prol:                           ; preds = %.lr.ph.i.i2.i75.i.preheader, %.lr.ph.i.i2.i75.i.prol
  %.sroa.012.015.i.i.i76.i.prol = phi ptr [ %.sroa.012.0.i.i.i78.i.prol, %.lr.ph.i.i2.i75.i.prol ], [ %.sroa.9.i.sroa.6.0.copyload.i, %.lr.ph.i.i2.i75.i.preheader ]
  %.sroa.011.014.i.i.i77.i.prol = phi i64 [ %i.az, %.lr.ph.i.i2.i75.i.prol ], [ %.sroa.9.i.sroa.7.0.copyload.i, %.lr.ph.i.i2.i75.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.i75.i.prol ], [ 0, %.lr.ph.i.i2.i75.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i76.i.prol, i64 544
  %i.az = add i64 %.sroa.011.014.i.i.i77.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i78.i.prol = load ptr, ptr %i.ay, align 8, !noalias !147064, !nonnull !175, !noundef !175 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.i75.i.prol.loopexit, label %.lr.ph.i.i2.i75.i.prol, !llvm.loop !146912

.lr.ph.i.i2.i75.i.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i75.i.prol, %.lr.ph.i.i2.i75.i.preheader
  %.sroa.012.0.i.i.i78.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i75.i.preheader ], [ %.sroa.012.0.i.i.i78.i.prol, %.lr.ph.i.i2.i75.i.prol ]
  %.sroa.012.015.i.i.i76.i.unr = phi ptr [ %.sroa.9.i.sroa.6.0.copyload.i, %.lr.ph.i.i2.i75.i.preheader ], [ %.sroa.012.0.i.i.i78.i.prol, %.lr.ph.i.i2.i75.i.prol ]
  %.sroa.011.014.i.i.i77.i.unr = phi i64 [ %.sroa.9.i.sroa.7.0.copyload.i, %.lr.ph.i.i2.i75.i.preheader ], [ %i.az, %.lr.ph.i.i2.i75.i.prol ]
  %i.ba = icmp ult i64 %.sroa.9.i.sroa.7.0.copyload.i, 8
  br i1 %i.ba, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i", label %.lr.ph.i.i2.i75.i

.lr.ph.i.i2.i75.i:                                ; preds = %.lr.ph.i.i2.i75.i.prol.loopexit, %.lr.ph.i.i2.i75.i
  %.sroa.012.015.i.i.i76.i = phi ptr [ %.sroa.012.0.i.i.i78.i.7, %.lr.ph.i.i2.i75.i ], [ %.sroa.012.015.i.i.i76.i.unr, %.lr.ph.i.i2.i75.i.prol.loopexit ]
  %.sroa.011.014.i.i.i77.i = phi i64 [ %i.bj, %.lr.ph.i.i2.i75.i ], [ %.sroa.011.014.i.i.i77.i.unr, %.lr.ph.i.i2.i75.i.prol.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i76.i, i64 544
  %.sroa.012.0.i.i.i78.i = load ptr, ptr %i.bb, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i, i64 544
  %.sroa.012.0.i.i.i78.i.1 = load ptr, ptr %i.bc, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i.1, i64 544
  %.sroa.012.0.i.i.i78.i.2 = load ptr, ptr %i.bd, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i.2, i64 544
  %.sroa.012.0.i.i.i78.i.3 = load ptr, ptr %i.be, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i.3, i64 544
  %.sroa.012.0.i.i.i78.i.4 = load ptr, ptr %i.bf, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i.4, i64 544
  %.sroa.012.0.i.i.i78.i.5 = load ptr, ptr %i.bg, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i.5, i64 544
  %.sroa.012.0.i.i.i78.i.6 = load ptr, ptr %i.bh, align 8, !noalias !147064, !nonnull !175, !noundef !175
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i78.i.6, i64 544
  %i.bj = add i64 %.sroa.011.014.i.i.i77.i, -8    ; 2 uses
  %.sroa.012.0.i.i.i78.i.7 = load ptr, ptr %i.bi, align 8, !noalias !147064, !nonnull !175, !noundef !175 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i", label %.lr.ph.i.i2.i75.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i": ; preds = %.lr.ph.i.i2.i75.i.prol.loopexit, %.lr.ph.i.i2.i75.i, %bb.l
  %.sroa.05.0.copyload.i.i.i49.i = phi ptr [ %.sroa.9.i.sroa.6.0.copyload.i, %bb.l ], [ %.sroa.012.0.i.i.i78.i.lcssa.unr, %.lr.ph.i.i2.i75.i.prol.loopexit ], [ %.sroa.012.0.i.i.i78.i.7, %.lr.ph.i.i2.i75.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i49.i, i64 538
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !147065, !noundef !175
  %.not.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i50.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i.i57.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i"
  %.sroa.12.0.i.ph = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i" ], [ %i.bo, %._crit_edge.i.i.i.i.i57.i ], [ %i.bo, %.new ], [ %i.bo, %.prol.loopexit ]
  %.sroa.25.1.i.ph = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i" ], [ %i.bq, %._crit_edge.i.i.i.i.i57.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.9.1.i.ph = phi ptr [ %.sroa.05.0.copyload.i.i.i49.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i" ], [ %i.bn, %._crit_edge.i.i.i.i.i57.i ], [ %.pn30.i.i.i.i.i.i64.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i64.i.7, %.new ]
  %.ph = phi ptr [ %.sroa.05.0.copyload.i.i.i49.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i" ], [ %i.bn, %._crit_edge.i.i.i.i.i57.i ], [ %i.bn, %.new ], [ %i.bn, %.prol.loopexit ]
  br label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i50.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i", %bb.n
  %.sroa.0.060.i.i.i.i.i51.i = phi ptr [ %i.bn, %bb.n ], [ %.sroa.05.0.copyload.i.i.i49.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i52.i = phi i64 [ %i.cf, %bb.n ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i46.i" ] ; 4 uses
  %i.bn = load ptr, ptr %.sroa.0.060.i.i.i.i.i51.i, align 8, !noalias !147066, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i.i53.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i53.i, label %bb.o, label %bb.n

._crit_edge.i.i.i.i.i57.i:                        ; preds = %bb.n
  %i.bo = zext i16 %i.ch to i64                   ; 4 uses
  %i.bp = icmp eq i64 %i.cf, 0
  %i.bq = add nuw nsw i64 %i.bo, 1                ; 2 uses
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i57.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 544
  %i.bs = icmp ult i16 %i.ch, 11
  tail call void @llvm.assume(i1 %i.bs), !noalias !147067
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  %xtraiter346 = and i64 %i.cf, 7                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.m, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i61.i.prol = phi ptr [ %i.bu, %.prol.preheader ], [ %i.bt, %bb.m ]
  %.pn28.in.i.i.i.i.i.i62.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i63.i.prol, %.prol.preheader ], [ %i.cf, %bb.m ]
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.prol.preheader ], [ 0, %bb.m ]
  %.pn28.i.i.i.i.i.i63.i.prol = add i64 %.pn28.in.i.i.i.i.i.i62.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i64.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i61.i.prol, align 8, !noalias !147068, !nonnull !175, !noundef !175 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.prol, i64 544 ; 2 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !146929

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.m
  %.pn30.i.i.i.i.i.i64.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i.i.i64.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i61.i.unr = phi ptr [ %i.bt, %bb.m ], [ %i.bu, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i62.i.unr = phi i64 [ %i.cf, %bb.m ], [ %.pn28.i.i.i.i.i.i63.i.prol, %.prol.preheader ]
  %i.bv = icmp ult i64 %.sroa.5.059.i.i.i.i.i52.i, 7
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i61.i = phi ptr [ %i.ce, %.new ], [ %.pn30.in.i.i.i.i.i.i61.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i62.i = phi i64 [ %.pn28.i.i.i.i.i.i63.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i62.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i64.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i61.i, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i, i64 544
  %.pn30.i.i.i.i.i.i64.i.1 = load ptr, ptr %i.bw, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.1, i64 544
  %.pn30.i.i.i.i.i.i64.i.2 = load ptr, ptr %i.bx, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.by = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.2, i64 544
  %.pn30.i.i.i.i.i.i64.i.3 = load ptr, ptr %i.by, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.3, i64 544
  %.pn30.i.i.i.i.i.i64.i.4 = load ptr, ptr %i.bz, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.4, i64 544
  %.pn30.i.i.i.i.i.i64.i.5 = load ptr, ptr %i.ca, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.5, i64 544
  %.pn30.i.i.i.i.i.i64.i.6 = load ptr, ptr %i.cb, align 8, !noalias !147068, !nonnull !175, !noundef !175
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.6, i64 544
  %.pn28.i.i.i.i.i.i63.i.7 = add i64 %.pn28.in.i.i.i.i.i.i62.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i64.i.7 = load ptr, ptr %i.cc, align 8, !noalias !147068, !nonnull !175, !noundef !175 ; 2 uses
  %i.cd = icmp eq i64 %.pn28.i.i.i.i.i.i63.i.7, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i64.i.7, i64 544
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.preheader, label %.new

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i50.i
  %i.cf = add i64 %.sroa.5.059.i.i.i.i.i52.i, 1   ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i51.i, i64 536
  %i.ch = load i16, ptr %i.cg, align 8, !noalias !147066 ; 3 uses
  %.not.i.i.i.i.i.i54.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i52.i, 0
  %..i.i.i.i.i.i55.i = select i1 %.not.i.i.i.i.i.i54.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i51.i, i64 noundef %..i.i.i.i.i.i55.i, i64 noundef 8) #77, !noalias !147069
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 538
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !147065, !noundef !175
  %i.ck = icmp ult i16 %i.ch, %i.cj
  br i1 %i.ck, label %._crit_edge.i.i.i.i.i57.i, label %.lr.ph.i.i.i.i.i50.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i50.i
  %.not.i54.i.i.i.i.i71.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i52.i, 0
  %..i55.i.i.i.i.i72.i = select i1 %.not.i54.i.i.i.i.i71.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i51.i, i64 noundef %..i55.i.i.i.i.i72.i, i64 noundef 8) #77, !noalias !147069
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2536) #78
          to label %.noexc.i.i.i73.i unwind label %bb.p, !noalias !147070

.noexc.i.i.i73.i:                                 ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !147067
  unreachable

.lr.ph.i.i.i.i.i.outer:                           ; preds = %.lr.ph.i.i.i.i.i.outer.backedge, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.12.0.i.ph282 = phi i64 [ %.sroa.12.0.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dt, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.38.0.in.i.ph = phi i64 [ %.sroa.9.i.sroa.8.0.copyload.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.38.0.i.lcssa291, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.sroa.25.1.i.ph283 = phi i64 [ %.sroa.25.1.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.25.1.i.ph283.be, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.9.1.i.ph284 = phi ptr [ %.sroa.9.1.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.9.1.i.ph284.be, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 10 uses
  %.ph285 = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ds, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.38.0.i.peel = add i64 %.sroa.38.0.in.i.ph, -1 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.ph285, i64 8
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.sroa.12.0.i.ph282 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.ph285, i64 272
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.sroa.12.0.i.ph282 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147071), !noalias !147072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147073), !noalias !147072
  %.val.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.cn, align 8, !range !174, !alias.scope !147074, !noalias !147075, !noundef !175 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.peel, 0
  br i1 %i.cq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.peel", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.outer
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val1.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.cr, align 8, !alias.scope !147074, !noalias !147075, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.peel, i64 noundef %.val.i.i.i.i.i.i.i.i.peel, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !147076
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.peel"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.peel": ; preds = %bb.q, %.lr.ph.i.i.i.i.i.outer
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147077), !noalias !147072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147078), !noalias !147072
  %.val.i.i.i.i6.i.i.i.i.i.i.peel = load i64, ptr %i.cp, align 8, !range !174, !alias.scope !147079, !noalias !147075, !noundef !175 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i.i.i6.i.i.i.i.i.i.peel, 0
  br i1 %i.cs, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i.peel", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.peel"
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.val1.i.i.i.i7.i.i.i.i.i.i.peel = load ptr, ptr %i.ct, align 8, !alias.scope !147079, !noalias !147075, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i7.i.i.i.i.i.i.peel, i64 noundef %.val.i.i.i.i6.i.i.i.i.i.i.peel, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !147080
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i.peel": ; preds = %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.peel"
  %i.cu = icmp eq i64 %.sroa.38.0.i.peel, 0
  br i1 %i.cu, label %.loopexit.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i.peel"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.ph284) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.ph284, i64 538
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !147081, !noundef !175
  %i.cx = zext i16 %i.cw to i64
  %i.cy = icmp ult i64 %.sroa.25.1.i.ph283, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel"
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.ph284, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.ph284, i64 272
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.ph284, i64 538
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i", %.lr.ph.i.i.i.i.i.outer.peel.newph
  %.sroa.12.0.i = phi i64 [ %.sroa.25.1.i.ph283, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %.sroa.25.1.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i" ] ; 3 uses
  %.sroa.38.0.in.i = phi i64 [ %.sroa.38.0.i.peel, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %.sroa.38.0.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i" ]
  %.sroa.25.1.i = add nuw nsw i64 %.sroa.12.0.i, 1 ; 2 uses
  %.sroa.38.0.i = add i64 %.sroa.38.0.in.i, -1    ; 3 uses
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %.sroa.12.0.i ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.sroa.12.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147082), !noalias !147072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147083), !noalias !147072
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8, !range !174, !alias.scope !147084, !noalias !147075, !noundef !175 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !147084, !noalias !147075, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !147085
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i": ; preds = %bb.s, %.lr.ph.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147086), !noalias !147072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147087), !noalias !147072
  %.val.i.i.i.i6.i.i.i.i.i.i = load i64, ptr %i.dd, align 8, !range !174, !alias.scope !147088, !noalias !147075, !noundef !175 ; 2 uses
  %i.dg = icmp eq i64 %.val.i.i.i.i6.i.i.i.i.i.i, 0
  br i1 %i.dg, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i.i7.i.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !147088, !noalias !147075, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i7.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i6.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !147089
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i": ; preds = %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  %i.di = icmp eq i64 %.sroa.38.0.i, 0
  br i1 %i.di, label %.loopexit.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i"

.loopexit.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i.peel", %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i"
  %i.dj = load ptr, ptr %.sroa.9.1.i.ph284, align 8, !noalias !147090, !noundef !175 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i4.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.i", label %.lr.ph.i3.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %.loopexit.i.i.i, %.lr.ph.i3.i.i.i
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i3.i.i.i ], [ %i.dj, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i3.i.i.i ], [ %.sroa.9.1.i.ph284, %.loopexit.i.i.i ]
  %.sroa.5.05.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i3.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = add i64 %.sroa.5.05.i.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i38.i = icmp eq i64 %.sroa.5.05.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i38.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #77, !noalias !147091
  %i.dm = load ptr, ptr %i.dk, align 8, !noalias !147090, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.loopexit.i", label %.lr.ph.i3.i.i.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.loopexit.i": ; preds = %.lr.ph.i3.i.i.i
  %i.dn = icmp eq i64 %i.dl, 0
  %i.do = select i1 %i.dn, i64 544, i64 640
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.i"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.loopexit.i", %.loopexit.i.i.i
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ 544, %.loopexit.i.i.i ], [ %i.do, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.loopexit.i" ]
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.9.1.i.ph284, %.loopexit.i.i.i ], [ %i.dk, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.loopexit.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i.i, i64 noundef %.sroa.5.0.lcssa.i.i.i.i, i64 noundef 8) #77, !noalias !147091
  br label %.noexc.i.backedge

.noexc.i.backedge:                                ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i.i", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf9a05cd6b7a36bebE.exit.i.i98.i", %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i"
  br label %.noexc.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.ph284) ]
  %i.dp = load i16, ptr %i.db, align 2, !noalias !147081, !noundef !175
  %i.dq = zext i16 %i.dp to i64
  %i.dr = icmp ult i64 %.sroa.25.1.i, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !146971

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel"
  %.sroa.38.0.i.lcssa291 = phi i64 [ %.sroa.38.0.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel" ], [ %.sroa.38.0.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.v
  %.sroa.0.060.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.v ], [ %.sroa.9.1.i.ph284, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i.i = phi i64 [ %i.ek, %bb.v ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.ds = load ptr, ptr %.sroa.0.060.i.i.i.i.i.i, align 8, !noalias !147092, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.v
  %i.dt = zext i16 %i.em to i64                   ; 2 uses
  %i.du = icmp eq i64 %i.ek, 0
  %i.dv = add nuw nsw i64 %i.dt, 1                ; 2 uses
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.outer.backedge, label %bb.u

.lr.ph.i.i.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit353, %.new354, %._crit_edge.i.i.i.i.i.i
  %.sroa.25.1.i.ph283.be = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ 0, %.new354 ], [ 0, %.prol.loopexit353 ]
  %.sroa.9.1.i.ph284.be = phi ptr [ %i.ds, %._crit_edge.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit353 ], [ %.pn30.i.i.i.i.i.i.i.7, %.new354 ]
  br label %.lr.ph.i.i.i.i.i.outer

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 544
  %i.dx = icmp ult i16 %i.em, 11
  tail call void @llvm.assume(i1 %i.dx), !noalias !147067
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv ; 2 uses
  %xtraiter357 = and i64 %i.ek, 7                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.prol.loopexit353, label %.prol.preheader352

.prol.preheader352:                               ; preds = %bb.u, %.prol.preheader352
  %.pn30.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.prol.preheader352 ], [ %i.dy, %bb.u ]
  %.pn28.in.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader352 ], [ %i.ek, %bb.u ]
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.prol.preheader352 ], [ 0, %bb.u ]
  %.pn28.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.prol, align 8, !noalias !147093, !nonnull !175, !noundef !175 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.prol.loopexit353, label %.prol.preheader352, !llvm.loop !146979

.prol.loopexit353:                                ; preds = %.prol.preheader352, %bb.u
  %.pn30.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.u ], [ %.pn30.i.i.i.i.i.i.i.prol, %.prol.preheader352 ]
  %.pn30.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.dy, %bb.u ], [ %i.dz, %.prol.preheader352 ]
  %.pn28.in.i.i.i.i.i.i.i.unr = phi i64 [ %i.ek, %bb.u ], [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader352 ]
  %i.ea = icmp ult i64 %.sroa.5.059.i.i.i.i.i.i, 7
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new354

.new354:                                          ; preds = %.prol.loopexit353, %.new354
  %.pn30.in.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.new354 ], [ %.pn30.in.i.i.i.i.i.i.i.unr, %.prol.loopexit353 ]
  %.pn28.in.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.7, %.new354 ], [ %.pn28.in.i.i.i.i.i.i.i.unr, %.prol.loopexit353 ]
  %.pn30.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.i.i.1 = load ptr, ptr %i.eb, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ec, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ed, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ee, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ef, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.i.i.6 = load ptr, ptr %i.eg, align 8, !noalias !147093, !nonnull !175, !noundef !175
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.7 = load ptr, ptr %i.eh, align 8, !noalias !147093, !nonnull !175, !noundef !175 ; 2 uses
  %i.ei = icmp eq i64 %.pn28.i.i.i.i.i.i.i.7, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new354

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ek = add i64 %.sroa.5.059.i.i.i.i.i.i, 1     ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i.i, i64 536
  %i.em = load i16, ptr %i.el, align 8, !noalias !147092 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8) #77, !noalias !147094
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 538
  %i.eo = load i16, ptr %i.en, align 2, !noalias !147081, !noundef !175
  %i.ep = icmp ult i16 %i.em, %i.eo
  br i1 %i.ep, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i54.i.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i, 0
  %..i55.i.i.i.i.i.i = select i1 %.not.i54.i.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i, i64 noundef %..i55.i.i.i.i.i.i, i64 noundef 8) #77, !noalias !147094
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2536) #78
          to label %.noexc.i.i.i.i unwind label %bb.x, !noalias !147095

.noexc.i.i.i.i:                                   ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !147067
  unreachable

.body.i:                                          ; preds = %bb.ap, %bb.aj
  %.pn.i = phi { ptr, i32 } [ %i.me, %bb.ap ], [ %i.im, %bb.aj ]
  invoke fastcc void @"_ZN4core3ptr238drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$C$alloc..vec..into_iter..IntoIter$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$GT$$GT$17ha43f4bb06412b6b5E"(ptr noalias noundef align 8 dereferenceable(96) %i.e) #79
          to label %.thread unwind label %bb.aq, !noalias !147044

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f3fd32595b394f3E.exit.i": ; preds = %bb.h
  store i64 %.sroa.6.0.i.i, ptr %i.c, align 8, !noalias !147044
  store ptr %.sroa.9.i.sroa.0.0.copyload.i, ptr %.sroa.9.16..sroa_idx.i, align 8, !noalias !147044
  store i64 %.sroa.9.i.sroa.5.0.copyload.i, ptr %.sroa.9.sroa.6.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !147044
  store ptr %.sroa.9.i.sroa.6.0.copyload.i, ptr %.sroa.9.sroa.8.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !147044
  store i64 %.sroa.9.i.sroa.7.0.copyload.i, ptr %.sroa.9.sroa.10.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !147044
  store i64 %.sroa.9.i.sroa.8.0.copyload.i, ptr %.sroa.9.sroa.12.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !147044
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0173.i, i64 714 ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !noalias !147044, !noundef !175 ; 3 uses
  %i.et = icmp ult i16 %i.es, 11
  br i1 %i.et, label %bb.ao, label %.preheader.i

.noexc4:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haab80548765e119fE.exit.i.i", %bb.d
  call fastcc void @"_ZN4core3ptr238drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$C$alloc..vec..into_iter..IntoIter$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$GT$$GT$17ha43f4bb06412b6b5E"(ptr noalias noundef align 8 dereferenceable(96) %i.e), !noalias !147044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !147044
  %i.eu = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.eu, label %.loopexit, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.noexc4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i17.i
  %.sroa.02.010.i.i = phi i64 [ %.sroa.8.0, %.lr.ph.i17.i ], [ %i.fd, %bb.aa ]
  %.sroa.03.09.i.i = phi ptr [ %.sroa.0.0, %.lr.ph.i17.i ], [ %i.fg, %bb.aa ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 714
  %i.ex = load i16, ptr %i.ew, align 2, !noalias !147044, !noundef !175 ; 3 uses
  %.not.i18.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i18.i, label %.noexc19.i, label %bb.z, !prof !178

.noexc19.i:                                       ; preds = %bb.y
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2499, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2501) #78, !noalias !147044
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add nsw i64 %i.ey, -1                   ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 720
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !147096, !nonnull !175, !noundef !175 ; 5 uses
  %i.fd = add i64 %.sroa.02.010.i.i, -1           ; 3 uses
  %i.fe = icmp ult i16 %i.ex, 12
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !147097, !nonnull !175, !noundef !175 ; 19 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 714 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !147044, !noundef !175 ; 3 uses
  %i.fj = icmp ult i16 %i.fi, 5
  br i1 %i.fj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.i.i", %bb.z
  %i.fk = icmp eq i64 %i.fd, 0
  br i1 %i.fk, label %.loopexit, label %bb.y

bb.ab:                                            ; preds = %bb.z
  %narrow.i.i = sub nuw nsw i16 5, %i.fi          ; 2 uses
  %i.fl = zext nneg i16 %narrow.i.i to i64        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 714 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !noalias !147098, !noundef !175 ; 2 uses
  %i.fo = zext nneg i16 %i.fi to i64              ; 3 uses
  %.not.i.i.i = icmp ugt i16 %narrow.i.i, %i.fn
  br i1 %.not.i.i.i, label %.noexc20.i, label %_ZN5alloc11collections5btree4node13move_to_slice17h5d6e5aa959367c11E.exit.i.i.i, !prof !178

.noexc20.i:                                       ; preds = %bb.ab
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2524, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2525) #78, !noalias !147098
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h5d6e5aa959367c11E.exit.i.i.i: ; preds = %bb.ab
  %i.fp = zext i16 %i.fn to i64                   ; 2 uses
  %i.fq = sub nuw nsw i64 %i.fp, %i.fl            ; 4 uses
  %i.fr = trunc nuw i64 %i.fq to i16
  store i16 %i.fr, ptr %i.fm, align 2, !noalias !147098
  store i16 5, ptr %i.fh, align 2, !noalias !147098
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.fl
  %i.ft = shl nuw nsw i64 %i.fo, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 2 %i.fg, i64 %i.ft, i1 false), !alias.scope !147099, !noalias !147098
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 176 ; 4 uses
  %i.fv = getelementptr inbounds nuw [48 x i8], ptr %i.fu, i64 %i.fl
  %i.fw = mul nuw nsw i64 %i.fo, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fv, ptr nonnull align 8 %i.fu, i64 %i.fw, i1 false), !alias.scope !147100, !noalias !147098
  %i.fx = add nuw nsw i64 %i.fq, 1                ; 4 uses
  %i.fy = sub nuw nsw i64 %i.fp, %i.fx            ; 4 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fx
  %i.ga = shl nuw nsw i64 %i.fy, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fg, ptr nonnull readonly align 1 %i.fz, i64 %i.ga, i1 false), !alias.scope !147101, !noalias !147098
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 176 ; 2 uses
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.gb, i64 %i.fx
  %i.gd = mul nuw nsw i64 %i.fy, 48
end_hunk_11
begin_hunk_12_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h39ed633842f9507fE":bb.a
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef range(i64 5, 12) 5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242558)
  %i.dr = load i64, ptr %i.dh, align 8, !alias.scope !242559, !noalias !242560, !noundef !175 ; 3 uses
  %i.ds = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242559, !noalias !242560, !noundef !175
  %i.dt = icmp eq i64 %i.ds, %i.dr
  br i1 %i.dt, label %bb.u, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", !prof !178

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 noundef %i.dr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242561, !inline_history !61
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !242562, !noalias !242560
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t
  %i.du = phi i64 [ %i.dr, %bb.t ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.dv = icmp sgt i64 %i.du, -1
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = load ptr, ptr %i.dn, align 8, !alias.scope !242562, !noalias !242560, !nonnull !175, !noundef !175
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 58, ptr %i.dx, align 1, !noalias !242563
  %i.dy = add nuw i64 %i.du, 1
  store i64 %i.dy, ptr %i.dh, align 8, !alias.scope !242562, !noalias !242560
  %i.dz = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h7f3ccc18e7f28084E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ct, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !242564, !inline_history !61 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %bb.v, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit

bb.v:                                             ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"
  %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242565, !noalias !242566, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242570)
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !242571, !noalias !242572, !noundef !175 ; 3 uses
  %i.ec = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242571, !noalias !242572, !noundef !175
  %i.ed = icmp eq i64 %i.ec, %i.eb
  br i1 %i.ed, label %bb.w, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", !prof !178

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 noundef %i.eb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242573
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !242574, !noalias !242572
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i": ; preds = %bb.w, %bb.v
  %i.ee = phi i64 [ %i.eb, %bb.v ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !242574, !noalias !242572, !nonnull !175, !noundef !175
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ee
  store i8 125, ptr %i.ei, align 1, !noalias !242575
  %i.ej = add nuw i64 %i.ee, 1
  store i64 %i.ej, ptr %i.ea, align 8, !alias.scope !242574, !noalias !242572
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.peel.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242576, !noalias !242526, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242580)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !242581, !noalias !242582, !noundef !175 ; 3 uses
  %i.em = load i64, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242581, !noalias !242582, !noundef !175
  %i.en = sub i64 %i.em, %i.el
  %i.eo = icmp ult i64 %i.en, 4
  br i1 %i.eo, label %bb.y, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", !prof !178

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 noundef %i.el, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !242583
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !alias.scope !242584, !noalias !242582
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i": ; preds = %bb.y, %bb.x
  %i.ep = phi i64 [ %i.el, %bb.x ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.y ] ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !242584, !noalias !242582, !nonnull !175, !noundef !175
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  store i32 1819047278, ptr %i.et, align 1, !noalias !242585
  %i.eu = add nuw i64 %i.ep, 4
  store i64 %i.eu, ptr %i.ek, align 8, !alias.scope !242584, !noalias !242582
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.peel.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.peel.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"
  %i.ev = icmp eq i64 %.sink.i.i.i.i.i.i.i.i, 1
  br i1 %i.ev, label %.thread169.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i22.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i22.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.peel.i.i.i.i.i.i.i.i.i"
  %i.ew = add i64 %.sink.i.i.i.i.i.i.i.i, -2
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i, i64 1066
  %i.ey = load i16, ptr %i.ex, align 2, !noalias !242586, !noundef !175
  %i.ez = zext i16 %i.ey to i64
  %i.fa = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i, %i.ez
  br i1 %i.fa, label %.thread145.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i

.thread145.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i22.i.i.i.i.i.i.i"
  %i.fb = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.prol.loopexit108, %.new109, %bb.aa, %.thread145.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i178.sink252.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i ], [ %i.fc, %bb.aa ], [ %i.fc, %.new109 ], [ %i.fc, %.prol.loopexit108 ]
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i ], [ %i.fj, %bb.aa ], [ %i.fj, %.new109 ], [ %i.fj, %.prol.loopexit108 ]
  %.sroa.30.1.i.i.i.i.i.i.i.ph = phi i64 [ %i.fb, %.thread145.i.i.i.i.i.i.i ], [ %i.fl, %bb.aa ], [ 0, %.new109 ], [ 0, %.prol.loopexit108 ]
  %.sroa.7.1.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i ], [ %i.fc, %bb.aa ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit108 ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.7, %.new109 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i22.i.i.i.i.i.i.i", %bb.z
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i = phi ptr [ %i.fc, %bb.z ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i22.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.z ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i22.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fc = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i, align 8, !noalias !242587, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i
  %i.fd = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i, i64 1064
  %i.ff = load i16, ptr %i.fe, align 8, !noalias !242587 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 1066
  %i.fh = load i16, ptr %i.fg, align 2, !noalias !242586, !noundef !175
  %i.fi = icmp ult i16 %i.ff, %i.fh
  br i1 %i.fi, label %bb.aa, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.fj = zext i16 %i.ff to i64                   ; 4 uses
  %i.fk = icmp eq i64 %i.fd, 0
  %i.fl = add nuw nsw i64 %i.fj, 1                ; 2 uses
  br i1 %i.fk, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 1072
  %i.fn = icmp ult i16 %i.ff, 11
  tail call void @llvm.assume(i1 %i.fn), !noalias !242517
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fl ; 2 uses
  %xtraiter111 = and i64 %i.fd, 7                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.prol.loopexit108, label %.prol.preheader107

.prol.preheader107:                               ; preds = %bb.ab, %.prol.preheader107
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.prol = phi ptr [ %i.fp, %.prol.preheader107 ], [ %i.fo, %bb.ab ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.prol, %.prol.preheader107 ], [ %i.fd, %bb.ab ]
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.prol.preheader107 ], [ 0, %bb.ab ]
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.prol, align 8, !noalias !242588, !nonnull !175, !noundef !175 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.prol.loopexit108, label %.prol.preheader107, !llvm.loop !242232

.prol.loopexit108:                                ; preds = %.prol.preheader107, %bb.ab
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ab ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.prol, %.prol.preheader107 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.unr = phi ptr [ %i.fo, %bb.ab ], [ %i.fp, %.prol.preheader107 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.unr = phi i64 [ %i.fd, %bb.ab ], [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.prol, %.prol.preheader107 ]
  %i.fq = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i, 7
  br i1 %i.fq, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %.new109

.new109:                                          ; preds = %.prol.loopexit108, %.new109
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i = phi ptr [ %i.fz, %.new109 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.unr, %.prol.loopexit108 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.7, %.new109 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.unr, %.prol.loopexit108 ]
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.1 = load ptr, ptr %i.fr, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.2 = load ptr, ptr %i.fs, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.ft = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ft, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.4 = load ptr, ptr %i.fu, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.fv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fv, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.fw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fw, align 8, !noalias !242588, !nonnull !175, !noundef !175
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fx, align 8, !noalias !242588, !nonnull !175, !noundef !175 ; 2 uses
  %i.fy = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i.i.i.7, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.fy, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %.new109

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i45.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !242589

.noexc.i.i45.i.i.i.i.i.i.i:                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !242517
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.outer:               ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i178.sink252.i.i.i.i.i.i.i.ph86 = phi ptr [ %.sroa.0.0.ph.i.i.i178.sink252.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %i.lt, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i.ph87 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ma, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.ph = phi i64 [ %i.ew, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa90, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.ph88 = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.i.i.ph88.be, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.i.i.ph89 = phi ptr [ %.sroa.7.1.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.i.i.ph89.be, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink252.i.i.i.i.i.i.i.ph86, i64 8
  %i.gc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i.ph87, 11
  tail call void @llvm.assume(i1 %i.gc), !noalias !242517
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i.ph87 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink252.i.i.i.i.i.i.i.ph86, i64 272
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.ge, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i.ph87 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gd, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.gg, align 8, !noalias !242521 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gd, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.gh, align 8, !noalias !242521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242591)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242592, !nonnull !175, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242596)
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !242597, !noalias !242598, !noundef !175 ; 3 uses
  %i.gk = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !242597, !noalias !242598, !noundef !175
  %i.gl = icmp eq i64 %i.gk, %i.gj
  br i1 %i.gl, label %bb.ae, label %bb.af, !prof !178

bb.ae:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.gj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242599
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.gi, align 8, !alias.scope !242600, !noalias !242598
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.peel.next.i.i.i.i.i.i.i.i.i.outer
  %i.gm = phi i64 [ %i.gj, %.peel.next.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ae ] ; 3 uses
  %i.gn = icmp sgt i64 %i.gm, -1
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !242600, !noalias !242598, !nonnull !175, !noundef !175
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gm
  store i8 44, ptr %i.gq, align 1, !noalias !242601
  %i.gr = add nuw i64 %i.gm, 1
  store i64 %i.gr, ptr %i.gi, align 8, !alias.scope !242600, !noalias !242598
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.peel) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.peel)
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242602, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242606)
  %i.gs = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !242607, !noalias !242608, !noundef !175 ; 3 uses
  %i.gu = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !242607, !noalias !242608, !noundef !175
  %i.gv = icmp eq i64 %i.gu, %i.gt
  br i1 %i.gv, label %bb.ag, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !178

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.gt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242609
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.gs, align 8, !alias.scope !242610, !noalias !242608
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ag, %bb.af
  %i.gw = phi i64 [ %i.gt, %bb.af ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ag ] ; 3 uses
  %i.gx = icmp sgt i64 %i.gw, -1
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !242610, !noalias !242608, !nonnull !175, !noundef !175
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gw
  store i8 58, ptr %i.ha, align 1, !noalias !242611
  %i.hb = add nuw i64 %i.gw, 1
  store i64 %i.hb, ptr %i.gs, align 8, !alias.scope !242610, !noalias !242608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242614)
  %i.hc = load i64, ptr %i.gf, align 8, !range !209, !alias.scope !242615, !noalias !242616, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq i64 %i.hc, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242620)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.d, align 8, !alias.scope !242621, !noalias !242602, !nonnull !175, !align !179, !noundef !175 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242625)
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 6 uses
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !242626, !noalias !242627, !noundef !175 ; 3 uses
  %i.hf = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !242626, !noalias !242627, !noundef !175
  %i.hg = icmp eq i64 %i.hf, %i.he
  br i1 %i.hg, label %bb.ai, label %bb.aj, !prof !178

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.he, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242628
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.hd, align 8, !alias.scope !242629, !noalias !242627
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hh = phi i64 [ %i.he, %bb.ah ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ai ] ; 3 uses
  %i.hi = icmp sgt i64 %i.hh, -1
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !242629, !noalias !242627, !nonnull !175, !noundef !175
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hh
  store i8 123, ptr %i.hl, align 1, !noalias !242630
  %i.hm = add nuw i64 %i.hh, 1
  store i64 %i.hm, ptr %i.hd, align 8, !alias.scope !242629, !noalias !242627
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef range(i64 5, 12) 5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242634)
  %i.hn = load i64, ptr %i.hd, align 8, !alias.scope !242635, !noalias !242636, !noundef !175 ; 3 uses
  %i.ho = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !242635, !noalias !242636, !noundef !175
  %i.hp = icmp eq i64 %i.ho, %i.hn
  br i1 %i.hp, label %bb.ak, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.hn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242637, !inline_history !61
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.hd, align 8, !alias.scope !242638, !noalias !242636
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.ak, %bb.aj
  %i.hq = phi i64 [ %i.hn, %bb.aj ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ak ] ; 3 uses
  %i.hr = icmp sgt i64 %i.hq, -1
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = load ptr, ptr %i.hj, align 8, !alias.scope !242638, !noalias !242636, !nonnull !175, !noundef !175
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hq
  store i8 58, ptr %i.ht, align 1, !noalias !242639
  %i.hu = add nuw i64 %i.hq, 1
  store i64 %i.hu, ptr %i.hd, align 8, !alias.scope !242638, !noalias !242636
  %i.hv = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h7f3ccc18e7f28084E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !242640, !inline_history !61 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.al, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit

bb.al:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.d, align 8, !alias.scope !242641, !noalias !242642, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242646)
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !242647, !noalias !242648, !noundef !175 ; 3 uses
  %i.hy = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !242647, !noalias !242648, !noundef !175
  %i.hz = icmp eq i64 %i.hy, %i.hx
  br i1 %i.hz, label %bb.am, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.hx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242649
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.hw, align 8, !alias.scope !242650, !noalias !242648
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.am, %bb.al
  %i.ia = phi i64 [ %i.hx, %bb.al ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.am ] ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, -1
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !242650, !noalias !242648, !nonnull !175, !noundef !175
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ia
  store i8 125, ptr %i.ie, align 1, !noalias !242651
  %i.if = add nuw i64 %i.ia, 1
  store i64 %i.if, ptr %i.hw, align 8, !alias.scope !242650, !noalias !242648
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i.peel"

bb.an:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.d, align 8, !alias.scope !242652, !noalias !242602, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242656)
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 3 uses
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !242657, !noalias !242658, !noundef !175 ; 3 uses
  %i.ii = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !174, !alias.scope !242657, !noalias !242658, !noundef !175
  %i.ij = sub i64 %i.ii, %i.ih
  %i.ik = icmp ult i64 %i.ij, 4
  br i1 %i.ik, label %bb.ao, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !178

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 noundef %i.ih, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !242659
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.ig, align 8, !alias.scope !242660, !noalias !242658
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %bb.ao, %bb.an
  %i.il = phi i64 [ %i.ih, %bb.an ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ao ] ; 3 uses
  %i.im = icmp sgt i64 %i.il, -1
  tail call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !242660, !noalias !242658, !nonnull !175, !noundef !175
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.il
  store i32 1819047278, ptr %i.ip, align 1, !noalias !242661
  %i.iq = add nuw i64 %i.il, 4
  store i64 %i.iq, ptr %i.ig, align 8, !alias.scope !242660, !noalias !242658
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.ir = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.ph, 0
  br i1 %i.ir, label %.thread169.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i.peel"
  %i.is = add i64 %.sroa.44.0.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.ph89) ]
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.ph89, i64 1066
end_hunk_12
begin_hunk_13_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h39ed633842f9507fE":bb.a
.peel.next.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.ph88, %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.44.0.i.i.i.i.i.i.i = phi i64 [ %i.is, %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.lp, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ja = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ja), !noalias !242517
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i ; 2 uses
  %i.jc = getelementptr inbounds nuw [72 x i8], ptr %i.iy, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink251.i.i.i.i.i.i.i ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jb, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jd, align 8, !noalias !242521 ; 2 uses
  %i.je = getelementptr i8, ptr %i.jb, i64 16
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.je, align 8, !noalias !242521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242664)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242665, !nonnull !175, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242669)
  %i.jf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !242670, !noalias !242671, !noundef !175 ; 3 uses
  %i.jh = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242670, !noalias !242671, !noundef !175
  %i.ji = icmp eq i64 %i.jh, %i.jg
  br i1 %i.ji, label %bb.ap, label %bb.aq, !prof !178

bb.ap:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242672
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jf, align 8, !alias.scope !242673, !noalias !242671
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.peel.next.i.i.i.i.i.i.i.i.i
  %i.jj = phi i64 [ %i.jg, %.peel.next.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap ] ; 3 uses
  %i.jk = icmp sgt i64 %i.jj, -1
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !alias.scope !242673, !noalias !242671, !nonnull !175, !noundef !175
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jj
  store i8 44, ptr %i.jn, align 1, !noalias !242674
  %i.jo = add nuw i64 %i.jj, 1
  store i64 %i.jo, ptr %i.jf, align 8, !alias.scope !242673, !noalias !242671
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242665
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i)
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242675, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242679)
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !242680, !noalias !242681, !noundef !175 ; 3 uses
  %i.jr = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242680, !noalias !242681, !noundef !175
  %i.js = icmp eq i64 %i.jr, %i.jq
  br i1 %i.js, label %bb.ar, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !178

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242682
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jp, align 8, !alias.scope !242683, !noalias !242681
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %i.jt = phi i64 [ %i.jq, %bb.aq ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ] ; 3 uses
  %i.ju = icmp sgt i64 %i.jt, -1
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !alias.scope !242683, !noalias !242681, !nonnull !175, !noundef !175
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jt
  store i8 58, ptr %i.jx, align 1, !noalias !242684
  %i.jy = add nuw i64 %i.jt, 1
  store i64 %i.jy, ptr %i.jp, align 8, !alias.scope !242683, !noalias !242681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242687)
  %i.jz = load i64, ptr %i.jc, align 8, !range !209, !alias.scope !242688, !noalias !242689, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jz, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242693)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242694, !noalias !242675, !nonnull !175, !align !179, !noundef !175 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242698)
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 6 uses
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !242699, !noalias !242700, !noundef !175 ; 3 uses
  %i.kc = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242699, !noalias !242700, !noundef !175
  %i.kd = icmp eq i64 %i.kc, %i.kb
  br i1 %i.kd, label %bb.at, label %bb.au, !prof !178

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.kb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242701
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ka, align 8, !alias.scope !242702, !noalias !242700
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ke = phi i64 [ %i.kb, %bb.as ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.at ] ; 3 uses
  %i.kf = icmp sgt i64 %i.ke, -1
  tail call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !alias.scope !242702, !noalias !242700, !nonnull !175, !noundef !175
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ke
  store i8 123, ptr %i.ki, align 1, !noalias !242703
  %i.kj = add nuw i64 %i.ke, 1
  store i64 %i.kj, ptr %i.ka, align 8, !alias.scope !242702, !noalias !242700
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef range(i64 5, 12) 5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242707)
  %i.kk = load i64, ptr %i.ka, align 8, !alias.scope !242708, !noalias !242709, !noundef !175 ; 3 uses
  %i.kl = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242708, !noalias !242709, !noundef !175
  %i.km = icmp eq i64 %i.kl, %i.kk
  br i1 %i.km, label %bb.av, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.av:                                            ; preds = %bb.au
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.kk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242710, !inline_history !61
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ka, align 8, !alias.scope !242711, !noalias !242709
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.av, %bb.au
  %i.kn = phi i64 [ %i.kk, %bb.au ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ] ; 3 uses
  %i.ko = icmp sgt i64 %i.kn, -1
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = load ptr, ptr %i.kg, align 8, !alias.scope !242711, !noalias !242709, !nonnull !175, !noundef !175
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kn
  store i8 58, ptr %i.kq, align 1, !noalias !242712
  %i.kr = add nuw i64 %i.kn, 1
  store i64 %i.kr, ptr %i.ka, align 8, !alias.scope !242711, !noalias !242709
  %i.ks = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h7f3ccc18e7f28084E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !242713, !inline_history !61 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit

bb.aw:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242714, !noalias !242715, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242719)
  %i.kt = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ku = load i64, ptr %i.kt, align 8, !alias.scope !242720, !noalias !242721, !noundef !175 ; 3 uses
  %i.kv = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242720, !noalias !242721, !noundef !175
  %i.kw = icmp eq i64 %i.kv, %i.ku
  br i1 %i.kw, label %bb.ax, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.ax:                                            ; preds = %bb.aw
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ku, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242722
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kt, align 8, !alias.scope !242723, !noalias !242721
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ax, %bb.aw
  %i.kx = phi i64 [ %i.ku, %bb.aw ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %i.ky = icmp sgt i64 %i.kx, -1
  tail call void @llvm.assume(i1 %i.ky)
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !242723, !noalias !242721, !nonnull !175, !noundef !175
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kx
  store i8 125, ptr %i.lb, align 1, !noalias !242724
  %i.lc = add nuw i64 %i.kx, 1
  store i64 %i.lc, ptr %i.kt, align 8, !alias.scope !242723, !noalias !242721
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242725, !noalias !242675, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242729)
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !242730, !noalias !242731, !noundef !175 ; 3 uses
  %i.lf = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242730, !noalias !242731, !noundef !175
  %i.lg = sub i64 %i.lf, %i.le
  %i.lh = icmp ult i64 %i.lg, 4
  br i1 %i.lh, label %bb.az, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !178

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.le, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !242732
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ld, align 8, !alias.scope !242733, !noalias !242731
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.az, %bb.ay
  %i.li = phi i64 [ %i.le, %bb.ay ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.lj = icmp sgt i64 %i.li, -1
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !242733, !noalias !242731, !nonnull !175, !noundef !175
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.li
  store i32 1819047278, ptr %i.lm, align 1, !noalias !242734
  %i.ln = add nuw i64 %i.li, 4
  store i64 %i.ln, ptr %i.ld, align 8, !alias.scope !242733, !noalias !242731
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.lo = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i, 0
  br i1 %i.lo, label %.thread169.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i"
  %i.lp = add i64 %.sroa.44.0.i.i.i.i.i.i.i, -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.ph89) ]
  %i.lq = load i16, ptr %i.iz, align 2, !noalias !242662, !noundef !175
  %i.lr = zext i16 %i.lq to i64
  %i.ls = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i.i.i, %i.lr
  br i1 %i.ls, label %.peel.next.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !242417

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i.peel"
  %.lcssa90 = phi i64 [ %i.is, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i.peel" ], [ %i.lp, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6010091241847f7eE.exit.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.ba
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lt, %bb.ba ], [ %.sroa.7.1.i.i.i.i.i.i.i.ph89, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lu, %bb.ba ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.lt = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !242735, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.lu = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, i64 1064
  %i.lw = load i16, ptr %i.lv, align 8, !noalias !242735 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1066
  %i.ly = load i16, ptr %i.lx, align 2, !noalias !242662, !noundef !175
  %i.lz = icmp ult i16 %i.lw, %i.ly
  br i1 %i.lz, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ma = zext i16 %i.lw to i64                   ; 2 uses
  %i.mb = icmp eq i64 %i.lu, 0
  %i.mc = add nuw nsw i64 %i.ma, 1                ; 2 uses
  br i1 %i.mb, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.bc

.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge:      ; preds = %.prol.loopexit119, %.new120, %bb.bb
  %.sroa.30.1.i.i.i.i.i.i.i.ph88.be = phi i64 [ %i.mc, %bb.bb ], [ 0, %.new120 ], [ 0, %.prol.loopexit119 ]
  %.sroa.7.1.i.i.i.i.i.i.i.ph89.be = phi ptr [ %i.lt, %bb.bb ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit119 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, %.new120 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.outer

bb.bc:                                            ; preds = %bb.bb
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 1072
  %i.me = icmp ult i16 %i.lw, 11
  tail call void @llvm.assume(i1 %i.me), !noalias !242517
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mc ; 2 uses
  %xtraiter122 = and i64 %i.lu, 7                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.prol.loopexit119, label %.prol.preheader118

.prol.preheader118:                               ; preds = %bb.bc, %.prol.preheader118
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mg, %.prol.preheader118 ], [ %i.mf, %bb.bc ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader118 ], [ %i.lu, %bb.bc ]
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.prol.preheader118 ], [ 0, %bb.bc ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !242736, !nonnull !175, !noundef !175 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.prol.loopexit119, label %.prol.preheader118, !llvm.loop !242423

.prol.loopexit119:                                ; preds = %.prol.preheader118, %bb.bc
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bc ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader118 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mf, %bb.bc ], [ %i.mg, %.prol.preheader118 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.lu, %bb.bc ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader118 ]
  %i.mh = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.mh, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new120

.new120:                                          ; preds = %.prol.loopexit119, %.new120
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mq, %.new120 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit119 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, %.new120 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit119 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.mi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mi, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.mj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mj, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.mk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mk, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.ml = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ml, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.mm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.mm, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.mn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.mn, align 8, !noalias !242736, !nonnull !175, !noundef !175
  %i.mo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.mo, align 8, !noalias !242736, !nonnull !175, !noundef !175 ; 2 uses
  %i.mp = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.mq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.mp, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new120, !llvm.loop !242424

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !242737

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !242517
  unreachable

.thread169.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17he88f470267086a0aE.exit.peel.i.i.i.i.i.i.i.i.i"
  %.val.i11.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242524, !noalias !242738, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242742)
  %i.ms = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.mt = load i64, ptr %i.ms, align 8, !alias.scope !242743, !noalias !242744, !noundef !175 ; 3 uses
  %i.mu = load i64, ptr %.val.i11.i.i.i.i.i.i.i, align 8, !range !174, !alias.scope !242743, !noalias !242744, !noundef !175
  %i.mv = icmp eq i64 %i.mu, %i.mt
  br i1 %i.mv, label %bb.bf, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i, !prof !178

bb.bf:                                            ; preds = %.thread169.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i.i, i64 noundef %i.mt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !242745
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i = load i64, ptr %i.ms, align 8, !alias.scope !242746, !noalias !242744
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i: ; preds = %bb.bf, %.thread169.i.i.i.i.i.i.i
  %i.mw = phi i64 [ %i.mt, %.thread169.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i, %bb.bf ] ; 3 uses
  %i.mx = icmp sgt i64 %i.mw, -1
  tail call void @llvm.assume(i1 %i.mx)
  %i.my = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i.i, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !alias.scope !242746, !noalias !242744, !nonnull !175, !noundef !175
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mw
  store i8 125, ptr %i.na, align 1, !noalias !242747
  %i.nb = add nuw i64 %i.mw, 1
  store i64 %i.nb, ptr %i.ms, align 8, !alias.scope !242746, !noalias !242744
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit

bb.bg:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !242482, !noalias !242471, !nonnull !175, !align !179, !noundef !175 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242751)
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !242752, !noalias !242753, !noundef !175 ; 3 uses
  %i.ne = load i64, ptr %.val.i.i.i, align 8, !range !174, !alias.scope !242752, !noalias !242753, !noundef !175
  %i.nf = sub i64 %i.ne, %i.nd
  %i.ng = icmp ult i64 %i.nf, 4
  br i1 %i.ng, label %bb.bh, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i", !prof !178

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.nd, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !242754
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nc, align 8, !alias.scope !242755, !noalias !242753
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i": ; preds = %bb.bh, %bb.bg
  %i.nh = phi i64 [ %i.nd, %bb.bg ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ] ; 3 uses
  %i.ni = icmp sgt i64 %i.nh, -1
  tail call void @llvm.assume(i1 %i.ni)
  %i.nj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !alias.scope !242755, !noalias !242753, !nonnull !175, !noundef !175
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nh
  store i32 1819047278, ptr %i.nl, align 1, !noalias !242756
  %i.nm = add nuw i64 %i.nh, 4
  store i64 %i.nm, ptr %i.nc, align 8, !alias.scope !242755, !noalias !242753
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit: ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i", %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", %.thread171.i.i.i.i.i.i.i, %bb.bi
  %.sroa.0.0 = phi ptr [ %i.nn, %bb.bi ], [ %i.dz, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i" ], [ null, %.thread171.i.i.i.i.i.i.i ], [ null, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i" ], [ null, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i.i ], [ %i.ks, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hv, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9f8d040d6bd54fe8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ]
  ret ptr %.sroa.0.0

bb.bi:                                            ; preds = %bb.a
  %i.nn = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10337f3d7e4c6860E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h3a2ff202a766920dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !243333 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 15 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = load i8, ptr %0, align 8, !range !192, !noundef !175
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.cd, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243336)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !243337, !nonnull !175, !align !179, !noundef !175 ; 33 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !183, !alias.scope !243337, !noundef !175
  %i.k = icmp eq i8 %i.j, 1
  %.val.i.i = load ptr, ptr %i.h, align 8, !noalias !243338 ; 6 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243342)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !243343, !noalias !243344, !noundef !175 ; 3 uses
  %i.n = load i64, ptr %.val.i.i, align 8, !range !174, !alias.scope !243343, !noalias !243344, !noundef !175
  %i.o = icmp eq i64 %i.n, %i.m
end_hunk_13
