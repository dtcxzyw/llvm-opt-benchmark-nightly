Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/xxhash?download=true
inline.NumInlined: 819
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@XXH3_64bits_reset_withSeed:bb.a
  store <2 x i64> %i.u, ptr %i.t, align 16, !tbaa !18
  %i.v = add <2 x i64> %i.s, <i64 -2623469361688619810, i64 2262974939099578482>
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %i.v, ptr %i.w, align 16, !tbaa !18
  %i.x = add <2 x i64> %i.s, <i64 8711581037947681227, i64 2410270004345854594>
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <2 x i64> %i.x, ptr %i.y, align 16, !tbaa !18
  %i.z = add <2 x i64> %i.s, <i64 -8204357891075471176, i64 5487137525590930912>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <2 x i64> %i.z, ptr %i.aa, align 16, !tbaa !18
  %i.ab = add <2 x i64> %i.s, <i64 -3818837453329782724, i64 -6688317018830679928>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store <2 x i64> %i.ab, ptr %i.ac, align 16, !tbaa !18
  %i.ad = add <2 x i64> %i.s, <i64 5690594596133299313, i64 -2833645246901970632>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store <2 x i64> %i.ad, ptr %i.ae, align 16, !tbaa !18
  %i.af = add <2 x i64> %i.s, <i64 4554437623014685352, i64 2111919702937427193>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store <2 x i64> %i.af, ptr %i.ag, align 16, !tbaa !18
  %i.ah = add <2 x i64> %i.s, <i64 3556072174620004746, i64 7238261902898274248>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store <2 x i64> %i.ah, ptr %i.ai, align 16, !tbaa !18
  %i.aj = add <2 x i64> %i.s, <i64 -4329134394285701654, i64 -1485321483350670907>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  store <2 x i64> %i.aj, ptr %i.ak, align 16, !tbaa !18
  %i.al = add <2 x i64> %i.s, <i64 5321830579834785047, i64 -7032137544937171245>
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store <2 x i64> %i.al, ptr %i.am, align 16, !tbaa !18
  %i.an = add <2 x i64> %i.s, <i64 -242834301215959509, i64 -3588858202114426737>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store <2 x i64> %i.an, ptr %i.ao, align 16, !tbaa !18
  %i.ap = add <2 x i64> %i.s, <i64 2883454493032893253, i64 9097354517224871855>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store <2 x i64> %i.ap, ptr %i.aq, align 16, !tbaa !18
  br label %XXH3_initCustomSecret_sse2.exit

XXH3_initCustomSecret_sse2.exit:                  ; preds = %XXH3_initCustomSecret_sse2.exit.loopexit, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %i.at, align 16, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %i.au, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %i.av, align 32, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %i.aw, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %i.ax, align 16, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %i.ay, align 8, !tbaa !24
  store i64 %1, ptr %i.l, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %i.az, align 4, !tbaa !36
  br label %.sink.split

.sink.split:                                      ; preds = %XXH3_64bits_reset.exit, %XXH3_initCustomSecret_sse2.exit
  %.sink = phi ptr [ null, %XXH3_initCustomSecret_sse2.exit ], [ @XXH3_kSecret, %XXH3_64bits_reset.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.bb, align 32, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.bc, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @XXH3_64bits_reset_withSecretandSeed(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 136
  %or.cond11 = or i1 %or.cond, %i.c
  br i1 %or.cond11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %i.f, align 16, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %i.h, align 32, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %i.j, align 16, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %i.n, align 8, !tbaa !33
  %i.o = add i64 %2, -64                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.o, ptr %i.p, align 32, !tbaa !34
  %i.q = lshr i64 %i.o, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.q, ptr %i.r, align 8, !tbaa !35
  store i32 1, ptr %i.m, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @XXH3_64bits_update(ptr nofree noundef captures(none) %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %XXH3_update.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33, !alias.scope !123 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.e       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !37, !alias.scope !123
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 16, !tbaa !37, !alias.scope !123
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !38, !alias.scope !123 ; 5 uses
  %i.n = icmp ult i32 %i.m, 257
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nuw nsw i32 256, %i.m
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %.not.i.not = icmp ugt i64 %2, %i.p
  br i1 %.not.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = zext nneg i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = trunc nuw nsw i64 %2 to i32
  %i.u = load i32, ptr %i.l, align 64, !tbaa !38, !alias.scope !123
  %i.v = add i32 %i.u, %i.t
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.not74.i = icmp eq i32 %i.m, 0
  br i1 %.not74.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.x = zext nneg i32 %i.m to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %1, i64 %i.p, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35, !alias.scope !123 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ae = load i64, ptr %i.ad, align 32, !tbaa !34, !alias.scope !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !24, !alias.scope !125 ; 3 uses
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag ; 2 uses
  %i.ai = sub i64 %i.ac, %i.af                    ; 2 uses
  %.not.i3 = icmp ugt i64 %i.ai, 4
  %.pre71.pre = load <2 x i64>, ptr %0, align 64, !tbaa !18, !alias.scope !124 ; 2 uses
  %.phi.trans.insert76.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not.i3, label %..thread_crit_edge, label %.preheader33

..thread_crit_edge:                               ; preds = %bb.f
  %.phi.trans.insert72.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre73.pre = load <2 x i64>, ptr %.phi.trans.insert72.phi.trans.insert, align 16, !tbaa !18, !alias.scope !128
  %.phi.trans.insert74.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre75.pre = load <2 x i64>, ptr %.phi.trans.insert74.phi.trans.insert, align 32, !tbaa !18, !alias.scope !128
  %.pre77.pre = load <2 x i64>, ptr %.phi.trans.insert76.phi.trans.insert, align 16, !tbaa !18, !alias.scope !128
  br label %.thread

.preheader33:                                     ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load <2 x i64>, ptr %3, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load <2 x i64>, ptr %i.ak, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = load <2 x i64>, ptr %i.am, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !18, !alias.scope !127, !noalias !129
  %.phi.trans.insert.promoted = load <2 x i64>, ptr %.phi.trans.insert, align 16
  %.phi.trans.insert61.promoted = load <2 x i64>, ptr %.phi.trans.insert61, align 32
  %.phi.trans.insert63.promoted = load <2 x i64>, ptr %.phi.trans.insert76.phi.trans.insert, align 16
  br label %bb.g

bb.g:                                             ; preds = %.preheader33, %XXH3_accumulate_sse2.exit47.i9
  %.pre64140 = phi <2 x i64> [ %i.ep, %XXH3_accumulate_sse2.exit47.i9 ], [ %.phi.trans.insert63.promoted, %.preheader33 ] ; 2 uses
  %.pre62138 = phi <2 x i64> [ %i.ef, %XXH3_accumulate_sse2.exit47.i9 ], [ %.phi.trans.insert61.promoted, %.preheader33 ] ; 2 uses
  %.pre60136 = phi <2 x i64> [ %i.dv, %XXH3_accumulate_sse2.exit47.i9 ], [ %.phi.trans.insert.promoted, %.preheader33 ] ; 2 uses
  %.pre65 = phi <2 x i64> [ %i.dl, %XXH3_accumulate_sse2.exit47.i9 ], [ %.pre71.pre, %.preheader33 ] ; 2 uses
  %.038.i4 = phi i64 [ %i.es, %XXH3_accumulate_sse2.exit47.i9 ], [ 4, %.preheader33 ]
  %.036.i5 = phi ptr [ %i.er, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.w, %.preheader33 ] ; 2 uses
  %.035.i6 = phi ptr [ %i.h, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ah, %.preheader33 ]
  %.0.i7 = phi i64 [ %i.ac, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ai, %.preheader33 ] ; 4 uses
  %.not = icmp eq i64 %.0.i7, 0
  br i1 %.not, label %XXH3_accumulate_sse2.exit47.i9, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  br label %XXH3_accumulate_512_sse2.exit.i23

XXH3_accumulate_512_sse2.exit.i23:                ; preds = %.lr.ph, %XXH3_accumulate_512_sse2.exit.i23
  %i.aq = phi <2 x i64> [ %.pre64140, %.lr.ph ], [ %i.cw, %XXH3_accumulate_512_sse2.exit.i23 ]
  %i.ar = phi <2 x i64> [ %.pre62138, %.lr.ph ], [ %i.cj, %XXH3_accumulate_512_sse2.exit.i23 ]
  %i.as = phi <2 x i64> [ %.pre60136, %.lr.ph ], [ %i.bw, %XXH3_accumulate_512_sse2.exit.i23 ]
  %i.at = phi <2 x i64> [ %.pre65, %.lr.ph ], [ %i.bj, %XXH3_accumulate_512_sse2.exit.i23 ]
  %.0.i46.i838 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %XXH3_accumulate_512_sse2.exit.i23 ] ; 3 uses
  %i.au = shl i64 %.0.i46.i838, 6
  %i.av = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1), !noalias !130
  %i.ax = shl i64 %.0.i46.i838, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.035.i6, i64 %i.ax ; 4 uses
  %i.az = load <2 x i64>, ptr %i.av, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.bb = xor <2 x i64> %i.ba, %i.az              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.bd = and <2 x i64> %i.bb, splat (i64 4294967295)
  %i.be = and <4 x i32> %i.bc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bf = bitcast <4 x i32> %.inner to <2 x i64>
  %i.bg = mul nuw <2 x i64> %i.bd, %i.bf
  %i.bh = shufflevector <2 x i64> %i.az, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = add <2 x i64> %i.at, %i.bh
  %i.bj = add <2 x i64> %i.bi, %i.bg              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bn = load <2 x i64>, ptr %i.bm, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.bo = xor <2 x i64> %i.bn, %i.bl              ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = and <2 x i64> %i.bo, splat (i64 4294967295)
  %i.br = and <4 x i32> %i.bp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner185 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bs = bitcast <4 x i32> %.inner185 to <2 x i64>
  %i.bt = mul nuw <2 x i64> %i.bq, %i.bs
  %i.bu = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = add <2 x i64> %i.as, %i.bu
  %i.bw = add <2 x i64> %i.bv, %i.bt              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ca = load <2 x i64>, ptr %i.bz, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.cb = xor <2 x i64> %i.ca, %i.by              ; 2 uses
  %i.cc = bitcast <2 x i64> %i.cb to <4 x i32>
  %i.cd = and <2 x i64> %i.cb, splat (i64 4294967295)
  %i.ce = and <4 x i32> %i.cc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner186 = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cf = bitcast <4 x i32> %.inner186 to <2 x i64>
  %i.cg = mul nuw <2 x i64> %i.cd, %i.cf
  %i.ch = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = add <2 x i64> %i.ar, %i.ch
  %i.cj = add <2 x i64> %i.ci, %i.cg              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !18, !alias.scope !126, !noalias !131 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.cn = load <2 x i64>, ptr %i.cm, align 1, !tbaa !18, !alias.scope !127, !noalias !131
  %i.co = xor <2 x i64> %i.cn, %i.cl              ; 2 uses
  %i.cp = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cq = and <2 x i64> %i.co, splat (i64 4294967295)
  %i.cr = and <4 x i32> %i.cp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner187 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cs = bitcast <4 x i32> %.inner187 to <2 x i64>
  %i.ct = mul nuw <2 x i64> %i.cq, %i.cs
  %i.cu = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = add <2 x i64> %i.aq, %i.cu
  %i.cw = add <2 x i64> %i.cv, %i.ct              ; 2 uses
  %i.cx = add nuw i64 %.0.i46.i838, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %.0.i7
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i9, label %XXH3_accumulate_512_sse2.exit.i23, !llvm.loop !4

XXH3_accumulate_sse2.exit47.i9:                   ; preds = %XXH3_accumulate_512_sse2.exit.i23, %bb.g
  %i.cy = phi <2 x i64> [ %.pre64140, %bb.g ], [ %i.cw, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  %i.cz = phi <2 x i64> [ %.pre62138, %bb.g ], [ %i.cj, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  %i.da = phi <2 x i64> [ %.pre60136, %bb.g ], [ %i.bw, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  %i.db = phi <2 x i64> [ %.pre65, %bb.g ], [ %i.bj, %XXH3_accumulate_512_sse2.exit.i23 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.dc = lshr <2 x i64> %i.db, splat (i64 47)
  %i.dd = xor <2 x i64> %i.aj, %i.dc
  %i.de = xor <2 x i64> %i.dd, %i.db              ; 2 uses
  %i.df = bitcast <2 x i64> %i.de to <4 x i32>
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dh = bitcast <4 x i32> %i.dg to <2 x i64>
  %i.di = and <2 x i64> %i.de, splat (i64 4294967295)
  %i.dj = mul nuw <2 x i64> %i.di, splat (i64 2654435761)
  %i.dk = mul <2 x i64> %i.dh, splat (i64 -7046029290881679360)
  %i.dl = add <2 x i64> %i.dk, %i.dj              ; 3 uses
  %i.dm = lshr <2 x i64> %i.da, splat (i64 47)
  %i.dn = xor <2 x i64> %i.al, %i.dm
  %i.do = xor <2 x i64> %i.dn, %i.da              ; 2 uses
  %i.dp = bitcast <2 x i64> %i.do to <4 x i32>
  %i.dq = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dr = bitcast <4 x i32> %i.dq to <2 x i64>
  %i.ds = and <2 x i64> %i.do, splat (i64 4294967295)
  %i.dt = mul nuw <2 x i64> %i.ds, splat (i64 2654435761)
  %i.du = mul <2 x i64> %i.dr, splat (i64 -7046029290881679360)
  %i.dv = add <2 x i64> %i.du, %i.dt              ; 3 uses
  %i.dw = lshr <2 x i64> %i.cz, splat (i64 47)
  %i.dx = xor <2 x i64> %i.an, %i.dw
  %i.dy = xor <2 x i64> %i.dx, %i.cz              ; 2 uses
  %i.dz = bitcast <2 x i64> %i.dy to <4 x i32>
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.ec = and <2 x i64> %i.dy, splat (i64 4294967295)
  %i.ed = mul nuw <2 x i64> %i.ec, splat (i64 2654435761)
  %i.ee = mul <2 x i64> %i.eb, splat (i64 -7046029290881679360)
  %i.ef = add <2 x i64> %i.ee, %i.ed              ; 3 uses
  %i.eg = lshr <2 x i64> %i.cy, splat (i64 47)
  %i.eh = xor <2 x i64> %i.ap, %i.eg
  %i.ei = xor <2 x i64> %i.eh, %i.cy              ; 2 uses
  %i.ej = bitcast <2 x i64> %i.ei to <4 x i32>
  %i.ek = shufflevector <4 x i32> %i.ej, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.el = bitcast <4 x i32> %i.ek to <2 x i64>
  %i.em = and <2 x i64> %i.ei, splat (i64 4294967295)
  %i.en = mul nuw <2 x i64> %i.em, splat (i64 2654435761)
  %i.eo = mul <2 x i64> %i.el, splat (i64 -7046029290881679360)
  %i.ep = add <2 x i64> %i.eo, %i.en              ; 3 uses
  %i.eq = shl i64 %.0.i7, 6
  %i.er = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.eq ; 2 uses
  %i.es = sub i64 %.038.i4, %.0.i7                ; 4 uses
  %.not44.i12 = icmp ult i64 %i.es, %i.ac
  br i1 %.not44.i12, label %bb.h, label %bb.g, !llvm.loop !6

bb.h:                                             ; preds = %XXH3_accumulate_sse2.exit47.i9
  store <2 x i64> %i.dv, ptr %.phi.trans.insert, align 16, !tbaa !18, !alias.scope !124
  store <2 x i64> %i.ef, ptr %.phi.trans.insert61, align 32, !tbaa !18, !alias.scope !124
  store <2 x i64> %i.ep, ptr %.phi.trans.insert76.phi.trans.insert, align 16, !tbaa !18, !alias.scope !124
  store <2 x i64> %i.dl, ptr %0, align 64, !tbaa !18, !alias.scope !132
  store i64 0, ptr %i.aa, align 8, !tbaa !24, !alias.scope !125
  %.not45.i16 = icmp eq i64 %i.es, 0
  br i1 %.not45.i16, label %XXH3_consumeStripes.exit24, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.h
  %.pre77 = phi <2 x i64> [ %i.ep, %bb.h ], [ %.pre77.pre, %..thread_crit_edge ]
  %.pre75 = phi <2 x i64> [ %i.ef, %bb.h ], [ %.pre75.pre, %..thread_crit_edge ]
  %.pre73 = phi <2 x i64> [ %i.dv, %bb.h ], [ %.pre73.pre, %..thread_crit_edge ]
  %.pre71 = phi <2 x i64> [ %i.dl, %bb.h ], [ %.pre71.pre, %..thread_crit_edge ]
  %i.et = phi i64 [ 0, %bb.h ], [ %i.af, %..thread_crit_edge ]
  %.1.i1531 = phi ptr [ %i.h, %bb.h ], [ %i.ah, %..thread_crit_edge ]
  %.137.i1430 = phi ptr [ %i.er, %bb.h ], [ %i.w, %..thread_crit_edge ]
  %.139.i1329 = phi i64 [ %i.es, %bb.h ], [ 4, %..thread_crit_edge ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %XXH3_accumulate_512_sse2.exit51.i21

XXH3_accumulate_512_sse2.exit51.i21:              ; preds = %.thread, %XXH3_accumulate_512_sse2.exit51.i21
  %i.eu = phi <2 x i64> [ %.pre77, %.thread ], [ %i.ha, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %i.ev = phi <2 x i64> [ %.pre75, %.thread ], [ %i.gn, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %i.ew = phi <2 x i64> [ %.pre73, %.thread ], [ %i.ga, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %i.ex = phi <2 x i64> [ %.pre71, %.thread ], [ %i.fn, %XXH3_accumulate_512_sse2.exit51.i21 ]
  %.0.i.i1741 = phi i64 [ 0, %.thread ], [ %i.hb, %XXH3_accumulate_512_sse2.exit51.i21 ] ; 3 uses
  %i.ey = shl i64 %.0.i.i1741, 6
  %i.ez = getelementptr inbounds nuw i8, ptr %.137.i1430, i64 %i.ey ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 3, i32 1), !noalias !130
  %i.fb = shl i64 %.0.i.i1741, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %.1.i1531, i64 %i.fb ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.fd = load <2 x i64>, ptr %i.ez, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fc, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.ff = xor <2 x i64> %i.fe, %i.fd              ; 2 uses
  %i.fg = bitcast <2 x i64> %i.ff to <4 x i32>
  %i.fh = and <2 x i64> %i.ff, splat (i64 4294967295)
  %i.fi = and <4 x i32> %i.fg, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner188 = shufflevector <4 x i32> %i.fi, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fj = bitcast <4 x i32> %.inner188 to <2 x i64>
  %i.fk = mul nuw <2 x i64> %i.fh, %i.fj
  %i.fl = shufflevector <2 x i64> %i.fd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = add <2 x i64> %i.ex, %i.fl
  %i.fn = add <2 x i64> %i.fm, %i.fk              ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fp = load <2 x i64>, ptr %i.fo, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fr = load <2 x i64>, ptr %i.fq, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.fs = xor <2 x i64> %i.fr, %i.fp              ; 2 uses
  %i.ft = bitcast <2 x i64> %i.fs to <4 x i32>
  %i.fu = and <2 x i64> %i.fs, splat (i64 4294967295)
  %i.fv = and <4 x i32> %i.ft, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner189 = shufflevector <4 x i32> %i.fv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fw = bitcast <4 x i32> %.inner189 to <2 x i64>
  %i.fx = mul nuw <2 x i64> %i.fu, %i.fw
  %i.fy = shufflevector <2 x i64> %i.fp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = add <2 x i64> %i.ew, %i.fy
  %i.ga = add <2 x i64> %i.fz, %i.fx              ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.gc = load <2 x i64>, ptr %i.gb, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.ge = load <2 x i64>, ptr %i.gd, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.gf = xor <2 x i64> %i.ge, %i.gc              ; 2 uses
  %i.gg = bitcast <2 x i64> %i.gf to <4 x i32>
  %i.gh = and <2 x i64> %i.gf, splat (i64 4294967295)
  %i.gi = and <4 x i32> %i.gg, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner190 = shufflevector <4 x i32> %i.gi, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gj = bitcast <4 x i32> %.inner190 to <2 x i64>
  %i.gk = mul nuw <2 x i64> %i.gh, %i.gj
  %i.gl = shufflevector <2 x i64> %i.gc, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = add <2 x i64> %i.ev, %i.gl
  %i.gn = add <2 x i64> %i.gm, %i.gk              ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.gp = load <2 x i64>, ptr %i.go, align 1, !tbaa !18, !alias.scope !126, !noalias !133 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.gr = load <2 x i64>, ptr %i.gq, align 1, !tbaa !18, !alias.scope !127, !noalias !133
  %i.gs = xor <2 x i64> %i.gr, %i.gp              ; 2 uses
  %i.gt = bitcast <2 x i64> %i.gs to <4 x i32>
  %i.gu = and <2 x i64> %i.gs, splat (i64 4294967295)
  %i.gv = and <4 x i32> %i.gt, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner191 = shufflevector <4 x i32> %i.gv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gw = bitcast <4 x i32> %.inner191 to <2 x i64>
  %i.gx = mul nuw <2 x i64> %i.gu, %i.gw
  %i.gy = shufflevector <2 x i64> %i.gp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = add <2 x i64> %i.eu, %i.gy
  %i.ha = add <2 x i64> %i.gz, %i.gx              ; 2 uses
  %i.hb = add nuw i64 %.0.i.i1741, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.hb, %.139.i1329
  br i1 %exitcond54.not, label %XXH3_accumulate_sse2.exit.i18, label %XXH3_accumulate_512_sse2.exit51.i21, !llvm.loop !4

XXH3_accumulate_sse2.exit.i18:                    ; preds = %XXH3_accumulate_512_sse2.exit51.i21
  store <2 x i64> %i.fn, ptr %0, align 64, !tbaa !18, !alias.scope !128
  store <2 x i64> %i.ga, ptr %.phi.trans.insert72, align 16, !tbaa !18, !alias.scope !128
  store <2 x i64> %i.gn, ptr %.phi.trans.insert74, align 32, !tbaa !18, !alias.scope !128
  store <2 x i64> %i.ha, ptr %.phi.trans.insert76, align 16, !tbaa !18, !alias.scope !128
  %i.hc = add i64 %i.et, %.139.i1329
  store i64 %i.hc, ptr %i.aa, align 8, !tbaa !24, !alias.scope !125
  br label %XXH3_consumeStripes.exit24

XXH3_consumeStripes.exit24:                       ; preds = %bb.h, %XXH3_accumulate_sse2.exit.i18
  store i32 0, ptr %i.l, align 64, !tbaa !38, !alias.scope !123
  br label %bb.i

bb.i:                                             ; preds = %XXH3_consumeStripes.exit24, %bb.e
  %.067.i = phi ptr [ %i.z, %XXH3_consumeStripes.exit24 ], [ %1, %bb.e ] ; 5 uses
  %i.hd = icmp ult ptr %.067.i, %i.c
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.hf = ptrtoint ptr %.067.i to i64             ; 2 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = icmp sgt i64 %i.hg, 256
  br i1 %i.hh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.hi = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.hf
  %i.hl = lshr i64 %i.hk, 6                       ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !35, !alias.scope !123 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hq = load i64, ptr %i.hp, align 32, !tbaa !34, !alias.scope !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.hr = load i64, ptr %i.hm, align 8, !tbaa !24, !alias.scope !135 ; 3 uses
  %i.hs = shl i64 %i.hr, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hs ; 2 uses
  %i.hu = sub i64 %i.ho, %i.hr                    ; 2 uses
  %.not.i2 = icmp ult i64 %i.hl, %i.hu
  br i1 %.not.i2, label %bb.m, label %.preheader32

.preheader32:                                     ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hq ; 4 uses
  %.pre85.pre = load <2 x i64>, ptr %0, align 64, !tbaa !18, !alias.scope !134
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hv = load <2 x i64>, ptr %4, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hz = load <2 x i64>, ptr %i.hy, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !18, !alias.scope !137, !noalias !138
  %.phi.trans.insert79.promoted = load <2 x i64>, ptr %.phi.trans.insert79, align 16
  %.phi.trans.insert81.promoted = load <2 x i64>, ptr %.phi.trans.insert81, align 32
  %.phi.trans.insert83.promoted = load <2 x i64>, ptr %.phi.trans.insert83, align 16
  br label %bb.k

bb.k:                                             ; preds = %.preheader32, %XXH3_accumulate_sse2.exit47.i
  %.pre84151 = phi <2 x i64> [ %i.mb, %XXH3_accumulate_sse2.exit47.i ], [ %.phi.trans.insert83.promoted, %.preheader32 ] ; 2 uses
  %.pre82149 = phi <2 x i64> [ %i.lr, %XXH3_accumulate_sse2.exit47.i ], [ %.phi.trans.insert81.promoted, %.preheader32 ] ; 2 uses
  %.pre80147 = phi <2 x i64> [ %i.lh, %XXH3_accumulate_sse2.exit47.i ], [ %.phi.trans.insert79.promoted, %.preheader32 ] ; 2 uses
  %.pre85 = phi <2 x i64> [ %i.kx, %XXH3_accumulate_sse2.exit47.i ], [ %.pre85.pre, %.preheader32 ] ; 2 uses
  %.038.i = phi i64 [ %i.me, %XXH3_accumulate_sse2.exit47.i ], [ %i.hl, %.preheader32 ]
  %.036.i = phi ptr [ %i.md, %XXH3_accumulate_sse2.exit47.i ], [ %.067.i, %.preheader32 ] ; 2 uses
  %.035.i = phi ptr [ %i.h, %XXH3_accumulate_sse2.exit47.i ], [ %i.ht, %.preheader32 ]
  %.0.i = phi i64 [ %i.ho, %XXH3_accumulate_sse2.exit47.i ], [ %i.hu, %.preheader32 ] ; 4 uses
  %.not48 = icmp eq i64 %.0.i, 0
  br i1 %.not48, label %XXH3_accumulate_sse2.exit47.i, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  br label %XXH3_accumulate_512_sse2.exit.i

XXH3_accumulate_512_sse2.exit.i:                  ; preds = %.lr.ph44, %XXH3_accumulate_512_sse2.exit.i
  %i.ic = phi <2 x i64> [ %.pre84151, %.lr.ph44 ], [ %i.ki, %XXH3_accumulate_512_sse2.exit.i ]
  %i.id = phi <2 x i64> [ %.pre82149, %.lr.ph44 ], [ %i.jv, %XXH3_accumulate_512_sse2.exit.i ]
  %i.ie = phi <2 x i64> [ %.pre80147, %.lr.ph44 ], [ %i.ji, %XXH3_accumulate_512_sse2.exit.i ]
  %i.if = phi <2 x i64> [ %.pre85, %.lr.ph44 ], [ %i.iv, %XXH3_accumulate_512_sse2.exit.i ]
  %.0.i46.i43 = phi i64 [ 0, %.lr.ph44 ], [ %i.kj, %XXH3_accumulate_512_sse2.exit.i ] ; 3 uses
  %i.ig = shl i64 %.0.i46.i43, 6
  %i.ih = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.ig ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ii, i32 0, i32 3, i32 1), !noalias !139
  %i.ij = shl i64 %.0.i46.i43, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.ij ; 4 uses
  %i.il = load <2 x i64>, ptr %i.ih, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.im = load <2 x i64>, ptr %i.ik, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.in = xor <2 x i64> %i.im, %i.il              ; 2 uses
  %i.io = bitcast <2 x i64> %i.in to <4 x i32>
  %i.ip = and <2 x i64> %i.in, splat (i64 4294967295)
  %i.iq = and <4 x i32> %i.io, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner192 = shufflevector <4 x i32> %i.iq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ir = bitcast <4 x i32> %.inner192 to <2 x i64>
  %i.is = mul nuw <2 x i64> %i.ip, %i.ir
  %i.it = shufflevector <2 x i64> %i.il, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iu = add <2 x i64> %i.if, %i.it
  %i.iv = add <2 x i64> %i.iu, %i.is              ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ix = load <2 x i64>, ptr %i.iw, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.iz = load <2 x i64>, ptr %i.iy, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.ja = xor <2 x i64> %i.iz, %i.ix              ; 2 uses
  %i.jb = bitcast <2 x i64> %i.ja to <4 x i32>
  %i.jc = and <2 x i64> %i.ja, splat (i64 4294967295)
  %i.jd = and <4 x i32> %i.jb, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner193 = shufflevector <4 x i32> %i.jd, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.je = bitcast <4 x i32> %.inner193 to <2 x i64>
  %i.jf = mul nuw <2 x i64> %i.jc, %i.je
  %i.jg = shufflevector <2 x i64> %i.ix, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jh = add <2 x i64> %i.ie, %i.jg
  %i.ji = add <2 x i64> %i.jh, %i.jf              ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.jk = load <2 x i64>, ptr %i.jj, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.jm = load <2 x i64>, ptr %i.jl, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.jn = xor <2 x i64> %i.jm, %i.jk              ; 2 uses
  %i.jo = bitcast <2 x i64> %i.jn to <4 x i32>
  %i.jp = and <2 x i64> %i.jn, splat (i64 4294967295)
  %i.jq = and <4 x i32> %i.jo, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner194 = shufflevector <4 x i32> %i.jq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jr = bitcast <4 x i32> %.inner194 to <2 x i64>
  %i.js = mul nuw <2 x i64> %i.jp, %i.jr
  %i.jt = shufflevector <2 x i64> %i.jk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ju = add <2 x i64> %i.id, %i.jt
  %i.jv = add <2 x i64> %i.ju, %i.js              ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.jx = load <2 x i64>, ptr %i.jw, align 1, !tbaa !18, !alias.scope !136, !noalias !140 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.jz = load <2 x i64>, ptr %i.jy, align 1, !tbaa !18, !alias.scope !137, !noalias !140
  %i.ka = xor <2 x i64> %i.jz, %i.jx              ; 2 uses
  %i.kb = bitcast <2 x i64> %i.ka to <4 x i32>
  %i.kc = and <2 x i64> %i.ka, splat (i64 4294967295)
  %i.kd = and <4 x i32> %i.kb, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner195 = shufflevector <4 x i32> %i.kd, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ke = bitcast <4 x i32> %.inner195 to <2 x i64>
  %i.kf = mul nuw <2 x i64> %i.kc, %i.ke
  %i.kg = shufflevector <2 x i64> %i.jx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kh = add <2 x i64> %i.ic, %i.kg
  %i.ki = add <2 x i64> %i.kh, %i.kf              ; 2 uses
  %i.kj = add nuw i64 %.0.i46.i43, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.kj, %.0.i
  br i1 %exitcond56.not, label %XXH3_accumulate_sse2.exit47.i, label %XXH3_accumulate_512_sse2.exit.i, !llvm.loop !4

XXH3_accumulate_sse2.exit47.i:                    ; preds = %XXH3_accumulate_512_sse2.exit.i, %bb.k
  %i.kk = phi <2 x i64> [ %.pre84151, %bb.k ], [ %i.ki, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  %i.kl = phi <2 x i64> [ %.pre82149, %bb.k ], [ %i.jv, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  %i.km = phi <2 x i64> [ %.pre80147, %bb.k ], [ %i.ji, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  %i.kn = phi <2 x i64> [ %.pre85, %bb.k ], [ %i.iv, %XXH3_accumulate_512_sse2.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ko = lshr <2 x i64> %i.kn, splat (i64 47)
  %i.kp = xor <2 x i64> %i.hv, %i.ko
  %i.kq = xor <2 x i64> %i.kp, %i.kn              ; 2 uses
  %i.kr = bitcast <2 x i64> %i.kq to <4 x i32>
  %i.ks = shufflevector <4 x i32> %i.kr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.kt = bitcast <4 x i32> %i.ks to <2 x i64>
  %i.ku = and <2 x i64> %i.kq, splat (i64 4294967295)
  %i.kv = mul nuw <2 x i64> %i.ku, splat (i64 2654435761)
  %i.kw = mul <2 x i64> %i.kt, splat (i64 -7046029290881679360)
  %i.kx = add <2 x i64> %i.kw, %i.kv              ; 2 uses
  %i.ky = lshr <2 x i64> %i.km, splat (i64 47)
  %i.kz = xor <2 x i64> %i.hx, %i.ky
  %i.la = xor <2 x i64> %i.kz, %i.km              ; 2 uses
  %i.lb = bitcast <2 x i64> %i.la to <4 x i32>
  %i.lc = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ld = bitcast <4 x i32> %i.lc to <2 x i64>
  %i.le = and <2 x i64> %i.la, splat (i64 4294967295)
  %i.lf = mul nuw <2 x i64> %i.le, splat (i64 2654435761)
  %i.lg = mul <2 x i64> %i.ld, splat (i64 -7046029290881679360)
  %i.lh = add <2 x i64> %i.lg, %i.lf              ; 2 uses
  %i.li = lshr <2 x i64> %i.kl, splat (i64 47)
  %i.lj = xor <2 x i64> %i.hz, %i.li
  %i.lk = xor <2 x i64> %i.lj, %i.kl              ; 2 uses
  %i.ll = bitcast <2 x i64> %i.lk to <4 x i32>
  %i.lm = shufflevector <4 x i32> %i.ll, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ln = bitcast <4 x i32> %i.lm to <2 x i64>
  %i.lo = and <2 x i64> %i.lk, splat (i64 4294967295)
  %i.lp = mul nuw <2 x i64> %i.lo, splat (i64 2654435761)
  %i.lq = mul <2 x i64> %i.ln, splat (i64 -7046029290881679360)
  %i.lr = add <2 x i64> %i.lq, %i.lp              ; 2 uses
  %i.ls = lshr <2 x i64> %i.kk, splat (i64 47)
  %i.lt = xor <2 x i64> %i.ib, %i.ls
  %i.lu = xor <2 x i64> %i.lt, %i.kk              ; 2 uses
  %i.lv = bitcast <2 x i64> %i.lu to <4 x i32>
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lx = bitcast <4 x i32> %i.lw to <2 x i64>
  %i.ly = and <2 x i64> %i.lu, splat (i64 4294967295)
  %i.lz = mul nuw <2 x i64> %i.ly, splat (i64 2654435761)
  %i.ma = mul <2 x i64> %i.lx, splat (i64 -7046029290881679360)
  %i.mb = add <2 x i64> %i.ma, %i.lz              ; 2 uses
  %i.mc = shl i64 %.0.i, 6
  %i.md = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.mc ; 2 uses
  %i.me = sub i64 %.038.i, %.0.i                  ; 3 uses
  %.not44.i = icmp ult i64 %i.me, %i.ho
  br i1 %.not44.i, label %bb.l, label %bb.k, !llvm.loop !6

bb.l:                                             ; preds = %XXH3_accumulate_sse2.exit47.i
  store <2 x i64> %i.lh, ptr %.phi.trans.insert79, align 16, !tbaa !18, !alias.scope !134
  store <2 x i64> %i.lr, ptr %.phi.trans.insert81, align 32, !tbaa !18, !alias.scope !134
  store <2 x i64> %i.mb, ptr %.phi.trans.insert83, align 16, !tbaa !18, !alias.scope !134
  store <2 x i64> %i.kx, ptr %0, align 64, !tbaa !18, !alias.scope !141
  store i64 0, ptr %i.hm, align 8, !tbaa !24, !alias.scope !135
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.mf = phi i64 [ 0, %bb.l ], [ %i.hr, %bb.j ]
  %.139.i = phi i64 [ %i.me, %bb.l ], [ %i.hl, %bb.j ] ; 4 uses
  %.137.i = phi ptr [ %i.md, %bb.l ], [ %.067.i, %bb.j ] ; 3 uses
  %.1.i = phi ptr [ %i.h, %bb.l ], [ %i.ht, %bb.j ]
  %.not45.i = icmp eq i64 %.139.i, 0
  br i1 %.not45.i, label %XXH3_consumeStripes.exit, label %.preheader

.preheader:                                       ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.pre92 = load <2 x i64>, ptr %0, align 64, !tbaa !18, !alias.scope !142
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre94 = load <2 x i64>, ptr %.phi.trans.insert93, align 16, !tbaa !18, !alias.scope !142
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre96 = load <2 x i64>, ptr %.phi.trans.insert95, align 32, !tbaa !18, !alias.scope !142
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre98 = load <2 x i64>, ptr %.phi.trans.insert97, align 16, !tbaa !18, !alias.scope !142
  br label %XXH3_accumulate_512_sse2.exit51.i

XXH3_accumulate_512_sse2.exit51.i:                ; preds = %.preheader, %XXH3_accumulate_512_sse2.exit51.i
  %i.mg = phi <2 x i64> [ %.pre98, %.preheader ], [ %i.om, %XXH3_accumulate_512_sse2.exit51.i ]
  %i.mh = phi <2 x i64> [ %.pre96, %.preheader ], [ %i.nz, %XXH3_accumulate_512_sse2.exit51.i ]
  %i.mi = phi <2 x i64> [ %.pre94, %.preheader ], [ %i.nm, %XXH3_accumulate_512_sse2.exit51.i ]
  %i.mj = phi <2 x i64> [ %.pre92, %.preheader ], [ %i.mz, %XXH3_accumulate_512_sse2.exit51.i ]
  %.0.i.i47 = phi i64 [ 0, %.preheader ], [ %i.on, %XXH3_accumulate_512_sse2.exit51.i ] ; 3 uses
  %i.mk = shl i64 %.0.i.i47, 6
  %i.ml = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.mk ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mm, i32 0, i32 3, i32 1), !noalias !139
  %i.mn = shl i64 %.0.i.i47, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.mn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.mp = load <2 x i64>, ptr %i.ml, align 1, !tbaa !18, !alias.scope !136, !noalias !143 ; 2 uses
  %i.mq = load <2 x i64>, ptr %i.mo, align 1, !tbaa !18, !alias.scope !137, !noalias !143
  %i.mr = xor <2 x i64> %i.mq, %i.mp              ; 2 uses
  %i.ms = bitcast <2 x i64> %i.mr to <4 x i32>
  %i.mt = and <2 x i64> %i.mr, splat (i64 4294967295)
  %i.mu = and <4 x i32> %i.ms, <i32 0, i32 -1, i32 poison, i32 -1>
end_hunk_0
begin_hunk_1_@XXH3_128bits_digest:bb.a

bb.f:                                             ; preds = %bb.a
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !36
  %.not = icmp eq i32 %i.mu, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !32
  %i.my = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull captures(address) %i.mv, i64 noundef %i.h, i64 noundef %i.mx) #31
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.na = load i64, ptr %i.mz, align 32, !tbaa !34
  %i.nb = add i64 %i.na, 64
  %i.nc = tail call { i64, i64 } @XXH3_128bits_withSecret(ptr noundef nonnull captures(address) %i.mv, i64 noundef %i.h, ptr noundef nonnull captures(address) %i.f, i64 noundef %i.nb) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %XXH3_digest_long.exit
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.ms, %XXH3_digest_long.exit ], [ %i.my, %bb.g ], [ %i.nc, %bb.h ]
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.XXH128_hash_t, align 8      ; 3 uses
  %5 = alloca %struct.XXH128_hash_t, align 8      ; 3 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = load i128, ptr %4, align 8
  %i.d = load i128, ptr %5, align 8
  %i.e = icmp ne i128 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @XXH128_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq i64 %.sroa.56.0.copyload, %.sroa.5.0.copyload
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.56.0.copyload, i64 %.sroa.5.0.copyload)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !24
  %.sroa.04.0.copyload = load i64, ptr %0, align 8, !tbaa !24
  %i.b = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.04.0.copyload, i64 %.sroa.0.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @XXH128_canonicalFromHash(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.a, ptr %0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @XXH128_hashFromCanonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %.val2 = load i64, ptr %0, align 1, !tbaa !24
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.val2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 1, !tbaa !24
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.val)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.a, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: none) uwtable
define range(i32 0, 2) i32 @XXH3_generateSecret(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 136
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0                        ; 2 uses
  %spec.select = select i1 %i.c, i64 192, i64 %3  ; 2 uses
  %spec.select39 = select i1 %i.c, ptr @XXH3_kSecret, ptr %2 ; 3 uses
  %i.d = icmp eq ptr %spec.select39, null
  br i1 %i.d, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03448 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.e = sub nuw i64 %1, %.03448
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %spec.select) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.03448
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %spec.select39, i64 %i.f, i1 false)
  %i.h = add i64 %i.f, %.03448                    ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %.lr.ph51, !llvm.loop !277

.lr.ph51:                                         ; preds = %.lr.ph
  %i.j = lshr i64 %1, 4
  %i.k = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull readonly captures(address) %spec.select39, i64 noundef %spec.select, i64 noundef 0) #31 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.l) ; 2 uses
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %invariant.op = xor i64 %i.o, %i.n
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph51, %bb.c
  %.03549 = phi i64 [ 0, %.lr.ph51 ], [ %i.aw, %bb.c ] ; 4 uses
  %i.p = sub nuw nsw i64 6455697860950631241, %.03549
  %i.q = add nuw nsw i64 %.03549, -4466874330221494952
  %.reass.reass = xor i64 %i.p, %invariant.op
  %i.r = zext i64 %.reass.reass to i128
  %i.s = mul nuw i128 %i.r, 11400714785074694791  ; 2 uses
  %i.t = trunc i128 %i.s to i64
  %i.u = lshr i128 %i.s, 64
  %i.v = trunc nuw i128 %i.u to i64
  %i.w = add i64 %i.t, 270215977642229760
  %i.x = xor i64 %i.q, %i.n                       ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = mul nuw i64 %i.y, 2246822518
  %i.aa = add i64 %i.z, %i.x
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.w
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, 14029467366897019727 ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = lshr i128 %i.af, 64
  %i.ai = trunc nuw i128 %i.ah to i64
  %i.aj = mul i64 %i.ab, -4417276706812531889
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = shl nuw i64 %.03549, 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.ao = insertelement <2 x i64> %i.an, i64 %i.ak, i64 1 ; 2 uses
  %i.ap = lshr <2 x i64> %i.ao, splat (i64 37)
  %i.aq = xor <2 x i64> %i.ap, %i.ao
  %i.ar = mul <2 x i64> %i.aq, splat (i64 1609587791953885689) ; 2 uses
  %i.as = lshr <2 x i64> %i.ar, splat (i64 32)
  %i.at = load <2 x i64>, ptr %i.am, align 1, !tbaa !24
  %i.au = xor <2 x i64> %i.as, %i.at
  %i.av = xor <2 x i64> %i.au, %i.ar
  store <2 x i64> %i.av, ptr %i.am, align 1
  %i.aw = add nuw nsw i64 %.03549, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.j
  br i1 %exitcond.not, label %._crit_edge52, label %bb.c, !llvm.loop !278

._crit_edge52:                                    ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -16 ; 2 uses
  %.val42 = load i64, ptr %i.ay, align 1, !tbaa !24
  %i.az = xor i64 %.val42, %i.l
  store i64 %i.az, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %.val41 = load i64, ptr %i.ba, align 1, !tbaa !24
  %i.bb = xor i64 %.val41, %i.m
  store i64 %i.bb, ptr %i.ba, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %._crit_edge52
  %.0 = phi i32 [ 0, %._crit_edge52 ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define void @XXH3_generateSecret_fromSeed(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #17 {
XXH3_initCustomSecret_sse2.exit:
  %i.a = alloca [192 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = sub i64 0, %1
  %i.c = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.d = insertelement <2 x i64> %i.c, i64 %i.b, i64 1 ; 12 uses
  %i.e = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.a) #32, !srcloc !28 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.e, i64 16), "nonnull"(ptr %0) ]
  %i.f = add <2 x i64> %i.d, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %i.f, ptr %i.e, align 16, !tbaa !18
  %i.g = add <2 x i64> %i.d, <i64 -2623469361688619810, i64 2262974939099578482>
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x i64> %i.g, ptr %i.h, align 16, !tbaa !18
  %i.i = add <2 x i64> %i.d, <i64 8711581037947681227, i64 2410270004345854594>
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <2 x i64> %i.i, ptr %i.j, align 16, !tbaa !18
  %i.k = add <2 x i64> %i.d, <i64 -8204357891075471176, i64 5487137525590930912>
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <2 x i64> %i.k, ptr %i.l, align 16, !tbaa !18
  %i.m = add <2 x i64> %i.d, <i64 -3818837453329782724, i64 -6688317018830679928>
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store <2 x i64> %i.m, ptr %i.n, align 16, !tbaa !18
  %i.o = add <2 x i64> %i.d, <i64 5690594596133299313, i64 -2833645246901970632>
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <2 x i64> %i.o, ptr %i.p, align 16, !tbaa !18
  %i.q = add <2 x i64> %i.d, <i64 4554437623014685352, i64 2111919702937427193>
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store <2 x i64> %i.q, ptr %i.r, align 16, !tbaa !18
  %i.s = add <2 x i64> %i.d, <i64 3556072174620004746, i64 7238261902898274248>
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store <2 x i64> %i.s, ptr %i.t, align 16, !tbaa !18
  %i.u = add <2 x i64> %i.d, <i64 -4329134394285701654, i64 -1485321483350670907>
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <2 x i64> %i.u, ptr %i.v, align 16, !tbaa !18
  %i.w = add <2 x i64> %i.d, <i64 5321830579834785047, i64 -7032137544937171245>
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store <2 x i64> %i.w, ptr %i.x, align 16, !tbaa !18
  %i.y = add <2 x i64> %i.d, <i64 -242834301215959509, i64 -3588858202114426737>
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store <2 x i64> %i.y, ptr %i.z, align 16, !tbaa !18
  %i.aa = add <2 x i64> %i.d, <i64 2883454493032893253, i64 9097354517224871855>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store <2 x i64> %i.aa, ptr %i.ab, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(192) %i.a, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #25 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = load <16 x i64>, ptr %0, align 1, !tbaa !24 ; 2 uses
  %i.c = load <16 x i64>, ptr %2, align 1, !tbaa !24 ; 2 uses
  %i.d = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.e = insertelement <8 x i64> poison, i64 %3, i64 0
  %i.f = shufflevector <8 x i64> %i.e, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = add <8 x i64> %i.d, %i.f
  %i.h = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.i = xor <8 x i64> %i.g, %i.h
  %i.j = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = sub <8 x i64> %i.j, %i.f
  %i.l = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.m = xor <8 x i64> %i.k, %i.l
  %i.n = zext <8 x i64> %i.i to <8 x i128>
  %i.o = zext <8 x i64> %i.m to <8 x i128>
  %i.p = mul nuw <8 x i128> %i.o, %i.n            ; 2 uses
  %i.q = lshr <8 x i128> %i.p, splat (i128 64)
  %i.r = xor <8 x i128> %i.q, %i.p
  %i.s = trunc <8 x i128> %i.r to <8 x i64>
  %i.t = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.s)
  %op.rdx = add i64 %i.t, %i.a                    ; 2 uses
  %i.u = trunc nuw nsw i64 %1 to i32
  %i.v = lshr i32 %i.u, 4                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 119
  %.val41 = load i64, ptr %i.x, align 1, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val40 = load i64, ptr %i.z, align 1, !tbaa !24
  %.val39 = load i64, ptr %i.y, align 1, !tbaa !24
  %i.aa = add i64 %.val39, %3
  %i.ab = xor i64 %i.aa, %.val41
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 127
  %.val38 = load i64, ptr %i.ac, align 1, !tbaa !24
  %i.ad = sub i64 %.val38, %3
  %i.ae = xor i64 %i.ad, %.val40
  %i.af = zext i64 %i.ab to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 2 uses
  %i.al = lshr i64 %op.rdx, 37
  %i.am = xor i64 %i.al, %op.rdx
  %i.an = mul i64 %i.am, 1609587791953885689      ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  %.not = icmp eq i32 %i.v, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03249 = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ]
  %.13448 = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.aq = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.13448) #32, !srcloc !280 ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -125
  %.val45 = load i64, ptr %i.as, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val44 = load i64, ptr %i.av, align 1, !tbaa !24
  %.val43 = load i64, ptr %i.au, align 1, !tbaa !24
  %i.aw = add i64 %.val43, %3
  %i.ax = xor i64 %i.aw, %.val45
  %i.ay = getelementptr i8, ptr %i.at, i64 -117
  %.val42 = load i64, ptr %i.ay, align 1, !tbaa !24
  %i.az = sub i64 %.val42, %3
  %i.ba = xor i64 %i.az, %.val44
  %i.bb = zext i64 %i.ax to i128
  %i.bc = zext i64 %i.ba to i128
  %i.bd = mul nuw i128 %i.bc, %i.bb               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = xor i128 %i.be, %i.bd
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = add i64 %.03249, %i.bg                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.134.lcssa = phi i64 [ %i.ap, %bb.a ], [ %i.aq, %.lr.ph ]
  %.032.lcssa = phi i64 [ %i.ak, %bb.a ], [ %i.bh, %.lr.ph ]
  %i.bi = add i64 %.032.lcssa, %.134.lcssa        ; 2 uses
  %i.bj = lshr i64 %i.bi, 37
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, 1609587791953885689      ; 2 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = xor i64 %i.bm, %i.bl
  ret i64 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #26

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #27 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val65 = load i64, ptr %0, align 1, !tbaa !24  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val64 = load i64, ptr %i.c, align 1, !tbaa !24 ; 2 uses
  %.val63 = load i64, ptr %2, align 1, !tbaa !24
  %i.d = add i64 %.val63, %3
  %i.e = xor i64 %i.d, %.val65
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val62 = load i64, ptr %i.f, align 1, !tbaa !24
  %i.g = sub i64 %.val62, %3
  %i.h = xor i64 %i.g, %.val64
  %i.i = zext i64 %i.e to i128
  %i.j = zext i64 %i.h to i128
  %i.k = mul nuw i128 %i.j, %i.i                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %i.o = add i64 %i.a, %i.n
  %.val61 = load i64, ptr %i.b, align 1, !tbaa !24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val60 = load i64, ptr %i.p, align 1, !tbaa !24 ; 2 uses
  %i.q = add i64 %.val60, %.val61
  %i.r = xor i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val57 = load i64, ptr %i.s, align 1, !tbaa !24
  %i.t = add i64 %.val57, %3
  %i.u = xor i64 %i.t, %.val61
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val56 = load i64, ptr %i.v, align 1, !tbaa !24
  %i.w = sub i64 %.val56, %3
  %i.x = xor i64 %i.w, %.val60
  %i.y = zext i64 %i.u to i128
  %i.z = zext i64 %i.x to i128
  %i.aa = mul nuw i128 %i.z, %i.y                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = add i64 %.val64, %.val65
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val65.1 = load i64, ptr %i.ag, align 1, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val64.1 = load i64, ptr %i.aj, align 1, !tbaa !24 ; 2 uses
  %.val63.1 = load i64, ptr %i.ai, align 1, !tbaa !24
  %i.ak = add i64 %.val63.1, %3
  %i.al = xor i64 %i.ak, %.val65.1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val62.1 = load i64, ptr %i.am, align 1, !tbaa !24
  %i.an = sub i64 %.val62.1, %3
  %i.ao = xor i64 %i.an, %.val64.1
  %i.ap = zext i64 %i.al to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %i.av = add i64 %i.r, %i.au
  %.val61.1 = load i64, ptr %i.ah, align 1, !tbaa !24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val60.1 = load i64, ptr %i.aw, align 1, !tbaa !24 ; 2 uses
  %i.ax = add i64 %.val60.1, %.val61.1
  %i.ay = xor i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val57.1 = load i64, ptr %i.az, align 1, !tbaa !24
  %i.ba = add i64 %.val57.1, %3
  %i.bb = xor i64 %i.ba, %.val61.1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val56.1 = load i64, ptr %i.bc, align 1, !tbaa !24
  %i.bd = sub i64 %.val56.1, %3
  %i.be = xor i64 %i.bd, %.val60.1
  %i.bf = zext i64 %i.bb to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  %i.bl = add i64 %i.af, %i.bk
  %i.bm = add i64 %.val64.1, %.val65.1
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_1
