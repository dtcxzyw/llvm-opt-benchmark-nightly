Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.14?download=true
inline.NumInlined: 1346
inline.NumDeleted: 576
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives:bb.a
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !2947
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2947
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !2947
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2947
  call void @_RINvXs2j_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_2ty4TypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !2950
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2950
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2950 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2950
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !2950, !noundef !3
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2950, !noundef !3
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 39755913951960241) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 232
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 232 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 224
  tail call void @_RINvXs2j_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_2ty4TypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_RINvXsdZ_NtCshMFl0SviwmK_3syn5tokenNtB7_5CommaNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 32025597350190194) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 288
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 288 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 280
  tail call void @_RINvXs5_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBa_2ty9BareFnArgNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_RINvXsdZ_NtCshMFl0SviwmK_3syn5tokenNtB7_5CommaNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBz_5token5CommaE11rotate_leftCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 39755913951960241) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [232 x i8], align 8               ; 10 uses
  %i.d = alloca [232 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 11 uses
  %i.f = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %2 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -39755913951960240, 39755913951960241) %i.e, i64 range(i64 -39755913951960240, 39755913951960241) %2)
  %i.i = icmp samesign ult i64 %..i, 2
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %i.e, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %i.e, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.j, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.j, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %i.e
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %2      ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.o, i64 232, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %i.e
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.q, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.q, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %i.e
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %2          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.o, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.e, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %i.e ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %2, 232                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %i.e, 232
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %i.e, 232                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %2, 232
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBz_5token5CommaE12rotate_rightCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 39755913951960241) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [232 x i8], align 8               ; 10 uses
  %i.d = alloca [232 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 9 uses
  %i.f = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp eq i64 %1, %2
  %i.h = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -39755913951960240, 39755913951960241) %2, i64 range(i64 -39755913951960240, 39755913951960241) %i.e)
  %i.i = icmp samesign ult i64 %..i, 2
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %2, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %2, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.j, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.j, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.e
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %2
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %i.e    ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.o, i64 232, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %2
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.q, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.q, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.e
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %2
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %i.e        ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.o, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %2, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %2 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %i.e, 232                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %2, 232
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %2, 232                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %i.e, 232
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBz_5token5CommaE11rotate_leftCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 32025597350190194) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [288 x i8], align 8               ; 4 uses
  %i.b = alloca [288 x i8], align 8               ; 10 uses
  %i.c = alloca [288 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %1, %2                   ; 6 uses
  %i.e = icmp eq i64 %2, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %0, i64 288, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.d
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.i ], [ %i.d, %bb.d ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.i, %bb.i ], [ %i.d, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.f
  %.sroa.06.0.i.i = phi i64 [ %i.h, %bb.f ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.c, ptr noundef nonnull align 8 dereferenceable(288) %i.g, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.g, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.c, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %.sroa.06.0.i.i, %i.d
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.i = sub nuw nsw i64 %.sroa.06.0.i.i, %2      ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  %i.k = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.k, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.i:                                             ; preds = %bb.g
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.sroa.020.029.i.i = phi i64 [ %i.r, %bb.m ], [ 1, %bb.h ] ; 4 uses
  %i.l = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.l, i64 288, i1 false)
  %i.m = add i64 %.sroa.020.029.i.i, %i.d
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %i.n, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.n, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.a, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2
  br i1 %.not28.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = add nuw nsw i64 %.sroa.06.2.i.i, %i.d
  br label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.p = sub nuw i64 %.sroa.06.2.i.i, %2          ; 2 uses
  %i.q = icmp eq i64 %i.p, %.sroa.020.029.i.i
  br i1 %i.q, label %bb.m, label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k
  %.sroa.06.2.i.i.be = phi i64 [ %i.p, %bb.l ], [ %i.o, %bb.k ]
  br label %bb.j

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.l, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  %i.r = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBz_5token5CommaE12rotate_rightCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 32025597350190194) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [288 x i8], align 8               ; 4 uses
  %i.b = alloca [288 x i8], align 8               ; 10 uses
  %i.c = alloca [288 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %1, %2                   ; 4 uses
  %i.e = icmp eq i64 %1, %2
  %i.f = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %0, i64 288, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.d
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.i ], [ %2, %bb.d ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.i, %bb.i ], [ %2, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.f
  %.sroa.06.0.i.i = phi i64 [ %i.h, %bb.f ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.c, ptr noundef nonnull align 8 dereferenceable(288) %i.g, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.g, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.c, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.d
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %.sroa.06.0.i.i, %2
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.i = sub nuw nsw i64 %.sroa.06.0.i.i, %i.d    ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  %i.k = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.k, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.i:                                             ; preds = %bb.g
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.sroa.020.029.i.i = phi i64 [ %i.r, %bb.m ], [ 1, %bb.h ] ; 4 uses
  %i.l = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.l, i64 288, i1 false)
  %i.m = add i64 %.sroa.020.029.i.i, %2
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %i.n, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.n, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.a, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.d
  br i1 %.not28.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = add nuw nsw i64 %.sroa.06.2.i.i, %2
  br label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.p = sub nuw i64 %.sroa.06.2.i.i, %i.d        ; 2 uses
  %i.q = icmp eq i64 %i.p, %.sroa.020.029.i.i
  br i1 %i.q, label %bb.m, label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k
  %.sroa.06.2.i.i.be = phi i64 [ %i.p, %bb.l ], [ %i.o, %bb.k ]
  br label %bb.j

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.l, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  %i.r = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtCs6pwnnryCZqF_25diesel_table_macro_syntax9ColumnDefNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtCsf5uYjtxkodL_11proc_macro25IdentNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_2ty8TypePathNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4attr4MetaNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data5FieldNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data7VariantNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4path4PathNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_8generics12GenericParamNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_8lifetime8LifetimeNtNtB4_5token4PlusEE3newCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB4_5token5CommaEE3newB1g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 72057594037927936) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4attr9AttributeE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 8
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 74382032555280451) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4expr3ArmE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 248
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 52405522936674863) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4item11ForeignItemE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 52405522936674863) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4item4ItemE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 31160040665049919) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4item8ImplItemE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 592
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 32940614417338486) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4item9TraitItemE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 560
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 52405522936674863) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCshMFl0SviwmK_3syn4stmt4StmtE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrownNtNtCshMFl0SviwmK_3syn2ty4TypeINtB2_10EquivalentBq_E10equivalentCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4M_NtNtCshMFl0SviwmK_3syn3gen2eqNtNtBa_2ty4TypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCsa66IwKi6YE3_5quote14ident_fragmentRNtCsf5uYjtxkodL_11proc_macro25IdentNtB2_13IdentFragment3fmtCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !365, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCsa66IwKi6YE3_5quote14ident_fragmentNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_13IdentFragment3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}
end_hunk_0
