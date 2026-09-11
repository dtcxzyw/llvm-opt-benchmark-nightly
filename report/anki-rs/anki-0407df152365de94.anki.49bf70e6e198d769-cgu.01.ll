Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4core5slice4sort8unstable7ipnsort17ha92ee109451f2cb5E:bb.a
  %i.c = icmp slt i64 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i64 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.e = icmp slt i64 %.val4, %.val5
  br i1 %i.e, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %i.h = icmp slt i64 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw i64 %.sroa.01.1.i17, 1           ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit.thread, label %.lr.ph18

_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h372ee73bc4f5658eE.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hee4cf658a2fbfdf8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef nonnull align 1 %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h372ee73bc4f5658eE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h372ee73bc4f5658eE.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hed0625b1d7c6d202E.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4555)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !4556, !noalias !4555
  %wide.load40 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !4556, !noalias !4555
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load41 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !4557, !noalias !4554
  %wide.load42 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !4557, !noalias !4554
  %reverse = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse43 = shufflevector <2 x i64> %wide.load42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !4556, !noalias !4555
  store <2 x i64> %reverse43, ptr %i.v, align 8, !alias.scope !4556, !noalias !4555
  %reverse44 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse45 = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse44, ptr %i.w, align 8, !alias.scope !4557, !noalias !4554
  store <2 x i64> %reverse45, ptr %i.x, align 8, !alias.scope !4557, !noalias !4554
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !4552

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h372ee73bc4f5658eE.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.014.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !4556, !noalias !4555, !noundef !11
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !4557, !noalias !4554
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !4556, !noalias !4555
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !4557, !noalias !4554
  %i.ae = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h372ee73bc4f5658eE.exit", label %.lr.ph.i.i, !llvm.loop !4553
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17ha960b5d4e72d650dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ba04d458aad1b43E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 64
  %.val10 = load i32, ptr %i.b, align 8, !range !41, !noundef !11 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 68
  %.val11 = load i32, ptr %i.c, align 4           ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val12 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 28
  %.val13 = load i32, ptr %i.e, align 4
  %i.f = ashr i32 %.val10, 13                     ; 3 uses
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  %i.h = icmp slt i32 %i.f, 1
  br i1 %i.h, label %bb.c, label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.i = sub nsw i32 1, %i.f
  %i.j = udiv i32 %i.i, 400
  %i.k = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %i.l = mul nuw nsw i32 %i.k, 400
  %i.m = add nsw i32 %i.l, %i.g
  %.neg.i.i.i = mul nsw i32 %i.k, -146097
  br label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i"

"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i": ; preds = %bb.c, %bb.b
  %.sroa.05.0.i.i.i = phi i32 [ %.neg.i.i.i, %bb.c ], [ 0, %bb.b ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.m, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.n = ashr i32 %.val12, 13                     ; 3 uses
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  %i.p = icmp slt i32 %i.n, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"

bb.d:                                             ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i"
  %i.q = sub nsw i32 1, %i.n
  %i.r = udiv i32 %i.q, 400
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %i.t = mul nuw nsw i32 %i.s, 400
  %i.u = add nsw i32 %i.t, %i.o
  %.neg.i.i8.i = mul nsw i32 %i.s, -146097
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit": ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i", %bb.d
  %.sroa.05.0.i.i5.i = phi i32 [ %.neg.i.i8.i, %bb.d ], [ 0, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i" ]
  %.sroa.0.0.i.i6.i = phi i32 [ %i.u, %bb.d ], [ %i.o, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i" ] ; 2 uses
  %i.v = lshr i32 %.val10, 4
  %i.w = and i32 %i.v, 511
  %i.x = add nuw nsw i32 %i.w, -719163
  %i.y = add nsw i32 %i.x, %.sroa.05.0.i.i.i
  %i.z = sdiv i32 %.sroa.0.0.i.i.i, 100           ; 2 uses
  %i.aa = sub nsw i32 %i.y, %i.z
  %i.ab = mul nsw i32 %.sroa.0.0.i.i.i, 1461
  %i.ac = ashr i32 %i.ab, 2
  %i.ad = add nsw i32 %i.aa, %i.ac
  %i.ae = ashr i32 %i.z, 2
  %narrow.i.i = add nsw i32 %i.ad, %i.ae
  %i.af = sext i32 %narrow.i.i to i64
  %i.ag = mul nsw i64 %i.af, 86400
  %i.ah = zext i32 %.val11 to i64
  %i.ai = add nsw i64 %i.ag, %i.ah
  %i.aj = sdiv i32 %.sroa.0.0.i.i6.i, 100         ; 2 uses
  %i.ak = mul nsw i32 %.sroa.0.0.i.i6.i, 1461
  %i.al = ashr i32 %i.ak, 2
  %i.am = ashr i32 %i.aj, 2
  %i.an = lshr i32 %.val12, 4
  %i.ao = and i32 %i.an, 511
  %i.ap = zext i32 %.val13 to i64
  %i.aq = add nuw nsw i32 %i.ao, -719163
  %i.ar = add nsw i32 %i.aq, %.sroa.05.0.i.i5.i
  %i.as = sub nsw i32 %i.ar, %i.aj
  %i.at = add nsw i32 %i.as, %i.al
  %narrow.i7.i = add nsw i32 %i.at, %i.am
  %i.au = sext i32 %narrow.i7.i to i64
  %i.av = mul nsw i64 %i.au, 86400
  %i.aw = add nsw i64 %i.av, %i.ap
  %i.ax = icmp slt i64 %i.ai, %i.aw               ; 2 uses
  %.not51 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.ax, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"
  br i1 %.not51, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ba04d458aad1b43E.exit", label %.lr.ph

.preheader:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"
  br i1 %.not51, label %.lr.ph.preheader.i.i, label %.lr.ph48

.lr.ph:                                           ; preds = %.preheader43, %bb.g
  %.val9 = phi i32 [ %.val7, %bb.g ], [ %.val11, %.preheader43 ]
  %.val8 = phi i32 [ %.val6, %bb.g ], [ %.val10, %.preheader43 ] ; 2 uses
  %.sroa.01.0.i45 = phi i64 [ %i.cu, %bb.g ], [ 2, %.preheader43 ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i45 ; 2 uses
  %3 = add i64 %.sroa.01.0.i45, -1
  %4 = icmp ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val6 = load i32, ptr %i.az, align 8, !range !41, !noundef !11 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 28
  %.val7 = load i32, ptr %i.ba, align 4           ; 2 uses
  %i.bb = ashr i32 %.val6, 13                     ; 3 uses
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = icmp slt i32 %i.bb, 1
  br i1 %i.bd, label %bb.e, label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14"

bb.e:                                             ; preds = %.lr.ph
  %i.be = sub nsw i32 1, %i.bb
  %i.bf = udiv i32 %i.be, 400
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %i.bh = mul nuw nsw i32 %i.bg, 400
  %i.bi = add nsw i32 %i.bh, %i.bc
  %.neg.i.i.i22 = mul nsw i32 %i.bg, -146097
  br label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14"

"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14": ; preds = %bb.e, %.lr.ph
  %.sroa.05.0.i.i.i15 = phi i32 [ %.neg.i.i.i22, %bb.e ], [ 0, %.lr.ph ]
  %.sroa.0.0.i.i.i16 = phi i32 [ %i.bi, %bb.e ], [ %i.bc, %.lr.ph ] ; 2 uses
  %i.bj = ashr i32 %.val8, 13                     ; 3 uses
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bl = icmp slt i32 %i.bj, 1
  br i1 %i.bl, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit23"

bb.f:                                             ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14"
  %i.bm = sub nsw i32 1, %i.bj
  %i.bn = udiv i32 %i.bm, 400
  %i.bo = add nuw nsw i32 %i.bn, 1                ; 2 uses
  %i.bp = mul nuw nsw i32 %i.bo, 400
  %i.bq = add nsw i32 %i.bp, %i.bk
  %.neg.i.i8.i21 = mul nsw i32 %i.bo, -146097
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit23"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit23": ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14", %bb.f
  %.sroa.05.0.i.i5.i17 = phi i32 [ %.neg.i.i8.i21, %bb.f ], [ 0, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14" ]
  %.sroa.0.0.i.i6.i18 = phi i32 [ %i.bq, %bb.f ], [ %i.bk, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i14" ] ; 2 uses
  %i.br = lshr i32 %.val6, 4
  %i.bs = and i32 %i.br, 511
  %i.bt = add nuw nsw i32 %i.bs, -719163
  %i.bu = add nsw i32 %i.bt, %.sroa.05.0.i.i.i15
  %i.bv = sdiv i32 %.sroa.0.0.i.i.i16, 100        ; 2 uses
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = mul nsw i32 %.sroa.0.0.i.i.i16, 1461
  %i.by = ashr i32 %i.bx, 2
  %i.bz = add nsw i32 %i.bw, %i.by
  %i.ca = ashr i32 %i.bv, 2
  %narrow.i.i19 = add nsw i32 %i.bz, %i.ca
  %i.cb = sext i32 %narrow.i.i19 to i64
  %i.cc = mul nsw i64 %i.cb, 86400
  %i.cd = zext i32 %.val7 to i64
  %i.ce = add nsw i64 %i.cc, %i.cd
  %i.cf = sdiv i32 %.sroa.0.0.i.i6.i18, 100       ; 2 uses
  %i.cg = mul nsw i32 %.sroa.0.0.i.i6.i18, 1461
  %i.ch = ashr i32 %i.cg, 2
  %i.ci = ashr i32 %i.cf, 2
  %i.cj = lshr i32 %.val8, 4
  %i.ck = and i32 %i.cj, 511
  %i.cl = zext i32 %.val9 to i64
  %i.cm = add nuw nsw i32 %i.ck, -719163
  %i.cn = add nsw i32 %i.cm, %.sroa.05.0.i.i5.i17
  %i.co = sub nsw i32 %i.cn, %i.cf
  %i.cp = add nsw i32 %i.co, %i.ch
  %narrow.i7.i20 = add nsw i32 %i.cp, %i.ci
  %i.cq = sext i32 %narrow.i7.i20 to i64
  %i.cr = mul nsw i64 %i.cq, 86400
  %i.cs = add nsw i64 %i.cr, %i.cl
  %i.ct = icmp slt i64 %i.ce, %i.cs
  br i1 %i.ct, label %_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit, label %bb.g

bb.g:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit23"
  %i.cu = add nuw i64 %.sroa.01.0.i45, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit, label %.lr.ph

.lr.ph48:                                         ; preds = %.preheader, %bb.j
  %.val5 = phi i32 [ %.val3, %bb.j ], [ %.val11, %.preheader ]
  %.val4 = phi i32 [ %.val, %bb.j ], [ %.val10, %.preheader ] ; 2 uses
  %.sroa.01.1.i47 = phi i64 [ %i.er, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.1.i47 ; 2 uses
  %5 = add i64 %.sroa.01.1.i47, -1
  %6 = icmp ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.cw = getelementptr i8, ptr %i.cv, i64 24
  %.val = load i32, ptr %i.cw, align 8, !range !41, !noundef !11 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cv, i64 28
  %.val3 = load i32, ptr %i.cx, align 4           ; 2 uses
  %i.cy = ashr i32 %.val, 13                      ; 3 uses
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  %i.da = icmp slt i32 %i.cy, 1
  br i1 %i.da, label %bb.h, label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24"

bb.h:                                             ; preds = %.lr.ph48
  %i.db = sub nsw i32 1, %i.cy
  %i.dc = udiv i32 %i.db, 400
  %i.dd = add nuw nsw i32 %i.dc, 1                ; 2 uses
  %i.de = mul nuw nsw i32 %i.dd, 400
  %i.df = add nsw i32 %i.de, %i.cz
  %.neg.i.i.i32 = mul nsw i32 %i.dd, -146097
  br label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24"

"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24": ; preds = %bb.h, %.lr.ph48
  %.sroa.05.0.i.i.i25 = phi i32 [ %.neg.i.i.i32, %bb.h ], [ 0, %.lr.ph48 ]
  %.sroa.0.0.i.i.i26 = phi i32 [ %i.df, %bb.h ], [ %i.cz, %.lr.ph48 ] ; 2 uses
  %i.dg = ashr i32 %.val4, 13                     ; 3 uses
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  %i.di = icmp slt i32 %i.dg, 1
  br i1 %i.di, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit33"

bb.i:                                             ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24"
  %i.dj = sub nsw i32 1, %i.dg
  %i.dk = udiv i32 %i.dj, 400
  %i.dl = add nuw nsw i32 %i.dk, 1                ; 2 uses
  %i.dm = mul nuw nsw i32 %i.dl, 400
  %i.dn = add nsw i32 %i.dm, %i.dh
  %.neg.i.i8.i31 = mul nsw i32 %i.dl, -146097
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit33"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit33": ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24", %bb.i
  %.sroa.05.0.i.i5.i27 = phi i32 [ %.neg.i.i8.i31, %bb.i ], [ 0, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24" ]
  %.sroa.0.0.i.i6.i28 = phi i32 [ %i.dn, %bb.i ], [ %i.dh, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i24" ] ; 2 uses
  %i.do = lshr i32 %.val, 4
  %i.dp = and i32 %i.do, 511
  %i.dq = add nuw nsw i32 %i.dp, -719163
  %i.dr = add nsw i32 %i.dq, %.sroa.05.0.i.i.i25
  %i.ds = sdiv i32 %.sroa.0.0.i.i.i26, 100        ; 2 uses
  %i.dt = sub nsw i32 %i.dr, %i.ds
  %i.du = mul nsw i32 %.sroa.0.0.i.i.i26, 1461
  %i.dv = ashr i32 %i.du, 2
  %i.dw = add nsw i32 %i.dt, %i.dv
  %i.dx = ashr i32 %i.ds, 2
  %narrow.i.i29 = add nsw i32 %i.dw, %i.dx
  %i.dy = sext i32 %narrow.i.i29 to i64
  %i.dz = mul nsw i64 %i.dy, 86400
  %i.ea = zext i32 %.val3 to i64
  %i.eb = add nsw i64 %i.dz, %i.ea
  %i.ec = sdiv i32 %.sroa.0.0.i.i6.i28, 100       ; 2 uses
  %i.ed = mul nsw i32 %.sroa.0.0.i.i6.i28, 1461
  %i.ee = ashr i32 %i.ed, 2
  %i.ef = ashr i32 %i.ec, 2
  %i.eg = lshr i32 %.val4, 4
  %i.eh = and i32 %i.eg, 511
  %i.ei = zext i32 %.val5 to i64
  %i.ej = add nuw nsw i32 %i.eh, -719163
  %i.ek = add nsw i32 %i.ej, %.sroa.05.0.i.i5.i27
  %i.el = sub nsw i32 %i.ek, %i.ec
  %i.em = add nsw i32 %i.el, %i.ee
  %narrow.i7.i30 = add nsw i32 %i.em, %i.ef
  %i.en = sext i32 %narrow.i7.i30 to i64
  %i.eo = mul nsw i64 %i.en, 86400
  %i.ep = add nsw i64 %i.eo, %i.ei
  %i.eq = icmp slt i64 %i.eb, %i.ep
  br i1 %i.eq, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit

bb.j:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit33"
  %i.er = add nuw i64 %.sroa.01.1.i47, 1          ; 2 uses
  %exitcond55.not = icmp eq i64 %i.er, %1
  br i1 %exitcond55.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit, label %.lr.ph48

_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit23", %bb.g, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit33", %bb.j
  %.sroa.0.0.i = phi i64 [ %1, %bb.j ], [ %.sroa.01.1.i47, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit33" ], [ %1, %bb.g ], [ %.sroa.01.0.i45, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit23" ] ; 2 uses
  %i.es = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.et, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit
  br i1 %i.ax, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ba04d458aad1b43E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd3904d645e1d293aE.exit
  %i.eu = or i64 %1, 1
  %i.ev = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h95f598b5b8234205E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.ey, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ba04d458aad1b43E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ba04d458aad1b43E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hc9cf978339e43e6aE.exit.i.i, %.preheader43, %bb.a, %bb.k, %bb.l
  ret void

.lr.ph.preheader.i.i:                             ; preds = %.preheader, %bb.k
  %i.ez = lshr i64 %1, 1
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hc9cf978339e43e6aE.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.015.i.i = phi i64 [ %i.ff, %_ZN4core10intrinsics25typed_swap_nonoverlapping17hc9cf978339e43e6aE.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.fb = xor i64 %.sroa.0.015.i.i, -1
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.015.i.i
  %i.fd = getelementptr [40 x i8], ptr %i.fa, i64 %i.fb
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fd, i64 noundef 5)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17hc9cf978339e43e6aE.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17hc9cf978339e43e6aE.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ff = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ff, %i.ez
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ba04d458aad1b43E.exit", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17hc3461aa480c1a426E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdc708f2640e560d2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %.not17 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader7

.preheader7:                                      ; preds = %bb.b
  br i1 %.not17, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not17, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit, label %.lr.ph13

.lr.ph:                                           ; preds = %.preheader7, %bb.c
  %.sroa.01.0.i9 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader7 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i9
  %i.e = getelementptr [32 x i8], ptr %0, i64 %.sroa.01.0.i9
  %i.f = getelementptr i8, ptr %i.e, i64 -32
  %i.g = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  br i1 %i.g, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw i64 %.sroa.01.0.i9, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit.thread, label %.lr.ph

.lr.ph13:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i12 = phi i64 [ %i.m, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i12
  %i.j = getelementptr [32 x i8], ptr %0, i64 %.sroa.01.1.i12
  %i.k = getelementptr i8, ptr %i.j, i64 -32
  %i.l = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br i1 %i.l, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit

bb.d:                                             ; preds = %.lr.ph13
  %i.m = add nuw i64 %.sroa.01.1.i12, 1           ; 2 uses
  %exitcond20.not = icmp eq i64 %i.m, %1
  br i1 %exitcond20.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit.thread, label %.lr.ph13

_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit: ; preds = %.lr.ph, %.lr.ph13, %.preheader7, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader7 ], [ 2, %.preheader ], [ %.sroa.01.1.i12, %.lr.ph13 ], [ %.sroa.01.0.i9, %.lr.ph ] ; 2 uses
  %i.n = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.o, label %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdc708f2640e560d2E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit
  %i.p = or i64 %1, 1
  %i.q = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = xor i32 %i.s, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h6d40ba695c78ab59E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.t, ptr noalias noundef nonnull align 1 %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdc708f2640e560d2E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdc708f2640e560d2E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h6b484f86183701a2E.exit.i.i, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8aea55f603fa7fe2E.exit.thread
  %i.u = lshr i64 %1, 1
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h6b484f86183701a2E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.015.i.i = phi i64 [ %i.aa, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h6b484f86183701a2E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.w = xor i64 %.sroa.0.015.i.i, -1
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.015.i.i
  %i.y = getelementptr [32 x i8], ptr %i.v, i64 %i.w
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef 4)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h6b484f86183701a2E.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h6b484f86183701a2E.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aa = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.u
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdc708f2640e560d2E.exit", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17hc638a0097bb5c30cE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #22 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb2a996ed8c7368a2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !noundef !11 ; 3 uses
  %.val7 = load i64, ptr %0, align 8, !noundef !11
  %i.c = icmp slt i64 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i64 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.e = icmp slt i64 %.val4, %.val5
  br i1 %i.e, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %i.h = icmp slt i64 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw i64 %.sroa.01.1.i17, 1           ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit.thread, label %.lr.ph18

_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb2a996ed8c7368a2E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hb53a9955d04ef322E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef nonnull align 1 %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb2a996ed8c7368a2E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb2a996ed8c7368a2E.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h06521456596f2da5E.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4566)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
end_hunk_0
