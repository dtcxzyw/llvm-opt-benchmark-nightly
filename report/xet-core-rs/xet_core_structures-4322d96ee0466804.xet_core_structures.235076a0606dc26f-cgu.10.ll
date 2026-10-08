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
  %i.bb = add nsw i64 %i.ba, -1                   ; 6 uses
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
  %umax = call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.w) ; 2 uses
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
  %umax280 = call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.cl) ; 2 uses
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
end_hunk_0
begin_hunk_1_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures:bb.a
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
  %i.bf = add nsw i64 %i.be, -1                   ; 6 uses
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
  %i.bq = add nsw i64 %.promoted, -1              ; 2 uses
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
  %umax = call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.ab) ; 2 uses
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
  %umax365 = call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cr) ; 2 uses
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
end_hunk_1
