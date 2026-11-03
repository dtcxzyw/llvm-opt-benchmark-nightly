Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.10?download=true
inline.NumInlined: 445
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures:.split
  %i.ft = sub nuw i64 %.sroa.01.010.i, %i.ek      ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %scalar.ph840
  %exitcond.not.i259 = icmp eq i64 %.sroa.01.010.i, %umax.i258
  br i1 %exitcond.not.i259, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %scalar.ph840
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !189
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !189, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.01.010.i
  store i8 %i.fw, ptr %i.fx, align 1, !noalias !189
  %exitcond15.not.i = icmp eq i64 %i.fs, %i.ew
  br i1 %exitcond15.not.i, label %.backedge.sink.split, label %scalar.ph840, !llvm.loop !159

bb.bj:                                            ; preds = %bb.bg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i258, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !189
  unreachable

bb.bk:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.fy = load ptr, ptr %3, align 8, !alias.scope !190, !nonnull !6, !noundef !6 ; 2 uses
  %i.fz = load i64, ptr %i.c, align 8, !alias.scope !190, !noundef !6 ; 2 uses
  %i.ga = add i64 %i.et, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.gb = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.et, i64 noundef %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !192 ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1
  %i.ge = sub i64 %i.gd, %i.gc                    ; 2 uses
  %i.gf = sub i64 %i.fz, %i.ge
  %.not.i.i260 = icmp ugt i64 %.val217, %i.gf
  br i1 %.not.i.i260, label %bb.bl, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261, !prof !7

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !192
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit261: ; preds = %bb.bk
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.val217
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 1 %i.gg, i64 %i.ge, i1 false), !alias.scope !191, !noalias !190
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
  br i1 %i.k, label %bb.aa, label %bb.f

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
  br label %bb.aa

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.g
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !232
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
  %.sroa.022.0495 = phi i64 [ %i.bq, %.split ], [ %2, %bb.i ] ; 7 uses
  %i.u = phi i64 [ %i.bq, %.split ], [ %i.s, %bb.i ] ; 2 uses
  %i.v = phi i64 [ %i.df, %.split ], [ %.val37, %bb.i ] ; 4 uses
  %i.w = phi i64 [ %i.cl, %.split ], [ %.val, %bb.i ] ; 6 uses
  %i.x = add i64 %i.u, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.y = phi i64 [ %i.av, %.backedge ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %i.z = phi i64 [ %i.au, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.y, %.backedge ], [ %i.u, %.lr.ph.preheader ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.aa = icmp ugt i64 %.promoted, -9
  br i1 %i.aa, label %bb.j, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44, !prof !9

bb.j:                                             ; preds = %.lr.ph
  %i.ab = add nuw nsw i64 %.promoted, 8
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.promoted, i64 noundef %i.ab, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !235
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44: ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted
  %.sroa.01.0.copyload.i.i43 = load i64, ptr %i.ac, align 1, !alias.scope !235 ; 2 uses
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
  %.sroa.022.0434 = phi i64 [ %.sroa.022.0495, %.backedge ], [ %2, %bb.i ], [ %i.bq, %.split ]
  call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.022.0434)
  %.val34 = load i64, ptr %i.e, align 8, !noundef !6
  %i.ao = sub i64 %.val34, %.val37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.k:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit44
  %i.ap = sub nuw nsw i64 %i.ah, %7               ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 3 uses
  %.not.i45 = icmp samesign ugt i64 %i.aq, %1
  br i1 %.not.i45, label %bb.l, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, !prof !9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %i.aq, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !236
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.sroa.02.0.copyload.i = load i32, ptr %i.ar, align 1, !alias.scope !236
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
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ay = icmp ne i64 %i.ap, 0
  %i.az = icmp ugt i64 %.promoted, %.sroa.022.0495
  %or.cond11.i = and i1 %i.az, %i.ay
  br i1 %or.cond11.i, label %.lr.ph.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %i.ba = phi i64 [ %i.bb, %bb.o ], [ %.promoted, %bb.m ] ; 2 uses
  %.sroa.0.063 = phi i64 [ %i.bd, %bb.o ], [ %i.ap, %bb.m ] ; 2 uses
  %i.bb = add nsw i64 %i.ba, -1                   ; 6 uses
  %i.bc = icmp ult i64 %i.bb, %1
  br i1 %i.bc, label %bb.n, label %8

bb.n:                                             ; preds = %.lr.ph.i
  %i.bd = add nsw i64 %.sroa.0.063, -1            ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !237, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !238, !noundef !6
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %bb.o, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit

8:                                                ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19, !noalias !239
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp ne i64 %i.bd, 0
  %i.bk = icmp ugt i64 %i.bb, %.sroa.022.0495
  %or.cond.i51 = and i1 %i.bj, %i.bk
  br i1 %or.cond.i51, label %.lr.ph.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit: ; preds = %bb.o, %bb.n
  %i.bl = phi i64 [ %i.ba, %bb.n ], [ %i.bb, %bb.o ]
  %.sroa.0.1.ph = phi i64 [ %.sroa.0.063, %bb.n ], [ %i.bd, %bb.o ]
  %.pre = add nuw nsw i64 %.sroa.0.1.ph, 4
  br label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit, %bb.m
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit ], [ %i.aq, %bb.m ]
  %i.bm = phi i64 [ %i.bl, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit ], [ %.promoted, %bb.m ] ; 5 uses
  %i.bn = sub i64 %i.bm, %.sroa.022.0495          ; 6 uses
  %i.bo = add i64 %i.bm, 4
  store i64 %i.bo, ptr %i.b, align 8
  %i.bp = call fastcc noundef i64 @_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.pre-phi) #20 ; 3 uses
  %i.bq = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.br = add i64 %i.bq, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.bs = add i64 %i.bq, 6                        ; 2 uses
  %i.bt = icmp ugt i64 %i.br, -9
  %.not.i.i52 = icmp ugt i64 %i.bs, %1
  %or.cond.i.i53 = or i1 %i.bt, %.not.i.i52
  br i1 %or.cond.i.i53, label %bb.p, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55, !prof !9

bb.p:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.bs, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !242
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %.sroa.01.0.copyload.i.i54 = load i64, ptr %i.bu, align 1, !alias.scope !242
  %i.bv = mul i64 %.sroa.01.0.copyload.i.i54, -3523014627271114752
  %i.bw = add i64 %i.br, %7
  %i.bx = lshr i64 %i.bv, 52
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.bx
  %i.bz = trunc i64 %i.bw to i32
  store i32 %i.bz, ptr %i.by, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ca = icmp ult i64 %i.v, %i.w
  br i1 %i.ca, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.q

bb.q:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !243
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit55
  %i.cb = icmp ult i64 %i.bn, 15
  %i.cc = trunc nuw nsw i64 %i.bn to i8
  %i.cd = shl nuw i8 %i.cc, 4
  %.sroa.014.0 = select i1 %i.cb, i8 %i.cd, i8 -16
  %.sroa.026.064 = call i64 @llvm.umin.i64(i64 %i.bp, i64 15)
  %.sroa.026.0 = trunc nuw nsw i64 %.sroa.026.064 to i8
  %i.ce = or disjoint i8 %.sroa.014.0, %.sroa.026.0
  %i.cf = load ptr, ptr %3, align 8, !alias.scope !243, !nonnull !6, !noundef !6 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.v
  store i8 %i.ce, ptr %i.cg, align 1, !noalias !243
  %i.ch = add nuw i64 %i.v, 1                     ; 4 uses
  store i64 %i.ch, ptr %i.e, align 8, !alias.scope !243
  %i.ci = icmp ugt i64 %i.bn, 14
  br i1 %i.ci, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56.a, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cj = icmp ult i64 %i.bm, %.sroa.022.0495
  %.not.i = icmp ugt i64 %i.bm, %1
  %or.cond.i = or i1 %i.cj, %.not.i
  br i1 %or.cond.i, label %bb.s, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, !prof !9

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.022.0495, i64 noundef %i.bm, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !244
  unreachable

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.022.0495
  call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.bn, i64 noundef %i.bn) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ax, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.cl = load i64, ptr %i.d, align 8, !alias.scope !245, !noundef !6 ; 7 uses
  %i.cm = load i64, ptr %i.e, align 8, !alias.scope !245, !noundef !6 ; 4 uses
  %i.cn = add i64 %i.cm, 2                        ; 7 uses
  %i.co = icmp ugt i64 %i.cm, -3
  %.not4.i = icmp ugt i64 %i.cn, %i.cl
  %or.cond.i60 = or i1 %i.co, %.not4.i
  br i1 %or.cond.i60, label %bb.t, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit, !prof !9

bb.t:                                             ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cn, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !246
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit: ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  %i.cp = trunc i64 %i.ak to i8
  %i.cq = load ptr, ptr %3, align 8, !alias.scope !245, !nonnull !6, !noundef !6 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cm ; 3 uses
  store i8 %i.cp, ptr %i.cr, align 1, !alias.scope !247, !noalias !246
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cr, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !245
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cr, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !245
  store i64 %i.cn, ptr %i.e, align 8, !alias.scope !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = icmp ugt i64 %i.bp, 14
  br i1 %i.cs, label %bb.x, label %.split

bb.u:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.ct = add i64 %i.bn, -15                      ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, 254
  br i1 %i.cu, label %.lr.ph168.preheader, label %._crit_edge169

.lr.ph168.preheader:                              ; preds = %bb.u
  %umax = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.ch) ; 2 uses
  br label %.lr.ph168

._crit_edge169:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a, %bb.u
  %i.cv = phi i64 [ %i.ch, %bb.u ], [ %i.dd, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a ] ; 4 uses
  %.sroa.016.0.lcssa = phi i64 [ %i.ct, %bb.u ], [ %i.db, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.cw = icmp ult i64 %i.cv, %i.w
  br i1 %i.cw, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56.a, label %bb.v

bb.v:                                             ; preds = %._crit_edge169
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !248
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit56.a: ; preds = %._crit_edge169
  %i.cx = trunc nuw i64 %.sroa.016.0.lcssa to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cv
  store i8 %i.cx, ptr %i.cy, align 1, !noalias !248
  %i.cz = add nuw i64 %i.cv, 1
  store i64 %i.cz, ptr %i.e, align 8, !alias.scope !248
  br label %bb.r

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a
  %.sroa.016.0166 = phi i64 [ %i.db, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a ], [ %i.ct, %.lr.ph168.preheader ]
  %i.da = phi i64 [ %i.dd, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a ], [ %i.ch, %.lr.ph168.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %exitcond.not = icmp eq i64 %i.da, %umax
  br i1 %exitcond.not, label %bb.w, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a

bb.w:                                             ; preds = %.lr.ph168
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !249
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit57.a: ; preds = %.lr.ph168
  %i.db = add i64 %.sroa.016.0166, -255           ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.da
  store i8 -1, ptr %i.dc, align 1, !noalias !249
  %i.dd = add i64 %i.da, 1                        ; 3 uses
  store i64 %i.dd, ptr %i.e, align 8, !alias.scope !249
  %i.de = icmp ugt i64 %i.db, 254
  br i1 %i.de, label %.lr.ph168, label %._crit_edge169

.split:                                           ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58.a, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.df = phi i64 [ %i.dn, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58.a ], [ %i.cn, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit ]
  %i.dg = icmp ugt i64 %i.bq, %i.m
  br i1 %i.dg, label %.split._crit_edge, label %.lr.ph.preheader, !prof !16

bb.x:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.dh = add i64 %i.bp, -15                      ; 3 uses
  %i.di = icmp ugt i64 %i.dh, 254
  br i1 %i.di, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %bb.x
  %umax276 = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cn) ; 2 uses
  br label %.lr.ph174

._crit_edge175:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59, %bb.x
  %i.dj = phi i64 [ %i.cn, %bb.x ], [ %i.dr, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ] ; 4 uses
  %.sroa.019.0.lcssa = phi i64 [ %i.dh, %bb.x ], [ %i.dp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.dk = icmp ult i64 %i.dj, %i.cl
  br i1 %i.dk, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58.a, label %bb.y

bb.y:                                             ; preds = %._crit_edge175
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !250
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit58.a: ; preds = %._crit_edge175
  %i.dl = trunc nuw i64 %.sroa.019.0.lcssa to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !noalias !250
  %i.dn = add nuw i64 %i.dj, 1                    ; 2 uses
  store i64 %i.dn, ptr %i.e, align 8, !alias.scope !250
  br label %.split

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59
  %.sroa.019.0172 = phi i64 [ %i.dp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ], [ %i.dh, %.lr.ph174.preheader ]
  %i.do = phi i64 [ %i.dr, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59 ], [ %i.cn, %.lr.ph174.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %exitcond277.not = icmp eq i64 %i.do, %umax276
  br i1 %exitcond277.not, label %bb.z, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59

bb.z:                                             ; preds = %.lr.ph174
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax276, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !251
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit59: ; preds = %.lr.ph174
  %i.dp = add i64 %.sroa.019.0172, -255           ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.do
  store i8 -1, ptr %i.dq, align 1, !noalias !251
  %i.dr = add i64 %i.do, 1                        ; 3 uses
  store i64 %i.dr, ptr %i.e, align 8, !alias.scope !251
  %i.ds = icmp ugt i64 %i.dp, 254
  br i1 %i.ds, label %.lr.ph174, label %._crit_edge175

bb.aa:                                            ; preds = %bb.e, %bb.h, %.split._crit_edge
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
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !291
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
  %.sroa.023.0627 = phi i64 [ %i.bt, %.split ], [ %2, %bb.n ] ; 7 uses
  %i.z = phi i64 [ %i.bt, %.split ], [ %i.x, %bb.n ] ; 2 uses
  %i.aa = phi i64 [ %i.di, %.split ], [ %.val45, %bb.n ] ; 4 uses
  %i.ab = phi i64 [ %i.co, %.split ], [ %.val, %bb.n ] ; 6 uses
  %i.ac = add i64 %i.z, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.ad = phi i64 [ %i.az, %.backedge ], [ %i.ac, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi i64 [ %i.ay, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.ad, %.backedge ], [ %i.z, %.lr.ph.preheader ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.af = icmp ugt i64 %.promoted, -9
  br i1 %i.af, label %bb.o, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52, !prof !9

bb.o:                                             ; preds = %.lr.ph
  %i.ag = add nuw nsw i64 %.promoted, 8
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.promoted, i64 noundef %i.ag, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !294
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit52: ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted
  %.sroa.01.0.copyload.i.i51 = load i64, ptr %i.ah, align 1, !alias.scope !294 ; 2 uses
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
  %.sroa.023.0564 = phi i64 [ %.sroa.023.0627, %.backedge ], [ %2, %bb.n ], [ %i.bt, %.split ]
  call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.023.0564)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.at = add i64 %storemerge, 4                  ; 3 uses
  %i.au = icmp ugt i64 %storemerge, -5
  %.not.i53 = icmp ugt i64 %i.at, %.sroa.5.0
  %or.cond.i54 = or i1 %i.au, %.not.i53
  br i1 %or.cond.i54, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge, i64 noundef %i.at, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !295
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress9get_batch.exit: ; preds = %bb.p
  %.sroa.05.0 = select i1 %.not40, ptr %5, ptr %0 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %storemerge
  %.sroa.02.0.copyload.i = load i32, ptr %i.av, align 1, !alias.scope !295
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
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.bb = icmp ne i64 %storemerge, 0
  %i.bc = icmp ugt i64 %.promoted, %.sroa.023.0627
  %or.cond11.i = and i1 %i.bc, %i.bb
  br i1 %or.cond11.i, label %.lr.ph.preheader.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.bd = add i64 %storemerge, -1                 ; 2 uses
  %.first_iter.i = icmp ult i64 %i.bd, %.sroa.5.0
  br i1 %.first_iter.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %bb.t
  %i.be = phi i64 [ %i.bf, %bb.t ], [ %.promoted, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.071.us = phi i64 [ %i.bh, %bb.t ], [ %storemerge, %.lr.ph.preheader.i ] ; 2 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 6 uses
  %i.bg = icmp ult i64 %i.bf, %1
  br i1 %i.bg, label %bb.s, label %.split188.us

bb.s:                                             ; preds = %.lr.ph.i.us
  %i.bh = add i64 %.sroa.0.071.us, -1             ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !296, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !297, !noundef !6
  %i.bm = icmp eq i8 %i.bj, %i.bl
  br i1 %i.bm, label %bb.t, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp ne i64 %i.bh, 0
  %i.bo = icmp ugt i64 %i.bf, %.sroa.023.0627
  %or.cond.i59.us = and i1 %i.bn, %i.bo
  br i1 %or.cond.i59.us, label %.lr.ph.i.us, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us: ; preds = %bb.t, %bb.s
  %8 = phi i64 [ %i.be, %bb.s ], [ %i.bf, %bb.t ]
  %.sroa.0.1.ph.us = phi i64 [ %.sroa.0.071.us, %bb.s ], [ %i.bh, %bb.t ]
  %.pre = add nuw i64 %.sroa.0.1.ph.us, 4
  br label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %9 = add nsw i64 %.promoted, -1                 ; 2 uses
  %10 = icmp ult i64 %9, %1
  br i1 %10, label %bb.u, label %.split188.us

bb.u:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #19, !noalias !298
  unreachable

.split188.us:                                     ; preds = %.lr.ph.i.us, %.lr.ph.i
  %.us-phi189 = phi i64 [ %9, %.lr.ph.i ], [ %i.bf, %.lr.ph.i.us ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi189, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19, !noalias !298
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us, %bb.r
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us ], [ %i.at, %bb.r ]
  %i.bp = phi i64 [ %8, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit.loopexit.split.us ], [ %.promoted, %bb.r ] ; 5 uses
  %i.bq = sub i64 %i.bp, %.sroa.023.0627          ; 6 uses
  %i.br = add nuw i64 %i.bp, 4
  store i64 %i.br, ptr %i.b, align 8
  %i.bs = call fastcc noundef i64 @_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef %.sroa.5.0, i64 noundef %.pre-phi) #20 ; 3 uses
  %i.bt = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.bu = add i64 %i.bt, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.bv = add i64 %i.bt, 6                        ; 2 uses
  %i.bw = icmp ugt i64 %i.bu, -9
  %.not.i.i60 = icmp ugt i64 %i.bv, %1
  %or.cond.i.i61 = or i1 %i.bw, %.not.i.i60
  br i1 %or.cond.i.i61, label %bb.v, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63, !prof !9

bb.v:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bu, i64 noundef %i.bv, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19, !noalias !301
  unreachable

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63: ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress15backtrack_match.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %.sroa.01.0.copyload.i.i62 = load i64, ptr %i.bx, align 1, !alias.scope !301
  %i.by = mul i64 %.sroa.01.0.copyload.i.i62, -3523014627271114752
  %i.bz = add i64 %i.bu, %7
  %i.ca = lshr i64 %i.by, 52
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val49.pre, i64 %i.ca
  %i.cc = trunc i64 %i.bz to i32
  store i32 %i.cc, ptr %i.cb, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.cd = icmp ult i64 %i.aa, %i.ab
  br i1 %i.cd, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit, label %bb.w

bb.w:                                             ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !302
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit: ; preds = %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit63
  %i.ce = icmp ult i64 %i.bq, 15
  %i.cf = trunc nuw nsw i64 %i.bq to i8
  %i.cg = shl nuw i8 %i.cf, 4
  %.sroa.015.0 = select i1 %i.ce, i8 %i.cg, i8 -16
  %.sroa.027.072 = call i64 @llvm.umin.i64(i64 %i.bs, i64 15)
  %.sroa.027.0 = trunc nuw nsw i64 %.sroa.027.072 to i8
  %i.ch = or disjoint i8 %.sroa.015.0, %.sroa.027.0
  %i.ci = load ptr, ptr %3, align 8, !alias.scope !302, !nonnull !6, !noundef !6 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.aa
  store i8 %i.ch, ptr %i.cj, align 1, !noalias !302
  %i.ck = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.ck, ptr %i.j, align 8, !alias.scope !302
  %i.cl = icmp ugt i64 %i.bq, 14
  br i1 %i.cl, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64.a, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cm = icmp ult i64 %i.bp, %.sroa.023.0627
  %.not.i = icmp ugt i64 %i.bp, %1
  %or.cond.i = or i1 %i.cm, %.not.i
  br i1 %or.cond.i, label %bb.y, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.023.0627, i64 noundef %i.bp, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !303
  unreachable

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.023.0627
  call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef %i.bq, i64 noundef %i.bq) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.sroa.010.0.le, ptr %i.a, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.co = load i64, ptr %i.i, align 8, !alias.scope !304, !noundef !6 ; 7 uses
  %i.cp = load i64, ptr %i.j, align 8, !alias.scope !304, !noundef !6 ; 4 uses
  %i.cq = add i64 %i.cp, 2                        ; 7 uses
  %i.cr = icmp ugt i64 %i.cp, -3
  %.not4.i = icmp ugt i64 %i.cq, %i.co
  %or.cond.i68 = or i1 %i.cr, %.not4.i
  br i1 %or.cond.i68, label %bb.z, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit, !prof !9

bb.z:                                             ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !305
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit: ; preds = %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress18copy_literals_wildNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit
  %i.cs = trunc i64 %i.ap to i8
  %i.ct = load ptr, ptr %3, align 8, !alias.scope !304, !nonnull !6, !noundef !6 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cp ; 3 uses
  store i8 %i.cs, ptr %i.cu, align 1, !alias.scope !306, !noalias !305
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cu, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !304
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.cu, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !304
  store i64 %i.cq, ptr %i.j, align 8, !alias.scope !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = icmp ugt i64 %i.bs, 14
  br i1 %i.cv, label %bb.ad, label %.split

bb.aa:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit
  %i.cw = add i64 %i.bq, -15                      ; 3 uses
  %i.cx = icmp ugt i64 %i.cw, 254
  br i1 %i.cx, label %.lr.ph223.preheader, label %._crit_edge224

.lr.ph223.preheader:                              ; preds = %bb.aa
  %umax = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ck) ; 2 uses
  br label %.lr.ph223

._crit_edge224:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a, %bb.aa
  %i.cy = phi i64 [ %i.ck, %bb.aa ], [ %i.dg, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a ] ; 4 uses
  %.sroa.017.0.lcssa = phi i64 [ %i.cw, %bb.aa ], [ %i.de, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.cz = icmp ult i64 %i.cy, %i.ab
  br i1 %i.cz, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64.a, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge224
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !307
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit64.a: ; preds = %._crit_edge224
  %i.da = trunc nuw i64 %.sroa.017.0.lcssa to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !noalias !307
  %i.dc = add nuw i64 %i.cy, 1
  store i64 %i.dc, ptr %i.j, align 8, !alias.scope !307
  br label %bb.x

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a
  %.sroa.017.0221 = phi i64 [ %i.de, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a ], [ %i.cw, %.lr.ph223.preheader ]
  %i.dd = phi i64 [ %i.dg, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a ], [ %i.ck, %.lr.ph223.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %exitcond.not = icmp eq i64 %i.dd, %umax
  br i1 %exitcond.not, label %bb.ac, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a

bb.ac:                                            ; preds = %.lr.ph223
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !308
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit65.a: ; preds = %.lr.ph223
  %i.de = add i64 %.sroa.017.0221, -255           ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dd
  store i8 -1, ptr %i.df, align 1, !noalias !308
  %i.dg = add i64 %i.dd, 1                        ; 3 uses
  store i64 %i.dg, ptr %i.j, align 8, !alias.scope !308
  %i.dh = icmp ugt i64 %i.de, 254
  br i1 %i.dh, label %.lr.ph223, label %._crit_edge224

.split:                                           ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66.a, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.di = phi i64 [ %i.dq, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66.a ], [ %i.cq, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit ]
  %i.dj = icmp ugt i64 %i.bt, %i.r
  br i1 %i.dj, label %.split._crit_edge, label %.lr.ph.preheader, !prof !16

bb.ad:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild.exit
  %i.dk = add i64 %i.bs, -15                      ; 3 uses
  %i.dl = icmp ugt i64 %i.dk, 254
  br i1 %i.dl, label %.lr.ph229.preheader, label %._crit_edge230

.lr.ph229.preheader:                              ; preds = %bb.ad
  %umax361 = call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cq) ; 2 uses
  br label %.lr.ph229

._crit_edge230:                                   ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67, %bb.ad
  %i.dm = phi i64 [ %i.cq, %bb.ad ], [ %i.du, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ] ; 4 uses
  %.sroa.020.0.lcssa = phi i64 [ %i.dk, %bb.ad ], [ %i.ds, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.dn = icmp ult i64 %i.dm, %i.co
  br i1 %i.dn, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66.a, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge230
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !309
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit66.a: ; preds = %._crit_edge230
  %i.do = trunc nuw i64 %.sroa.020.0.lcssa to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1, !noalias !309
  %i.dq = add nuw i64 %i.dm, 1                    ; 2 uses
  store i64 %i.dq, ptr %i.j, align 8, !alias.scope !309
  br label %.split

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67
  %.sroa.020.0227 = phi i64 [ %i.ds, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ], [ %i.dk, %.lr.ph229.preheader ]
  %i.dr = phi i64 [ %i.du, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67 ], [ %i.cq, %.lr.ph229.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %exitcond362.not = icmp eq i64 %i.dr, %umax361
  br i1 %exitcond362.not, label %bb.af, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67

bb.af:                                            ; preds = %.lr.ph229
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax361, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #19, !noalias !310
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink4push.exit67: ; preds = %.lr.ph229
  %i.ds = add i64 %.sroa.020.0227, -255           ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dr
  store i8 -1, ptr %i.dt, align 1, !noalias !310
  %i.du = add i64 %i.dr, 1                        ; 3 uses
  store i64 %i.du, ptr %i.j, align 8, !alias.scope !310
  %i.dv = icmp ugt i64 %i.ds, 254
  br i1 %i.dv, label %.lr.ph229, label %._crit_edge230

bb.ag:                                            ; preds = %bb.j, %bb.m, %.split._crit_edge
  %.sroa.4.0 = phi i64 [ %i.as, %.split._crit_edge ], [ %i.t, %bb.m ], [ undef, %bb.j ]
  %.sroa.0.0 = phi i64 [ 0, %.split._crit_edge ], [ 0, %bb.m ], [ 1, %bb.j ]
  %i.dw = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.dx = insertvalue { i64, i64 } %i.dw, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.dx
}

end_hunk_0
