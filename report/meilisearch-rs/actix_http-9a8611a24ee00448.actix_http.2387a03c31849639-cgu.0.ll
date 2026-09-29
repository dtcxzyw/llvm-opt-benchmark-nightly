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
define internal { ptr, i64 } @_ZN4core5error5Error11description17h03084caadbc3f7a0E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h3c136d5013065e29E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h4c6d649918525b3eE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h80db07b2f9dc4875E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hdb1c9c4c54f9d9f5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hdc42e039e3603693E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17heead74801f29596bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hf033bfa02d54c966E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @533, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hf4455691a59910beE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
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
begin_hunk_1_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.1 = load i8, ptr %i.bv, align 1, !alias.scope !9690, !noalias !9691, !noundef !21 ; 2 uses
  %i.bw = icmp ugt i8 %i.bt, %.val1.i.i.i.i.i.i.i204.1
  %.sroa.0.0.i.i.i.i205.1 = select i1 %i.bw, ptr %.sroa.0.0.i.i.i.i205, ptr %i.bv
  %i.bx = tail call i8 @llvm.umax.i8(i8 %i.bt, i8 %.val1.i.i.i.i.i.i.i204.1) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.2 = load i8, ptr %i.bz, align 1, !alias.scope !9692, !noalias !9693, !noundef !21 ; 2 uses
  %i.ca = icmp ugt i8 %i.bx, %.val1.i.i.i.i.i.i.i204.2
  %.sroa.0.0.i.i.i.i205.2 = select i1 %i.ca, ptr %.sroa.0.0.i.i.i.i205.1, ptr %i.bz
  %i.cb = tail call i8 @llvm.umax.i8(i8 %i.bx, i8 %.val1.i.i.i.i.i.i.i204.2) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.3 = load i8, ptr %i.cd, align 1, !alias.scope !9694, !noalias !9695, !noundef !21 ; 2 uses
  %i.ce = icmp ugt i8 %i.cb, %.val1.i.i.i.i.i.i.i204.3
  %.sroa.0.0.i.i.i.i205.3 = select i1 %i.ce, ptr %.sroa.0.0.i.i.i.i205.2, ptr %i.cd ; 3 uses
  %i.cf = add nuw i64 %.sroa.09.0.i.i202, 4       ; 2 uses
  %i.cg = tail call i8 @llvm.umax.i8(i8 %i.cb, i8 %.val1.i.i.i.i.i.i.i204.3) ; 2 uses
  %niter159.next.3 = add i64 %niter159, 4         ; 2 uses
  %niter159.ncmp.3 = icmp eq i64 %niter159.next.3, %unroll_iter158
  br i1 %niter159.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa, label %bb.j

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod155.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod155.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207, label %.epil.preheader152

.epil.preheader152:                               ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa, %bb.i
  %.val.i.i.i.i.i.i.i201.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i200, %bb.i ], [ %i.cg, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i202.epil.init = phi i64 [ 0, %bb.i ], [ %i.cf, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i203.epil.init = phi ptr [ %i.bi, %bb.i ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter153, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader152
  %.val.i.i.i.i.i.i.i201.epil = phi i8 [ %.val.i.i.i.i.i.i.i201.epil.init, %.epil.preheader152 ], [ %i.ck, %bb.k ] ; 2 uses
  %.sroa.09.0.i.i202.epil = phi i64 [ %.sroa.09.0.i.i202.epil.init, %.epil.preheader152 ], [ %i.cj, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i203.epil = phi ptr [ %.sroa.07.0.i.i203.epil.init, %.epil.preheader152 ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ]
  %epil.iter154 = phi i64 [ 0, %.epil.preheader152 ], [ %epil.iter154.next, %bb.k ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9689)
  %.val1.i.i.i.i.i.i.i204.epil = load i8, ptr %i.ch, align 1, !alias.scope !9685, !noalias !9684, !noundef !21 ; 2 uses
  %i.ci = icmp ugt i8 %.val.i.i.i.i.i.i.i201.epil, %.val1.i.i.i.i.i.i.i204.epil
  %.sroa.0.0.i.i.i.i205.epil = select i1 %i.ci, ptr %.sroa.07.0.i.i203.epil, ptr %i.ch ; 2 uses
  %i.cj = add nuw i64 %.sroa.09.0.i.i202.epil, 1
  %i.ck = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i201.epil, i8 %.val1.i.i.i.i.i.i.i204.epil)
  %epil.iter154.next = add i64 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i64 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207, label %bb.k, !llvm.loop !9629

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa, %bb.k, %bb.g, %bb.h
  %.sroa.0.0.i206 = phi ptr [ null, %bb.g ], [ %i.bi, %bb.h ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ] ; 2 uses
  %.not164 = icmp eq ptr %.sroa.0.0.i206, null
  %.178 = select i1 %.not164, ptr @405, ptr %.sroa.0.0.i206
  %i.cl = load i8, ptr %.178, align 1, !noundef !21
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.cm, 1                ; 2 uses
  store i32 %i.cn, ptr %i.t, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !noundef !21
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.m, label %bb.l, !prof !31

bb.l:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr null, ptr %i.s, align 8
  call void @_ZN4core9panicking13assert_failed17h2174553b27a96270E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @929) #46
  unreachable

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !21, !align !29, !noundef !21 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !21 ; 4 uses
  %i.cv = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9696)
  %i.cx = icmp samesign eq i64 %i.cu, 1
  br i1 %i.cx, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.pre.i.i208 = load i8, ptr %i.cs, align 1, !alias.scope !9697, !noalias !9698 ; 2 uses
  %i.cy = add i64 %i.cu, -2
  %i.cz = add i64 %i.cu, -1                       ; 2 uses
  %xtraiter162 = and i64 %i.cz, 3                 ; 3 uses
  %i.da = icmp ult i64 %i.cy, 3
  br i1 %i.da, label %.epil.preheader161, label %.new160

.new160:                                          ; preds = %bb.o
  %unroll_iter167 = and i64 %i.cz, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new160
  %.val.i.i.i.i.i.i.i209 = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %.new160 ], [ %i.dq, %bb.p ] ; 2 uses
  %.sroa.09.0.i.i210 = phi i64 [ 0, %.new160 ], [ %i.dp, %bb.p ] ; 5 uses
  %.sroa.07.0.i.i211 = phi ptr [ %i.cs, %.new160 ], [ %.sroa.0.0.i.i.i.i213.3, %bb.p ]
  %niter168 = phi i64 [ 0, %.new160 ], [ %niter168.next.3, %bb.p ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9702)
  %.val1.i.i.i.i.i.i.i212 = load i8, ptr %i.db, align 1, !alias.scope !9698, !noalias !9697, !noundef !21 ; 2 uses
  %i.dc = icmp ugt i8 %.val.i.i.i.i.i.i.i209, %.val1.i.i.i.i.i.i.i212
  %.sroa.0.0.i.i.i.i213 = select i1 %i.dc, ptr %.sroa.07.0.i.i211, ptr %i.db
  %i.dd = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209, i8 %.val1.i.i.i.i.i.i.i212) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.1 = load i8, ptr %i.df, align 1, !alias.scope !9703, !noalias !9704, !noundef !21 ; 2 uses
  %i.dg = icmp ugt i8 %i.dd, %.val1.i.i.i.i.i.i.i212.1
  %.sroa.0.0.i.i.i.i213.1 = select i1 %i.dg, ptr %.sroa.0.0.i.i.i.i213, ptr %i.df
  %i.dh = tail call i8 @llvm.umax.i8(i8 %i.dd, i8 %.val1.i.i.i.i.i.i.i212.1) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.2 = load i8, ptr %i.dj, align 1, !alias.scope !9705, !noalias !9706, !noundef !21 ; 2 uses
  %i.dk = icmp ugt i8 %i.dh, %.val1.i.i.i.i.i.i.i212.2
  %.sroa.0.0.i.i.i.i213.2 = select i1 %i.dk, ptr %.sroa.0.0.i.i.i.i213.1, ptr %i.dj
  %i.dl = tail call i8 @llvm.umax.i8(i8 %i.dh, i8 %.val1.i.i.i.i.i.i.i212.2) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.3 = load i8, ptr %i.dn, align 1, !alias.scope !9707, !noalias !9708, !noundef !21 ; 2 uses
  %i.do = icmp ugt i8 %i.dl, %.val1.i.i.i.i.i.i.i212.3
  %.sroa.0.0.i.i.i.i213.3 = select i1 %i.do, ptr %.sroa.0.0.i.i.i.i213.2, ptr %i.dn ; 3 uses
  %i.dp = add nuw i64 %.sroa.09.0.i.i210, 4       ; 2 uses
  %i.dq = tail call i8 @llvm.umax.i8(i8 %i.dl, i8 %.val1.i.i.i.i.i.i.i212.3) ; 2 uses
  %niter168.next.3 = add i64 %niter168, 4         ; 2 uses
  %niter168.ncmp.3 = icmp eq i64 %niter168.next.3, %unroll_iter167
  br i1 %niter168.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa, label %bb.p

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod164.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %.epil.preheader161

.epil.preheader161:                               ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa, %bb.o
  %.val.i.i.i.i.i.i.i209.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %bb.o ], [ %i.dq, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i210.epil.init = phi i64 [ 0, %bb.o ], [ %i.dp, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i211.epil.init = phi ptr [ %i.cs, %bb.o ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader161
  %.val.i.i.i.i.i.i.i209.epil = phi i8 [ %.val.i.i.i.i.i.i.i209.epil.init, %.epil.preheader161 ], [ %i.du, %bb.q ] ; 2 uses
  %.sroa.09.0.i.i210.epil = phi i64 [ %.sroa.09.0.i.i210.epil.init, %.epil.preheader161 ], [ %i.dt, %bb.q ] ; 2 uses
  %.sroa.07.0.i.i211.epil = phi ptr [ %.sroa.07.0.i.i211.epil.init, %.epil.preheader161 ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ]
  %epil.iter163 = phi i64 [ 0, %.epil.preheader161 ], [ %epil.iter163.next, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9702)
  %.val1.i.i.i.i.i.i.i212.epil = load i8, ptr %i.dr, align 1, !alias.scope !9698, !noalias !9697, !noundef !21 ; 2 uses
  %i.ds = icmp ugt i8 %.val.i.i.i.i.i.i.i209.epil, %.val1.i.i.i.i.i.i.i212.epil
  %.sroa.0.0.i.i.i.i213.epil = select i1 %i.ds, ptr %.sroa.07.0.i.i211.epil, ptr %i.dr ; 2 uses
  %i.dt = add nuw i64 %.sroa.09.0.i.i210.epil, 1
  %i.du = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209.epil, i8 %.val1.i.i.i.i.i.i.i212.epil)
  %epil.iter163.next = add i64 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i64 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %bb.q, !llvm.loop !9650

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa, %bb.q, %bb.m, %bb.n
  %.sroa.0.0.i214 = phi ptr [ null, %bb.m ], [ %i.cs, %bb.n ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ] ; 2 uses
  %.not165 = icmp eq ptr %.sroa.0.0.i214, null
  %.179 = select i1 %.not165, ptr @405, ptr %.sroa.0.0.i214
  %i.dv = load i8, ptr %.179, align 1, !noundef !21
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, 1                ; 2 uses
  store i32 %i.dx, ptr %i.r, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !noundef !21
  %i.ea = icmp eq i32 %i.dx, %i.dz
  br i1 %i.ea, label %bb.s, label %bb.r, !prof !31

bb.r:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr null, ptr %i.q, align 8
  call void @_ZN4core9panicking13assert_failed17h2174553b27a96270E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @930) #46
  unreachable

bb.s:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !21 ; 4 uses
  %i.ed = icmp ult i64 %i.ec, 16385               ; 2 uses
  br i1 %i.ed, label %bb.t, label %.loopexit89

.loopexit89:                                      ; preds = %.lr.ph.preheader, %middle.block, %bb.t, %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !21 ; 4 uses
  %i.eg = icmp ult i64 %i.ef, 16385
  br i1 %i.eg, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !21, !align !28, !noundef !21 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ec, 2                ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 %.idx  ; 2 uses
  %i.ek = icmp eq i64 %i.ec, 0
  br i1 %i.ek, label %.loopexit89, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.t
  %i.el = add nsw i64 %.idx, -4                   ; 2 uses
  %i.em = lshr exact i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.el, 60
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %12 = add nsw i64 %.idx, -4
  %i.eo = lshr exact i64 %12, 2
  %i.ep = getelementptr i8, ptr %i.x, i64 %i.eo
  %scevgep124 = getelementptr i8, ptr %i.ep, i64 1
  %bound0 = icmp ult ptr %i.x, %i.ej
  %bound1 = icmp ult ptr %i.ei, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.en, 9223372036854775800     ; 4 uses
  %i.eq = shl i64 %n.vec, 2
  %i.er = getelementptr i8, ptr %i.ei, i64 %i.eq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.es = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ei, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !9709
  %wide.load125 = load <4 x i32>, ptr %i.et, align 4, !alias.scope !9709
  %i.eu = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ev = trunc <4 x i32> %wide.load to <4 x i8>
  %i.ew = trunc <4 x i32> %wide.load125 to <4 x i8>
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store <4 x i8> %i.ev, ptr %i.eu, align 1, !alias.scope !9710, !noalias !9709
  store <4 x i8> %i.ew, ptr %i.ex, align 1, !alias.scope !9710, !noalias !9709
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !9654

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %.loopexit89, label %.lr.ph.preheader.preheader148

.lr.ph.preheader.preheader148:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.092.ph = phi ptr [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph.preheader.preheader ], [ %i.er, %middle.block ]
  %.sroa.7.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph95.preheader, %middle.block143, %bb.u, %.loopexit89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br i1 %i.ed, label %bb.w, label %bb.v, !prof !31

bb.u:                                             ; preds = %.loopexit89
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !21, !align !28, !noundef !21 ; 6 uses
  %.idx97 = shl nuw nsw i64 %i.ef, 2              ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 %.idx97 ; 2 uses
  %i.fc = icmp eq i64 %i.ef, 0
  br i1 %i.fc, label %.loopexit, label %.lr.ph95.preheader.preheader

.lr.ph95.preheader.preheader:                     ; preds = %bb.u
  %i.fd = add nsw i64 %.idx97, -4                 ; 2 uses
  %i.fe = lshr exact i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.fd, 60
  br i1 %min.iters.check134, label %.lr.ph95.preheader.preheader147, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph95.preheader.preheader
  %scevgep128 = getelementptr inbounds nuw i8, ptr %i.w, i64 8208
  %13 = add nsw i64 %.idx97, -4
  %i.fg = lshr exact i64 %13, 2
  %i.fh = getelementptr i8, ptr %i.w, i64 %i.fg
  %scevgep129 = getelementptr i8, ptr %i.fh, i64 8209
  %bound0130 = icmp ult ptr %scevgep128, %i.fb
  %bound1131 = icmp ult ptr %i.fa, %scevgep129
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph95.preheader.preheader147, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec136 = and i64 %i.ff, 9223372036854775800  ; 4 uses
  %i.fi = shl i64 %n.vec136, 2
  %i.fj = getelementptr i8, ptr %i.fa, i64 %i.fi
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next142, %vector.body137 ] ; 3 uses
  %i.fk = shl i64 %index138, 2
  %next.gep139 = getelementptr i8, ptr %i.fa, i64 %i.fk ; 2 uses
  %i.fl = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load140 = load <4 x i32>, ptr %next.gep139, align 4, !alias.scope !9711
  %wide.load141 = load <4 x i32>, ptr %i.fl, align 4, !alias.scope !9711
  %i.fm = getelementptr inbounds nuw i8, ptr %i.w, i64 %index138 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8208
  %i.fo = trunc <4 x i32> %wide.load140 to <4 x i8>
  %i.fp = trunc <4 x i32> %wide.load141 to <4 x i8>
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8212
  store <4 x i8> %i.fo, ptr %i.fn, align 1, !alias.scope !9712, !noalias !9711
  store <4 x i8> %i.fp, ptr %i.fq, align 1, !alias.scope !9712, !noalias !9711
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.fr, label %middle.block143, label %vector.body137, !llvm.loop !9658

middle.block143:                                  ; preds = %vector.body137
  %cmp.n144 = icmp eq i64 %i.ff, %n.vec136
  br i1 %cmp.n144, label %.loopexit, label %.lr.ph95.preheader.preheader147

.lr.ph95.preheader.preheader147:                  ; preds = %vector.memcheck127, %.lr.ph95.preheader.preheader, %middle.block143
  %.sroa.01.094.ph = phi ptr [ %i.fa, %vector.memcheck127 ], [ %i.fa, %.lr.ph95.preheader.preheader ], [ %i.fj, %middle.block143 ]
  %.sroa.73.093.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph95.preheader.preheader ], [ %n.vec136, %middle.block143 ]
  br label %.lr.ph95.preheader

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @230, ptr %i.e, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.fv, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #46
  unreachable

bb.w:                                             ; preds = %.loopexit
  %i.fw = add i64 %i.ef, 8208                     ; 7 uses
  %i.fx = icmp ult i64 %i.fw, 24593
  br i1 %i.fx, label %bb.y, label %bb.x, !prof !31

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @230, ptr %i.d, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.gb, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @932) #46
  unreachable

bb.y:                                             ; preds = %bb.w
  store ptr %i.x, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ec, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.w, ptr %i.gc, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.fw, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.gd = icmp samesign ugt i64 %i.fw, 8195
  br i1 %i.gd, label %.preheader.preheader, label %bb.z, !prof !31

.preheader.preheader:                             ; preds = %bb.y
  %scevgep = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %scevgep, i8 4, i64 8192, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gf = load i64, ptr %i.ge, align 8
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$24set_stride_context_speed17h603f81c44feff9bdE"(ptr nonnull %i.w, i64 %i.fw, i64 %i.gf)
  %i.gg = load i64, ptr %10, align 8              ; 2 uses
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$21set_context_map_speed17hb37b8d4bf073d5abE"(ptr nonnull %i.w, i64 %i.fw, i64 %i.gg)
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$33set_combined_stride_context_speed17h6ce3d4c715d138aaE"(ptr nonnull %i.w, i64 %i.fw, i64 %i.gg)
  %.not170 = icmp eq i8 %11, 4
  %.180 = select i1 %.not170, i8 0, i8 %11
  store i8 %.180, ptr %i.w, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.gi = load i8, ptr %i.gh, align 4, !noundef !21 ; 3 uses
  %.off = add i8 %i.gi, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.aa, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 4, i64 noundef 8196, i64 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @933) #46
  unreachable

bb.aa:                                            ; preds = %.preheader.preheader
  call fastcc void @"_ZN6brotli3enc11find_stride28EntropyTally$LT$AllocU32$GT$3new17hc66662cf30f21909E"(ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN6brotli3enc11find_stride30EntropyPyramid$LT$AllocU32$GT$3new17hee6585ff4d73f0b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(376) %i.o)
          to label %bb.ac unwind label %.thread61.thread86

bb.ab:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread61.thread86:                               ; preds = %bb.aa
  %lpad.thr_comm88 = landingpad { ptr, i32 }
          cleanup
  br label %.thread61.thread

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull align 8 dereferenceable(376) %i.o, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN6brotli3enc11find_stride30EntropyPyramid$LT$AllocU32$GT$8populate17hac6f6052a6383878E"(ptr noalias noundef align 8 dereferenceable(376) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(192) %i.g)
          to label %bb.ae unwind label %bb.ab

bb.ad:                                            ; preds = %.preheader.preheader
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx5, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.77.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.813.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1015.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1217.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1419.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1621.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1823.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2025.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2227.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2429.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2631.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %.sroa.32.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %i.f, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.712.0..sroa_idx, align 8
  %.sroa.914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.1 = load i8, ptr %i.bv, align 1, !alias.scope !9819, !noalias !9820, !noundef !21 ; 2 uses
  %i.bw = icmp ugt i8 %i.bt, %.val1.i.i.i.i.i.i.i204.1
  %.sroa.0.0.i.i.i.i205.1 = select i1 %i.bw, ptr %.sroa.0.0.i.i.i.i205, ptr %i.bv
  %i.bx = tail call i8 @llvm.umax.i8(i8 %i.bt, i8 %.val1.i.i.i.i.i.i.i204.1) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.2 = load i8, ptr %i.bz, align 1, !alias.scope !9821, !noalias !9822, !noundef !21 ; 2 uses
  %i.ca = icmp ugt i8 %i.bx, %.val1.i.i.i.i.i.i.i204.2
  %.sroa.0.0.i.i.i.i205.2 = select i1 %i.ca, ptr %.sroa.0.0.i.i.i.i205.1, ptr %i.bz
  %i.cb = tail call i8 @llvm.umax.i8(i8 %i.bx, i8 %.val1.i.i.i.i.i.i.i204.2) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i204.3 = load i8, ptr %i.cd, align 1, !alias.scope !9823, !noalias !9824, !noundef !21 ; 2 uses
  %i.ce = icmp ugt i8 %i.cb, %.val1.i.i.i.i.i.i.i204.3
  %.sroa.0.0.i.i.i.i205.3 = select i1 %i.ce, ptr %.sroa.0.0.i.i.i.i205.2, ptr %i.cd ; 3 uses
  %i.cf = add nuw i64 %.sroa.09.0.i.i202, 4       ; 2 uses
  %i.cg = tail call i8 @llvm.umax.i8(i8 %i.cb, i8 %.val1.i.i.i.i.i.i.i204.3) ; 2 uses
  %niter159.next.3 = add i64 %niter159, 4         ; 2 uses
  %niter159.ncmp.3 = icmp eq i64 %niter159.next.3, %unroll_iter158
  br i1 %niter159.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa, label %bb.j

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod155.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod155.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207, label %.epil.preheader152

.epil.preheader152:                               ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa, %bb.i
  %.val.i.i.i.i.i.i.i201.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i200, %bb.i ], [ %i.cg, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i202.epil.init = phi i64 [ 0, %bb.i ], [ %i.cf, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i203.epil.init = phi ptr [ %i.bi, %bb.i ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter153, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader152
  %.val.i.i.i.i.i.i.i201.epil = phi i8 [ %.val.i.i.i.i.i.i.i201.epil.init, %.epil.preheader152 ], [ %i.ck, %bb.k ] ; 2 uses
  %.sroa.09.0.i.i202.epil = phi i64 [ %.sroa.09.0.i.i202.epil.init, %.epil.preheader152 ], [ %i.cj, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i203.epil = phi ptr [ %.sroa.07.0.i.i203.epil.init, %.epil.preheader152 ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ]
  %epil.iter154 = phi i64 [ 0, %.epil.preheader152 ], [ %epil.iter154.next, %bb.k ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9818)
  %.val1.i.i.i.i.i.i.i204.epil = load i8, ptr %i.ch, align 1, !alias.scope !9814, !noalias !9813, !noundef !21 ; 2 uses
  %i.ci = icmp ugt i8 %.val.i.i.i.i.i.i.i201.epil, %.val1.i.i.i.i.i.i.i204.epil
  %.sroa.0.0.i.i.i.i205.epil = select i1 %i.ci, ptr %.sroa.07.0.i.i203.epil, ptr %i.ch ; 2 uses
  %i.cj = add nuw i64 %.sroa.09.0.i.i202.epil, 1
  %i.ck = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i201.epil, i8 %.val1.i.i.i.i.i.i.i204.epil)
  %epil.iter154.next = add i64 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i64 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207, label %bb.k, !llvm.loop !9758

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa, %bb.k, %bb.g, %bb.h
  %.sroa.0.0.i206 = phi ptr [ null, %bb.g ], [ %i.bi, %bb.h ], [ %.sroa.0.0.i.i.i.i205.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i205.epil, %bb.k ] ; 2 uses
  %.not164 = icmp eq ptr %.sroa.0.0.i206, null
  %.178 = select i1 %.not164, ptr @405, ptr %.sroa.0.0.i206
  %i.cl = load i8, ptr %.178, align 1, !noundef !21
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.cm, 1                ; 2 uses
  store i32 %i.cn, ptr %i.t, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !noundef !21
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.m, label %bb.l, !prof !31

bb.l:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr null, ptr %i.s, align 8
  call void @_ZN4core9panicking13assert_failed17h2174553b27a96270E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @929) #46
  unreachable

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !21, !align !29, !noundef !21 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !21 ; 4 uses
  %i.cv = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9825)
  %i.cx = icmp samesign eq i64 %i.cu, 1
  br i1 %i.cx, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.pre.i.i208 = load i8, ptr %i.cs, align 1, !alias.scope !9826, !noalias !9827 ; 2 uses
  %i.cy = add i64 %i.cu, -2
  %i.cz = add i64 %i.cu, -1                       ; 2 uses
  %xtraiter162 = and i64 %i.cz, 3                 ; 3 uses
  %i.da = icmp ult i64 %i.cy, 3
  br i1 %i.da, label %.epil.preheader161, label %.new160

.new160:                                          ; preds = %bb.o
  %unroll_iter167 = and i64 %i.cz, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new160
  %.val.i.i.i.i.i.i.i209 = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %.new160 ], [ %i.dq, %bb.p ] ; 2 uses
  %.sroa.09.0.i.i210 = phi i64 [ 0, %.new160 ], [ %i.dp, %bb.p ] ; 5 uses
  %.sroa.07.0.i.i211 = phi ptr [ %i.cs, %.new160 ], [ %.sroa.0.0.i.i.i.i213.3, %bb.p ]
  %niter168 = phi i64 [ 0, %.new160 ], [ %niter168.next.3, %bb.p ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9831)
  %.val1.i.i.i.i.i.i.i212 = load i8, ptr %i.db, align 1, !alias.scope !9827, !noalias !9826, !noundef !21 ; 2 uses
  %i.dc = icmp ugt i8 %.val.i.i.i.i.i.i.i209, %.val1.i.i.i.i.i.i.i212
  %.sroa.0.0.i.i.i.i213 = select i1 %i.dc, ptr %.sroa.07.0.i.i211, ptr %i.db
  %i.dd = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209, i8 %.val1.i.i.i.i.i.i.i212) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.1 = load i8, ptr %i.df, align 1, !alias.scope !9832, !noalias !9833, !noundef !21 ; 2 uses
  %i.dg = icmp ugt i8 %i.dd, %.val1.i.i.i.i.i.i.i212.1
  %.sroa.0.0.i.i.i.i213.1 = select i1 %i.dg, ptr %.sroa.0.0.i.i.i.i213, ptr %i.df
  %i.dh = tail call i8 @llvm.umax.i8(i8 %i.dd, i8 %.val1.i.i.i.i.i.i.i212.1) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.2 = load i8, ptr %i.dj, align 1, !alias.scope !9834, !noalias !9835, !noundef !21 ; 2 uses
  %i.dk = icmp ugt i8 %i.dh, %.val1.i.i.i.i.i.i.i212.2
  %.sroa.0.0.i.i.i.i213.2 = select i1 %i.dk, ptr %.sroa.0.0.i.i.i.i213.1, ptr %i.dj
  %i.dl = tail call i8 @llvm.umax.i8(i8 %i.dh, i8 %.val1.i.i.i.i.i.i.i212.2) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i212.3 = load i8, ptr %i.dn, align 1, !alias.scope !9836, !noalias !9837, !noundef !21 ; 2 uses
  %i.do = icmp ugt i8 %i.dl, %.val1.i.i.i.i.i.i.i212.3
  %.sroa.0.0.i.i.i.i213.3 = select i1 %i.do, ptr %.sroa.0.0.i.i.i.i213.2, ptr %i.dn ; 3 uses
  %i.dp = add nuw i64 %.sroa.09.0.i.i210, 4       ; 2 uses
  %i.dq = tail call i8 @llvm.umax.i8(i8 %i.dl, i8 %.val1.i.i.i.i.i.i.i212.3) ; 2 uses
  %niter168.next.3 = add i64 %niter168, 4         ; 2 uses
  %niter168.ncmp.3 = icmp eq i64 %niter168.next.3, %unroll_iter167
  br i1 %niter168.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa, label %bb.p

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod164.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %.epil.preheader161

.epil.preheader161:                               ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa, %bb.o
  %.val.i.i.i.i.i.i.i209.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i208, %bb.o ], [ %i.dq, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i210.epil.init = phi i64 [ 0, %bb.o ], [ %i.dp, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i211.epil.init = phi ptr [ %i.cs, %bb.o ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader161
  %.val.i.i.i.i.i.i.i209.epil = phi i8 [ %.val.i.i.i.i.i.i.i209.epil.init, %.epil.preheader161 ], [ %i.du, %bb.q ] ; 2 uses
  %.sroa.09.0.i.i210.epil = phi i64 [ %.sroa.09.0.i.i210.epil.init, %.epil.preheader161 ], [ %i.dt, %bb.q ] ; 2 uses
  %.sroa.07.0.i.i211.epil = phi ptr [ %.sroa.07.0.i.i211.epil.init, %.epil.preheader161 ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ]
  %epil.iter163 = phi i64 [ 0, %.epil.preheader161 ], [ %epil.iter163.next, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.09.0.i.i210.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9831)
  %.val1.i.i.i.i.i.i.i212.epil = load i8, ptr %i.dr, align 1, !alias.scope !9827, !noalias !9826, !noundef !21 ; 2 uses
  %i.ds = icmp ugt i8 %.val.i.i.i.i.i.i.i209.epil, %.val1.i.i.i.i.i.i.i212.epil
  %.sroa.0.0.i.i.i.i213.epil = select i1 %i.ds, ptr %.sroa.07.0.i.i211.epil, ptr %i.dr ; 2 uses
  %i.dt = add nuw i64 %.sroa.09.0.i.i210.epil, 1
  %i.du = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i209.epil, i8 %.val1.i.i.i.i.i.i.i212.epil)
  %epil.iter163.next = add i64 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i64 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215, label %bb.q, !llvm.loop !9779

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa, %bb.q, %bb.m, %bb.n
  %.sroa.0.0.i214 = phi ptr [ null, %bb.m ], [ %i.cs, %bb.n ], [ %.sroa.0.0.i.i.i.i213.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i213.epil, %bb.q ] ; 2 uses
  %.not165 = icmp eq ptr %.sroa.0.0.i214, null
  %.179 = select i1 %.not165, ptr @405, ptr %.sroa.0.0.i214
  %i.dv = load i8, ptr %.179, align 1, !noundef !21
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, 1                ; 2 uses
  store i32 %i.dx, ptr %i.r, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !noundef !21
  %i.ea = icmp eq i32 %i.dx, %i.dz
  br i1 %i.ea, label %bb.s, label %bb.r, !prof !31

bb.r:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr null, ptr %i.q, align 8
  call void @_ZN4core9panicking13assert_failed17h2174553b27a96270E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @930) #46
  unreachable

bb.s:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit215
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !21 ; 4 uses
  %i.ed = icmp ult i64 %i.ec, 16385               ; 2 uses
  br i1 %i.ed, label %bb.t, label %.loopexit89

.loopexit89:                                      ; preds = %.lr.ph.preheader, %middle.block, %bb.t, %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !21 ; 4 uses
  %i.eg = icmp ult i64 %i.ef, 16385
  br i1 %i.eg, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !21, !align !28, !noundef !21 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ec, 2                ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 %.idx  ; 2 uses
  %i.ek = icmp eq i64 %i.ec, 0
  br i1 %i.ek, label %.loopexit89, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.t
  %i.el = add nsw i64 %.idx, -4                   ; 2 uses
  %i.em = lshr exact i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.el, 60
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %12 = add nsw i64 %.idx, -4
  %i.eo = lshr exact i64 %12, 2
  %i.ep = getelementptr i8, ptr %i.x, i64 %i.eo
  %scevgep124 = getelementptr i8, ptr %i.ep, i64 1
  %bound0 = icmp ult ptr %i.x, %i.ej
  %bound1 = icmp ult ptr %i.ei, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.en, 9223372036854775800     ; 4 uses
  %i.eq = shl i64 %n.vec, 2
  %i.er = getelementptr i8, ptr %i.ei, i64 %i.eq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.es = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ei, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !9838
  %wide.load125 = load <4 x i32>, ptr %i.et, align 4, !alias.scope !9838
  %i.eu = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ev = trunc <4 x i32> %wide.load to <4 x i8>
  %i.ew = trunc <4 x i32> %wide.load125 to <4 x i8>
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store <4 x i8> %i.ev, ptr %i.eu, align 1, !alias.scope !9839, !noalias !9838
  store <4 x i8> %i.ew, ptr %i.ex, align 1, !alias.scope !9839, !noalias !9838
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !9783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %.loopexit89, label %.lr.ph.preheader.preheader148

.lr.ph.preheader.preheader148:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.092.ph = phi ptr [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph.preheader.preheader ], [ %i.er, %middle.block ]
  %.sroa.7.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph95.preheader, %middle.block143, %bb.u, %.loopexit89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br i1 %i.ed, label %bb.w, label %bb.v, !prof !31

bb.u:                                             ; preds = %.loopexit89
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !21, !align !28, !noundef !21 ; 6 uses
  %.idx97 = shl nuw nsw i64 %i.ef, 2              ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 %.idx97 ; 2 uses
  %i.fc = icmp eq i64 %i.ef, 0
  br i1 %i.fc, label %.loopexit, label %.lr.ph95.preheader.preheader

.lr.ph95.preheader.preheader:                     ; preds = %bb.u
  %i.fd = add nsw i64 %.idx97, -4                 ; 2 uses
  %i.fe = lshr exact i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.fd, 60
  br i1 %min.iters.check134, label %.lr.ph95.preheader.preheader147, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph95.preheader.preheader
  %scevgep128 = getelementptr inbounds nuw i8, ptr %i.w, i64 8208
  %13 = add nsw i64 %.idx97, -4
  %i.fg = lshr exact i64 %13, 2
  %i.fh = getelementptr i8, ptr %i.w, i64 %i.fg
  %scevgep129 = getelementptr i8, ptr %i.fh, i64 8209
  %bound0130 = icmp ult ptr %scevgep128, %i.fb
  %bound1131 = icmp ult ptr %i.fa, %scevgep129
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph95.preheader.preheader147, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec136 = and i64 %i.ff, 9223372036854775800  ; 4 uses
  %i.fi = shl i64 %n.vec136, 2
  %i.fj = getelementptr i8, ptr %i.fa, i64 %i.fi
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next142, %vector.body137 ] ; 3 uses
  %i.fk = shl i64 %index138, 2
  %next.gep139 = getelementptr i8, ptr %i.fa, i64 %i.fk ; 2 uses
  %i.fl = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load140 = load <4 x i32>, ptr %next.gep139, align 4, !alias.scope !9840
  %wide.load141 = load <4 x i32>, ptr %i.fl, align 4, !alias.scope !9840
  %i.fm = getelementptr inbounds nuw i8, ptr %i.w, i64 %index138 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8208
  %i.fo = trunc <4 x i32> %wide.load140 to <4 x i8>
  %i.fp = trunc <4 x i32> %wide.load141 to <4 x i8>
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8212
  store <4 x i8> %i.fo, ptr %i.fn, align 1, !alias.scope !9841, !noalias !9840
  store <4 x i8> %i.fp, ptr %i.fq, align 1, !alias.scope !9841, !noalias !9840
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.fr, label %middle.block143, label %vector.body137, !llvm.loop !9787

middle.block143:                                  ; preds = %vector.body137
  %cmp.n144 = icmp eq i64 %i.ff, %n.vec136
  br i1 %cmp.n144, label %.loopexit, label %.lr.ph95.preheader.preheader147

.lr.ph95.preheader.preheader147:                  ; preds = %vector.memcheck127, %.lr.ph95.preheader.preheader, %middle.block143
  %.sroa.01.094.ph = phi ptr [ %i.fa, %vector.memcheck127 ], [ %i.fa, %.lr.ph95.preheader.preheader ], [ %i.fj, %middle.block143 ]
  %.sroa.73.093.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph95.preheader.preheader ], [ %n.vec136, %middle.block143 ]
  br label %.lr.ph95.preheader

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @230, ptr %i.e, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.fv, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #46
  unreachable

bb.w:                                             ; preds = %.loopexit
  %i.fw = add i64 %i.ef, 8208                     ; 7 uses
  %i.fx = icmp ult i64 %i.fw, 24593
  br i1 %i.fx, label %bb.y, label %bb.x, !prof !31

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @230, ptr %i.d, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.gb, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @932) #46
  unreachable

bb.y:                                             ; preds = %bb.w
  store ptr %i.x, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ec, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.w, ptr %i.gc, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.fw, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.gd = icmp samesign ugt i64 %i.fw, 8195
  br i1 %i.gd, label %.preheader.preheader, label %bb.z, !prof !31

.preheader.preheader:                             ; preds = %bb.y
  %scevgep = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %scevgep, i8 4, i64 8192, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gf = load i64, ptr %i.ge, align 8
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$24set_stride_context_speed17h603f81c44feff9bdE"(ptr nonnull %i.w, i64 %i.fw, i64 %i.gf)
  %i.gg = load i64, ptr %10, align 8              ; 2 uses
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$21set_context_map_speed17hb37b8d4bf073d5abE"(ptr nonnull %i.w, i64 %i.fw, i64 %i.gg)
  call fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$33set_combined_stride_context_speed17h6ce3d4c715d138aaE"(ptr nonnull %i.w, i64 %i.fw, i64 %i.gg)
  %.not170 = icmp eq i8 %11, 4
  %.180 = select i1 %.not170, i8 0, i8 %11
  store i8 %.180, ptr %i.w, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.gi = load i8, ptr %i.gh, align 4, !noundef !21 ; 3 uses
  %.off = add i8 %i.gi, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.aa, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 4, i64 noundef 8196, i64 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @933) #46
  unreachable

bb.aa:                                            ; preds = %.preheader.preheader
  call fastcc void @"_ZN6brotli3enc11find_stride28EntropyTally$LT$AllocU32$GT$3new17hc66662cf30f21909E"(ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN6brotli3enc11find_stride30EntropyPyramid$LT$AllocU32$GT$3new17hee6585ff4d73f0b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(376) %i.o)
          to label %bb.ac unwind label %.thread61.thread86

bb.ab:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread61.thread86:                               ; preds = %bb.aa
  %lpad.thr_comm88 = landingpad { ptr, i32 }
          cleanup
  br label %.thread61.thread

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull align 8 dereferenceable(376) %i.o, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN6brotli3enc11find_stride30EntropyPyramid$LT$AllocU32$GT$8populate17hac6f6052a6383878E"(ptr noalias noundef align 8 dereferenceable(376) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(192) %i.g)
          to label %bb.ae unwind label %bb.ab

bb.ad:                                            ; preds = %.preheader.preheader
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx5, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.77.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.813.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1015.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1217.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1419.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1621.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1823.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2025.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2227.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2429.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2631.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %.sroa.32.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %i.f, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.712.0..sroa_idx, align 8
  %.sroa.914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
end_hunk_2
