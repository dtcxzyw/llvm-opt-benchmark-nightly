Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E":bb.a
  %i.x = urem i32 %i.w, 146097
  %i.y = or i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 2939745           ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = udiv i32 %i.ab, 11758980
  %i.ad = mul nuw nsw i32 %i.ac, 2141
  %i.ae = add nuw nsw i32 %i.ad, 197913           ; 3 uses
  %i.af = and i32 %i.ae, 4128768
  %i.ag = icmp ugt i32 %i.ab, -696719417          ; 2 uses
  %i.ah = udiv i32 %i.w, 146097
  %i.ai = mul nuw nsw i32 %i.ah, 100
  %i.aj = lshr i64 %i.aa, 32
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = zext i1 %i.ag to i32
  %i.am = add nuw nsw i32 %i.ai, 32736
  %i.an = add nuw nsw i32 %i.am, %i.ak
  %i.ao = add nuw nsw i32 %i.an, %i.al            ; 2 uses
  %.lhs.trunc.i.i.i = trunc i32 %i.ae to i16
  %i.ap = udiv i16 %.lhs.trunc.i.i.i, 2141
  %.zext.i.i.i = zext nneg i16 %i.ap to i32
  %.sroa.3.0.insert.ext.i.i.i = shl nuw nsw i32 %.zext.i.i.i, 24
  %.sroa.3.0.insert.shift.i.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i.i, 16777216
  %i.aq = add nuw nsw i32 %i.af, 15990784
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.ag, i32 %i.aq, i32 %i.ae
  %.sroa.2.0.insert.shift.i.i.i = and i32 %.sroa.2.0.insert.ext.i.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = and i32 %i.ao, 65535
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.032.0.extract.trunc.i.i = trunc i32 %i.ao to i16
  %.not.i.i = icmp eq i16 %2, %.sroa.032.0.extract.trunc.i.i
  br i1 %.not.i.i, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !10794, !noundef !11 ; 3 uses
  %or.cond.i24.i = icmp ult i8 %i.as, 7
  br i1 %or.cond.i24.i, label %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @407, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #45, !noalias !10794
  unreachable

_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = load i8, ptr %i.at, align 2, !alias.scope !10794, !noundef !11 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !10794, !noundef !11
  %i.ax = icmp eq i8 %i.as, 0
  %i.ay = select i1 %i.ax, i8 7, i8 %i.as
  %i.az = icmp eq i8 %i.au, 5
  %.22.i = select i1 %i.az, i8 -1, i8 %i.au
  %i.ba = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %2, i8 %i.aw, i8 noundef %.22.i, i8 noundef %i.ay) ; 2 uses
  %.sroa.02.2.extract.shift.i25.i = lshr i48 %i.ba, 16
  %.sroa.02.2.extract.trunc.i26.i = trunc nuw i48 %.sroa.02.2.extract.shift.i25.i to i32 ; 2 uses
  %i.bb = trunc i48 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", !prof !23

bb.h:                                             ; preds = %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10796
  store i32 %.sroa.02.2.extract.trunc.i26.i, ptr %i.a, align 4, !noalias !10796
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @419, i64 noundef 25, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #45, !noalias !10794
  unreachable

"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit": ; preds = %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, %bb.b
  %.sroa.5.0.i = phi i32 [ %.sroa.02.2.extract.trunc.i.i, %bb.b ], [ %.sroa.02.2.extract.trunc.i26.i, %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i ], [ %.sroa.0.0.insert.insert.i.i.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.5.0.i, ptr %i.c, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !11
  %i.be = sub i32 %i.bd, %3                       ; 3 uses
  %i.bf = sdiv i32 %i.be, 86400
  %i.bg = srem i32 %i.be, 86400                   ; 3 uses
  %.lobit.i = ashr i32 %i.bg, 31
  %.sroa.0.0.i47 = add nsw i32 %.lobit.i, %i.bf
  %i.bh = icmp slt i32 %i.bg, 0
  %i.bi = select i1 %i.bh, i32 86400, i32 0
  %spec.select.i = add nsw i32 %i.bi, %i.bg       ; 3 uses
  %i.bj = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, i32 noundef %.sroa.0.0.i47) ; 2 uses
  %.sroa.043.2.extract.shift = lshr i48 %i.bj, 16 ; 2 uses
  %.sroa.043.2.extract.trunc = trunc i48 %.sroa.043.2.extract.shift to i16 ; 2 uses
  %i.bk = trunc i48 %i.bj to i1
  br i1 %i.bk, label %bb.i, label %bb.j

.critedge:                                        ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, %bb.d, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 12, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 31, ptr %.sroa.518.0..sroa_idx, align 1
  store i64 16671994596215295, ptr %0, align 4
  br label %bb.s

bb.i:                                             ; preds = %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit"
  %i.bm = icmp slt i32 %i.be, 0                   ; 3 uses
  %.sink50 = select i1 %i.bm, i8 1, i8 12
  %.sink = select i1 %i.bm, i8 1, i8 31
  %storemerge = select i1 %i.bm, i64 0, i64 16671994596215295
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sink50, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sink, ptr %i.bp, align 1
  store i64 %storemerge, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.j:                                             ; preds = %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit"
  %i.bq = icmp sgt i16 %2, %.sroa.043.2.extract.trunc
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = icmp slt i16 %2, %.sroa.043.2.extract.trunc
  br i1 %i.br, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bs, align 4
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %.sroa.426.0..sroa_idx, align 2
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %.sroa.527.0..sroa_idx, align 1
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bt = icmp eq i32 %spec.select.i, 0
  br i1 %i.bt, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bu, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 12, ptr %.sroa.429.0..sroa_idx, align 2
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 31, ptr %.sroa.530.0..sroa_idx, align 1
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bv = udiv i32 %spec.select.i, 3600           ; 2 uses
  %i.bw = urem i32 %spec.select.i, 3600           ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.q
  %.sroa.438.0.shrunk = phi i32 [ 0, %bb.m ], [ %i.bv, %bb.o ], [ %i.bv, %bb.q ]
  %.sroa.640.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.o ], [ %i.cg, %bb.q ]
  %.sroa.438.0.insert.ext = zext nneg i32 %.sroa.438.0.shrunk to i64
  %.sroa.438.0.insert.shift = shl nuw nsw i64 %.sroa.438.0.insert.ext, 32
  %.sroa.438.0.insert.insert = or i64 %.sroa.438.0.insert.shift, %.sroa.640.0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = trunc nuw i48 %.sroa.043.2.extract.shift to i32
  store i32 %i.bz, ptr %i.by, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.lhs.trunc = trunc nuw nsw i32 %i.bw to i16    ; 2 uses
  %i.ca = udiv i16 %.lhs.trunc, 60
  %i.cb = urem i16 %.lhs.trunc, 60
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 48
  %i.ce = zext nneg i16 %i.ca to i64
  %i.cf = shl nuw nsw i64 %i.ce, 40
  %i.cg = or disjoint i64 %i.cd, %i.cf
  br label %bb.p

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.l
  %.sink54 = phi i64 [ 16671994596215295, %bb.n ], [ %.sroa.438.0.insert.insert, %bb.p ], [ 0, %bb.l ]
  store i64 %.sink54, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.i, %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$12dst_info_utc17h101cfcbe0fba22f5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(88) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 10 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %1, align 4, !range !27, !noundef !11
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !noundef !11 ; 3 uses
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, i16 noundef %2, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 4, !noundef !11
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f, i16 noundef %2, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load <8 x i8>, ptr %i.i, align 4
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x i8> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.m = load i8, ptr %i.l, align 2
  %.fr31 = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr31, 0
  %i.o = load i32, ptr %i.b, align 8
  %i.p = icmp eq i32 %i.o, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.q = icmp eq i32 %.fr.scalar, 16842752
  %op.rdx = and i1 %i.q, %i.n
  %op.rdx29 = select i1 %op.rdx, i1 %i.p, i1 false
  br i1 %op.rdx29, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit, %bb.b, %bb.j
  store ptr %1, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 4, !noundef !11
  %i.t = sext i8 %i.s to i32
  %i.u = mul nsw i32 %i.t, 3600
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = load i8, ptr %i.v, align 1, !noundef !11
  %i.x = sext i8 %i.w to i32
  %i.y = mul nsw i32 %i.x, 60
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = load i8, ptr %i.aa, align 2, !noundef !11
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 %i.e) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %bb.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i1 } %i.ae, 0       ; 2 uses
  %i.ah = sdiv i32 %i.ag, 86400
  %i.ai = srem i32 %i.ag, 86400
  %.lobit.i.i.i = ashr i32 %i.ai, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.aj, i32 noundef %.sroa.0.0.i.i.i) ; 2 uses
  %i.al = trunc i48 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.050.2.extract.shift.i.i = lshr i48 %i.ak, 16
  %.sroa.050.2.extract.trunc.i.i = trunc i48 %.sroa.050.2.extract.shift.i.i to i16
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.am = icmp slt i32 %i.e, 0
  %spec.select = select i1 %i.am, i16 -9999, i16 9999
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit: ; preds = %bb.i, %bb.h
  %.sroa.6.0 = phi i16 [ %spec.select, %bb.i ], [ %.sroa.050.2.extract.trunc.i.i, %bb.h ]
  %.not24 = icmp eq i16 %2, %.sroa.6.0
  br i1 %.not24, label %bb.e, label %bb.j

bb.j:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit
  store i64 16671994596215295, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %2, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 12, ptr %.sroa.520.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 31, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$12dst_info_utc17h1b84b21fa39b3a96E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 10 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %1, align 8, !range !27, !noundef !11
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !noundef !11 ; 3 uses
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, i16 noundef %2, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !noundef !11
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f, i16 noundef %2, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load <8 x i8>, ptr %i.i, align 4
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x i8> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.m = load i8, ptr %i.l, align 2
  %.fr31 = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr31, 0
  %i.o = load i32, ptr %i.b, align 8
  %i.p = icmp eq i32 %i.o, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.q = icmp eq i32 %.fr.scalar, 16842752
  %op.rdx = and i1 %i.q, %i.n
  %op.rdx29 = select i1 %op.rdx, i1 %i.p, i1 false
  br i1 %op.rdx29, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit, %bb.b, %bb.j
  store ptr %1, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 4, !noundef !11
  %i.t = sext i8 %i.s to i32
  %i.u = mul nsw i32 %i.t, 3600
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = load i8, ptr %i.v, align 1, !noundef !11
  %i.x = sext i8 %i.w to i32
  %i.y = mul nsw i32 %i.x, 60
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = load i8, ptr %i.aa, align 2, !noundef !11
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 %i.e) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %bb.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i1 } %i.ae, 0       ; 2 uses
  %i.ah = sdiv i32 %i.ag, 86400
  %i.ai = srem i32 %i.ag, 86400
  %.lobit.i.i.i = ashr i32 %i.ai, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.aj, i32 noundef %.sroa.0.0.i.i.i) ; 2 uses
  %i.al = trunc i48 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.050.2.extract.shift.i.i = lshr i48 %i.ak, 16
  %.sroa.050.2.extract.trunc.i.i = trunc i48 %.sroa.050.2.extract.shift.i.i to i16
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.am = icmp slt i32 %i.e, 0
  %spec.select = select i1 %i.am, i16 -9999, i16 9999
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit: ; preds = %bb.i, %bb.h
  %.sroa.6.0 = phi i16 [ %spec.select, %bb.i ], [ %.sroa.050.2.extract.trunc.i.i, %bb.h ]
  %.not24 = icmp eq i16 %2, %.sroa.6.0
  br i1 %.not24, label %bb.e, label %bb.j

bb.j:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit
  store i64 16671994596215295, ptr %i.a, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %2, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 12, ptr %.sroa.520.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 31, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$14to_offset_info17h30177cee0e11fe41E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(88) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !noundef !11 ; 2 uses
  %i.k = load i8, ptr %1, align 4, !range !27, !noundef !11
  %.not = icmp eq i8 %i.k, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = add i64 %2, 378683424000                 ; 2 uses
  %i.m = udiv i64 %i.l, 86400
  %i.n = trunc i64 %i.m to i32                    ; 4 uses
  %i.o = urem i64 %i.l, 86400                     ; 3 uses
  %i.p = icmp slt i32 %3, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = add nsw i32 %3, 1000000000               ; 2 uses
  br i1 %.not.i, label %.thread44.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.05.0.i = phi i32 [ %i.q, %bb.e ], [ %3, %bb.b ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.t, %bb.e ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.r, label %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit, label %bb.f

.thread44.i:                                      ; preds = %bb.c
  %i.s = add i32 %i.n, -1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = add nsw i64 %i.o, -1
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.u = trunc nuw nsw i64 %.sroa.0.0.i to i32    ; 2 uses
  %i.v = udiv i32 %i.u, 3600                      ; 2 uses
  %i.w = urem i32 %i.u, 3600                      ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread44.i
  %i.y = phi i32 [ 3599, %.thread44.i ], [ %i.w, %bb.f ]
  %i.z = phi i32 [ 23, %.thread44.i ], [ %i.v, %bb.f ]
  %.sroa.09.03949.i = phi i32 [ %i.s, %.thread44.i ], [ %i.n, %bb.f ]
  %.sroa.05.04148.i = phi i32 [ %i.q, %.thread44.i ], [ %.sroa.05.0.i, %bb.f ]
  %.lhs.trunc.i = trunc nuw nsw i32 %i.y to i16   ; 2 uses
  %i.aa = udiv i16 %.lhs.trunc.i, 60
  %i.ab = shl nuw nsw i16 %i.aa, 8
  %.sroa.426.5.insert.shift.i = zext nneg i16 %i.ab to i32
  %i.ac = urem i16 %.lhs.trunc.i, 60
  %.zext33.i = zext nneg i16 %i.ac to i32
  %.sroa.426.6.insert.shift.i = shl nuw nsw i32 %.zext33.i, 16
  %i.ad = add nuw nsw i32 %i.z, %.sroa.426.5.insert.shift.i
  %.sroa.426.6.insert.insert.i = add nuw nsw i32 %i.ad, %.sroa.426.6.insert.shift.i
  br label %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit

_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.05.042.i = phi i32 [ %.sroa.05.0.i, %bb.d ], [ %.sroa.05.0.i, %bb.f ], [ %.sroa.05.04148.i, %bb.g ]
  %.sroa.09.040.i = phi i32 [ %i.n, %bb.d ], [ %i.n, %bb.f ], [ %.sroa.09.03949.i, %bb.g ]
  %.sroa.426.0.i = phi i32 [ 0, %bb.d ], [ %i.v, %bb.f ], [ %.sroa.426.6.insert.insert.i, %bb.g ]
  %i.ae = shl i32 %.sroa.09.040.i, 2
  %i.af = add i32 %i.ae, 33266051                 ; 2 uses
  %i.ag = urem i32 %i.af, 146097
  %i.ah = or i32 %i.ag, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, 2939745          ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = udiv i32 %i.ak, 11758980
  %i.am = mul nuw nsw i32 %i.al, 2141
  %i.an = add nuw nsw i32 %i.am, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.an to i16
  %i.ao = udiv i16 %.lhs.trunc.i.i, 2141
  %.zext.i.i = zext nneg i16 %i.ao to i32
  %.sroa.3.0.insert.ext.i.i = shl nuw nsw i32 %.zext.i.i, 24
  %.sroa.3.0.insert.shift.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 16777216
  %i.ap = icmp ugt i32 %i.ak, -696719417          ; 2 uses
  %i.aq = and i32 %i.an, 4128768
  %i.ar = add nuw nsw i32 %i.aq, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.ap, i32 %i.ar, i32 %i.an
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.as = udiv i32 %i.af, 146097
  %i.at = mul nuw nsw i32 %i.as, 100
  %i.au = add nuw nsw i32 %i.at, 32736
  %i.av = lshr i64 %i.aj, 32
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add nuw nsw i32 %i.au, %i.aw
  %i.ay = zext i1 %i.ap to i32
  %i.az = add nuw nsw i32 %i.ax, %i.ay            ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i32 %i.az, 65535
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.ba, align 4, !alias.scope !10823
  store i32 %.sroa.05.042.i, ptr %i.h, align 4, !alias.scope !10823
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.sroa.426.0.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !10823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bb = trunc i32 %i.az to i16
  call fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$12dst_info_utc17h101cfcbe0fba22f5E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(88) %1, i16 noundef %i.bb)
  %i.bc = load ptr, ptr %i.g, align 8, !alias.scope !10824, !noundef !11 ; 4 uses
  %.not.i12 = icmp eq ptr %i.bc, null
  br i1 %.not.i12, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit
  %i.bd = call fastcc noundef zeroext i1 @"_ZN4jiff6shared5posix21DstInfo$LT$ABBREV$GT$6in_dst17h3e5da29fca86c112E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.h), !noalias !10825
  br i1 %i.bd, label %bb.m, label %bb.q

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10828
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.bf = load i8, ptr %i.be, align 2, !alias.scope !10828, !noundef !11 ; 2 uses
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = icmp ult i8 %i.bf, 31
end_hunk_0
begin_hunk_1_@"_ZN88_$LT$jiff..shared..posix..AbbreviationDisplay$LT$S$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h946c6d7e55118aecE":bb.a
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i.i.i"
  %i.aa = icmp ne ptr %i.r, %i.a
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !12342, !noundef !11
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae            ; 2 uses
  %.not.not.i = icmp eq i32 %i.aj, 1114112
  br i1 %.not.not.i, label %bb.e, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i.i.i", %bb.d, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i.i.i"
  %i.ak = phi ptr [ %i.ab, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i" ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i.i.i" ], [ %i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i.i.i" ], [ %i.c, %bb.d ]
  %spec.select.i8.i = phi i32 [ %i.aj, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i" ], [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i.i.i" ], [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i.i.i" ], [ %i.p, %bb.d ]
  switch i32 %spec.select.i8.i, label %bb.b [
    i32 45, label %bb.f
    i32 43, label %bb.f
  ]

bb.e:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", %bb.b
  %i.al = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.i

bb.f:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"
  %i.am = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2015, i64 noundef 1)
  br i1 %i.am, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2016, i64 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.al, %bb.e ], [ true, %bb.f ], [ %i.ao, %bb.h ], [ true, %bb.g ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$jiff..shared..tzif..InconsistentPosixTimeZoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hcb82d8fa972c4673E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !22, !noundef !11
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2017, i64 noundef 145)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2018, i64 noundef 127)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2019, i64 noundef 125)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @"_ZN89_$LT$jiff..tz..db..TimeZoneNameIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h452381c815db2c71E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12347)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12347, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !12347, !nonnull !11, !noundef !11 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !12347
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !12347
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h623c27c6e26a4f1fE.exit"

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !12346
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h623c27c6e26a4f1fE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h623c27c6e26a4f1fE.exit": ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$jiff..fmt..serde..unsigned_duration..DisplayISO8601$u20$as$u20$core..fmt..Display$GT$3fmt17h3c9bd343b3edf835E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [35 x i8], align 1                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12362
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !12363, !noalias !12362
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 35, ptr %i.f, align 8, !alias.scope !12363, !noalias !12362
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !12363, !noalias !12362
  call void @_ZN4jiff3fmt8temporal7printer11SpanPrinter28print_unsigned_duration_impl17h86655651e0db6e5aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @"_ZN90_$LT$jiff..fmt..serde..unsigned_duration..DisplayISO8601$u20$as$u20$core..fmt..Display$GT$3fmt7PRINTER17h36d532b9ff2c1e77E", ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !12364
  %i.h = load ptr, ptr %i.b, align 8, !noalias !12362, !nonnull !11, !align !13, !noundef !11
  %i.i = load i16, ptr %i.g, align 8, !noalias !12362, !noundef !11
  %i.j = zext i16 %i.i to i64
  %i.k = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !12365 ; 2 uses
  br i1 %i.k, label %bb.b, label %_ZN4jiff3fmt8temporal7printer11SpanPrinter23print_unsigned_duration17h882ae63932f27b14E.exit

_ZN4jiff3fmt8temporal7printer11SpanPrinter23print_unsigned_duration17h882ae63932f27b14E.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12362
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12366
  store i8 3, ptr %i.a, align 8, !noalias !12366
  %i.l = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !12365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !12367
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4jiff3fmt8temporal7printer11SpanPrinter23print_unsigned_duration17h882ae63932f27b14E.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN90_$LT$jiff..span..Span$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..SpanFieldwise$GT$$GT$2eq17h198ead87ac68e76dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #12 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.sroa.121.0.copyload = load i16, ptr %.sroa.121.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !14, !alias.scope !12370, !noundef !11
  %i.c = icmp eq i8 %.sroa.13.0.copyload, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %.sroa.121.0.copyload, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load <4 x i32>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = load <4 x i32>, ptr %i.g, align 8
  %i.j = icmp eq <4 x i32> %i.h, %i.i
  %i.k = load i64, ptr %1, align 8
  %i.l = icmp eq i64 %.sroa.0.0.copyload, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %.sroa.4.0.copyload, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %.sroa.5.0.copyload, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %.sroa.6.0.copyload, %i.t
  %i.v = freeze <4 x i1> %i.j
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  %.fr = freeze i1 %i.l
  %op.rdx = and i1 %i.x, %.fr
  %2 = freeze i1 %i.o
  %3 = freeze i1 %i.u
  %4 = and i1 %op.rdx, %2
  %.fr32 = freeze i1 %i.r
  %op.rdx29 = and i1 %4, %.fr32
  %5 = and i1 %i.c, %3
  %i.y = select i1 %op.rdx29, i1 %5, i1 false
  %op.rdx31 = select i1 %i.y, i1 %i.f, i1 false
  br i1 %op.rdx31, label %bb.b, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !12370, !noundef !11
  %i.ab = icmp eq i64 %.sroa.7.0.copyload, %i.aa
  br label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.ab, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN90_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..Span$GT$$GT$2eq17h7704c94165e78d45E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #12 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.122.0.copyload = load i16, ptr %.sroa.122.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !14, !alias.scope !12376, !noalias !12377, !noundef !11
  %i.c = icmp eq i8 %i.b, %.sroa.13.0.copyload
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %i.e, %.sroa.122.0.copyload
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load <4 x i32>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = load <4 x i32>, ptr %i.g, align 8
  %i.j = icmp eq <4 x i32> %i.i, %i.h
  %i.k = load i64, ptr %0, align 8
  %i.l = icmp eq i64 %i.k, %.sroa.01.0.copyload
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, %.sroa.4.0.copyload
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, %.sroa.5.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, %.sroa.6.0.copyload
  %i.v = freeze <4 x i1> %i.j
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  %.fr = freeze i1 %i.l
  %op.rdx = and i1 %i.x, %.fr
  %2 = freeze i1 %i.o
  %3 = freeze i1 %i.u
  %4 = and i1 %op.rdx, %2
  %.fr33 = freeze i1 %i.r
  %op.rdx30 = and i1 %4, %.fr33
  %5 = and i1 %i.c, %3
  %i.y = select i1 %op.rdx30, i1 %5, i1 false
  %op.rdx32 = select i1 %i.y, i1 %i.f, i1 false
  br i1 %op.rdx32, label %bb.b, label %"_ZN103_$LT$$RF$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..SpanFieldwise$GT$$GT$2eq17h11fa41fb534a144dE.exit"

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !12376, !noalias !12377, !noundef !11
  %i.ab = icmp eq i64 %i.aa, %.sroa.7.0.copyload
  br label %"_ZN103_$LT$$RF$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..SpanFieldwise$GT$$GT$2eq17h11fa41fb534a144dE.exit"

"_ZN103_$LT$$RF$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..SpanFieldwise$GT$$GT$2eq17h11fa41fb534a144dE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.ab, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$12with_context28_$u7b$$u7b$closure$u7d$$u7d$17h165caa3a26d21674E"(i8 %.8.val, ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error15signed_duration111_$LT$impl$u20$core..convert..From$LT$jiff..error..signed_duration..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hb5dc971ae1ac1b34E"(i8 noundef range(i8 0, 12) %.8.val)
          to label %"_ZN78_$LT$jiff..error..signed_duration..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h74c154c23ce63b1cE.exit" unwind label %bb.b

"_ZN78_$LT$jiff..error..signed_duration..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h74c154c23ce63b1cE.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !12384
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h0d51fa50531f85dfE"(i16 range(i16 12, 2317) %0, ptr noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error3fmt4util105_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..util..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h87106a6a7216d866E"(i16 %0)
          to label %"_ZN72_$LT$jiff..error..fmt..util..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h823d642f5335a027E.exit" unwind label %bb.b

"_ZN72_$LT$jiff..error..fmt..util..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h823d642f5335a027E.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !12391
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h0d739c0868e2d96eE"(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error3fmt7rfc2822108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..rfc2822..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h01c43893d75df668E"(i24 16)
          to label %"_ZN75_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h1f320036f6a8d0eaE.exit" unwind label %bb.b

"_ZN75_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h1f320036f6a8d0eaE.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !12398
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h0dd8f6c89bebf2eaE"(i24 range(i24 21, 27) %0, ptr noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error3fmt7rfc2822108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..rfc2822..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h01c43893d75df668E"(i24 %0)
          to label %"_ZN75_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h1f320036f6a8d0eaE.exit" unwind label %bb.b

"_ZN75_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h1f320036f6a8d0eaE.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !12405
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h150bd11967dcfc61E"(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 49)
          to label %"_ZN76_$LT$jiff..error..fmt..temporal..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h041f51442e7b787dE.exit" unwind label %bb.b

"_ZN76_$LT$jiff..error..fmt..temporal..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h041f51442e7b787dE.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !12412
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

end_hunk_1
begin_hunk_2_@"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hfa4df2193c3fd19cE":bb.a
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hfad59cb7a9f0da4aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error3fmt7strtime113_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..ParseError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h1478f724f04103dbE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
          to label %"_ZN80_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$jiff..error..IntoError$GT$10into_error17h54850e29e05c1339E.exit" unwind label %bb.b

"_ZN80_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$jiff..error..IntoError$GT$10into_error17h54850e29e05c1339E.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !12804
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hfe32d6b88f5f524bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
          to label %"_ZN75_$LT$jiff..error..fmt..strtime..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17hcacd99d07fdee01aE.exit" unwind label %bb.b

"_ZN75_$LT$jiff..error..fmt..strtime..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17hcacd99d07fdee01aE.exit": ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4jiff5error5Error12context_impl17ha79408ab3118a175E(ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !12811
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.e, !inline_history !25

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46
  unreachable

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN92_$LT$jiff..fmt..serde..timestamp..nanosecond..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hb63c529b0ebe111dE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2020, i64 noundef 52)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN93_$LT$jiff..fmt..serde..span..friendly..compact..CompactSpan$u20$as$u20$core..fmt..Display$GT$3fmt17h31527d0873435aa7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [306 x i8], align 1               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12827
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !12828, !noalias !12827
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 306, ptr %i.f, align 8, !alias.scope !12828, !noalias !12827
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !12828, !noalias !12827
  call void @_ZN4jiff3fmt8friendly7printer11SpanPrinter22print_span_designators17h8a0baad01b77487dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @"_ZN93_$LT$jiff..fmt..serde..span..friendly..compact..CompactSpan$u20$as$u20$core..fmt..Display$GT$3fmt7PRINTER17h33f3448656110b3aE", ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !12829
  %i.h = load ptr, ptr %i.b, align 8, !noalias !12827, !nonnull !11, !align !13, !noundef !11
  %i.i = load i16, ptr %i.g, align 8, !noalias !12827, !noundef !11
  %i.j = zext i16 %i.i to i64
  %i.k = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !12830 ; 2 uses
  br i1 %i.k, label %bb.b, label %_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit

_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12827
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12831
  store i8 3, ptr %i.a, align 8, !noalias !12831
  %i.l = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !12830 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !12832
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN93_$LT$jiff..fmt..serde..timestamp..microsecond..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hbc57b16e795e9b43E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2021, i64 noundef 53)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN93_$LT$jiff..fmt..serde..timestamp..millisecond..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h4db1526fd74df303E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2022, i64 noundef 53)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN94_$LT$$RF$jiff..span..Span$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..SpanFieldwise$GT$$GT$2eq17h2df9ed7d5a870623E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.65.0.copyload = load i64, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.1312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %.sroa.1312.0.copyload = load i16, ptr %.sroa.1312.0..sroa_idx, align 2
  %.sroa.1413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.sroa.1413.0.copyload = load i8, ptr %.sroa.1413.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !14, !alias.scope !12835, !noundef !11
  %i.d = icmp eq i8 %.sroa.1413.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %.sroa.1312.0.copyload, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <4 x i32>, ptr %.sroa.87.0..sroa_idx, align 8
  %i.j = load <4 x i32>, ptr %i.h, align 8
  %i.k = icmp eq <4 x i32> %i.i, %i.j
  %i.l = load i64, ptr %1, align 8
  %i.m = icmp eq i64 %.sroa.02.0.copyload, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %.sroa.43.0.copyload, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %.sroa.54.0.copyload, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %.sroa.65.0.copyload, %i.u
  %i.w = freeze <4 x i1> %i.k
  %i.x = bitcast <4 x i1> %i.w to i4
  %i.y = icmp eq i4 %i.x, -1
  %.fr = freeze i1 %i.m
  %op.rdx = and i1 %i.y, %.fr
  %2 = freeze i1 %i.p
  %3 = freeze i1 %i.v
  %4 = and i1 %op.rdx, %2
  %.fr44 = freeze i1 %i.s
  %op.rdx41 = and i1 %4, %.fr44
  %5 = and i1 %i.d, %3
  %i.z = select i1 %op.rdx41, i1 %5, i1 false
  %op.rdx43 = select i1 %i.z, i1 %i.g, i1 false
  br i1 %op.rdx43, label %bb.b, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.b:                                             ; preds = %bb.a
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.76.0.copyload = load i64, ptr %.sroa.76.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !12835, !noundef !11
  %i.ac = icmp eq i64 %.sroa.76.0.copyload, %i.ab
  br label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.ac, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN96_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..CrateFeatureError$GT$$GT$4from17h2ef43b54a128a837E"(i8 noundef range(i8 0, 3) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12840
  store i64 1, ptr %i.a, align 8, !noalias !12840
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !12840
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !12840
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 7, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !12841
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !12841 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !12840

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !12840

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !12840
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !12840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12840
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN97_$LT$jiff..span..SpanRelativeTo$u20$as$u20$core..convert..From$LT$jiff..civil..date..Date$GT$$GT$4from17hfd36a5d56d259187E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 %1) unnamed_addr #3 {
bb.a:
  store i32 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %.sroa.5.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN98_$LT$jiff..fmt..serde..unsigned_duration..required..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17he7b6566f0d703ee0E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2023, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #31

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #32

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #33

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #35

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #36

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.ssub.with.overflow.i16(i16, i16) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #35

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h6f85577362b4b089E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hbc5c80a0899e469bE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h807783f8c7bd8a88E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h87b09c28c51da36cE"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hd7ec11e909e70495E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h50c0f8c81bb6c463E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_2
