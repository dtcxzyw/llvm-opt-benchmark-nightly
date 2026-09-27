Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hb99f1696d9280e3bE":bb.a

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !7179, !noalias !7180, !noundef !21
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !7180, !noalias !7179, !noundef !21
  %.not13.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not13.i.us.1, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !7179, !noalias !7180, !noundef !21
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !7180, !noalias !7179, !noundef !21
  %.not13.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not13.i.us.2, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !7179, !noalias !7180, !noundef !21
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !7180, !noalias !7179, !noundef !21
  %.not13.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.01.018.us, %i.y           ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader.us

.preheader16.split:                               ; preds = %.preheader16, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread
  %.sroa.01.018 = phi i16 [ %i.ao, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ %2, %.preheader16 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7180)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

.lr.ph.i:                                         ; preds = %.preheader16.split, %bb.d
  %.sroa.04.024.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader16.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader16.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !7179, !noalias !7180
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !7180, !noalias !7179
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.d, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit: ; preds = %bb.d, %.preheader16.split
  %.val14.i = load i32, ptr %i.ag, align 1, !alias.scope !7179, !noalias !7180
  %.val.i = load i32, ptr %i.i, align 1, !alias.scope !7180, !noalias !7179
  %i.al = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.al, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13: ; preds = %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us30, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us30, %.preheader.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit ]
  ret i1 %.sroa.0.0

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.01.018, %i.an            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hdd49c14628a14d60E(i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit.i.i.i:
  %i.a = load i64, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, align 8, !noalias !7192, !noundef !21 ; 3 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, i64 8), align 8, !noalias !7192, !noundef !21 ; 5 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, i64 16), align 8, !noalias !7192, !noundef !21
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, i64 24), align 8, !noalias !7192, !noundef !21
  %i.e = load ptr, ptr %0, align 8, !noalias !7193, !noundef !21 ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = zext i1 %i.f to i128                     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit5.i.i.i, label %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit._crit_edge.i.i.i

_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit._crit_edge.i.i.i: ; preds = %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !noalias !7193, !noundef !21 ; 9 uses
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !noalias !7193, !noundef !21 ; 12 uses
  %i.j = tail call i64 @llvm.fshr.i64(i64 %.0.val, i64 %.0.val, i64 %.val1.i.i.i) ; 9 uses
  %i.k = icmp ult i64 %.val1.i.i.i, 17
  br i1 %i.k, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit._crit_edge.i.i.i
  %i.l = icmp ult i64 %.val1.i.i.i, 256
  %i.m = add i64 %i.j, %i.b                       ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c, !prof !31

bb.b:                                             ; preds = %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit._crit_edge.i.i.i
  %i.n = icmp samesign ugt i64 %.val1.i.i.i, 7
  br i1 %i.n, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4e80016a648acbb9E.exit.i.i.i.i.i", label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = add i64 %i.j, %i.c
  %i.p = add i64 %i.j, %i.d
  %i.q = tail call noundef i64 @_ZN8foldhash15hash_bytes_long17hb63b6ecbd16360eeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %i.j, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.p, i64 noundef %i.a), !noalias !7194
  br label %"_ZN65_$LT$foldhash..fast..FoldHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h2a9004b731872277E.exit"

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @_ZN8foldhash17hash_bytes_medium17h6c5462d152f74a00E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %i.j, i64 noundef %i.m, i64 noundef %i.a), !noalias !7194
  br label %"_ZN65_$LT$foldhash..fast..FoldHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h2a9004b731872277E.exit"

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ugt i64 %.val1.i.i.i, 3
  br i1 %i.s, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf1caa9186651d610E.exit.i.i.i.i.i", label %bb.f

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4e80016a648acbb9E.exit.i.i.i.i.i": ; preds = %bb.b
  %.sroa.014.0.copyload.i.i.i.i.i = load i64, ptr %.val.i.i.i, align 1, !alias.scope !7195, !noalias !7194
  %i.t = xor i64 %.sroa.014.0.copyload.i.i.i.i.i, %i.j
  %i.u = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i = load i64, ptr %i.v, align 1, !alias.scope !7195, !noalias !7194
  %i.w = xor i64 %.sroa.016.0.copyload.i.i.i.i.i, %i.b
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf1caa9186651d610E.exit.i.i.i.i.i": ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i = load i32, ptr %i.y, align 1, !alias.scope !7195, !noalias !7194
  %.sroa.018.0.copyload.i.i.i.i.i = load i32, ptr %.val.i.i.i, align 1, !alias.scope !7195, !noalias !7194
  %i.z = zext i32 %.sroa.018.0.copyload.i.i.i.i.i to i64
  %i.aa = xor i64 %i.j, %i.z
  %i.ab = zext i32 %.sroa.019.0.copyload.i.i.i.i.i to i64
  %i.ac = xor i64 %i.b, %i.ab
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %.val.i.i.i, align 1, !alias.scope !7195, !noalias !7194, !noundef !21
  %i.ae = lshr i64 %.val1.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !7195, !noalias !7194, !noundef !21
  %i.ah = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !7195, !noalias !7194, !noundef !21
  %i.ak = zext i8 %i.ad to i64
  %i.al = xor i64 %i.j, %i.ak
  %i.am = zext i8 %i.aj to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = zext i8 %i.ag to i64
  %i.ap = or disjoint i64 %i.an, %i.ao
  %i.aq = xor i64 %i.ap, %i.b
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf1caa9186651d610E.exit.i.i.i.i.i", %bb.f, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4e80016a648acbb9E.exit.i.i.i.i.i"
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.w, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4e80016a648acbb9E.exit.i.i.i.i.i" ], [ %i.ac, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf1caa9186651d610E.exit.i.i.i.i.i" ], [ %i.aq, %bb.g ], [ %i.b, %bb.f ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.t, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4e80016a648acbb9E.exit.i.i.i.i.i" ], [ %i.aa, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf1caa9186651d610E.exit.i.i.i.i.i" ], [ %i.al, %bb.g ], [ %i.j, %bb.f ]
  %i.ar = zext i64 %.sroa.0.0.i.i.i.i.i to i128
  %i.as = zext i64 %.sroa.04.0.i.i.i.i.i to i128
  %i.at = mul nuw i128 %i.ar, %i.as               ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = xor i128 %i.au, %i.at
  %i.aw = trunc i128 %i.av to i64
  br label %"_ZN65_$LT$foldhash..fast..FoldHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h2a9004b731872277E.exit"

_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit5.i.i.i: ; preds = %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit.i.i.i
  %i.ax = load i8, ptr %i.h, align 8, !range !37, !noalias !7193, !noundef !21
  %i.ay = zext nneg i8 %i.ax to i128
  %i.az = shl nuw nsw i128 %i.ay, 64
  %i.ba = or disjoint i128 %i.az, %i.g
  br label %"_ZN65_$LT$foldhash..fast..FoldHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h2a9004b731872277E.exit"

"_ZN65_$LT$foldhash..fast..FoldHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h2a9004b731872277E.exit": ; preds = %bb.c, %bb.d, %bb.h, %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit5.i.i.i
  %.sroa.9.2 = phi i64 [ %.0.val, %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit5.i.i.i ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.aw, %bb.h ]
  %.sroa.01.1 = phi i128 [ %i.ba, %_ZN4core4hash6Hasher11write_isize17hb8aed76958f7ebcbE.exit5.i.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.h ] ; 2 uses
  %i.bb = trunc i128 %.sroa.01.1 to i64
  %i.bc = lshr i128 %.sroa.01.1, 64
  %i.bd = xor i64 %.sroa.9.2, %i.bb
  %i.be = zext i64 %i.bd to i128
  %i.bf = zext i64 %i.a to i128
  %i.bg = xor i128 %i.bc, %i.bf
  %i.bh = mul nuw i128 %i.bg, %i.be               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  ret i64 %i.bk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h03084caadbc3f7a0E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h3c136d5013065e29E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4c6d649918525b3eE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h80db07b2f9dc4875E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hdb1c9c4c54f9d9f5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hdc42e039e3603693E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17heead74801f29596bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf033bfa02d54c966E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf4455691a59910beE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h12f1ea87abce8266E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h256914de95fa43abE(ptr noundef nonnull align 8 %0) unnamed_addr #15 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !25, !noundef !21 ; 3 uses
  %i.b = icmp ne i8 %i.a, 9
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i8 %i.a, -5
  %i.d = icmp samesign ugt i8 %i.a, 4
  %narrow.i = select i1 %i.d, i8 %i.c, i8 4
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit"
    i8 2, label %"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit"
    i8 3, label %"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit"
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !21
  %.not.i = icmp eq ptr %i.f, null
  %.1.i = select i1 %.not.i, ptr null, ptr %i.e
  br label %"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit"

bb.d:                                             ; preds = %bb.a
  br label %"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit"

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit"

"_ZN70_$LT$actix_http..error..PayloadError$u20$as$u20$core..error..Error$GT$6source17hd0d5dcc124711f99E.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.8.0.i = phi ptr [ undef, %bb.a ], [ @9, %bb.e ], [ @9, %bb.c ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1389, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.e ], [ %.1.i, %bb.c ], [ null, %bb.a ], [ null, %bb.a ], [ %0, %bb.d ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.8.0.i, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5d69e9863a4f2a7cE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h779c74c332ca807bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h8985aba17ab2838dE(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(2) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN57_$LT$http..error..Error$u20$as$u20$core..error..Error$GT$6source17h2437132d68c2ee0dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hb7c003ae97210a26E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !25, !alias.scope !7198, !noundef !21 ; 2 uses
  %i.c = add nsw i8 %i.b, -2
  %i.d = icmp samesign ugt i8 %i.b, 1
  %narrow.i = select i1 %i.d, i8 %i.c, i8 9
  switch i8 %narrow.i, label %"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..error..Error$GT$6source17hd2aebcaf2a59a579E.exit" [
    i8 1, label %bb.b
    i8 8, label %bb.c
    i8 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..error..Error$GT$6source17hd2aebcaf2a59a579E.exit"

bb.c:                                             ; preds = %bb.a
  br label %"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..error..Error$GT$6source17hd2aebcaf2a59a579E.exit"

bb.d:                                             ; preds = %bb.a
  br label %"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..error..Error$GT$6source17hd2aebcaf2a59a579E.exit"

"_ZN68_$LT$actix_http..error..ParseError$u20$as$u20$core..error..Error$GT$6source17hd2aebcaf2a59a579E.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i = phi ptr [ @829, %bb.d ], [ @827, %bb.b ], [ @9, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %0, %bb.d ], [ %0, %bb.b ], [ %0, %bb.c ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.5.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17he85c1d54619de1a0E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17he8935d7a27c6f00dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7201, !noundef !21 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !7201, !nonnull !21, !align !32
  %.sroa.3.0.i = select i1 %i.b, ptr @9, ptr %i.d
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr %i.a
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h5db3cd637194de97E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17hd3515858b85dce4bE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17he4bc4ad2b8c8cd1aE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17he8d015a23602a465E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h27ce780d641116bfE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h2c2468bc9d9d3842E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h322faf65ae4c1d37E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h53cbae4c528acdb1E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h6ff4ccc006dd8d2cE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h8d177ce6573da294E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd1304a7b70995d99E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd63c4353c4c9c30fE(ptr noalias readonly align 1 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd9fef29772373c21E(ptr noalias readonly align 1 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}
end_hunk_0
