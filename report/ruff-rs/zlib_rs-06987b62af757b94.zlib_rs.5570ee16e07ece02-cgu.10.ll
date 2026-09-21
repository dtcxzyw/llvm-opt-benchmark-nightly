Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-06987b62af757b94.zlib_rs.5570ee16e07ece02-cgu.10?download=true
inline.NumInlined: 112
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCs7kNFBubu20U_7zlib_rs7adler327adler32:bb.a
  br i1 %.not20, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7: ; preds = %.split19, %bb.a, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  %i.s = tail call noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic12adler32_rust(i32 noundef %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.h

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread: ; preds = %.split19, %bb.a, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  %i.t = load atomic i32, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !55
  switch i32 %i.t, label %bb.e [
    i32 0, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i
    i32 1, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2.exit
  ]

bb.e:                                             ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread
  %i.u = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !55 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.split.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i, !prof !6

.split.i:                                         ; preds = %bb.e
  %i.w = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize(), !noalias !55
  %i.x = and i128 %i.w, 32768
  %.not11.i = icmp eq i128 %i.x, 0
  br i1 %.not11.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.f

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i: ; preds = %bb.e
  %i.y = and i64 %i.u, 32768
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i, %.split.i
  %i.z = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !55 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.split5.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i, !prof !6

.split5.i:                                        ; preds = %bb.f
  %i.ab = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize(), !noalias !55
  %i.ac = and i128 %i.ab, 144115188075855872
  %.not13.i = icmp eq i128 %i.ac, 0
  br i1 %.not13.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.g

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i: ; preds = %bb.f
  %i.ad = and i64 %i.z, 144115188075855872
  %.not12.i = icmp eq i64 %i.ad, 0
  br i1 %.not12.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i, %.split5.i
  %i.ae = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !55 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.split16.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, !prof !6

.split16.i:                                       ; preds = %bb.g
  %i.ag = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize(), !noalias !55
  %i.ah = and i128 %i.ag, 288230376151711744      ; 2 uses
  %.not19.i = icmp eq i128 %i.ah, 0
  %.lobit18.i = lshr exact i128 %i.ah, 58
  %i.ai = trunc nuw nsw i128 %.lobit18.i to i32
  store atomic i32 %i.ai, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !55
  br i1 %.not19.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2.exit, !prof !56

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i: ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i, %.split5.i, %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i, %.split.i
  store atomic i32 0, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !55
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i: ; preds = %bb.g
  %i.aj = and i64 %i.ae, 288230376151711744       ; 2 uses
  %.not17.i = icmp eq i64 %i.aj, 0
  %.lobit.i = lshr exact i64 %i.aj, 58
  %i.ak = trunc nuw nsw i64 %.lobit.i to i32
  store atomic i32 %i.ak, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !55
  br i1 %.not17.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2.exit, !prof !56

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, %.split16.i, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 65, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !55
  unreachable

_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2.exit: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread, %.split16.i, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i
  %i.al = tail call fastcc noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx217adler32_avx2_help(i32 noundef %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2.exit, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7
  %.sroa.0.0 = phi i32 [ %i.al, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2.exit ], [ %i.s, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7 ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx217adler32_avx2_help(i32 noundef %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 32               ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m256iECs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !65, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = lshr i32 %0, 16                          ; 4 uses
  %i.q = and i32 %0, 65535                        ; 4 uses
  %i.r = icmp ult i64 %i.g, 16
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.g, 32
  br i1 %i.s, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.u = icmp samesign eq i64 %i.g, 0
  br i1 %i.u, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.011.i.prol = phi i32 [ %i.y, %.lr.ph.i.prol ], [ %i.q, %.lr.ph.i.preheader ]
  %.sroa.04.010.i.prol = phi i32 [ %i.z, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ]
  %.sroa.07.09.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i.prol, i64 1 ; 2 uses
  %i.w = load i8, ptr %.sroa.07.09.i.prol, align 1, !alias.scope !66, !noundef !3
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %.sroa.0.011.i.prol, %i.x        ; 4 uses
  %i.z = add i32 %i.y, %.sroa.04.010.i.prol       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !59

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa88.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %.lcssa87.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i32 [ %i.q, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %.sroa.04.010.i.unr = phi i32 [ %i.p, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.sroa.07.09.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %i.aa = icmp ult i64 %i.g, 8
  br i1 %i.aa, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.011.i = phi i32 [ %i.bn, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.04.010.i = phi i32 [ %i.bo, %.lr.ph.i ], [ %.sroa.04.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.07.09.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.sroa.07.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 1
  %i.ac = load i8, ptr %.sroa.07.09.i, align 1, !alias.scope !66, !noundef !3
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add i32 %.sroa.0.011.i, %i.ad           ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.04.010.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 2
  %i.ah = load i8, ptr %i.ab, align 1, !alias.scope !66, !noundef !3
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 2 uses
  %i.ak = add i32 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 3
  %i.am = load i8, ptr %i.ag, align 1, !alias.scope !66, !noundef !3
  %i.an = zext i8 %i.am to i32
  %i.ao = add i32 %i.aj, %i.an                    ; 2 uses
  %i.ap = add i32 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 4
  %i.ar = load i8, ptr %i.al, align 1, !alias.scope !66, !noundef !3
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.ao, %i.as                    ; 2 uses
  %i.au = add i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 5
  %i.aw = load i8, ptr %i.aq, align 1, !alias.scope !66, !noundef !3
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %i.at, %i.ax                    ; 2 uses
  %i.az = add i32 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 6
  %i.bb = load i8, ptr %i.av, align 1, !alias.scope !66, !noundef !3
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = add i32 %i.bd, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 7
  %i.bg = load i8, ptr %i.ba, align 1, !alias.scope !66, !noundef !3
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add i32 %i.bd, %i.bh                    ; 2 uses
  %i.bj = add i32 %i.bi, %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bf, align 1, !alias.scope !66, !noundef !3
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add i32 %i.bi, %i.bm                    ; 3 uses
  %i.bo = add i32 %i.bn, %i.bj                    ; 2 uses
  %i.bp = icmp eq ptr %i.bk, %i.t
  br i1 %i.bp, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit, label %.lr.ph.i

_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.04.0.lcssa.i = phi i32 [ %i.p, %bb.d ], [ %.lcssa87.unr, %.lr.ph.i.prol.loopexit ], [ %i.bo, %.lr.ph.i ]
  %.sroa.0.0.lcssa.i = phi i32 [ %i.q, %bb.d ], [ %.lcssa88.unr, %.lr.ph.i.prol.loopexit ], [ %i.bn, %.lr.ph.i ]
  %3 = insertelement <2 x i32> poison, i32 %.sroa.0.0.lcssa.i, i64 0
  %4 = insertelement <2 x i32> %3, i32 %.sroa.04.0.lcssa.i, i64 1
  %5 = urem <2 x i32> %4, splat (i32 65521)       ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 1
  %i.bq = shl nuw i32 %6, 16
  %7 = extractelement <2 x i32> %5, i64 0
  %i.br = or disjoint i32 %7, %i.bq
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bs = tail call noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_64(i32 noundef %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, i32 noundef %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit
  %.sroa.0.0 = phi i32 [ %i.br, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit ], [ %i.bs, %bb.e ], [ %0, %bb.c ] ; 2 uses
  %i.bt = lshr i32 %.sroa.0.0, 16                 ; 2 uses
  %i.bu = and i32 %.sroa.0.0, 65535               ; 2 uses
  %i.bv = icmp eq i64 %i.k, 0
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit
  %.sroa.09.051 = phi i32 [ %i.bu, %.lr.ph ], [ %19, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit ]
  %.sroa.015.050 = phi i32 [ %i.bt, %.lr.ph ], [ %20, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit ]
  %.sroa.536.049 = phi i64 [ %i.k, %.lr.ph ], [ %i.bz, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit ] ; 2 uses
  %.sroa.035.048 = phi ptr [ %i.i, %.lr.ph ], [ %i.by, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit ] ; 2 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.536.049, i64 173) ; 2 uses
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %.sroa.035.048, i64 %.sroa.0.0.i.i ; 2 uses
  %i.bz = sub nuw nsw i64 %.sroa.536.049, %.sroa.0.0.i.i ; 2 uses
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.09.051, i64 0
  %.sroa.0.12.vec.insert.i18.i = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.015.050, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  store ptr %.sroa.035.048, ptr %i.b, align 8, !noalias !68
  store ptr %i.by, ptr %i.bw, align 8, !noalias !68
  %i.ca = shufflevector <4 x i32> %.sroa.0.12.vec.insert.i18.i, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cb = shufflevector <4 x i32> %.sroa.0.12.vec.insert.i.i, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtBa_9core_arch3x867___m256iEENtNtNtB8_6traits8iterator8Iterator4nextCs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull sret([64 x i8]) align 32 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.cc = load i8, ptr %i.a, align 32, !range !69, !noalias !68, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.lr.ph.i24, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit

.lr.ph.i24:                                       ; preds = %bb.g, %.lr.ph.i24
  %i.ce = phi <8 x i32> [ %i.cj, %.lr.ph.i24 ], [ zeroinitializer, %bb.g ]
  %.sroa.0.071.i = phi <8 x i32> [ %i.ci, %.lr.ph.i24 ], [ %i.cb, %bb.g ] ; 2 uses
  %.sroa.023.070.i = phi <8 x i32> [ %i.cm, %.lr.ph.i24 ], [ %i.ca, %bb.g ]
  %i.cf = load <32 x i8>, ptr %i.bx, align 32, !noalias !68 ; 2 uses
  %i.cg = call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.cf, <32 x i8> zeroinitializer)
  %i.ch = bitcast <4 x i64> %i.cg to <8 x i32>
  %i.ci = add <8 x i32> %.sroa.0.071.i, %i.ch     ; 2 uses
  %i.cj = add <8 x i32> %.sroa.0.071.i, %i.ce     ; 2 uses
  %i.ck = call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.cf, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ck, <16 x i16> splat (i16 1))
  %i.cm = add <8 x i32> %i.cl, %.sroa.023.070.i   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtBa_9core_arch3x867___m256iEENtNtNtB8_6traits8iterator8Iterator4nextCs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull sret([64 x i8]) align 32 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.cn = load i8, ptr %i.a, align 32, !range !69, !noalias !68, !noundef !3
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.lr.ph.i24, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i24
  %i.cp = shl <8 x i32> %i.cj, splat (i32 5)
  br label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit

_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit: ; preds = %bb.g, %._crit_edge.loopexit.i
  %.sroa.023.0.lcssa.i = phi <8 x i32> [ %i.ca, %bb.g ], [ %i.cm, %._crit_edge.loopexit.i ]
  %.sroa.0.0.lcssa.i23 = phi <8 x i32> [ %i.cb, %bb.g ], [ %i.ci, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa.i = phi <8 x i32> [ zeroinitializer, %bb.g ], [ %i.cp, %._crit_edge.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  %i.cq = add <8 x i32> %.lcssa.i, %.sroa.023.0.lcssa.i ; 2 uses
  %i.cr = shufflevector <8 x i32> %.sroa.0.0.lcssa.i23, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %8 = shufflevector <8 x i32> %.sroa.0.0.lcssa.i23, <8 x i32> poison, <4 x i32> <i32 4, i32 6, i32 4, i32 6>
  %9 = add <4 x i32> %8, %i.cr                    ; 2 uses
  %10 = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %11 = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = add <4 x i32> %11, %10                    ; 2 uses
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %14 = add <4 x i32> %12, %13                    ; 2 uses
  %15 = shufflevector <4 x i32> %9, <4 x i32> %14, <2 x i32> <i32 1, i32 5>
  %16 = shufflevector <4 x i32> %9, <4 x i32> %14, <2 x i32> <i32 0, i32 4>
  %17 = add <2 x i32> %15, %16
  %18 = urem <2 x i32> %17, splat (i32 65521)     ; 2 uses
  %i.cs = icmp eq i64 %i.bz, 0
  %19 = extractelement <2 x i32> %18, i64 0       ; 2 uses
  %20 = extractelement <2 x i32> %18, i64 1       ; 2 uses
  br i1 %i.cs, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit, %bb.f
  %.sroa.015.0.lcssa = phi i32 [ %i.bt, %bb.f ], [ %20, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit ] ; 4 uses
  %.sroa.09.0.lcssa = phi i32 [ %i.bu, %bb.f ], [ %19, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes.exit ] ; 4 uses
  %i.ct = icmp eq i64 %i.o, 0
  br i1 %i.ct, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.cu = icmp ult i64 %i.o, 16
  br i1 %i.cu, label %bb.k, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.cv = shl nuw i32 %.sroa.015.0.lcssa, 16
  %i.cw = or disjoint i32 %.sroa.09.0.lcssa, %i.cv
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.cx = icmp ult i64 %i.o, 32
  br i1 %i.cx, label %bb.m, label %bb.l, !prof !4

bb.k:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %xtraiter89 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i25.prol.loopexit, label %.lr.ph.i25.prol

.lr.ph.i25.prol:                                  ; preds = %bb.k, %.lr.ph.i25.prol
  %.sroa.0.011.i26.prol = phi i32 [ %i.dc, %.lr.ph.i25.prol ], [ %.sroa.09.0.lcssa, %bb.k ]
  %.sroa.04.010.i27.prol = phi i32 [ %i.dd, %.lr.ph.i25.prol ], [ %.sroa.015.0.lcssa, %bb.k ]
  %.sroa.07.09.i28.prol = phi ptr [ %i.cz, %.lr.ph.i25.prol ], [ %i.m, %bb.k ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.i25.prol ], [ 0, %bb.k ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28.prol, i64 1 ; 2 uses
  %i.da = load i8, ptr %.sroa.07.09.i28.prol, align 1, !alias.scope !70, !noundef !3
  %i.db = zext i8 %i.da to i32
  %i.dc = add i32 %.sroa.0.011.i26.prol, %i.db    ; 4 uses
  %i.dd = add i32 %i.dc, %.sroa.04.010.i27.prol   ; 3 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.i25.prol.loopexit, label %.lr.ph.i25.prol, !llvm.loop !64

.lr.ph.i25.prol.loopexit:                         ; preds = %.lr.ph.i25.prol, %bb.k
  %.lcssa81.unr = phi i32 [ poison, %bb.k ], [ %i.dc, %.lr.ph.i25.prol ]
  %.lcssa.unr = phi i32 [ poison, %bb.k ], [ %i.dd, %.lr.ph.i25.prol ]
  %.sroa.0.011.i26.unr = phi i32 [ %.sroa.09.0.lcssa, %bb.k ], [ %i.dc, %.lr.ph.i25.prol ]
  %.sroa.04.010.i27.unr = phi i32 [ %.sroa.015.0.lcssa, %bb.k ], [ %i.dd, %.lr.ph.i25.prol ]
  %.sroa.07.09.i28.unr = phi ptr [ %i.m, %bb.k ], [ %i.cz, %.lr.ph.i25.prol ]
  %i.de = icmp ult i64 %i.o, 8
  br i1 %i.de, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.prol.loopexit, %.lr.ph.i25
  %.sroa.0.011.i26 = phi i32 [ %i.er, %.lr.ph.i25 ], [ %.sroa.0.011.i26.unr, %.lr.ph.i25.prol.loopexit ]
  %.sroa.04.010.i27 = phi i32 [ %i.es, %.lr.ph.i25 ], [ %.sroa.04.010.i27.unr, %.lr.ph.i25.prol.loopexit ]
  %.sroa.07.09.i28 = phi ptr [ %i.eo, %.lr.ph.i25 ], [ %.sroa.07.09.i28.unr, %.lr.ph.i25.prol.loopexit ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 1
  %i.dg = load i8, ptr %.sroa.07.09.i28, align 1, !alias.scope !70, !noundef !3
  %i.dh = zext i8 %i.dg to i32
  %i.di = add i32 %.sroa.0.011.i26, %i.dh         ; 2 uses
  %i.dj = add i32 %i.di, %.sroa.04.010.i27
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 2
  %i.dl = load i8, ptr %i.df, align 1, !alias.scope !70, !noundef !3
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add i32 %i.di, %i.dm                    ; 2 uses
  %i.do = add i32 %i.dn, %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 3
  %i.dq = load i8, ptr %i.dk, align 1, !alias.scope !70, !noundef !3
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add i32 %i.dn, %i.dr                    ; 2 uses
  %i.dt = add i32 %i.ds, %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 4
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !70, !noundef !3
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add i32 %i.ds, %i.dw                    ; 2 uses
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 5
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !70, !noundef !3
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add i32 %i.dx, %i.eb                    ; 2 uses
  %i.ed = add i32 %i.ec, %i.dy
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 6
  %i.ef = load i8, ptr %i.dz, align 1, !alias.scope !70, !noundef !3
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add i32 %i.ec, %i.eg                    ; 2 uses
  %i.ei = add i32 %i.eh, %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 7
  %i.ek = load i8, ptr %i.ee, align 1, !alias.scope !70, !noundef !3
  %i.el = zext i8 %i.ek to i32
  %i.em = add i32 %i.eh, %i.el                    ; 2 uses
  %i.en = add i32 %i.em, %i.ei
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.09.i28, i64 8 ; 2 uses
  %i.ep = load i8, ptr %i.ej, align 1, !alias.scope !70, !noundef !3
  %i.eq = zext i8 %i.ep to i32
  %i.er = add i32 %i.em, %i.eq                    ; 3 uses
  %i.es = add i32 %i.er, %i.en                    ; 2 uses
  %i.et = icmp eq ptr %i.eo, %i.cy
  br i1 %i.et, label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit31, label %.lr.ph.i25

_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit31: ; preds = %.lr.ph.i25, %.lr.ph.i25.prol.loopexit
  %.lcssa81 = phi i32 [ %.lcssa81.unr, %.lr.ph.i25.prol.loopexit ], [ %i.er, %.lr.ph.i25 ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i25.prol.loopexit ], [ %i.es, %.lr.ph.i25 ]
  %21 = insertelement <2 x i32> poison, i32 %.lcssa, i64 0
  %22 = insertelement <2 x i32> %21, i32 %.lcssa81, i64 1
  %23 = urem <2 x i32> %22, splat (i32 65521)     ; 2 uses
  %24 = extractelement <2 x i32> %23, i64 0
  %i.eu = shl nuw i32 %24, 16
  %25 = extractelement <2 x i32> %23, i64 1
  %i.ev = or disjoint i32 %i.eu, %25
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ew = call noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_64(i32 noundef %.sroa.09.0.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, i32 noundef %.sroa.015.0.lcssa)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit31, %bb.m, %bb.i
  %.sroa.05.0 = phi i32 [ %i.ew, %bb.m ], [ %i.cw, %bb.i ], [ %i.ev, %_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16.exit31 ], [ %0, %bb.a ]
  ret i32 %.sroa.05.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25616compare256_slice(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 256
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %3, 256
  br i1 %i.b, label %bb.h, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = load atomic i32, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !74
  switch i32 %i.c, label %bb.e [
    i32 0, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i
    i32 1, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.d = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !74 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.split.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i, !prof !6

.split.i:                                         ; preds = %bb.e
  %i.f = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize(), !noalias !74
  %i.g = and i128 %i.f, 32768
  %.not11.i = icmp eq i128 %i.g, 0
  br i1 %.not11.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.f

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i: ; preds = %bb.e
  %i.h = and i64 %i.d, 32768
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i, %.split.i
  %i.i = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !74 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.split5.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i, !prof !6

.split5.i:                                        ; preds = %bb.f
  %i.k = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize(), !noalias !74
  %i.l = and i128 %i.k, 144115188075855872
  %.not13.i = icmp eq i128 %i.l, 0
  br i1 %.not13.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.g

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i: ; preds = %bb.f
  %i.m = and i64 %i.i, 144115188075855872
  %.not12.i = icmp eq i64 %i.m, 0
  br i1 %.not12.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i, %.split5.i
  %i.n = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !74 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split16.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, !prof !6

.split16.i:                                       ; preds = %bb.g
  %i.p = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize(), !noalias !74
  %i.q = and i128 %i.p, 288230376151711744        ; 2 uses
  %.not19.i = icmp eq i128 %i.q, 0
  %.lobit18.i = lshr exact i128 %i.q, 58
  %i.r = trunc nuw nsw i128 %.lobit18.i to i32
  store atomic i32 %i.r, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !74
  br i1 %.not19.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i: ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2.i, %.split5.i, %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i, %.split.i
  store atomic i32 0, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !74
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i: ; preds = %bb.g
  %i.s = and i64 %i.n, 288230376151711744         ; 2 uses
  %.not17.i = icmp eq i64 %i.s, 0
  %.lobit.i = lshr exact i64 %i.s, 58
  %i.t = trunc nuw nsw i64 %.lobit.i to i32
  store atomic i32 %i.t, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4, !noalias !74
  br i1 %.not17.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9.i, %.split16.i, %bb.d
  %i.u = tail call noundef i64 @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare2564rust10compare256(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %2)
  br label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25610compare256.exit

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.i, %.split16.i, %bb.d
  %i.v = tail call noundef i64 @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare2564avx210compare256(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %2)
  br label %_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25610compare256.exit

_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25610compare256.exit: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i
  %.sroa.0.0.i = phi i64 [ %i.v, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread.i ], [ %i.u, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7.i ]
  ret i64 %.sroa.0.0.i

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25620compare256_rle_slice(i8 noundef %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare2564rust14compare256_rle(i8 noundef %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash10slide_hash(ptr noalias nofree noundef readonly align 64 captures(none) dereferenceable(3136) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = trunc i64 %i.b to i16                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 16, !noundef !3
  tail call fastcc void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash16slide_hash_chain(ptr noalias noundef nonnull align 2 %i.e, i64 noundef 65536, i16 noundef %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 64, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  tail call fastcc void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash16slide_hash_chain(ptr noalias noundef nonnull align 2 %i.g, i64 noundef %i.i, i16 noundef %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash16slide_hash_chain(ptr noalias noundef nonnull align 2 %0, i64 noundef range(i64 0, 4611686018427387904) %1, i16 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4
  switch i32 %i.a, label %bb.b [
    i32 0, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7
    i32 1, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.split, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit, !prof !6

.split:                                           ; preds = %bb.b
  %i.d = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize()
  %i.e = and i128 %i.d, 32768
  %.not11 = icmp eq i128 %i.e, 0
  br i1 %.not11, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9, label %bb.c

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.f = and i64 %i.b, 32768
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9, label %bb.c

bb.c:                                             ; preds = %.split, %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit
  %i.g = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.split5, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2, !prof !6

.split5:                                          ; preds = %bb.c
  %i.i = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize()
  %i.j = and i128 %i.i, 144115188075855872
  %.not13 = icmp eq i128 %i.j, 0
  br i1 %.not13, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9, label %bb.d

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2: ; preds = %bb.c
  %i.k = and i64 %i.g, 144115188075855872
  %.not12 = icmp eq i64 %i.k, 0
  br i1 %.not12, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9, label %bb.d

bb.d:                                             ; preds = %.split5, %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2
  %i.l = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.split16, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit, !prof !6

.split16:                                         ; preds = %bb.d
  %i.n = tail call noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize()
  %i.o = and i128 %i.n, 288230376151711744        ; 2 uses
  %.not19 = icmp eq i128 %i.o, 0
  %.lobit18 = lshr exact i128 %i.o, 58
  %i.p = trunc nuw nsw i128 %.lobit18 to i32
  store atomic i32 %i.p, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4
  br i1 %.not19, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9: ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit2, %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit, %.split, %.split5
  store atomic i32 0, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit: ; preds = %bb.d
  %i.q = and i64 %i.l, 288230376151711744         ; 2 uses
  %.not17 = icmp eq i64 %i.q, 0
  %.lobit = lshr exact i64 %i.q, 58
  %i.r = trunc nuw nsw i64 %.lobit to i32
  store atomic i32 %i.r, ptr @_RNvNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi25CACHE monotonic, align 4
  br i1 %.not17, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7, label %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7: ; preds = %.split16, %bb.a, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread9, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  tail call void @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash4rust16slide_hash_chain(ptr noalias noundef nonnull align 2 %0, i64 noundef %1, i16 noundef %2)
  br label %bb.e

_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread: ; preds = %.split16, %bb.a, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit
  tail call void @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash4avx216slide_hash_chain(ptr noalias noundef nonnull align 2 %0, i64 noundef %1, i16 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread, %_RNvNtCs7kNFBubu20U_7zlib_rs12cpu_features24is_enabled_avx2_and_bmi2.exit.thread7
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7kNFBubu20U_7zlib_rs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !75, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7kNFBubu20U_7zlib_rs, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7kNFBubu20U_7zlib_rs.20, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs7kNFBubu20U_7zlib_rs(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvNtNtCs7kNFBubu20U_7zlib_rs5crc325braid11crc32_braidKj5_EB6_(i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs7kNFBubu20U_7zlib_rs5crc329pclmulqdqNtB2_11Accumulator4fold(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMNtNtCs7kNFBubu20U_7zlib_rs5crc329pclmulqdqNtB2_11Accumulator6finish(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs7kNFBubu20U_7zlib_rs5crc329pclmulqdqNtB2_11Accumulator9fold_copy(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic12adler32_rust(i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtBa_9core_arch3x867___m256iEENtNtNtB8_6traits8iterator8Iterator4nextCs7kNFBubu20U_7zlib_rs(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 32 captures(none) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m256iECs7kNFBubu20U_7zlib_rs(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_64(i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare2564rust10compare256(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare2564avx210compare256(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256)) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare2564rust14compare256_rle(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash4rust16slide_hash_chain(ptr noalias noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i16 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCs7kNFBubu20U_7zlib_rs7deflate10slide_hash4avx216slide_hash_chain(ptr noalias noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), i16 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+bmi2,+bmi" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+pclmul,+sse,+sse2,+sse,+sse2,+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", i32 4001, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 4001, i32 4000000}
!8 = distinct !{!8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs7kNFBubu20U_7zlib_rs"}
!9 = distinct !{!9, !8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs7kNFBubu20U_7zlib_rs: argument 0"}
!10 = distinct !{!10, !8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs7kNFBubu20U_7zlib_rs: argument 1"}
!11 = distinct !{!11, !"LVerDomain"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !22, !23}
!15 = distinct !{!15, !8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs7kNFBubu20U_7zlib_rs: argument 0:It1"}
!16 = distinct !{!16, !8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs7kNFBubu20U_7zlib_rs: argument 1:It1"}
!17 = distinct !{!17, !22}
!18 = !{!9}
!19 = !{!10}
!20 = !{!9, !12}
!21 = !{!10, !13}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!15}
!25 = !{!16}
!26 = distinct !{!26, !"_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window4size"}
!27 = distinct !{!27, !26, !"_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window4size: argument 0"}
!28 = distinct !{!28, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold"}
!29 = distinct !{!29, !28, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold: argument 0"}
!30 = distinct !{!30, !28, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold: argument 1"}
!31 = !{!27}
!32 = !{!29}
!33 = !{!29, !30}
!34 = !{!30}
!35 = distinct !{!35, !"_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window4size"}
!36 = distinct !{!36, !35, !"_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window4size: argument 0"}
!37 = !{!36}
!38 = distinct !{!38, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold"}
!39 = distinct !{!39, !38, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold: argument 0"}
!40 = distinct !{!40, !38, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold: argument 1"}
!41 = !{!39}
!42 = !{!39, !40}
!43 = !{!40}
!44 = distinct !{!44, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold"}
!45 = distinct !{!45, !44, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold: argument 0"}
!46 = distinct !{!46, !44, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold: argument 1"}
!47 = distinct !{!47, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold6finish"}
!48 = distinct !{!48, !47, !"_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold6finish: argument 0"}
!49 = !{!45}
!50 = !{!45, !46}
!51 = !{!46}
!52 = !{!48}
!53 = distinct !{!53, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2"}
!54 = distinct !{!54, !53, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx212adler32_avx2: argument 0"}
!55 = !{!54}
!56 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!57 = distinct !{!57, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16"}
!58 = distinct !{!58, !57, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16: argument 0"}
!59 = distinct !{!59, !67}
!60 = distinct !{!60, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes"}
!61 = distinct !{!61, !60, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler324avx215helper_32_bytes: argument 0"}
!62 = distinct !{!62, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16"}
!63 = distinct !{!63, !62, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7adler327generic14adler32_len_16: argument 0"}
!64 = distinct !{!64, !67}
!65 = !{i64 32}
!66 = !{!58}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!61}
!69 = !{i8 0, i8 2}
!70 = !{!63}
!71 = distinct !{!71, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25610compare256"}
!72 = distinct !{!72, !71, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25610compare256: argument 1"}
!73 = distinct !{!73, !71, !"_RNvNtNtCs7kNFBubu20U_7zlib_rs7deflate10compare25610compare256: argument 0"}
!74 = !{!73, !72}
!75 = !{i8 0, i8 6}
end_hunk_0
