Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.10?download=true
inline.NumInlined: 445
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures:.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.010.i.i.prol = phi i64 [ %i.cg, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.010.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cg = add i64 %.sroa.01.010.i.i.prol, 1       ; 2 uses
  %i.ch = sub nuw i64 %.sroa.01.010.i.i.prol, %i.an
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !112, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.01.010.i.i.prol
  store i8 %i.cj, ptr %i.ck, align 1, !noalias !112
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !70

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.010.i.i.unr = phi i64 [ %.sroa.01.010.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cg, %vec.epilog.scalar.ph.prol ]
  %i.cl = icmp ult i64 %i.cf, 3
  br i1 %i.cl, label %.backedge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.010.i.i = phi i64 [ %i.db, %vec.epilog.scalar.ph ], [ %.sroa.01.010.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cm = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.cn = sub nuw i64 %.sroa.01.010.i.i, %i.an
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !112, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.01.010.i.i
  store i8 %i.cp, ptr %i.cq, align 1, !noalias !112
  %i.cr = add i64 %.sroa.01.010.i.i, 2            ; 2 uses
  %i.cs = sub nuw i64 %i.cm, %i.an
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !112, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cm
  store i8 %i.cu, ptr %i.cv, align 1, !noalias !112
  %i.cw = add i64 %.sroa.01.010.i.i, 3            ; 2 uses
  %i.cx = sub nuw i64 %i.cr, %i.an
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !112, !noundef !6
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cr
  store i8 %i.cz, ptr %i.da, align 1, !noalias !112
  %i.db = add i64 %.sroa.01.010.i.i, 4            ; 2 uses
  %i.dc = sub nuw i64 %i.cw, %i.an
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !112, !noundef !6
  %i.df = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cw
  store i8 %i.de, ptr %i.df, align 1, !noalias !112
  %exitcond15.not.i.i.3 = icmp eq i64 %i.db, %i.ax
  br i1 %exitcond15.not.i.i.3, label %.backedge, label %vec.epilog.scalar.ph, !llvm.loop !71

bb.ab:                                            ; preds = %bb.u
  %i.dg = icmp ult i64 %.sroa.066.0, 33
  br i1 %i.dg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = icmp ugt i64 %.sroa.066.0, 64
  %i.di = add i64 %.val163, 64
  %.not.i = icmp ugt i64 %i.di, %.val154
  %or.cond78 = or i1 %i.dh, %.not.i
  %.pre261 = load ptr, ptr %3, align 8, !noalias !108 ; 3 uses
  br i1 %or.cond78, label %bb.ae, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.dj = add i64 %.val163, 32
  %.not4.i = icmp ugt i64 %i.dj, %.val154
  %.pre = load ptr, ptr %3, align 8, !noalias !108 ; 3 uses
  br i1 %.not4.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = phi ptr [ %.pre, %bb.ad ], [ %.pre261, %bb.ac ] ; 2 uses
  %i.dl = add i64 %i.ba, %.sroa.066.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114), !noalias !108
  %i.dm = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.dl, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !115 ; 2 uses
  %i.dn = extractvalue { i64, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { i64, i64 } %i.dm, 1
  %i.dp = sub i64 %i.do, %i.dn                    ; 2 uses
  %i.dq = sub i64 %.val154, %i.dp
  %.not.i.i178 = icmp ugt i64 %.val163, %i.dq
  br i1 %.not.i.i178, label %bb.af, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !7

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !115
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull align 1 %i.dr, i64 %i.dp, i1 false), !alias.scope !114, !noalias !116
  br label %.backedge

bb.ag:                                            ; preds = %bb.ac
  %i.dt = add i64 %i.ba, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117), !noalias !108
  %i.du = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.dt, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !118 ; 2 uses
  %i.dv = extractvalue { i64, i64 } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { i64, i64 } %i.du, 1
  %i.dx = sub i64 %i.dw, %i.dv                    ; 2 uses
  %i.dy = sub i64 %.val154, %i.dx
  %.not.i.i179 = icmp ugt i64 %.val163, %i.dy
  br i1 %.not.i.i179, label %bb.ah, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180, !prof !7

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !118
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180: ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre261, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre261, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %i.dz, i64 %i.dx, i1 false), !alias.scope !117, !noalias !119
  br label %.backedge

bb.ai:                                            ; preds = %bb.ad
  %i.eb = add i64 %i.ba, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120), !noalias !108
  %i.ec = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.eb, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !121 ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 0      ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  %i.ef = sub i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = sub i64 %.val154, %i.ef
  %.not.i.i181 = icmp ugt i64 %.val163, %i.eg
  br i1 %.not.i.i181, label %bb.aj, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182, !prof !7

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !121
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182: ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull align 1 %i.eh, i64 %i.ef, i1 false), !alias.scope !120, !noalias !122
  br label %.backedge

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.v, %bb.u
  store i64 4, ptr %0, align 8
  br label %bb.ak

.backedge:                                        ; preds = %bb.at, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.aa, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182
  %.sink = phi i64 [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %i.ax, %middle.block ], [ %i.gl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %i.ax, %bb.aa ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.ax, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ax, %vec.epilog.middle.block ], [ %i.ax, %vec.epilog.scalar.ph ], [ %i.fa, %bb.at ] ; 2 uses
  %i.ej = phi i64 [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %.val154, %middle.block ], [ %.val156, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %.val154, %bb.aa ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.val154, %vec.epilog.scalar.ph.prol.loopexit ], [ %.val154, %vec.epilog.middle.block ], [ %.val154, %vec.epilog.scalar.ph ], [ %.val156, %bb.at ]
  %.sroa.0.0.be = phi i64 [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %.sroa.0.8, %middle.block ], [ %i.ew, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %.sroa.0.8, %bb.aa ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.8, %vec.epilog.scalar.ph.prol.loopexit ], [ %.sroa.0.8, %vec.epilog.middle.block ], [ %.sroa.0.8, %vec.epilog.scalar.ph ], [ %i.ew, %bb.at ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8
  %i.ek = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.ek, label %.lr.ph, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge, %bb.p, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %bb.s, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.i, %bb.k, %bb.aq, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191, %bb.o
  ret void

bb.al:                                            ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.am:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.el = add nuw i64 %.val166, 16                ; 2 uses
  %.not4.i184 = icmp ugt i64 %i.el, %.val156
  br i1 %.not4.i184, label %bb.an, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188, !prof !9

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val166, i64 noundef %i.el, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !124
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188: ; preds = %bb.am
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.en = load ptr, ptr %3, align 8, !alias.scope !123, !noalias !125, !nonnull !6, !noundef !6 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.val166 ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.eo, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !123
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ep, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !123
  %i.er = add i64 %.val166, %i.p                  ; 11 uses
  store i64 %i.er, ptr %i.a, align 8, !alias.scope !123, !noalias !125
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.p
  %.sroa.030.0.copyload.i189 = load i16, ptr %i.es, align 1, !alias.scope !126, !noalias !127 ; 3 uses
  %i.et = icmp eq i16 %.sroa.030.0.copyload.i189, 0
  br i1 %i.et, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191, label %bb.ao

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188
  store i64 3, ptr %0, align 8
  br label %bb.ak

bb.ao:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188
  %i.eu = zext i16 %.sroa.030.0.copyload.i189 to i64 ; 7 uses
  %i.ev = add nuw nsw i64 %.sroa.0.0173, 3
  %i.ew = add nuw nsw i64 %i.ev, %i.p             ; 2 uses
  %narrow = add nuw nsw i8 %i.h, 4
  %i.ex = zext nneg i8 %narrow to i64             ; 3 uses
  %i.ey = sub nuw i64 %i.er, %i.eu                ; 2 uses
  %i.ez = icmp ult i64 %i.er, %i.eu
  br i1 %i.ez, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not142 = icmp samesign ult i64 %i.eu, %i.ex
  br i1 %.not142, label %.lr.ph.i, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  store i64 4, ptr %0, align 8
  br label %bb.ak

.lr.ph.i:                                         ; preds = %bb.ap
  %i.fa = add nuw i64 %i.er, %i.ex                ; 2 uses
  %umax.i192 = tail call i64 @llvm.umax.i64(i64 %.val156, i64 %i.er) ; 3 uses
  %i.fb = add i64 %.val166, %i.p
  %i.fc = sub i64 %i.fb, %i.eu
  %i.fd = tail call i64 @llvm.umax.i64(i64 %.val156, i64 %i.fc)
  %i.fe = add i64 %i.fd, %i.eu
  %i.ff = add i64 %.val166, %i.p
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = add i64 %.val166, %i.p
  %i.fi = sub i64 %umax.i192, %i.fh
  %i.fj = and i8 %i.f, 15
  %narrow138 = add nuw nsw i8 %i.fj, 3
  %i.fk = zext nneg i8 %narrow138 to i64
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 %i.fi)
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fk) ; 2 uses
  %min.iters.check130 = icmp samesign ult i64 %i.fm, 16
  %diff.check129 = icmp ult i16 %.sroa.030.0.copyload.i189, 16
  %or.cond140 = or i1 %min.iters.check130, %diff.check129
  br i1 %or.cond140, label %scalar.ph.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %i.fo = and i64 %i.fn, 15                       ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = select i1 %i.fp, i64 16, i64 %i.fo
  %n.vec132 = sub nsw i64 %i.fn, %i.fq            ; 2 uses
  %i.fr = add i64 %i.er, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.fs = add i64 %i.er, %index134                ; 2 uses
  %i.ft = sub nuw i64 %i.fs, %i.eu
  %i.fu = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ft
  %wide.load135 = load <16 x i8>, ptr %i.fu, align 1, !noalias !128
  %i.fv = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fs
  store <16 x i8> %wide.load135, ptr %i.fv, align 1, !noalias !128
  %index.next136 = add nuw i64 %index134, 16      ; 2 uses
  %i.fw = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.fw, label %scalar.ph.preheader, label %vector.body133, !llvm.loop !93

scalar.ph.preheader:                              ; preds = %vector.body133, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %i.er, %.lr.ph.i ], [ %i.fr, %vector.body133 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.at
  %.sroa.01.010.i = phi i64 [ %i.fx, %bb.at ], [ %.sroa.01.010.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fx = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.fy = sub nuw i64 %.sroa.01.010.i, %i.eu      ; 3 uses
  %i.fz = icmp ult i64 %i.fy, %.val156
  br i1 %i.fz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %scalar.ph
  %exitcond.not.i193 = icmp eq i64 %.sroa.01.010.i, %umax.i192
  br i1 %exitcond.not.i193, label %bb.au, label %bb.at

bb.as:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !128
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ga = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !128, !noundef !6
  %i.gc = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sroa.01.010.i
  store i8 %i.gb, ptr %i.gc, align 1, !noalias !128
  %exitcond15.not.i = icmp eq i64 %i.fx, %i.fa
  br i1 %exitcond15.not.i, label %.backedge, label %scalar.ph, !llvm.loop !94

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i192, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !128
  unreachable

bb.av:                                            ; preds = %bb.ap
  %i.gd = add nuw i64 %i.ey, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ge = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ey, i64 noundef %i.gd, i64 noundef range(i64 0, -9223372036854775808) %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !130 ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.ge, 0      ; 2 uses
  %i.gg = extractvalue { i64, i64 } %i.ge, 1
  %i.gh = sub i64 %i.gg, %i.gf                    ; 2 uses
  %i.gi = sub i64 %.val156, %i.gh
  %.not.i.i194 = icmp ugt i64 %i.er, %i.gi
  br i1 %.not.i.i194, label %bb.aw, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195, !prof !7

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !130
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195: ; preds = %bb.av
  %i.gj = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.gf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.er
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull align 1 %i.gj, i64 %i.gh, i1 false), !alias.scope !129, !noalias !131
  %i.gl = add nuw i64 %i.er, %i.ex
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val226 = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %.val213 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val213, i64 51)
  %.not475 = icmp eq i64 %2, 0
  br i1 %.not475, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.au

.lr.ph:                                           ; preds = %.split, %.backedge
  %.sroa.0.0474 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %.split ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0474
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0474, 1         ; 6 uses
  %i.h = and i8 %i.f, 15                          ; 3 uses
  %i.i = icmp eq i8 %i.h, 15
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %i.f, -16
  %i.k = icmp ult i64 %.sroa.0.0474, %i.b
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph, %bb.a
  %i.l = lshr i8 %i.f, 4                          ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val225 = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.n = icmp ult i64 %.val225, %i.d
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i8 %i.f, 4
  %i.p = zext nneg i8 %i.o to i64                 ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.0.0474, 17        ; 2 uses
  %.not = icmp ugt i64 %i.q, %2
  br i1 %.not, label %bb.av, label %bb.aw, !prof !9

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.l to i64
  %i.s = icmp eq i8 %i.l, 15
  br i1 %i.s, label %.preheader476.preheader, label %bb.h

.preheader476.preheader:                          ; preds = %bb.e
  %exitcond.not.i830 = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i830, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph833

bb.f:                                             ; preds = %bb.b, %bb.n
  %.sroa.0.1 = phi i64 [ %i.g, %bb.b ], [ %i.ae, %bb.n ] ; 3 uses
  %.not200 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not200, label %bb.o, label %bb.p

.preheader476:                                    ; preds = %.lr.ph833
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph833

.lr.ph833:                                        ; preds = %.preheader476.preheader, %.preheader476
  %.sroa.0.0.i832 = phi i64 [ %i.x, %.preheader476 ], [ 0, %.preheader476.preheader ]
  %.sroa.0.5831 = phi i64 [ %i.v, %.preheader476 ], [ %i.g, %.preheader476.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.5831
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !186, !noalias !187, !noundef !6 ; 2 uses
  %i.v = add i64 %.sroa.0.5831, 1                 ; 3 uses
  %i.w = zext i8 %i.u to i64
  %i.x = add i64 %.sroa.0.0.i832, %i.w            ; 2 uses
  %i.y = icmp eq i8 %i.u, -1
  br i1 %i.y, label %.preheader476, label %bb.g

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader476.preheader, %.preheader476
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph833
  %i.z = add i64 %i.x, 15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.2 = phi i64 [ %i.v, %bb.g ], [ %i.g, %bb.e ] ; 5 uses
  %.sroa.051.0 = phi i64 [ %i.z, %bb.g ], [ %i.r, %bb.e ] ; 6 uses
  %i.aa = sub i64 %2, %.sroa.0.2
  %i.ab = icmp ugt i64 %.sroa.051.0, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val212 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.val224 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.ac = sub i64 %.val212, %.val224
  %i.ad = icmp ugt i64 %.sroa.051.0, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.ae = add i64 %.sroa.051.0, %.sroa.0.2        ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.0.2
  %.not199 = icmp ugt i64 %i.ae, %2
  %or.cond206 = or i1 %i.af, %.not199
  br i1 %or.cond206, label %bb.m, label %bb.n, !prof !9

bb.l:                                             ; preds = %bb.i
  %i.ag = add i64 %.val224, %.sroa.051.0
  store i64 0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val212, ptr %.sroa.574.0..sroa_idx, align 8
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2, i64 noundef %i.ae, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %.sroa.051.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.051.0) #20
  br label %bb.f

bb.o:                                             ; preds = %bb.f
  %i.ai = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i227 = icmp ugt i64 %i.ai, %2
  br i1 %.not.i227, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.aj, align 1, !alias.scope !188, !noalias !189 ; 4 uses
  %i.ak = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.ak, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.p:                                             ; preds = %bb.f
  %.val222 = load i64, ptr %i.a, align 8, !noundef !6
  %i.al = sub i64 %.val222, %.val226
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.au

bb.q:                                             ; preds = %bb.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 2, %bb.o ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.au

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.an = zext i16 %.sroa.030.0.copyload.i to i64 ; 11 uses
  %narrow202 = add nuw nsw i8 %i.h, 4             ; 2 uses
  %i.ao = zext nneg i8 %narrow202 to i64
  %i.ap = icmp eq i8 %narrow202, 19
  br i1 %i.ap, label %.preheader.preheader, label %bb.s

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i231834 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i231834, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph837

.preheader:                                       ; preds = %.lr.ph837
  %exitcond.not.i231 = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i231, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph837

.lr.ph837:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i230836 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.8835 = phi i64 [ %i.as, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.8835
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !190, !noalias !191, !noundef !6 ; 2 uses
  %i.as = add i64 %.sroa.0.8835, 1                ; 3 uses
  %i.at = zext i8 %i.ar to i64
  %i.au = add i64 %.sroa.0.0.i230836, %i.at       ; 2 uses
  %i.av = icmp eq i8 %i.ar, -1
  br i1 %i.av, label %.preheader, label %bb.r

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.r:                                             ; preds = %.lr.ph837
  %i.aw = add i64 %i.au, 19
  br label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.r
  %.sroa.0.3 = phi i64 [ %i.as, %bb.r ], [ %i.ai, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 7 uses
  %.sroa.085.0 = phi i64 [ %i.aw, %bb.r ], [ %i.ao, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 5 uses
  %.val221 = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.ax = add i64 %.val221, %.sroa.085.0          ; 2 uses
  %.val210 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %.val210
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val210, ptr %.sroa.5106.0..sroa_idx, align 8
  br label %bb.au

bb.u:                                             ; preds = %bb.s
  %i.az = icmp ult i64 %.val221, %i.an
  br i1 %i.az, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ba = sub nuw nsw i64 %i.an, %.val221         ; 4 uses
  %i.bb = icmp samesign ult i64 %5, %i.ba
  br i1 %i.bb, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = sub nuw nsw i64 %5, %i.ba
  %..i.i = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.ba, i64 %.sroa.085.0) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %..i.i, i64 noundef range(i64 0, -9223372036854775808) %..i.i) #20, !noalias !192
  %.not355 = icmp ugt i64 %.sroa.085.0, %i.ba
  br i1 %.not355, label %bb.at, label %.backedge

bb.x:                                             ; preds = %bb.u, %bb.at
  %.sroa.085.1 = phi i64 [ %i.dy, %bb.at ], [ %.sroa.085.0, %bb.u ] ; 11 uses
  %i.be = icmp ugt i64 %.sroa.085.1, %i.an
  br i1 %i.be, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val216 = load i64, ptr %i.a, align 8, !noundef !6 ; 13 uses
  %i.bf = sub nuw i64 %.val216, %i.an             ; 6 uses
  %i.bg = icmp ult i64 %.val216, %i.an
  br i1 %i.bg, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.aj

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %.val.i236 = load i64, ptr %i.a, align 8, !alias.scope !193, !noalias !194, !noundef !6 ; 15 uses
  %i.bh = sub nuw i64 %.val.i236, %i.an           ; 3 uses
  %i.bi = icmp ult i64 %.val.i236, %i.an
  br i1 %i.bi, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.bj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.val1.i = load ptr, ptr %3, align 8, !alias.scope !193, !noalias !194 ; 3 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !193, !noalias !194, !noundef !6 ; 4 uses
  %i.bk = icmp ult i64 %i.bh, %.val2.i
  br i1 %i.bk, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #19, !noalias !195
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !196
  %i.bl = add i64 %.val.i236, %.sroa.085.1        ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %.val.i236
  %.not.i.i = icmp ugt i64 %i.bl, %.val2.i
  %or.cond.i.i = or i1 %i.bm, %.not.i.i
  br i1 %or.cond.i.i, label %bb.ad, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !9

bb.ad:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val.i236, i64 noundef %i.bl, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #19, !noalias !197
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %i.bh
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !195, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.val.i236
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 %i.bo, i64 range(i64 1, 0) %.sroa.085.1, i1 false), !noalias !197
  br label %.backedge.sink.split

bb.ae:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198), !noalias !196
  %i.bq = add i64 %.val.i236, %.sroa.085.1        ; 4 uses
  %i.br = icmp ult i64 %.val.i236, %i.bq
  br i1 %i.br, label %.lr.ph.i.i, label %.backedge.sink.split

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.bs = load i64, ptr %i.c, align 8, !alias.scope !199, !noalias !194, !noundef !6 ; 5 uses
  %i.bt = load ptr, ptr %3, align 8, !alias.scope !199, !noalias !194, !nonnull !6 ; 4 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %.val.i236) ; 3 uses
  %i.bu = sub i64 %.val.i236, %i.an
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bu)
  %i.bw = add i64 %i.bv, %i.an
  %i.bx = sub i64 %i.bw, %.val.i236
  %i.by = sub i64 %umax.i.i, %.val.i236
  %i.bz = add i64 %.sroa.085.1, -1
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by)
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz)
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond850 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond850, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.cd = and i64 %i.cc, 15                       ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 16, i64 %i.cd
  %n.vec = sub i64 %i.cc, %i.cf                   ; 2 uses
  %i.cg = add i64 %.val.i236, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = add i64 %.val.i236, %index              ; 2 uses
  %i.ci = sub nuw i64 %i.ch, %i.an
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ci
  %wide.load = load <16 x i8>, ptr %i.cj, align 1, !noalias !200
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch
  store <16 x i8> %wide.load, ptr %i.ck, align 1, !noalias !200
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !155

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.01.010.i.i.ph = phi i64 [ %.val.i236, %.lr.ph.i.i ], [ %i.cg, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ah
  %.sroa.01.010.i.i = phi i64 [ %i.cm, %bb.ah ], [ %.sroa.01.010.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cm = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.cn = sub nuw i64 %.sroa.01.010.i.i, %i.an    ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.bs
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !200
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cn
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !200, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.010.i.i
  store i8 %i.cq, ptr %i.cr, align 1, !noalias !200
  %exitcond15.not.i.i = icmp eq i64 %i.cm, %i.bq
  br i1 %exitcond15.not.i.i, label %.backedge.sink.split, label %scalar.ph, !llvm.loop !156

bb.ai:                                            ; preds = %bb.af
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !200
  unreachable

bb.aj:                                            ; preds = %bb.y
  %i.cs = icmp ult i64 %.sroa.085.1, 33
  %.val = load i64, ptr %i.c, align 8             ; 8 uses
  br i1 %i.cs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = icmp ult i64 %.sroa.085.1, 65
  br i1 %i.ct, label %bb.ao, label %._crit_edge583

._crit_edge583:                                   ; preds = %bb.ak
  %.pre = load ptr, ptr %3, align 8, !alias.scope !201, !noalias !196
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cu = add i64 %.val216, 32
  %.not4.i = icmp ugt i64 %i.cu, %.val
  %.pre585 = load ptr, ptr %3, align 8, !noalias !196 ; 3 uses
  br i1 %.not4.i, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %._crit_edge583, %bb.ao, %bb.al
  %i.cv = phi ptr [ %.pre, %._crit_edge583 ], [ %.pre584, %bb.ao ], [ %.pre585, %bb.al ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.cw = add i64 %i.bf, %.sroa.085.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202), !noalias !196
  %i.cx = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.cw, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !203 ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1
  %i.da = sub i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = sub i64 %.val, %i.da
  %.not.i.i239 = icmp ugt i64 %.val216, %i.db
  br i1 %.not.i.i239, label %bb.an, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !7

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !203
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.dc, i64 %i.da, i1 false), !alias.scope !202, !noalias !204
  %i.de = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

bb.ao:                                            ; preds = %bb.ak
  %i.df = add i64 %.val216, 64
  %.not.i = icmp ugt i64 %i.df, %.val
  %.pre584 = load ptr, ptr %3, align 8, !noalias !196 ; 3 uses
  br i1 %.not.i, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = add i64 %i.bf, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205), !noalias !196
  %i.dh = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.dg, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !206 ; 2 uses
  %i.di = extractvalue { i64, i64 } %i.dh, 0      ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.dh, 1
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = sub i64 %.val, %i.dk
  %.not.i.i240 = icmp ugt i64 %.val216, %i.dl
  br i1 %.not.i.i240, label %bb.aq, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241, !prof !7

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !206
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241: ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre584, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre584, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull align 1 %i.dm, i64 %i.dk, i1 false), !alias.scope !205, !noalias !207
  %i.do = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

bb.ar:                                            ; preds = %bb.al
  %i.dp = add i64 %i.bf, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208), !noalias !196
  %i.dq = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.dp, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !209 ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { i64, i64 } %i.dq, 1
  %i.dt = sub i64 %i.ds, %i.dr                    ; 2 uses
  %i.du = sub i64 %.val, %i.dt
  %.not.i.i242 = icmp ugt i64 %.val216, %i.du
  br i1 %.not.i.i242, label %bb.as, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243, !prof !7

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !209
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243: ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre585, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre585, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.dv, i64 %i.dt, i1 false), !alias.scope !208, !noalias !210
  %i.dx = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.v
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.w
  %i.dy = sub nuw i64 %.sroa.085.0, %..i.i
  br label %bb.x

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.z, %bb.y
  store i64 4, ptr %0, align 8
  br label %bb.au

.backedge.sink.split:                             ; preds = %bb.bi, %bb.ah, %bb.ae, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %bb.bf, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261
  %.sink = phi i64 [ %i.ew, %bb.bf ], [ %i.gi, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261 ], [ %i.de, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.do, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241 ], [ %i.dx, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243 ], [ %i.bq, %bb.ah ], [ %i.bl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.bq, %bb.ae ], [ %i.ew, %bb.bi ]
  %.sroa.0.0.be.ph = phi i64 [ %i.em, %bb.bf ], [ %i.em, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit241 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243 ], [ %.sroa.0.3, %bb.ah ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.3, %bb.ae ], [ %i.em, %bb.bi ]
  store i64 %.sink, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.w, %bb.ba
  %.sroa.0.0.be = phi i64 [ %.sroa.0.3, %bb.w ], [ %i.em, %bb.ba ], [ %.sroa.0.0.be.ph, %.backedge.sink.split ] ; 2 uses
  %i.dz = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %._crit_edge, %bb.q, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %bb.t, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit257, %bb.be, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit252, %bb.p
  ret void

bb.av:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.aw:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ea = load i64, ptr %i.c, align 8, !alias.scope !211, !noalias !212, !noundef !6 ; 2 uses
  %i.eb = add nuw i64 %.val225, 16                ; 2 uses
  %.not4.i245 = icmp ugt i64 %i.eb, %i.ea
  br i1 %.not4.i245, label %bb.ax, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249, !prof !9

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val225, i64 noundef %i.eb, i64 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !213
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249: ; preds = %bb.aw
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.ed = load ptr, ptr %3, align 8, !alias.scope !211, !noalias !212, !nonnull !6, !noundef !6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.val225 ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ee, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !211
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ef, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !211
  %i.eh = add nuw i64 %.val225, %i.p              ; 4 uses
  store i64 %i.eh, ptr %i.a, align 8, !alias.scope !211, !noalias !212
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.p
  %.sroa.030.0.copyload.i250 = load i16, ptr %i.ei, align 1, !alias.scope !214, !noalias !215 ; 3 uses
  %i.ej = icmp eq i16 %.sroa.030.0.copyload.i250, 0
  br i1 %i.ej, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit252, label %bb.ay

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit252: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249
  store i64 3, ptr %0, align 8
  br label %bb.au

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i249
  %i.ek = zext i16 %.sroa.030.0.copyload.i250 to i64 ; 9 uses
  %i.el = add nuw nsw i64 %.sroa.0.0474, 3
  %i.em = add nuw nsw i64 %i.el, %i.p             ; 4 uses
  %narrow = add nuw nsw i8 %i.h, 4
  %i.en = zext nneg i8 %narrow to i64             ; 4 uses
  %i.eo = icmp ult i64 %i.eh, %i.ek
  br i1 %i.eo, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ep = sub nuw nsw i64 %i.ek, %i.eh            ; 4 uses
  %i.eq = icmp samesign ult i64 %5, %i.ep
  br i1 %i.eq, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit257, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = sub nuw nsw i64 %5, %i.ep
  %..i.i254 = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.ep, i64 %i.en) ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef range(i64 0, -9223372036854775808) %..i.i254, i64 noundef range(i64 0, -9223372036854775808) %..i.i254) #20, !noalias !216
  %.not354 = icmp samesign ult i64 %i.ep, %i.en
  br i1 %.not354, label %bb.bc, label %.backedge

bb.bb:                                            ; preds = %bb.ay, %bb.bc
  %.val217 = phi i64 [ %.val217.pre, %bb.bc ], [ %i.eh, %bb.ay ] ; 14 uses
  %.sroa.032.0 = phi i64 [ %i.ev, %bb.bc ], [ %i.en, %bb.ay ]
  %.sroa.032.0.fr = freeze i64 %.sroa.032.0       ; 4 uses
  %i.et = sub nuw i64 %.val217, %i.ek             ; 2 uses
  %i.eu = icmp ult i64 %.val217, %i.ek
  br i1 %i.eu, label %bb.be, label %bb.bd

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit257: ; preds = %bb.az
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.bc:                                            ; preds = %bb.ba
  %i.ev = sub nuw nsw i64 %i.en, %..i.i254
  %.val217.pre = load i64, ptr %i.a, align 8
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb
  %.not197 = icmp samesign ugt i64 %.sroa.032.0.fr, %i.ek
  br i1 %.not197, label %bb.bf, label %bb.bk

bb.be:                                            ; preds = %bb.bb
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.bf:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ew = add i64 %.val217, %.sroa.032.0.fr       ; 4 uses
  %i.ex = icmp ult i64 %.val217, %i.ew
  br i1 %i.ex, label %.lr.ph.i, label %.backedge.sink.split

.lr.ph.i:                                         ; preds = %bb.bf
  %i.ey = load i64, ptr %i.c, align 8, !alias.scope !217, !noundef !6 ; 5 uses
  %i.ez = load ptr, ptr %3, align 8, !alias.scope !217, !nonnull !6 ; 4 uses
  %umax.i258 = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %.val217) ; 3 uses
  %i.fa = add i64 %.sroa.032.0.fr, -1
  %i.fb = sub i64 %.val217, %i.ek
  %i.fc = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.fb)
  %i.fd = add i64 %i.fc, %i.ek
  %i.fe = sub i64 %i.fd, %.val217
  %i.ff = sub i64 %umax.i258, %.val217
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fg)
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %min.iters.check841 = icmp ult i64 %i.fi, 17
  %diff.check839 = icmp ult i16 %.sroa.030.0.copyload.i250, 16
  %or.cond851 = or i1 %min.iters.check841, %diff.check839
  br i1 %or.cond851, label %scalar.ph840.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %.lr.ph.i
  %i.fj = and i64 %i.fi, 15                       ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = select i1 %i.fk, i64 16, i64 %i.fj
  %n.vec843 = sub i64 %i.fi, %i.fl                ; 2 uses
  %i.fm = add i64 %.val217, %n.vec843
  br label %vector.body844

vector.body844:                                   ; preds = %vector.body844, %vector.ph842
  %index845 = phi i64 [ 0, %vector.ph842 ], [ %index.next847, %vector.body844 ] ; 2 uses
  %i.fn = add i64 %.val217, %index845             ; 2 uses
  %i.fo = sub nuw i64 %i.fn, %i.ek
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fo
  %wide.load846 = load <16 x i8>, ptr %i.fp, align 1, !noalias !217
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fn
  store <16 x i8> %wide.load846, ptr %i.fq, align 1, !noalias !217
  %index.next847 = add nuw i64 %index845, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next847, %n.vec843
  br i1 %i.fr, label %scalar.ph840.preheader, label %vector.body844, !llvm.loop !180

scalar.ph840.preheader:                           ; preds = %vector.body844, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %.val217, %.lr.ph.i ], [ %i.fm, %vector.body844 ]
  br label %scalar.ph840

scalar.ph840:                                     ; preds = %scalar.ph840.preheader, %bb.bi
  %.sroa.01.010.i = phi i64 [ %i.fs, %bb.bi ], [ %.sroa.01.010.i.ph, %scalar.ph840.preheader ] ; 4 uses
  %i.fs = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.ft = sub nuw i64 %.sroa.01.010.i, %i.ek      ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %scalar.ph840
  %exitcond.not.i259 = icmp eq i64 %.sroa.01.010.i, %umax.i258
  br i1 %exitcond.not.i259, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %scalar.ph840
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !217
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !217, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.01.010.i
  store i8 %i.fw, ptr %i.fx, align 1, !noalias !217
  %exitcond15.not.i = icmp eq i64 %i.fs, %i.ew
  br i1 %exitcond15.not.i, label %.backedge.sink.split, label %scalar.ph840, !llvm.loop !181

bb.bj:                                            ; preds = %bb.bg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i258, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !217
  unreachable

bb.bk:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.fy = load ptr, ptr %3, align 8, !alias.scope !218, !nonnull !6, !noundef !6 ; 2 uses
  %i.fz = load i64, ptr %i.c, align 8, !alias.scope !218, !noundef !6 ; 2 uses
  %i.ga = add i64 %i.et, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.gb = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.et, i64 noundef %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !220 ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1
  %i.ge = sub i64 %i.gd, %i.gc                    ; 2 uses
  %i.gf = sub i64 %i.fz, %i.ge
  %.not.i.i260 = icmp ugt i64 %.val217, %i.gf
  br i1 %.not.i.i260, label %bb.bl, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261, !prof !7

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !220
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261: ; preds = %bb.bk
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.val217
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 1 %i.gg, i64 %i.ge, i1 false), !alias.scope !219, !noalias !218
  %i.gi = add i64 %.val217, %.sroa.032.0.fr
  br label %.backedge.sink.split
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6, i64 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %6, 0
  br i1 %i.c, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val37 = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %i.f = sub i64 %.val, %.val37
  %i.g = sub nuw nsw i64 %1, %2                   ; 2 uses
  %i.h = mul i64 %i.g, 110
  %i.i = udiv i64 %i.h, 100
  %i.j = add nuw nsw i64 %i.i, 20
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i64 %i.g, 13
  br i1 %i.l, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i64 %1, -12                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = or i64 %7, %2
  %or.cond = icmp eq i64 %i.n, 0
  %.val41.pre = load ptr, ptr %4, align 8         ; 3 uses
  br i1 %or.cond, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2)
  %.val35 = load i64, ptr %i.e, align 8, !noundef !6
  %i.o = sub i64 %.val35, %.val37
  br label %bb.ab

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.g
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !262
  %i.p = mul i64 %.sroa.01.0.copyload.i.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.q
  store i32 0, ptr %i.r, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit
  %i.s = phi i64 [ %2, %bb.g ], [ 1, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit ] ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %.split._crit_edge, label %.lr.ph.preheader, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.i, %.split
  %.sroa.022.0507 = phi i64 [ %i.bq, %.split ], [ %2, %bb.i ] ; 7 uses
  %i.u = phi i64 [ %i.bq, %.split ], [ %i.s, %bb.i ] ; 2 uses
  %i.v = phi i64 [ %i.df, %.split ], [ %.val37, %bb.i ] ; 4 uses
  %i.w = phi i64 [ %i.cl, %.split ], [ %.val, %bb.i ] ; 6 uses
  %i.x = add i64 %i.u, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.y = phi i64 [ %i.av, %.backedge ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %i.z = phi i64 [ %i.au, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.y, %.backedge ], [ %i.u, %.lr.ph.preheader ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.aa = add i64 %.promoted, 8                   ; 2 uses
  %i.ab = icmp ugt i64 %.promoted, -9
  %.not.i.i42 = icmp ugt i64 %i.aa, %1
  %or.cond.i.i = or i1 %i.ab, %.not.i.i42
  br i1 %or.cond.i.i, label %bb.j, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44, !prof !9

bb.j:                                             ; preds = %.lr.ph
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.promoted, i64 noundef %i.aa, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !265
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44: ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted
  %.sroa.01.0.copyload.i.i43 = load i64, ptr %i.ac, align 1, !alias.scope !265 ; 2 uses
  %i.ad = mul i64 %.sroa.01.0.copyload.i.i43, -3523014627271114752
  %i.ae = lshr i64 %i.ad, 52
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !noundef !6
  %i.ah = zext i32 %i.ag to i64                   ; 3 uses
  %i.ai = add i64 %.promoted, %7                  ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.af, align 4
  %i.ak = sub i64 %i.ai, %i.ah                    ; 3 uses
  %i.al = icmp ult i64 %i.ak, 65536
  %i.am = icmp ule i64 %7, %i.ah
  %or.cond2 = and i1 %i.am, %i.al
  %i.an = trunc i64 %.sroa.01.0.copyload.i.i43 to i32
  br i1 %or.cond2, label %bb.k, label %.backedge

.split._crit_edge:                                ; preds = %.split, %.backedge, %bb.i
  %.sroa.022.0446 = phi i64 [ %.sroa.022.0507, %.backedge ], [ %2, %bb.i ], [ %i.bq, %.split ]
  call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.022.0446)
  %.val34 = load i64, ptr %i.e, align 8, !noundef !6
  %i.ao = sub i64 %.val34, %.val37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.k:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44
  %i.ap = sub nuw nsw i64 %i.ah, %7               ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 3 uses
  %.not.i45 = icmp samesign ugt i64 %i.aq, %1
  br i1 %.not.i45, label %bb.l, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, !prof !9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %i.aq, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !266
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.sroa.02.0.copyload.i = load i32, ptr %i.ar, align 1, !alias.scope !266
  %i.as = icmp eq i32 %.sroa.02.0.copyload.i, %i.an
  br i1 %i.as, label %bb.m, label %.backedge

.backedge:                                        ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44
  %i.at = lshr i64 %i.z, 5
  %i.au = add i64 %i.z, 1
  %i.av = add i64 %i.at, %i.y
  %i.aw = icmp ugt i64 %i.y, %i.m
  br i1 %i.aw, label %.split._crit_edge, label %.lr.ph, !prof !15

bb.m:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit
  %i.ax = trunc nuw i64 %i.ak to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ay = icmp ne i64 %i.ap, 0
  %i.az = icmp ugt i64 %.promoted, %.sroa.022.0507
  %or.cond11.i = and i1 %i.az, %i.ay
  br i1 %or.cond11.i, label %.lr.ph.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.i:                                         ; preds = %bb.m, %bb.p
  %i.ba = phi i64 [ %i.bb, %bb.p ], [ %.promoted, %bb.m ] ; 2 uses
  %.sroa.0.063 = phi i64 [ %i.bd, %bb.p ], [ %i.ap, %bb.m ] ; 2 uses
  %i.bb = add i64 %i.ba, -1                       ; 6 uses
  %i.bc = icmp ult i64 %i.bb, %1
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.bd = add nsw i64 %.sroa.0.063, -1            ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !267, !noalias !269, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !268, !noalias !270, !noundef !6
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %bb.p, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit

bb.o:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19, !noalias !271
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bj = icmp ne i64 %i.bd, 0
  %i.bk = icmp ugt i64 %i.bb, %.sroa.022.0507
  %or.cond.i51 = and i1 %i.bj, %i.bk
  br i1 %or.cond.i51, label %.lr.ph.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit: ; preds = %bb.p, %bb.n
  %i.bl = phi i64 [ %i.ba, %bb.n ], [ %i.bb, %bb.p ]
  %.sroa.0.1.ph = phi i64 [ %.sroa.0.063, %bb.n ], [ %i.bd, %bb.p ]
  %.pre = add nuw nsw i64 %.sroa.0.1.ph, 4
  br label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit, %bb.m
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit ], [ %i.aq, %bb.m ]
  %i.bm = phi i64 [ %i.bl, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit ], [ %.promoted, %bb.m ] ; 5 uses
  %i.bn = sub i64 %i.bm, %.sroa.022.0507          ; 6 uses
  %i.bo = add i64 %i.bm, 4
  store i64 %i.bo, ptr %i.b, align 8
  %i.bp = call fastcc noundef i64 @_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.pre-phi) #20 ; 3 uses
  %i.bq = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.br = add i64 %i.bq, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.bs = add i64 %i.bq, 6                        ; 2 uses
  %i.bt = icmp ugt i64 %i.br, -9
  %.not.i.i52 = icmp ugt i64 %i.bs, %1
  %or.cond.i.i53 = or i1 %i.bt, %.not.i.i52
  br i1 %or.cond.i.i53, label %bb.q, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55, !prof !9

bb.q:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.bs, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !274
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %.sroa.01.0.copyload.i.i54 = load i64, ptr %i.bu, align 1, !alias.scope !274
  %i.bv = mul i64 %.sroa.01.0.copyload.i.i54, -3523014627271114752
  %i.bw = add i64 %i.br, %7
  %i.bx = lshr i64 %i.bv, 52
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.bx
  %i.bz = trunc i64 %i.bw to i32
  store i32 %i.bz, ptr %i.by, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.ca = icmp ult i64 %i.v, %i.w
  br i1 %i.ca, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.r

bb.r:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !275
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55
  %i.cb = icmp ult i64 %i.bn, 15
  %i.cc = trunc nuw nsw i64 %i.bn to i8
  %i.cd = shl nuw i8 %i.cc, 4
  %.sroa.014.0 = select i1 %i.cb, i8 %i.cd, i8 -16
  %.sroa.026.064 = call i64 @llvm.umin.i64(i64 %i.bp, i64 15)
  %.sroa.026.0 = trunc nuw nsw i64 %.sroa.026.064 to i8
  %i.ce = or disjoint i8 %.sroa.014.0, %.sroa.026.0
  %i.cf = load ptr, ptr %3, align 8, !alias.scope !275, !nonnull !6, !noundef !6 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.v
  store i8 %i.ce, ptr %i.cg, align 1, !noalias !275
  %i.ch = add nuw i64 %i.v, 1                     ; 4 uses
  store i64 %i.ch, ptr %i.e, align 8, !alias.scope !275
  %i.ci = icmp ugt i64 %i.bn, 14
  br i1 %i.ci, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cj = icmp ult i64 %i.bm, %.sroa.022.0507
  %.not.i = icmp ugt i64 %i.bm, %1
  %or.cond.i = or i1 %i.cj, %.not.i
  br i1 %or.cond.i, label %bb.t, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, !prof !9

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.022.0507, i64 noundef %i.bm, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !276
  unreachable

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.022.0507
  call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.bn, i64 noundef %i.bn) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ax, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.cl = load i64, ptr %i.d, align 8, !alias.scope !277, !noalias !278, !noundef !6 ; 7 uses
  %i.cm = load i64, ptr %i.e, align 8, !alias.scope !277, !noalias !278, !noundef !6 ; 4 uses
  %i.cn = add i64 %i.cm, 2                        ; 7 uses
  %i.co = icmp ugt i64 %i.cm, -3
  %.not4.i = icmp ugt i64 %i.cn, %i.cl
  %or.cond.i60 = or i1 %i.co, %.not4.i
  br i1 %or.cond.i60, label %bb.u, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit, !prof !9

bb.u:                                             ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cn, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !279
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit: ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  %i.cp = trunc i64 %i.ak to i8
  %i.cq = load ptr, ptr %3, align 8, !alias.scope !277, !noalias !278, !nonnull !6, !noundef !6 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cm ; 3 uses
  store i8 %i.cp, ptr %i.cr, align 1, !alias.scope !280, !noalias !281
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cr, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !277
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cr, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !277
  store i64 %i.cn, ptr %i.e, align 8, !alias.scope !277, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = icmp ugt i64 %i.bp, 14
  br i1 %i.cs, label %bb.y, label %.split

bb.v:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.ct = add i64 %i.bn, -15                      ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, 254
  br i1 %i.cu, label %.lr.ph168.preheader, label %._crit_edge169

.lr.ph168.preheader:                              ; preds = %bb.v
  %umax = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.ch) ; 2 uses
  br label %.lr.ph168

._crit_edge169:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57, %bb.v
  %i.cv = phi i64 [ %i.ch, %bb.v ], [ %i.dd, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ] ; 4 uses
  %.sroa.016.0.lcssa = phi i64 [ %i.ct, %bb.v ], [ %i.db, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.cw = icmp ult i64 %i.cv, %i.w
  br i1 %i.cw, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56, label %bb.w

bb.w:                                             ; preds = %._crit_edge169
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !282
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56: ; preds = %._crit_edge169
  %i.cx = trunc nuw i64 %.sroa.016.0.lcssa to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cv
  store i8 %i.cx, ptr %i.cy, align 1, !noalias !282
  %i.cz = add nuw i64 %i.cv, 1
  store i64 %i.cz, ptr %i.e, align 8, !alias.scope !282
  br label %bb.s

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57
  %.sroa.016.0166 = phi i64 [ %i.db, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ], [ %i.ct, %.lr.ph168.preheader ]
  %i.da = phi i64 [ %i.dd, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57 ], [ %i.ch, %.lr.ph168.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %exitcond.not = icmp eq i64 %i.da, %umax
  br i1 %exitcond.not, label %bb.x, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57

bb.x:                                             ; preds = %.lr.ph168
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !283
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57: ; preds = %.lr.ph168
  %i.db = add i64 %.sroa.016.0166, -255           ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.da
  store i8 -1, ptr %i.dc, align 1, !noalias !283
  %i.dd = add i64 %i.da, 1                        ; 3 uses
  store i64 %i.dd, ptr %i.e, align 8, !alias.scope !283
  %i.de = icmp ugt i64 %i.db, 254
  br i1 %i.de, label %.lr.ph168, label %._crit_edge169

.split:                                           ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.df = phi i64 [ %i.dn, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58 ], [ %i.cn, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit ]
  %i.dg = icmp ugt i64 %i.bq, %i.m
  br i1 %i.dg, label %.split._crit_edge, label %.lr.ph.preheader, !prof !16

bb.y:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.dh = add i64 %i.bp, -15                      ; 3 uses
  %i.di = icmp ugt i64 %i.dh, 254
  br i1 %i.di, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %bb.y
  %umax280 = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cn) ; 2 uses
  br label %.lr.ph174

._crit_edge175:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59, %bb.y
  %i.dj = phi i64 [ %i.cn, %bb.y ], [ %i.dr, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ] ; 4 uses
  %.sroa.019.0.lcssa = phi i64 [ %i.dh, %bb.y ], [ %i.dp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.dk = icmp ult i64 %i.dj, %i.cl
  br i1 %i.dk, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58, label %bb.z

bb.z:                                             ; preds = %._crit_edge175
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !284
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58: ; preds = %._crit_edge175
  %i.dl = trunc nuw i64 %.sroa.019.0.lcssa to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !noalias !284
  %i.dn = add nuw i64 %i.dj, 1                    ; 2 uses
  store i64 %i.dn, ptr %i.e, align 8, !alias.scope !284
  br label %.split

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59
  %.sroa.019.0172 = phi i64 [ %i.dp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ], [ %i.dh, %.lr.ph174.preheader ]
  %i.do = phi i64 [ %i.dr, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ], [ %i.cn, %.lr.ph174.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %exitcond281.not = icmp eq i64 %i.do, %umax280
  br i1 %exitcond281.not, label %bb.aa, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59

bb.aa:                                            ; preds = %.lr.ph174
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax280, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !285
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59: ; preds = %.lr.ph174
  %i.dp = add i64 %.sroa.019.0172, -255           ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.do
  store i8 -1, ptr %i.dq, align 1, !noalias !285
  %i.dr = add i64 %i.do, 1                        ; 3 uses
  store i64 %i.dr, ptr %i.e, align 8, !alias.scope !285
  %i.ds = icmp ugt i64 %i.dp, 254
  br i1 %i.ds, label %.lr.ph174, label %._crit_edge175

bb.ab:                                            ; preds = %bb.e, %bb.h, %.split._crit_edge
  %.sroa.4.0 = phi i64 [ %i.ao, %.split._crit_edge ], [ %i.o, %bb.h ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %.split._crit_edge ], [ 0, %bb.h ], [ 1, %bb.e ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.du
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, i64 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %6, 65537
  br i1 %i.c, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not39 = icmp ugt i64 %6, %7
  br i1 %.not39, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.d = add i64 %7, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %7
  br i1 %i.e, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.f = add i64 %i.d, %6                         ; 2 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp sgt i64 %i.f, -1
  %or.cond41 = and i1 %i.g, %i.h
  br i1 %or.cond41, label %bb.j, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val = load i64, ptr %i.i, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val45 = load i64, ptr %i.j, align 8, !noundef !6 ; 4 uses
  %i.k = sub i64 %.val, %.val45
  %i.l = sub nuw nsw i64 %1, %2                   ; 2 uses
  %i.m = mul i64 %i.l, 110
  %i.n = udiv i64 %i.m, 100
  %i.o = add nuw nsw i64 %i.n, 20
  %i.p = icmp ult i64 %i.k, %i.o
  br i1 %i.p, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = icmp samesign ult i64 %i.l, 13
  br i1 %i.q, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.r = add nsw i64 %1, -12                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = or i64 %7, %2
  %or.cond = icmp eq i64 %i.s, 0
  %.val49.pre = load ptr, ptr %4, align 8         ; 3 uses
  br i1 %or.cond, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2)
  %.val43 = load i64, ptr %i.j, align 8, !noundef !6
  %i.t = sub i64 %.val43, %.val45
  br label %bb.ag

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.l
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !327
  %i.u = mul i64 %.sroa.01.0.copyload.i.i, -3523014627271114752
  %i.v = lshr i64 %i.u, 52
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.v
  store i32 0, ptr %i.w, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit
  %i.x = phi i64 [ %2, %bb.l ], [ 1, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit ] ; 2 uses
  %i.y = icmp ugt i64 %i.x, %i.r
  br i1 %i.y, label %.split._crit_edge, label %.lr.ph.preheader, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.n, %.split
  %.sroa.023.0639 = phi i64 [ %i.bw, %.split ], [ %2, %bb.n ] ; 7 uses
  %i.z = phi i64 [ %i.bw, %.split ], [ %i.x, %bb.n ] ; 2 uses
  %i.aa = phi i64 [ %i.dl, %.split ], [ %.val45, %bb.n ] ; 4 uses
  %i.ab = phi i64 [ %i.cr, %.split ], [ %.val, %bb.n ] ; 6 uses
  %i.ac = add i64 %i.z, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.ad = phi i64 [ %i.az, %.backedge ], [ %i.ac, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi i64 [ %i.ay, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.ad, %.backedge ], [ %i.z, %.lr.ph.preheader ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.af = add i64 %.promoted, 8                   ; 2 uses
  %i.ag = icmp ugt i64 %.promoted, -9
  %.not.i.i50 = icmp ugt i64 %i.af, %1
  %or.cond.i.i = or i1 %i.ag, %.not.i.i50
  br i1 %or.cond.i.i, label %bb.o, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52, !prof !9

bb.o:                                             ; preds = %.lr.ph
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.promoted, i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !330
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52: ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted
  %.sroa.01.0.copyload.i.i51 = load i64, ptr %i.ah, align 1, !alias.scope !330 ; 2 uses
  %i.ai = mul i64 %.sroa.01.0.copyload.i.i51, -3523014627271114752
  %i.aj = lshr i64 %i.ai, 52
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noundef !6
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = add i64 %.promoted, %7                  ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.ak, align 4
  %i.ap = sub i64 %i.an, %i.am                    ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 65535
  %i.ar = trunc i64 %.sroa.01.0.copyload.i.i51 to i32
  br i1 %i.aq, label %.backedge, label %bb.p

.split._crit_edge:                                ; preds = %.split, %.backedge, %bb.n
  %.sroa.023.0576 = phi i64 [ %.sroa.023.0639, %.backedge ], [ %2, %bb.n ], [ %i.bw, %.split ]
  call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.023.0576)
  %.val42 = load i64, ptr %i.j, align 8, !noundef !6
  %i.as = sub i64 %.val42, %.val45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.p:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52
  %.not40 = icmp ugt i64 %7, %i.am                ; 3 uses
  %storemerge.p.v = select i1 %.not40, i64 %6, i64 0
  %storemerge.p = sub i64 %storemerge.p.v, %7
  %storemerge = add i64 %storemerge.p, %i.am      ; 7 uses
  %.sroa.5.0 = select i1 %.not40, i64 %6, i64 %1  ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.at = add i64 %storemerge, 4                  ; 3 uses
  %i.au = icmp ugt i64 %storemerge, -5
  %.not.i53 = icmp ugt i64 %i.at, %.sroa.5.0
  %or.cond.i54 = or i1 %i.au, %.not.i53
  br i1 %or.cond.i54, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge, i64 noundef %i.at, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !331
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit: ; preds = %bb.p
  %.sroa.05.0 = select i1 %.not40, ptr %5, ptr %0 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %storemerge
  %.sroa.02.0.copyload.i = load i32, ptr %i.av, align 1, !alias.scope !331
  %i.aw = icmp eq i32 %.sroa.02.0.copyload.i, %i.ar
  br i1 %i.aw, label %bb.r, label %.backedge

.backedge:                                        ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52
  %i.ax = lshr i64 %i.ae, 5
  %i.ay = add i64 %i.ae, 1
  %i.az = add i64 %i.ax, %i.ad
  %i.ba = icmp ugt i64 %i.ad, %i.r
  br i1 %i.ba, label %.split._crit_edge, label %.lr.ph, !prof !15

bb.r:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit
  %.sroa.010.0.le = trunc nuw i64 %i.ap to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.bb = icmp ne i64 %storemerge, 0
  %i.bc = icmp ugt i64 %.promoted, %.sroa.023.0639
  %or.cond11.i = and i1 %i.bc, %i.bb
  br i1 %or.cond11.i, label %.lr.ph.preheader.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.bd = add i64 %storemerge, -1                 ; 2 uses
  %.first_iter.i = icmp ult i64 %i.bd, %.sroa.5.0
  br i1 %.first_iter.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %bb.t
  %i.be = phi i64 [ %i.bf, %bb.t ], [ %.promoted, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.071.us = phi i64 [ %i.bh, %bb.t ], [ %storemerge, %.lr.ph.preheader.i ] ; 2 uses
  %i.bf = add i64 %i.be, -1                       ; 6 uses
  %i.bg = icmp ult i64 %i.bf, %1
  br i1 %i.bg, label %bb.s, label %.split188.us

bb.s:                                             ; preds = %.lr.ph.i.us
  %i.bh = add i64 %.sroa.0.071.us, -1             ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !332, !noalias !334, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !333, !noalias !335, !noundef !6
  %i.bm = icmp eq i8 %i.bj, %i.bl
  br i1 %i.bm, label %bb.t, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp ne i64 %i.bh, 0
  %i.bo = icmp ugt i64 %i.bf, %.sroa.023.0639
  %or.cond.i59.us = and i1 %i.bn, %i.bo
  br i1 %or.cond.i59.us, label %.lr.ph.i.us, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us: ; preds = %bb.t, %bb.s
  %i.bp = phi i64 [ %i.be, %bb.s ], [ %i.bf, %bb.t ]
  %.sroa.0.1.ph.us = phi i64 [ %.sroa.0.071.us, %bb.s ], [ %i.bh, %bb.t ]
  %.pre = add nuw i64 %.sroa.0.1.ph.us, 4
  br label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.bq = add i64 %.promoted, -1                  ; 2 uses
  %i.br = icmp ult i64 %i.bq, %1
  br i1 %i.br, label %bb.u, label %.split188.us

bb.u:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #19, !noalias !336
  unreachable

.split188.us:                                     ; preds = %.lr.ph.i.us, %.lr.ph.i
  %.us-phi189 = phi i64 [ %i.bq, %.lr.ph.i ], [ %i.bf, %.lr.ph.i.us ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi189, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19, !noalias !336
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us, %bb.r
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us ], [ %i.at, %bb.r ]
  %i.bs = phi i64 [ %i.bp, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us ], [ %.promoted, %bb.r ] ; 5 uses
  %i.bt = sub i64 %i.bs, %.sroa.023.0639          ; 6 uses
  %i.bu = add nuw i64 %i.bs, 4
  store i64 %i.bu, ptr %i.b, align 8
  %i.bv = call fastcc noundef i64 @_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef %.sroa.5.0, i64 noundef %.pre-phi) #20 ; 3 uses
  %i.bw = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.bx = add i64 %i.bw, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.by = add i64 %i.bw, 6                        ; 2 uses
  %i.bz = icmp ugt i64 %i.bx, -9
  %.not.i.i60 = icmp ugt i64 %i.by, %1
  %or.cond.i.i61 = or i1 %i.bz, %.not.i.i60
  br i1 %or.cond.i.i61, label %bb.v, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63, !prof !9

bb.v:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %i.by, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !339
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %.sroa.01.0.copyload.i.i62 = load i64, ptr %i.ca, align 1, !alias.scope !339
  %i.cb = mul i64 %.sroa.01.0.copyload.i.i62, -3523014627271114752
  %i.cc = add i64 %i.bx, %7
  %i.cd = lshr i64 %i.cb, 52
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.cd
  %i.cf = trunc i64 %i.cc to i32
  store i32 %i.cf, ptr %i.ce, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.cg = icmp ult i64 %i.aa, %i.ab
  br i1 %i.cg, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.w

bb.w:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !340
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63
  %i.ch = icmp ult i64 %i.bt, 15
  %i.ci = trunc nuw nsw i64 %i.bt to i8
  %i.cj = shl nuw i8 %i.ci, 4
  %.sroa.015.0 = select i1 %i.ch, i8 %i.cj, i8 -16
  %.sroa.027.072 = call i64 @llvm.umin.i64(i64 %i.bv, i64 15)
  %.sroa.027.0 = trunc nuw nsw i64 %.sroa.027.072 to i8
  %i.ck = or disjoint i8 %.sroa.015.0, %.sroa.027.0
  %i.cl = load ptr, ptr %3, align 8, !alias.scope !340, !nonnull !6, !noundef !6 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.aa
  store i8 %i.ck, ptr %i.cm, align 1, !noalias !340
  %i.cn = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.cn, ptr %i.j, align 8, !alias.scope !340
  %i.co = icmp ugt i64 %i.bt, 14
  br i1 %i.co, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cp = icmp ult i64 %i.bs, %.sroa.023.0639
  %.not.i = icmp ugt i64 %i.bs, %1
  %or.cond.i = or i1 %i.cp, %.not.i
  br i1 %or.cond.i, label %bb.y, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.023.0639, i64 noundef %i.bs, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !341
  unreachable

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.023.0639
  call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.bt, i64 noundef %i.bt) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.sroa.010.0.le, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.cr = load i64, ptr %i.i, align 8, !alias.scope !342, !noalias !343, !noundef !6 ; 7 uses
  %i.cs = load i64, ptr %i.j, align 8, !alias.scope !342, !noalias !343, !noundef !6 ; 4 uses
  %i.ct = add i64 %i.cs, 2                        ; 7 uses
  %i.cu = icmp ugt i64 %i.cs, -3
  %.not4.i = icmp ugt i64 %i.ct, %i.cr
  %or.cond.i68 = or i1 %i.cu, %.not4.i
  br i1 %or.cond.i68, label %bb.z, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit, !prof !9

bb.z:                                             ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cs, i64 noundef %i.ct, i64 noundef %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !344
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit: ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  %i.cv = trunc i64 %i.ap to i8
  %i.cw = load ptr, ptr %3, align 8, !alias.scope !342, !noalias !343, !nonnull !6, !noundef !6 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cs ; 3 uses
  store i8 %i.cv, ptr %i.cx, align 1, !alias.scope !345, !noalias !346
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cx, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !342
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cx, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !342
  store i64 %i.ct, ptr %i.j, align 8, !alias.scope !342, !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cy = icmp ugt i64 %i.bv, 14
  br i1 %i.cy, label %bb.ad, label %.split

bb.aa:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cz = add i64 %i.bt, -15                      ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 254
  br i1 %i.da, label %.lr.ph223.preheader, label %._crit_edge224

.lr.ph223.preheader:                              ; preds = %bb.aa
  %umax = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.cn) ; 2 uses
  br label %.lr.ph223

._crit_edge224:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65, %bb.aa
  %i.db = phi i64 [ %i.cn, %bb.aa ], [ %i.dj, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65 ] ; 4 uses
  %.sroa.017.0.lcssa = phi i64 [ %i.cz, %bb.aa ], [ %i.dh, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.dc = icmp ult i64 %i.db, %i.ab
  br i1 %i.dc, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge224
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !347
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64: ; preds = %._crit_edge224
  %i.dd = trunc nuw i64 %.sroa.017.0.lcssa to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !noalias !347
  %i.df = add nuw i64 %i.db, 1
  store i64 %i.df, ptr %i.j, align 8, !alias.scope !347
  br label %bb.x

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65
  %.sroa.017.0221 = phi i64 [ %i.dh, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65 ], [ %i.cz, %.lr.ph223.preheader ]
  %i.dg = phi i64 [ %i.dj, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65 ], [ %i.cn, %.lr.ph223.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %exitcond.not = icmp eq i64 %i.dg, %umax
  br i1 %exitcond.not, label %bb.ac, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65

bb.ac:                                            ; preds = %.lr.ph223
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !348
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65: ; preds = %.lr.ph223
  %i.dh = add i64 %.sroa.017.0221, -255           ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dg
  store i8 -1, ptr %i.di, align 1, !noalias !348
  %i.dj = add i64 %i.dg, 1                        ; 3 uses
  store i64 %i.dj, ptr %i.j, align 8, !alias.scope !348
  %i.dk = icmp ugt i64 %i.dh, 254
  br i1 %i.dk, label %.lr.ph223, label %._crit_edge224

.split:                                           ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.dl = phi i64 [ %i.dt, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66 ], [ %i.ct, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit ]
  %i.dm = icmp ugt i64 %i.bw, %i.r
  br i1 %i.dm, label %.split._crit_edge, label %.lr.ph.preheader, !prof !16

bb.ad:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.dn = add i64 %i.bv, -15                      ; 3 uses
  %i.do = icmp ugt i64 %i.dn, 254
  br i1 %i.do, label %.lr.ph229.preheader, label %._crit_edge230

.lr.ph229.preheader:                              ; preds = %bb.ad
  %umax365 = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.ct) ; 2 uses
  br label %.lr.ph229

._crit_edge230:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67, %bb.ad
  %i.dp = phi i64 [ %i.ct, %bb.ad ], [ %i.dx, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ] ; 4 uses
  %.sroa.020.0.lcssa = phi i64 [ %i.dn, %bb.ad ], [ %i.dv, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.dq = icmp ult i64 %i.dp, %i.cr
  br i1 %i.dq, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge230
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dp, i64 noundef %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !349
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66: ; preds = %._crit_edge230
  %i.dr = trunc nuw i64 %.sroa.020.0.lcssa to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dp
  store i8 %i.dr, ptr %i.ds, align 1, !noalias !349
  %i.dt = add nuw i64 %i.dp, 1                    ; 2 uses
  store i64 %i.dt, ptr %i.j, align 8, !alias.scope !349
  br label %.split

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67
  %.sroa.020.0227 = phi i64 [ %i.dv, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ], [ %i.dn, %.lr.ph229.preheader ]
  %i.du = phi i64 [ %i.dx, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ], [ %i.ct, %.lr.ph229.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %exitcond366.not = icmp eq i64 %i.du, %umax365
  br i1 %exitcond366.not, label %bb.af, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67

bb.af:                                            ; preds = %.lr.ph229
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax365, i64 noundef %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !350
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67: ; preds = %.lr.ph229
  %i.dv = add i64 %.sroa.020.0227, -255           ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.du
  store i8 -1, ptr %i.dw, align 1, !noalias !350
  %i.dx = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dx, ptr %i.j, align 8, !alias.scope !350
  %i.dy = icmp ugt i64 %i.dv, 254
  br i1 %i.dy, label %.lr.ph229, label %._crit_edge230

bb.ag:                                            ; preds = %bb.j, %bb.m, %.split._crit_edge
  %.sroa.4.0 = phi i64 [ %i.as, %.split._crit_edge ], [ %i.t, %bb.m ], [ undef, %bb.j ]
  %.sroa.0.0 = phi i64 [ 0, %.split._crit_edge ], [ 0, %bb.m ], [ 1, %bb.j ]
  %i.dz = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ea = insertvalue { i64, i64 } %i.dz, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.ea
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = sub i64 %2, %3                           ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !357, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !357, !noundef !6 ; 6 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !357
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %bb.a
  %i.g = icmp ult i64 %i.a, 15
  %i.h = trunc nuw nsw i64 %i.a to i8
  %i.i = shl nuw i8 %i.h, 4
  %.sroa.0.0 = select i1 %i.g, i8 %i.i, i8 -16
  %i.j = load ptr, ptr %0, align 8, !alias.scope !357, !nonnull !6, !noundef !6 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c
  store i8 %.sroa.0.0, ptr %i.k, align 1, !noalias !357
  %i.l = add nuw i64 %i.c, 1                      ; 4 uses
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !357
  %i.m = icmp ugt i64 %i.a, 14
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit7, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.n = icmp ugt i64 %3, %2
  br i1 %i.n, label %bb.h, label %bb.g, !prof !7

bb.d:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.o = add i64 %i.a, -15                        ; 3 uses
  %i.p = icmp ugt i64 %i.o, 254
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %umax = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.l) ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8, %bb.d
  %i.q = phi i64 [ %i.l, %bb.d ], [ %i.y, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8 ] ; 4 uses
  %.sroa.01.0.lcssa = phi i64 [ %i.o, %bb.d ], [ %i.w, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.r = icmp ult i64 %i.q, %i.e
  br i1 %i.r, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit7, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !358
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit7: ; preds = %._crit_edge
  %i.s = trunc nuw i64 %.sroa.01.0.lcssa to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 %i.s, ptr %i.t, align 1, !noalias !358
  %i.u = add nuw i64 %i.q, 1
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !358
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8
  %.sroa.01.010 = phi i64 [ %i.w, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8 ], [ %i.o, %.lr.ph.preheader ]
  %i.v = phi i64 [ %i.y, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8 ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %exitcond.not = icmp eq i64 %i.v, %umax
  br i1 %exitcond.not, label %bb.f, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !359
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit8: ; preds = %.lr.ph
  %i.w = add i64 %.sroa.01.010, -255              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  store i8 -1, ptr %i.x, align 1, !noalias !359
  %i.y = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !359
  %i.z = icmp ugt i64 %i.w, 254
  br i1 %i.z, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %3
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.a) #20
  ret void

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs31YAwBA1AlL_19xet_core_structures(<2 x i64> %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1P_6cursor6CursorRShEEENtB3_18BufferedReaderSpec7copy_toINtNtB9_3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEENtB3_18BufferedReaderSpec7copy_toINtNtB9_3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasher15U64DirectHasherNtNtB8_9data_hash8DataHashENtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRB1w_EBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashINtNtB8_18passthrough_hasher15U64DirectHasherB15_EEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val1 = load i64, ptr %i.a, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.val1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !419
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !420
  %i.f = load i8, ptr %i.b, align 8, !range !421, !noalias !419, !noundef !6 ; 2 uses
  %.not16.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not16.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.811.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.m ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !419 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !419 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !419 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !419 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !419 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !423
  %i.h = load i8, ptr %i.a, align 8, !range !421, !noalias !422, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !422 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !422 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !422 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !422 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !422 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5
  %i.j = zext nneg i8 %i.g to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ult i8 %i.h, 6             ; 2 uses
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add nsw i64 %i.n, -5
  %i.p = select i1 %i.m, i64 0, i64 %i.o
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.m [
    i64 0, label %bb.e
    i64 4, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.g, %i.h
  br i1 %i.r, label %bb.g, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %.split31.i.i.i.i.i.i.i.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %.split29.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.s, label %.split27.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

.split27.i.i.i.i.i.i.i.i:                         ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !424, !noalias !425
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.u, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs31YAwBA1AlL_19xet_core_structures.exit27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs31YAwBA1AlL_19xet_core_structures.exit27.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !426, !noalias !425
  %i.v = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.w = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0Cs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

.split31.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.x = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr32.i.i.i.i.i.i.i.i = freeze i1 %i.x
end_hunk_0
