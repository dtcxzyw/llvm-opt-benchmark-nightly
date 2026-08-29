Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_convert.simple_convert.e0900865a2a7146e-cgu.04?download=true
inline.NumInlined: 242
inline.NumDeleted: 124
begin_hunk_0_@_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE10read_entryCsjhlb6SMKfKY_14simple_convert:bb.a
  %.promoted = load i64, ptr %i.bi, align 8       ; 2 uses
  %.not3045 = icmp eq i64 %.promoted, 0
  br i1 %.not3045, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %_RINvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB6_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBS_5write4unit6UnitIdNtB1F_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE3getBO_ECsjhlb6SMKfKY_14simple_convert.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5
  %i.bn = load i64, ptr %i.bh, align 8, !range !168
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph46, %bb.m
  %i.bo = phi i64 [ %.promoted, %.lr.ph46 ], [ %i.bp, %bb.m ] ; 3 uses
  %i.bp = add i64 %i.bo, -1                       ; 5 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !5
  %i.bs = icmp slt i64 %i.br, %i.bm
  br i1 %i.bs, label %bb.l, label %bb.m

.loopexit:                                        ; preds = %bb.m, %_RINvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB6_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBS_5write4unit6UnitIdNtB1F_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE3getBO_ECsjhlb6SMKfKY_14simple_convert.exit.thread, %bb.l
  %i.bt = phi i64 [ %i.bo, %bb.l ], [ 0, %_RINvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB6_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBS_5write4unit6UnitIdNtB1F_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE3getBO_ECsjhlb6SMKfKY_14simple_convert.exit.thread ], [ 0, %bb.m ] ; 3 uses
  %i.bu = trunc nuw i64 %.sroa.06.0 to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.bw = load i8, ptr %i.bv, align 2, !range !58
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  store i64 1, ptr %2, align 8
  store i64 %i.bz, ptr %i.bg, align 8
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  store i64 %i.bp, ptr %i.bi, align 8
  %i.ca = icmp samesign ult i64 %i.bp, %i.bn
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp ult i64 %i.bo, 576460752303423489
  call void @llvm.assume(i1 %i.cb)
  %.not30 = icmp eq i64 %i.bp, 0
  br i1 %.not30, label %.loopexit, label %bb.k

bb.n:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTiNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitEntryIdEE8push_mutCsjhlb6SMKfKY_14simple_convert.exit, %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.48.0, ptr %i.cd, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5
  %i.cg = load i64, ptr %i.bh, align 8, !range !168, !alias.scope !230, !noundef !5
  %i.ch = icmp eq i64 %i.bt, %i.cg
  br i1 %i.ch, label %bb.p, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTiNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitEntryIdEE8push_mutCsjhlb6SMKfKY_14simple_convert.exit

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTiNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitEntryIdEE8grow_oneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #18
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTiNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitEntryIdEE8push_mutCsjhlb6SMKfKY_14simple_convert.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTiNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitEntryIdEE8push_mutCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.o, %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !230, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.bt ; 2 uses
  store i64 %i.cf, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.48.0, ptr %i.cl, align 8
  %i.cm = add i64 %i.bt, 1
  store i64 %i.cm, ptr %i.bi, align 8, !alias.scope !230
  br label %bb.n

bb.q:                                             ; preds = %bb.n, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE16convert_unit_refCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr captures(address, read_provenance) %.112.val, ptr captures(address, read_provenance) %.144.val, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.112.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.112.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE12is_in_boundsCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b, i64 noundef %1)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 91, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.144.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %.112.val, i64 80
  %i.e = load i64, ptr %i.d, align 16, !noundef !5
  %i.f = add i64 %i.e, %1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.144.val, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !233, !noalias !236, !noundef !5
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.144.val, i64 32
  %i.k = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.144.val, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !244, !noalias !245, !noundef !5 ; 2 uses
  %i.p = load ptr, ptr %.144.val, align 8, !alias.scope !244, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ai, %bb.g ]
  %.pn.i.i = phi i64 [ %i.k, %bb.d ], [ %i.aj, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.o      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !247 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.r
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.05.0.i31.i.i = phi i16 [ %i.ah, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.i, %i.w
  %i.y = and i64 %i.x, %i.o
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %i.ac = call noundef zeroext i1 @_RNvXCsiHO4aZxHxup_9hashbrownNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtB2_10EquivalentBq_E10equivalentCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !noalias !250
  br i1 %i.ac, label %_RINvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB6_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBS_5write4unit6UnitIdNtB1F_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE3getBO_ECsjhlb6SMKfKY_14simple_convert.exit, label %bb.f, !prof !229

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.g, label %select.unfold, !prof !57

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.0.i31.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.05.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.i.i, %i.ai
  br label %bb.e

bb.h:                                             ; preds = %select.unfold, %_RINvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB6_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBS_5write4unit6UnitIdNtB1F_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE3getBO_ECsjhlb6SMKfKY_14simple_convert.exit, %bb.b
  ret void

_RINvMs3_NtCsiHO4aZxHxup_9hashbrown3mapINtB6_7HashMapNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBS_5write4unit6UnitIdNtB1F_11UnitEntryIdEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE3getBO_ECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.h

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.c
  store i8 91, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_attributesCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.i32 = alloca [28 x i8], align 8        ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.i26 = alloca [28 x i8], align 8        ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.i22 = alloca [28 x i8], align 8        ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.i = alloca [28 x i8], align 8          ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 16              ; 8 uses
  %i.ap = alloca [32 x i8], align 16              ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 11 uses
  %i.ar = alloca [32 x i8], align 16              ; 4 uses
  %i.as = alloca [32 x i8], align 16              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aw, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !align !146 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !align !208 ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 41 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 90
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5754.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.6447.0..sroa_idx448.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6447.sroa.7.0..sroa.6447.0..sroa_idx448.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 89
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 480
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 248 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4834.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.6434.0..sroa_idx435.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6434.sroa.7.0..sroa.6434.0..sroa_idx435.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4805.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6411.0..sroa_idx412.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6411.sroa.7.0..sroa.6411.0..sroa_idx412.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 368 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 88 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.5.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.l, i64 29
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.k, i64 29
  %.sroa.7.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %.sroa.6400.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6400.0..sroa_idx401.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  %.sroa.8.0..sroa_idx3.i29 = getelementptr inbounds nuw i8, ptr %i.f, i64 29
  %.sroa.7.0..sroa_idx1.i30 = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %.sroa.6386.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.6386.0..sroa_idx387.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.sroa.5.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.i, i64 29
  %.sroa.8.0..sroa_idx3.i24 = getelementptr inbounds nuw i8, ptr %i.h, i64 29
  %.sroa.7.0..sroa_idx1.i25 = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %.sroa.6382.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.6382.0..sroa_idx383.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.d, i64 29
  %.sroa.8.0..sroa_idx3.i34 = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  %.sroa.7.0..sroa_idx1.i35 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.sroa.6368.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6368.0..sroa_idx369.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 376
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !5 ; 2 uses
  %.sroa.4341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4308.sroa.4.0..sroa.4308.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.60.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.4250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.de
  %.sroa.09.0294 = phi ptr [ %i.au, %.lr.ph ], [ %i.cz, %bb.de ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.09.0294, i64 48 ; 2 uses
  %i.da = getelementptr i8, ptr %.sroa.09.0294, i64 32 ; 3 uses
  %.sroa.09.0.val17 = load i16, ptr %i.da, align 16, !noundef !5
  %i.db = icmp eq i16 %.sroa.09.0.val17, 8503
  br i1 %i.db, label %bb.de, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.ba, ptr %i.aq, align 8, !noalias !260
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !260
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.0294, i64 34
  %.val634.i = load i16, ptr %i.dc, align 2, !alias.scope !258, !noalias !264, !noundef !5 ; 2 uses
  %i.dd = icmp eq i16 %.val634.i, 33
  br i1 %i.dd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !260
  call void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE5valueCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.09.0294), !noalias !265
  %i.de = load i64, ptr %i.ao, align 16, !range !89, !noalias !260, !noundef !5
  switch i64 %i.de, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.bi
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239
    i64 12, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.w
    i64 16, label %bb.ac
    i64 17, label %bb.ad
    i64 18, label %bb.ae
    i64 19, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239
    i64 20, label %bb.af
    i64 21, label %bb.ag
    i64 22, label %bb.ah
    i64 23, label %bb.ai
    i64 24, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239
    i64 25, label %bb.aj
    i64 26, label %bb.ak
    i64 27, label %bb.al
    i64 28, label %bb.am
    i64 29, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239
    i64 30, label %bb.an
    i64 31, label %bb.ao
    i64 32, label %bb.cu
    i64 33, label %bb.ap
    i64 34, label %bb.aq
    i64 35, label %bb.ar
    i64 36, label %bb.as
    i64 37, label %bb.at
    i64 38, label %bb.au
    i64 39, label %bb.av
    i64 40, label %bb.aw
    i64 41, label %bb.ax
    i64 42, label %bb.ay
    i64 43, label %bb.az
    i64 44, label %bb.ba
    i64 45, label %bb.bb
    i64 46, label %bb.be
  ]

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !260
  call void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE9raw_valueCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.09.0294), !noalias !265
  %i.df = load i64, ptr %i.ap, align 16, !range !89, !noalias !260, !noundef !5
  %i.dg = icmp eq i64 %i.df, 7
  br i1 %i.dg, label %bb.cz, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread230

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.dh = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_attributesCsjhlb6SMKfKY_14simple_convert:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !260
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i26)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !330
  %.sroa.04.0.copyload.i27 = load i32, ptr %i.bx, align 8, !alias.scope !327, !noalias !334
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_10RangeListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10raw_rangesCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, i64 noundef %i.ha, i32 noundef %.sroa.04.0.copyload.i27), !noalias !335
  %i.hb = load i8, ptr %i.cb, align 4, !range !90, !noalias !330, !noundef !5 ; 2 uses
  %i.hc = icmp eq i8 %i.hb, 2
  br i1 %i.hc, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31.thread, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31.thread: ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i26, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i26, i64 16, i1 false), !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit265

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31: ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.i26, ptr noundef nonnull align 8 dereferenceable(28) %i.g, i64 28, i1 false), !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx3.i29, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i28, i64 3, i1 false), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.i26, i64 28, i1 false), !noalias !330
  store i8 %i.hb, ptr %.sroa.7.0..sroa_idx1.i30, align 4, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i26)
  call void @_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write5range7convertNtB5_9RangeList4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %i.ba, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(512) %i.bc, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5), !noalias !337
  %.pr219 = load i64, ptr %i.ab, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hd = icmp eq i64 %.pr219, -1
  br i1 %i.hd, label %.loopexit265, label %bb.ci

bb.aj:                                            ; preds = %bb.d
  %i.he = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !260
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13ranges_offsetCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, i64 noundef %i.he), !noalias !265
  %i.hf = load i8, ptr %i.z, align 8, !range !69, !noalias !260, !noundef !5 ; 2 uses
  %.not590.i = icmp eq i8 %i.hf, -1
  br i1 %.not590.i, label %bb.ck, label %bb.cj

bb.ak:                                            ; preds = %bb.d
  %i.hg = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc177.i = trunc i64 %i.hg to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift213588.i = lshr i64 %i.hg, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc214.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift213588.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift132589.i = lshr i64 %i.hg, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc133.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift132589.i to i32
  %.sroa.47.sroa.44.0.extract.shift57.i = and i64 %i.hg, -4294967296
  br label %bb.bh

bb.al:                                            ; preds = %bb.d
  %i.hh = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !260
  call void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7get_strCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br, i64 noundef %i.hh), !noalias !265
  %i.hi = load i8, ptr %i.bu, align 8, !range !90, !noalias !260, !noundef !5
  %i.hj = icmp eq i8 %i.hi, 2
  %.sroa.0804.0.copyload.i = load ptr, ptr %i.w, align 8, !noalias !260 ; 2 uses
  %.sroa.4805.0.copyload.i = load i64, ptr %.sroa.4805.0..sroa_idx.i, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !260
  br i1 %i.hj, label %bb.cn, label %bb.cm

bb.am:                                            ; preds = %bb.d
  %i.hk = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc178.i = trunc i64 %i.hk to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift215584.i = lshr i64 %i.hk, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc216.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift215584.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift134585.i = lshr i64 %i.hk, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc135.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift134585.i to i32
  %.sroa.47.sroa.44.0.extract.shift59.i = and i64 %i.hk, -4294967296
  br label %bb.bh

bb.an:                                            ; preds = %bb.d
  %i.hl = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !260
  %i.hm = load i8, ptr %i.bo, align 1, !range !338, !alias.scope !256, !noalias !339, !noundef !5
  %i.hn = load i64, ptr %i.bp, align 16, !alias.scope !256, !noalias !339, !noundef !5
  call void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read3strINtB5_15DebugStrOffsetsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE14get_str_offsetCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn, i8 noundef %i.hm, i64 noundef %i.hn, i64 noundef %i.hl), !noalias !265
  %i.ho = load i8, ptr %i.u, align 8, !range !69, !noalias !260, !noundef !5 ; 2 uses
  %.not581.i = icmp eq i8 %i.ho, -1
  br i1 %.not581.i, label %bb.cp, label %bb.co

bb.ao:                                            ; preds = %bb.d
  %i.hp = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !260
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read3strINtB5_12DebugLineStrINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7get_strCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk, i64 noundef %i.hp), !noalias !265
  %i.hq = load i8, ptr %i.bl, align 8, !range !90, !noalias !260, !noundef !5
  %i.hr = icmp eq i8 %i.hq, 2
  %.sroa.0856.0.copyload.i = load ptr, ptr %i.r, align 8, !noalias !260 ; 2 uses
  %.sroa.4857.0.copyload.i = load i64, ptr %.sroa.4857.0..sroa_idx.i, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !260
  br i1 %i.hr, label %bb.ct, label %bb.cs

bb.ap:                                            ; preds = %bb.d
  %i.hs = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.aq:                                            ; preds = %bb.d
  %i.ht = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.ar:                                            ; preds = %bb.d
  %i.hu = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.as:                                            ; preds = %bb.d
  %i.hv = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.at:                                            ; preds = %bb.d
  %i.hw = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.au:                                            ; preds = %bb.d
  %i.hx = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.av:                                            ; preds = %bb.d
  %i.hy = load i16, ptr %i.be, align 8, !noalias !260, !noundef !5 ; 2 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc168.i = trunc i16 %i.hy to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift195.i = lshr i16 %i.hy, 8
  br label %bb.bh

bb.aw:                                            ; preds = %bb.d
  %i.hz = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc179.i = trunc i64 %i.hz to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift217574.i = lshr i64 %i.hz, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc218.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift217574.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift136575.i = lshr i64 %i.hz, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc137.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift136575.i to i32
  %.sroa.47.sroa.44.0.extract.shift61.i = and i64 %i.hz, -4294967296
  br label %bb.bh

bb.ax:                                            ; preds = %bb.d
  %i.ia = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.ay:                                            ; preds = %bb.d
  %i.ib = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.az:                                            ; preds = %bb.d
  %i.ic = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.ba:                                            ; preds = %bb.d
  %i.id = load i8, ptr %i.be, align 8, !noalias !260, !noundef !5
  br label %bb.bh

bb.bb:                                            ; preds = %bb.d
  %i.ie = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5 ; 3 uses
  %.val660.i = load ptr, ptr %i.bf, align 8, !alias.scope !253, !noalias !268 ; 2 uses
  %.val662.i = load i16, ptr %i.bg, align 2, !alias.scope !256, !noalias !316
  %i.if = icmp eq i64 %i.ie, 0
  %i.ig = icmp ult i16 %.val662.i, 5
  %or.cond.i.i = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %or.cond.i.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val661.i = load i64, ptr %i.bh, align 8, !alias.scope !253, !noalias !268
  %i.ih = icmp ult i64 %i.ie, %.val661.i
  br i1 %i.ih, label %bb.bd, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val660.i) ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.val660.i, i64 %i.ie
  %i.ij = load i64, ptr %i.ii, align 8, !noalias !342, !noundef !5
  br label %bb.bh

bb.be:                                            ; preds = %bb.d
  %i.ik = load i64, ptr %i.be, align 8, !noalias !260, !noundef !5 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc180.i = trunc i64 %i.ik to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift219572.i = lshr i64 %i.ik, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc220.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift219572.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift138573.i = lshr i64 %i.ik, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc139.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift138573.i to i32
  %.sroa.47.sroa.44.0.extract.shift63.i = and i64 %i.ik, -4294967296
  br label %bb.bh

bb.bf:                                            ; preds = %bb.f
  %.sroa.4250.0.copyload.i = load i128, ptr %.sroa.4250.0..sroa_idx.i, align 8, !noalias !260 ; 2 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc190.i = trunc nuw nsw i64 %i.di to i8
  %.sroa.86.sroa.0.0.extract.trunc259.i = trunc i128 %.sroa.4250.0.copyload.i to i64
  %.sroa.86.sroa.14.0.extract.shift272.i = lshr i128 %.sroa.4250.0.copyload.i, 64
  %.sroa.86.sroa.14.0.extract.trunc273.i = trunc nuw i128 %.sroa.86.sroa.14.0.extract.shift272.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !260
  br label %bb.bh

bb.bg:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.bh:                                            ; preds = %bb.cy, %bb.cs, %bb.cq, %bb.cm, %bb.cl, %bb.ci, %bb.ch, %bb.ce, %bb.cd, %bb.cc, %bb.ca, %bb.br, %bb.bm, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.ak, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.86.sroa.14.0.i = phi i64 [ %.sroa.86.sroa.14.0.extract.trunc273.i, %bb.bf ], [ %.sroa.5.0.copyload.i, %bb.bm ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ %.sroa.86.sroa.14.0.extract.trunc281.i, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ %.sroa.86.sroa.14.0.extract.trunc275.i, %bb.br ], [ undef, %bb.be ], [ undef, %bb.o ], [ %.sroa.86.sroa.14.0.extract.trunc277.i, %bb.ca ], [ undef, %bb.cc ], [ %i.jk, %bb.cd ], [ undef, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.ce ], [ undef, %bb.ch ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ undef, %bb.ci ], [ undef, %bb.cl ], [ undef, %bb.ak ], [ undef, %bb.cm ], [ undef, %bb.am ], [ undef, %bb.cq ], [ undef, %bb.cs ], [ 0, %bb.cy ], [ undef, %bb.ap ], [ undef, %bb.aq ], [ undef, %bb.ar ], [ undef, %bb.as ], [ undef, %bb.at ], [ undef, %bb.au ], [ undef, %bb.av ], [ undef, %bb.aw ], [ undef, %bb.ax ], [ undef, %bb.ay ], [ undef, %bb.az ], [ undef, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bb ]
  %.sroa.86.sroa.0.0.i = phi i64 [ %.sroa.86.sroa.0.0.extract.trunc259.i, %bb.bf ], [ %i.ir, %bb.bm ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ %.sroa.86.sroa.0.0.extract.trunc263.i, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ %.sroa.86.sroa.0.0.extract.trunc260.i, %bb.br ], [ undef, %bb.be ], [ undef, %bb.o ], [ %.sroa.86.sroa.0.0.extract.trunc261.i, %bb.ca ], [ undef, %bb.cc ], [ %i.ji, %bb.cd ], [ undef, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.ce ], [ undef, %bb.ch ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ undef, %bb.ci ], [ undef, %bb.cl ], [ undef, %bb.ak ], [ undef, %bb.cm ], [ undef, %bb.am ], [ undef, %bb.cq ], [ undef, %bb.cs ], [ %.sroa.5754.0.copyload.i, %bb.cy ], [ undef, %bb.ap ], [ undef, %bb.aq ], [ undef, %bb.ar ], [ undef, %bb.as ], [ undef, %bb.at ], [ undef, %bb.au ], [ undef, %bb.av ], [ undef, %bb.aw ], [ undef, %bb.ax ], [ undef, %bb.ay ], [ undef, %bb.az ], [ undef, %bb.ba ], [ %i.ij, %bb.bd ], [ undef, %bb.bb ]
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.i = phi i16 [ 0, %bb.bf ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc242.i, %bb.bm ], [ 0, %bb.g ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift.i, %bb.h ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc198.i, %bb.i ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc202.i, %bb.j ], [ 0, %bb.k ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc204.i, %bb.l ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc206.i, %bb.m ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc244.i, %bb.br ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc220.i, %bb.be ], [ 0, %bb.o ], [ 0, %bb.ca ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc222.i, %bb.cc ], [ 0, %bb.cd ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc208.i, %bb.ac ], [ 0, %bb.ad ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc224.i, %bb.ce ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc226.i, %bb.ch ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc210.i, %bb.ag ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc212.i, %bb.ah ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc228.i, %bb.ci ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc230.i, %bb.cl ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc214.i, %bb.ak ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc232.i, %bb.cm ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc216.i, %bb.am ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc234.i, %bb.cq ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc236.i, %bb.cs ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc200.i, %bb.cy ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.au ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift195.i, %bb.av ], [ %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc218.i, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bb ]
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.i = phi i8 [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc190.i, %bb.bf ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc191.i, %bb.bm ], [ %i.dj, %bb.g ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc.i, %bb.h ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc169.i, %bb.i ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc171.i, %bb.j ], [ undef, %bb.k ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc172.i, %bb.l ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc173.i, %bb.m ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc192.i, %bb.br ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc180.i, %bb.be ], [ %i.ds, %bb.o ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc193.i, %bb.ca ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc181.i, %bb.cc ], [ 1, %bb.cd ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc174.i, %bb.ac ], [ undef, %bb.ad ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc182.i, %bb.ce ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc183.i, %bb.ch ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc175.i, %bb.ag ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc176.i, %bb.ah ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc184.i, %bb.ci ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc185.i, %bb.cl ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc177.i, %bb.ak ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc186.i, %bb.cm ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc178.i, %bb.am ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc187.i, %bb.cq ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc188.i, %bb.cs ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc170.i, %bb.cy ], [ %i.hs, %bb.ap ], [ %i.ht, %bb.aq ], [ %i.hu, %bb.ar ], [ %i.hv, %bb.as ], [ %i.hw, %bb.at ], [ %i.hx, %bb.au ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc168.i, %bb.av ], [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc179.i, %bb.aw ], [ %i.ia, %bb.ax ], [ %i.ib, %bb.ay ], [ %i.ic, %bb.az ], [ %i.id, %bb.ba ], [ 1, %bb.bd ], [ 0, %bb.bb ]
  %.sroa.47.sroa.0.sroa.44.0.i = phi i32 [ 0, %bb.bf ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc161.i, %bb.bm ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.47.sroa.0.sroa.44.0.extract.shift.i, %bb.i ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc121.i, %bb.j ], [ 0, %bb.k ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc123.i, %bb.l ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc125.i, %bb.m ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc163.i, %bb.br ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc139.i, %bb.be ], [ 0, %bb.o ], [ 0, %bb.ca ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc141.i, %bb.cc ], [ 0, %bb.cd ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc127.i, %bb.ac ], [ 0, %bb.ad ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc143.i, %bb.ce ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc145.i, %bb.ch ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc129.i, %bb.ag ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc131.i, %bb.ah ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc147.i, %bb.ci ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc149.i, %bb.cl ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc133.i, %bb.ak ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc151.i, %bb.cm ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc135.i, %bb.am ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc153.i, %bb.cq ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc155.i, %bb.cs ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc119.i, %bb.cy ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.av ], [ %.sroa.47.sroa.0.sroa.44.0.extract.trunc137.i, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bb ]
  %.sroa.47.sroa.44.0.i = phi i64 [ 0, %bb.bf ], [ %.sroa.47.sroa.44.0.extract.shift85.i, %bb.bm ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.sroa.47.sroa.44.0.extract.shift45.i, %bb.j ], [ 0, %bb.k ], [ %.sroa.47.sroa.44.0.extract.shift47.i, %bb.l ], [ %.sroa.47.sroa.44.0.extract.shift49.i, %bb.m ], [ %.sroa.47.sroa.44.0.extract.shift87.i, %bb.br ], [ %.sroa.47.sroa.44.0.extract.shift63.i, %bb.be ], [ 0, %bb.o ], [ 0, %bb.ca ], [ %.sroa.47.sroa.44.0.extract.shift65.i, %bb.cc ], [ 0, %bb.cd ], [ %.sroa.47.sroa.44.0.extract.shift51.i, %bb.ac ], [ 0, %bb.ad ], [ %.sroa.47.sroa.44.0.extract.shift67.i, %bb.ce ], [ %.sroa.47.sroa.44.0.extract.shift69.i, %bb.ch ], [ %.sroa.47.sroa.44.0.extract.shift53.i, %bb.ag ], [ %.sroa.47.sroa.44.0.extract.shift55.i, %bb.ah ], [ %.sroa.47.sroa.44.0.extract.shift71.i, %bb.ci ], [ %.sroa.47.sroa.44.0.extract.shift73.i, %bb.cl ], [ %.sroa.47.sroa.44.0.extract.shift57.i, %bb.ak ], [ %.sroa.47.sroa.44.0.extract.shift75.i, %bb.cm ], [ %.sroa.47.sroa.44.0.extract.shift59.i, %bb.am ], [ %.sroa.47.sroa.44.0.extract.shift77.i, %bb.cq ], [ %.sroa.47.sroa.44.0.extract.shift79.i, %bb.cs ], [ %.sroa.47.sroa.44.0.extract.shift.i, %bb.cy ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.av ], [ %.sroa.47.sroa.44.0.extract.shift61.i, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bb ]
  %.sroa.03.0.i = phi i64 [ -9223372036854775808, %bb.bf ], [ -9223372036854775807, %bb.bm ], [ -9223372036854775806, %bb.g ], [ -9223372036854775805, %bb.h ], [ -9223372036854775804, %bb.i ], [ -9223372036854775803, %bb.j ], [ -9223372036854775802, %bb.k ], [ -9223372036854775801, %bb.l ], [ -9223372036854775800, %bb.m ], [ -9223372036854775798, %bb.br ], [ -9223372036854775800, %bb.be ], [ %.630.i, %bb.o ], [ -9223372036854775808, %bb.ca ], [ -9223372036854775795, %bb.cc ], [ -9223372036854775794, %bb.cd ], [ -9223372036854775793, %bb.ac ], [ -9223372036854775792, %bb.ad ], [ -9223372036854775791, %bb.ce ], [ -9223372036854775791, %bb.ch ], [ -9223372036854775790, %bb.ag ], [ -9223372036854775789, %bb.ah ], [ -9223372036854775788, %bb.ci ], [ -9223372036854775788, %bb.cl ], [ -9223372036854775787, %bb.ak ], [ -9223372036854775786, %bb.cm ], [ -9223372036854775785, %bb.am ], [ -9223372036854775786, %bb.cq ], [ -9223372036854775784, %bb.cs ], [ %i.kx, %bb.cy ], [ -9223372036854775782, %bb.ap ], [ -9223372036854775781, %bb.aq ], [ -9223372036854775780, %bb.ar ], [ -9223372036854775779, %bb.as ], [ -9223372036854775778, %bb.at ], [ -9223372036854775777, %bb.au ], [ -9223372036854775776, %bb.av ], [ -9223372036854775775, %bb.aw ], [ -9223372036854775774, %bb.ax ], [ -9223372036854775773, %bb.ay ], [ -9223372036854775772, %bb.az ], [ -9223372036854775771, %bb.ba ], [ -9223372036854775770, %bb.bd ], [ -9223372036854775770, %bb.bb ]
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.insert.ext.i = shl i16 %.sroa.47.sroa.0.sroa.0.sroa.44.0.i, 8
  %.sroa.47.sroa.0.sroa.44.0.insert.ext.i = shl i32 %.sroa.47.sroa.0.sroa.44.0.i, 16
  %.sroa.47.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.sroa.47.sroa.0.sroa.0.sroa.44.0.insert.ext.i to i32
  %.sroa.47.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.47.sroa.0.sroa.44.0.insert.ext.i, %.sroa.47.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.47.sroa.0.0.insert.ext.i = zext i32 %.sroa.47.sroa.0.sroa.0.0.insert.insert.i to i64
  %.sroa.47.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.47.sroa.44.0.i, %.sroa.47.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread

bb.bi:                                            ; preds = %bb.d
  %.sroa.0676.0.copyload.i = load ptr, ptr %i.be, align 8, !noalias !260, !nonnull !5, !noundef !5
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5754.0..sroa_idx.i, align 16, !noalias !260 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !260
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %.sroa.5.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !265
  %i.il = load i64, ptr %i.p, align 8, !range !21, !noalias !260, !noundef !5
  %i.im = trunc nuw i64 %i.il to i1
  %i.in = load i64, ptr %i.cw, align 8, !range !345, !noalias !260, !noundef !5 ; 6 uses
  br i1 %i.im, label %bb.bj, label %bb.bk, !prof !57

bb.bj:                                            ; preds = %bb.bi
  %i.io = load i64, ptr %i.cx, align 8, !noalias !260
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.in, i64 %i.io) #20, !noalias !265
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ip = load ptr, ptr %i.cx, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.iq = icmp ule i64 %.sroa.5.0.copyload.i, %i.in
  call void @llvm.assume(i1 %i.iq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !260
  %i.ir = ptrtoint ptr %i.ip to i64
  %.not626.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not626.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr nonnull align 1 %.sroa.0676.0.copyload.i, i64 %.sroa.5.0.copyload.i, i1 false), !noalias !265
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc191.i = trunc i64 %i.in to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift241627.i = lshr i64 %i.in, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc242.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift241627.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift160628.i = lshr i64 %i.in, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc161.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift160628.i to i32
  %.sroa.47.sroa.44.0.extract.shift85.i = and i64 %i.in, 9223372032559808512
  br label %bb.bh

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !260
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !349
  store ptr %.sroa.0682.0.copyload.i, ptr %i.m, align 8, !noalias !355
  store <2 x i64> %i.dq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !355
  %.val.i.i = load i32, ptr %i.bx, align 8, !alias.scope !356, !noalias !357
  call void @_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write2op7convertNtB5_10Expression4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, i32 noundef %.val.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) dereferenceable_or_null(424) %i.ba, ptr nonnull readonly align 16 dereferenceable(512) %i.bc, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noundef nonnull readonly align 8 dereferenceable(176) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3), !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !349
  %i.is = load i64, ptr %i.aj, align 8, !range !25, !noalias !260, !noundef !5 ; 5 uses
  %i.it = icmp eq i64 %i.is, -1
  %.sroa.0493.0.copyload.i51 = load i64, ptr %i.cv, align 8 ; 2 uses
  %.sroa.0493.0.copyload.i53 = load i64, ptr %.sroa_idx52, align 8
  %.sroa.0493.0.copyload.i = load i128, ptr %i.cv, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !260
  br i1 %i.it, label %6, label %bb.br

bb.bo:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !260
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0682.0.copyload.i) ]
  store i64 -1, ptr %i.am, align 8, !noalias !260
  store ptr %.sroa.0682.0.copyload.i, ptr %.sroa.4308.0..sroa_idx.i, align 8, !noalias !260
  store i64 %.sroa.6684.0.copyload.i, ptr %.sroa.4308.sroa.4.0..sroa.4308.0..sroa_idx.sroa_idx.i, align 8, !noalias !260
  %.not613.i = icmp eq i64 %.sroa.6684.0.copyload.i, 0
  br i1 %.not613.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iu = load i8, ptr %.sroa.0682.0.copyload.i, align 1, !noalias !265, !noundef !5
  %i.iv = icmp eq i8 %i.iu, 16
  br i1 %i.iv, label %bb.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !260
  br label %bb.bn

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !260
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %.sroa.6684.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bt unwind label %.loopexit270.a, !noalias !265

6:                                                ; preds = %bb.bn
  %.sroa.29.sroa.0.0.extract.trunc125 = trunc i64 %.sroa.0493.0.copyload.i51 to i8
  %.sroa.29.sroa.29.0.extract.shift142 = lshr i64 %.sroa.0493.0.copyload.i51, 8
  %.sroa.29.sroa.29.0.extract.trunc143 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift142 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.br:                                            ; preds = %bb.bn
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc192.i = trunc i64 %i.is to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift243614.i = lshr i64 %i.is, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc244.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift243614.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift162615.i = lshr i64 %i.is, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc163.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift162615.i to i32
  %.sroa.47.sroa.44.0.extract.shift87.i = and i64 %i.is, -4294967296
  %.sroa.86.sroa.0.0.extract.trunc260.i = trunc i128 %.sroa.0493.0.copyload.i to i64
  %.sroa.86.sroa.14.0.extract.shift274.i = lshr i128 %.sroa.0493.0.copyload.i, 64
  %.sroa.86.sroa.14.0.extract.trunc275.i = trunc nuw i128 %.sroa.86.sroa.14.0.extract.shift274.i to i64
  br label %bb.bh

.loopexit270.a:                                   ; preds = %bb.bq, %bb.bv
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.bu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp, %.loopexit270.a
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit270.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #16
          to label %common.resume unwind label %bb.bx, !noalias !265

bb.bt:                                            ; preds = %bb.bq
  %i.iw = load i64, ptr %i.o, align 8, !range !21, !noalias !260, !noundef !5
  %i.ix = trunc nuw i64 %i.iw to i1
  %i.iy = load i64, ptr %i.cr, align 8, !range !345, !noalias !260, !noundef !5 ; 3 uses
  br i1 %i.ix, label %bb.bu, label %bb.bv, !prof !57

bb.bu:                                            ; preds = %bb.bt
  %i.iz = load i64, ptr %i.cs, align 8, !noalias !260
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.iy, i64 %i.iz) #20
          to label %bb.bw unwind label %.loopexit.split-lp, !noalias !265

bb.bv:                                            ; preds = %bb.bt
  %i.ja = load ptr, ptr %i.cs, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.jb = icmp ule i64 %.sroa.6684.0.copyload.i, %i.iy
  call void @llvm.assume(i1 %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !260
  store i64 %i.iy, ptr %i.ak, align 8, !noalias !260
  store ptr %i.ja, ptr %i.ct, align 8, !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull align 1 %.sroa.0682.0.copyload.i, i64 %.sroa.6684.0.copyload.i, i1 false), !noalias !265
  store i64 %.sroa.6684.0.copyload.i, ptr %i.cu, align 8, !noalias !260
  invoke fastcc void @_RNvMNtNtCsi68uqYEhoRA_5gimli5write2opNtB2_10Expression3raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ak)
          to label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit unwind label %.loopexit270.a, !noalias !265

bb.bw:                                            ; preds = %bb.bu
  unreachable

bb.bx:                                            ; preds = %bb.bs
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !265
  unreachable

common.resume:                                    ; preds = %bb.df, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.bs ], [ %i.lj, %bb.df ]
  resume { ptr, i32 } %common.resume.op

bb.by:                                            ; preds = %bb.p
  %.sroa.4499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.sroa.29.sroa.29.sroa.0.0.copyload166 = load i56, ptr %.sroa.4499.0..sroa_idx.i, align 1, !noalias !359
  %.sroa.5500.0.copyload.i = load i64, ptr %i.co, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.bz:                                            ; preds = %bb.p
  %i.jd = load i64, ptr %i.co, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !260
  call void %i.cq(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noundef nonnull %4, i64 noundef %i.jd) #22, !noalias !265, !inline_history !266
  %i.je = load i64, ptr %i.ah, align 8, !range !267, !noalias !260, !noundef !5 ; 2 uses
  %.not611.i = icmp eq i64 %i.je, 2
  br i1 %.not611.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.4341.0.copyload.i = load i128, ptr %.sroa.4341.0..sroa_idx.i, align 8, !noalias !260 ; 2 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc193.i = trunc nuw nsw i64 %i.je to i8
  %.sroa.86.sroa.0.0.extract.trunc261.i = trunc i128 %.sroa.4341.0.copyload.i to i64
  %.sroa.86.sroa.14.0.extract.shift276.i = lshr i128 %.sroa.4341.0.copyload.i, 64
  %.sroa.86.sroa.14.0.extract.trunc277.i = trunc nuw i128 %.sroa.86.sroa.14.0.extract.shift276.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !260
  br label %bb.bh

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cc:                                            ; preds = %.lr.ph.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !269
  %i.jf = getelementptr inbounds i8, ptr %i.ew, i64 -8
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !269, !noundef !5 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc181.i = trunc i64 %i.jg to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift221608.i = lshr i64 %i.jg, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc222.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift221608.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift140609.i = lshr i64 %i.jg, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc141.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift140609.i to i32
  %.sroa.47.sroa.44.0.extract.shift65.i = and i64 %i.jg, -4294967296
  br label %bb.bh

.loopexit:                                        ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cd:                                            ; preds = %.lr.ph.i.i.i
  %i.jh = getelementptr inbounds i8, ptr %i.gd, i64 -16
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !292, !noundef !5
  %i.jj = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !292, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  br label %bb.bh

.loopexit267:                                     ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit36, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit36.thread
  %.sroa.6368.i.sroa.0.0.copyload188 = load i64, ptr %i.cj, align 8, !noalias !260 ; 2 uses
  %.sroa.6368.i.sroa.7.0.copyload191 = load i64, ptr %.sroa.6368.i.sroa.7.0..sroa_idx, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !260
  %.sroa.29.sroa.0.0.extract.trunc135 = trunc i64 %.sroa.6368.i.sroa.0.0.copyload188 to i8
  %.sroa.29.sroa.29.0.extract.shift160 = lshr i64 %.sroa.6368.i.sroa.0.0.copyload188, 8
  %.sroa.29.sroa.29.0.extract.trunc161 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift160 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.ce:                                            ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit36
  %i.jl = load <2 x i64>, ptr %i.cj, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !260
  store i64 %.pr, ptr %i.af, align 8, !noalias !260
  store <2 x i64> %i.jl, ptr %.sroa.6368.0..sroa_idx369.i, align 8, !noalias !260
  %i.jm = load ptr, ptr %i.ca, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 336
  %i.jo = call noundef i64 @_RNvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB2_17LocationListTable3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.jn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.af), !noalias !326 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc182.i = trunc i64 %i.jo to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift223602.i = lshr i64 %i.jo, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc224.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift223602.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift142603.i = lshr i64 %i.jo, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc143.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift142603.i to i32
  %.sroa.47.sroa.44.0.extract.shift67.i = and i64 %i.jo, -4294967296
  br label %bb.bh

bb.cf:                                            ; preds = %bb.af
  %.sroa.4521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.29.sroa.29.sroa.0.0.copyload164 = load i56, ptr %.sroa.4521.0..sroa_idx.i, align 1, !noalias !359
  %.sroa.5522.0.copyload.i = load i64, ptr %i.cd, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cg:                                            ; preds = %bb.af
  %i.jp = load i64, ptr %i.cd, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ba, ptr %i.j, align 8, !noalias !360
  store ptr %i.bc, ptr %i.ce, align 8, !noalias !360
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !360
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %i.jp), !noalias !367
  %i.jq = load i8, ptr %i.cf, align 4, !range !90, !noalias !360, !noundef !5 ; 2 uses
  %i.jr = icmp eq i8 %i.jq, 2
  br i1 %i.jr, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit.thread, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit.thread: ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i22, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i22, i64 16, i1 false), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit266

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.i22, ptr noundef nonnull align 8 dereferenceable(28) %i.i, i64 28, i1 false), !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx3.i24, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i23, i64 3, i1 false), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.i22, i64 28, i1 false), !noalias !360
  store i8 %i.jq, ptr %.sroa.7.0..sroa_idx1.i25, align 4, !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i22)
  call void @_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write3loc7convertNtB5_12LocationList4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %i.ba, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(512) %i.bc, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noundef nonnull readonly align 8 dereferenceable(176) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3), !noalias !326
  %.pr220 = load i64, ptr %i.ad, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.js = icmp eq i64 %.pr220, -1
  br i1 %i.js, label %.loopexit266, label %bb.ch

.loopexit266:                                     ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit.thread
  %.sroa.6382.i.sroa.0.0.copyload193 = load i64, ptr %i.cg, align 8, !noalias !260 ; 2 uses
  %.sroa.6382.i.sroa.7.0.copyload196 = load i64, ptr %.sroa.6382.i.sroa.7.0..sroa_idx, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !260
  %.sroa.29.sroa.0.0.extract.trunc134 = trunc i64 %.sroa.6382.i.sroa.0.0.copyload193 to i8
  %.sroa.29.sroa.29.0.extract.shift158 = lshr i64 %.sroa.6382.i.sroa.0.0.copyload193, 8
  %.sroa.29.sroa.29.0.extract.trunc159 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift158 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.ch:                                            ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE21convert_location_listCsjhlb6SMKfKY_14simple_convert.exit
  %i.jt = load <2 x i64>, ptr %i.cg, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !260
  store i64 %.pr220, ptr %i.ac, align 8, !noalias !260
  store <2 x i64> %i.jt, ptr %.sroa.6382.0..sroa_idx383.i, align 8, !noalias !260
  %i.ju = load ptr, ptr %i.ca, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 336
  %i.jw = call noundef i64 @_RNvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB2_17LocationListTable3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.jv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac), !noalias !326 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc183.i = trunc i64 %i.jw to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift225600.i = lshr i64 %i.jw, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc226.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift225600.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift144601.i = lshr i64 %i.jw, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc145.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift144601.i to i32
  %.sroa.47.sroa.44.0.extract.shift69.i = and i64 %i.jw, -4294967296
  br label %bb.bh

.loopexit265:                                     ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31.thread
  %.sroa.6386.i.sroa.0.0.copyload198 = load i64, ptr %i.cc, align 8, !noalias !260 ; 2 uses
  %.sroa.6386.i.sroa.7.0.copyload201 = load i64, ptr %.sroa.6386.i.sroa.7.0..sroa_idx, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !260
  %.sroa.29.sroa.0.0.extract.trunc133 = trunc i64 %.sroa.6386.i.sroa.0.0.copyload198 to i8
  %.sroa.29.sroa.29.0.extract.shift156 = lshr i64 %.sroa.6386.i.sroa.0.0.copyload198, 8
  %.sroa.29.sroa.29.0.extract.trunc157 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift156 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.ci:                                            ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit31
  %i.jx = load <2 x i64>, ptr %i.cc, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !260
  store i64 %.pr219, ptr %i.aa, align 8, !noalias !260
  store <2 x i64> %i.jx, ptr %.sroa.6386.0..sroa_idx387.i, align 8, !noalias !260
  %i.jy = load ptr, ptr %i.ca, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 280
  %i.ka = call noundef i64 @_RNvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB2_14RangeListTable3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.jz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !337 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc184.i = trunc i64 %i.ka to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift227593.i = lshr i64 %i.ka, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc228.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift227593.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift146594.i = lshr i64 %i.ka, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc147.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift146594.i to i32
  %.sroa.47.sroa.44.0.extract.shift71.i = and i64 %i.ka, -4294967296
  br label %bb.bh

bb.cj:                                            ; preds = %bb.aj
  %.sroa.4531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.sroa.29.sroa.29.sroa.0.0.copyload163 = load i56, ptr %.sroa.4531.0..sroa_idx.i, align 1, !noalias !359
  %.sroa.5532.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.ck:                                            ; preds = %bb.aj
  %i.kb = load i64, ptr %i.bv, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !260
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !372
  %.sroa.04.0.copyload.i = load i32, ptr %i.bx, align 8, !alias.scope !369, !noalias !376
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_10RangeListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10raw_rangesCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, i64 noundef %i.kb, i32 noundef %.sroa.04.0.copyload.i), !noalias !377
  %i.kc = load i8, ptr %i.by, align 4, !range !90, !noalias !372, !noundef !5 ; 2 uses
  %i.kd = icmp eq i8 %i.kc, 2
  br i1 %i.kd, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit.thread, label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit.thread: ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit264

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(28) %i.l, i64 28, i1 false), !noalias !372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx3.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i21, i64 3, i1 false), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.i, i64 28, i1 false), !noalias !372
  store i8 %i.kc, ptr %.sroa.7.0..sroa_idx1.i, align 4, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @_RINvMNtNtNtCsi68uqYEhoRA_5gimli5write5range7convertNtB5_9RangeList4fromINtNtNtB9_4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %i.ba, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(512) %i.bc, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5), !noalias !337
  %.pr221 = load i64, ptr %i.y, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ke = icmp eq i64 %.pr221, -1
  br i1 %i.ke, label %.loopexit264, label %bb.cl

.loopexit264:                                     ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit.thread
  %.sroa.6400.i.sroa.0.0.copyload203 = load i64, ptr %i.bz, align 8, !noalias !260 ; 2 uses
  %.sroa.6400.i.sroa.7.0.copyload206 = load i64, ptr %.sroa.6400.i.sroa.7.0..sroa_idx, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !260
  %.sroa.29.sroa.0.0.extract.trunc132 = trunc i64 %.sroa.6400.i.sroa.0.0.copyload203 to i8
  %.sroa.29.sroa.29.0.extract.shift154 = lshr i64 %.sroa.6400.i.sroa.0.0.copyload203, 8
  %.sroa.29.sroa.29.0.extract.trunc155 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift154 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cl:                                            ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE18convert_range_listCsjhlb6SMKfKY_14simple_convert.exit
  %i.kf = load <2 x i64>, ptr %i.bz, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !260
  store i64 %.pr221, ptr %i.x, align 8, !noalias !260
  store <2 x i64> %i.kf, ptr %.sroa.6400.0..sroa_idx401.i, align 8, !noalias !260
  %i.kg = load ptr, ptr %i.ca, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 280
  %i.ki = call noundef i64 @_RNvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB2_14RangeListTable3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.kh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x), !noalias !337 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc185.i = trunc i64 %i.ki to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift229591.i = lshr i64 %i.ki, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc230.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift229591.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift148592.i = lshr i64 %i.ki, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc149.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift148592.i to i32
  %.sroa.47.sroa.44.0.extract.shift73.i = and i64 %i.ki, -4294967296
  br label %bb.bh

bb.cm:                                            ; preds = %bb.al
  %i.kj = load ptr, ptr %i.bt, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  store i64 -1, ptr %i.v, align 8, !noalias !260
  store ptr %.sroa.0804.0.copyload.i, ptr %.sroa.6411.0..sroa_idx412.i, align 8, !noalias !260
  store i64 %.sroa.4805.0.copyload.i, ptr %.sroa.6411.sroa.7.0..sroa.6411.0..sroa_idx412.sroa_idx.i, align 8, !noalias !260
  %i.kk = call noundef i64 @_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable3addINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.kj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v), !noalias !265 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc186.i = trunc i64 %i.kk to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift231586.i = lshr i64 %i.kk, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc232.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift231586.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift150587.i = lshr i64 %i.kk, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc151.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift150587.i to i32
  %.sroa.47.sroa.44.0.extract.shift75.i = and i64 %i.kk, -4294967296
  br label %bb.bh

bb.cn:                                            ; preds = %bb.al
  %i.kl = ptrtoint ptr %.sroa.0804.0.copyload.i to i64 ; 2 uses
  %.sroa.29.sroa.0.0.extract.trunc123 = trunc i64 %i.kl to i8
  %.sroa.29.sroa.29.0.extract.shift138 = lshr i64 %i.kl, 8
  %.sroa.29.sroa.29.0.extract.trunc139 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift138 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.co:                                            ; preds = %bb.an
  %.sroa.4544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.29.sroa.29.sroa.0.0.copyload = load i56, ptr %.sroa.4544.0..sroa_idx.i, align 1, !noalias !359
  %.sroa.5545.0.copyload.i = load i64, ptr %i.bq, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !260
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cp:                                            ; preds = %bb.an
  %i.km = load i64, ptr %i.bq, align 8, !noalias !260, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !260
  call void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7get_strCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br, i64 noundef %i.km), !noalias !265
  %i.kn = load i8, ptr %i.bs, align 8, !range !90, !noalias !260, !noundef !5
  %i.ko = icmp eq i8 %i.kn, 2
  %.sroa.0833.0.copyload.i = load ptr, ptr %i.t, align 8, !noalias !260 ; 2 uses
  %.sroa.4834.0.copyload.i = load i64, ptr %.sroa.4834.0..sroa_idx.i, align 8, !noalias !260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !260
  br i1 %i.ko, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kp = load ptr, ptr %i.bt, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  store i64 -1, ptr %i.s, align 8, !noalias !260
  store ptr %.sroa.0833.0.copyload.i, ptr %.sroa.6434.0..sroa_idx435.i, align 8, !noalias !260
  store i64 %.sroa.4834.0.copyload.i, ptr %.sroa.6434.sroa.7.0..sroa.6434.0..sroa_idx435.sroa_idx.i, align 8, !noalias !260
  %i.kq = call noundef i64 @_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable3addINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.kp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s), !noalias !265 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc187.i = trunc i64 %i.kq to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift233582.i = lshr i64 %i.kq, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc234.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift233582.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift152583.i = lshr i64 %i.kq, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc153.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift152583.i to i32
  %.sroa.47.sroa.44.0.extract.shift77.i = and i64 %i.kq, -4294967296
  br label %bb.bh

bb.cr:                                            ; preds = %bb.cp
  %i.kr = ptrtoint ptr %.sroa.0833.0.copyload.i to i64 ; 2 uses
  %.sroa.29.sroa.0.0.extract.trunc122 = trunc i64 %i.kr to i8
  %.sroa.29.sroa.29.0.extract.shift136 = lshr i64 %i.kr, 8
  %.sroa.29.sroa.29.0.extract.trunc137 = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift136 to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cs:                                            ; preds = %bb.ao
  %i.ks = load ptr, ptr %i.bm, align 8, !alias.scope !253, !noalias !268, !nonnull !5, !align !146, !noundef !5
  store i64 -1, ptr %i.q, align 8, !noalias !260
  store ptr %.sroa.0856.0.copyload.i, ptr %.sroa.6447.0..sroa_idx448.i, align 8, !noalias !260
  store i64 %.sroa.4857.0.copyload.i, ptr %.sroa.6447.sroa.7.0..sroa.6447.0..sroa_idx448.sroa_idx.i, align 8, !noalias !260
  %i.kt = call noundef i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable3addINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ks, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q), !noalias !265 ; 4 uses
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc188.i = trunc i64 %i.kt to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift235579.i = lshr i64 %i.kt, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc236.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift235579.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift154580.i = lshr i64 %i.kt, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc155.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift154580.i to i32
  %.sroa.47.sroa.44.0.extract.shift79.i = and i64 %i.kt, -4294967296
  br label %bb.bh

bb.ct:                                            ; preds = %bb.ao
  %i.ku = ptrtoint ptr %.sroa.0856.0.copyload.i to i64 ; 2 uses
  %.sroa.29.sroa.0.0.extract.trunc = trunc i64 %i.ku to i8
  %.sroa.29.sroa.29.0.extract.shift = lshr i64 %i.ku, 8
  %.sroa.29.sroa.29.0.extract.trunc = trunc nuw i64 %.sroa.29.sroa.29.0.extract.shift to i56
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239

bb.cu:                                            ; preds = %bb.d
  %.sroa.0753.0.copyload.i = load ptr, ptr %i.be, align 8, !noalias !260, !nonnull !5, !noundef !5
  %.sroa.5754.0.copyload.i = load i64, ptr %.sroa.5754.0..sroa_idx.i, align 16, !noalias !260 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !260
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %.sroa.5754.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !265
  %i.kv = load i64, ptr %i.n, align 8, !range !21, !noalias !260, !noundef !5
  %i.kw = trunc nuw i64 %i.kv to i1
  %i.kx = load i64, ptr %i.bi, align 8, !range !345, !noalias !260, !noundef !5 ; 3 uses
  br i1 %i.kw, label %bb.cv, label %bb.cw, !prof !57

bb.cv:                                            ; preds = %bb.cu
  %i.ky = load i64, ptr %i.bj, align 8, !noalias !260
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.ky) #20, !noalias !265
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.kz = load ptr, ptr %i.bj, align 8, !noalias !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.la = icmp ule i64 %.sroa.5754.0.copyload.i, %i.kx
  call void @llvm.assume(i1 %i.la)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !260
  %i.lb = ptrtoint ptr %i.kz to i64               ; 4 uses
  %.not576.i = icmp eq i64 %.sroa.5754.0.copyload.i, 0
  br i1 %.not576.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kz, ptr nonnull align 1 %.sroa.0753.0.copyload.i, i64 %.sroa.5754.0.copyload.i, i1 false), !noalias !265
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.47.sroa.0.sroa.0.sroa.0.0.extract.trunc170.i = trunc i64 %i.lb to i8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift199577.i = lshr i64 %i.lb, 8
  %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.trunc200.i = trunc i64 %.sroa.47.sroa.0.sroa.0.sroa.44.0.extract.shift199577.i to i16
  %.sroa.47.sroa.0.sroa.44.0.extract.shift118578.i = lshr i64 %i.lb, 16
  %.sroa.47.sroa.0.sroa.44.0.extract.trunc119.i = trunc i64 %.sroa.47.sroa.0.sroa.44.0.extract.shift118578.i to i32
  %.sroa.47.sroa.44.0.extract.shift.i = and i64 %i.lb, -4294967296
  br label %bb.bh

bb.cz:                                            ; preds = %bb.e
  %i.lc = load i64, ptr %i.cy, align 8, !noalias !260, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !260
  %.sroa.29.sroa.0.0.extract.trunc127 = trunc i64 %i.lc to i8
  br label %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread230: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.da

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread: ; preds = %bb.cz, %bb.bh
  %.sroa.29.sroa.29.sroa.0.1.ph.in.in = phi i64 [ %.sroa.47.sroa.0.0.insert.insert.i, %bb.bh ], [ %i.lc, %bb.cz ]
  %.sroa.29.sroa.0.1.ph = phi i8 [ %.sroa.47.sroa.0.sroa.0.sroa.0.0.i, %bb.bh ], [ %.sroa.29.sroa.0.0.extract.trunc127, %bb.cz ]
  %.sroa.60.1.ph.off0 = phi i64 [ %.sroa.86.sroa.0.0.i, %bb.bh ], [ undef, %bb.cz ]
  %.sroa.60.1.ph.off64 = phi i64 [ %.sroa.86.sroa.14.0.i, %bb.bh ], [ 0, %bb.cz ]
  %.sroa.055.1.ph = phi i64 [ %.sroa.03.0.i, %bb.bh ], [ -9223372036854775799, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.db

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239: ; preds = %bb.q, %bb.ad, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.bc, %select.unfold.i46, %bb.bg, %6, %bb.cb, %bb.by, %.loopexit, %.loopexit267, %.loopexit266, %bb.cf, %.loopexit265, %.loopexit264, %bb.cj, %bb.cn, %bb.cr, %bb.co, %bb.ct
  %.sroa.29.sroa.29.sroa.0.0.ph = phi i56 [ 0, %.loopexit ], [ undef, %bb.bg ], [ %.sroa.29.sroa.29.sroa.0.0.copyload166, %bb.by ], [ undef, %bb.cb ], [ %.sroa.29.sroa.29.0.extract.trunc, %bb.ct ], [ %.sroa.29.sroa.29.sroa.0.0.copyload, %bb.co ], [ %.sroa.29.sroa.29.0.extract.trunc137, %bb.cr ], [ undef, %select.unfold.i46 ], [ %.sroa.29.sroa.29.0.extract.trunc139, %bb.cn ], [ %.sroa.29.sroa.29.sroa.0.0.copyload163, %bb.cj ], [ %.sroa.29.sroa.29.0.extract.trunc155, %.loopexit264 ], [ %.sroa.29.sroa.29.0.extract.trunc157, %.loopexit265 ], [ %.sroa.29.sroa.29.sroa.0.0.copyload164, %bb.cf ], [ %.sroa.29.sroa.29.0.extract.trunc159, %.loopexit266 ], [ %.sroa.29.sroa.29.0.extract.trunc161, %.loopexit267 ], [ %.sroa.29.sroa.29.0.extract.trunc143, %6 ], [ 0, %bb.bc ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.ad ], [ 0, %bb.q ]
  %.sroa.29.sroa.0.0.ph = phi i8 [ 92, %.loopexit ], [ 81, %bb.bg ], [ %i.dv, %bb.by ], [ 81, %bb.cb ], [ %.sroa.29.sroa.0.0.extract.trunc, %bb.ct ], [ %i.ho, %bb.co ], [ %.sroa.29.sroa.0.0.extract.trunc122, %bb.cr ], [ 91, %select.unfold.i46 ], [ %.sroa.29.sroa.0.0.extract.trunc123, %bb.cn ], [ %i.hf, %bb.cj ], [ %.sroa.29.sroa.0.0.extract.trunc132, %.loopexit264 ], [ %.sroa.29.sroa.0.0.extract.trunc133, %.loopexit265 ], [ %i.gw, %bb.cf ], [ %.sroa.29.sroa.0.0.extract.trunc134, %.loopexit266 ], [ %.sroa.29.sroa.0.0.extract.trunc135, %.loopexit267 ], [ %.sroa.29.sroa.0.0.extract.trunc125, %6 ], [ 91, %bb.q ], [ 90, %bb.ad ], [ 79, %bb.d ], [ 79, %bb.d ], [ 79, %bb.d ], [ 79, %bb.d ], [ 79, %bb.d ], [ 87, %bb.bc ]
  %.sroa.60.0.ph.off0.a = phi i64 [ 0, %.loopexit ], [ undef, %bb.bg ], [ %.sroa.5500.0.copyload.i, %bb.by ], [ undef, %bb.cb ], [ %.sroa.4857.0.copyload.i, %bb.ct ], [ %.sroa.5545.0.copyload.i, %bb.co ], [ %.sroa.4834.0.copyload.i, %bb.cr ], [ 0, %select.unfold.i46 ], [ %.sroa.4805.0.copyload.i, %bb.cn ], [ %.sroa.5532.0.copyload.i, %bb.cj ], [ %.sroa.6400.i.sroa.7.0.copyload206, %.loopexit264 ], [ %.sroa.6386.i.sroa.7.0.copyload201, %.loopexit265 ], [ %.sroa.5522.0.copyload.i, %bb.cf ], [ %.sroa.6382.i.sroa.7.0.copyload196, %.loopexit266 ], [ %.sroa.6368.i.sroa.7.0.copyload191, %.loopexit267 ], [ %.sroa.0493.0.copyload.i53, %6 ], [ 0, %bb.bc ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.ad ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %7 = zext i56 %.sroa.29.sroa.29.sroa.0.0.ph to i64
  %8 = shl nuw i64 %7, 8
  %9 = zext i8 %.sroa.29.sroa.0.0.ph to i64
  %10 = or disjoint i64 %8, %9
  br label %bb.da

_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !260
  %.sroa.29.8.copyload = load i64, ptr %i.al, align 8, !noalias !359 ; 2 uses
  %.sroa.29.sroa.0.0.extract.trunc128 = trunc i64 %.sroa.29.8.copyload to i8
  %.sroa.60.8.copyload = load i128, ptr %.sroa.60.8..sroa_idx, align 8, !noalias !359 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !260
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %extract.t257 = trunc i128 %.sroa.60.8.copyload to i64
  %extract259 = lshr i128 %.sroa.60.8.copyload, 64
  %extract.t260 = trunc nuw i128 %extract259 to i64
  br label %bb.db

bb.da:                                            ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread230
  %.sroa.60.1237.off0 = phi i64 [ undef, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread230 ], [ %.sroa.60.0.ph.off0.a, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239 ]
  %.sroa.29.sroa.0.0.insert.insert = phi i64 [ 79, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread230 ], [ %10, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread239 ]
  store i64 %.sroa.29.sroa.0.0.insert.insert, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.60.1237.off0, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.dh

bb.db:                                            ; preds = %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread
  %.sroa.055.1229 = phi i64 [ %.sroa.055.1.ph, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread ], [ -9223372036854775798, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit ]
  %.sroa.60.1228.off0 = phi i64 [ %.sroa.60.1.ph.off0, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread ], [ %extract.t257, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit ]
  %.sroa.60.1228.off64 = phi i64 [ %.sroa.60.1.ph.off64, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread ], [ %extract.t260, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit ]
  %.sroa.29.sroa.0.1227 = phi i8 [ %.sroa.29.sroa.0.1.ph, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread ], [ %.sroa.29.sroa.0.0.extract.trunc128, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit ]
  %.sroa.29.sroa.29.sroa.0.1226.in.in = phi i64 [ %.sroa.29.sroa.29.sroa.0.1.ph.in.in, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit.thread ], [ %.sroa.29.8.copyload, %_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE23convert_attribute_valueCsjhlb6SMKfKY_14simple_convert.exit ]
  %.sroa.29.sroa.29.sroa.0.1226.in = and i64 %.sroa.29.sroa.29.sroa.0.1226.in.in, -256
  %.sroa.29.sroa.0.0.insert.ext129 = zext i8 %.sroa.29.sroa.0.1227 to i64
  %.sroa.29.sroa.0.0.insert.insert131 = or disjoint i64 %.sroa.29.sroa.29.sroa.0.1226.in, %.sroa.29.sroa.0.0.insert.ext129
  store i64 %.sroa.055.1229, ptr %i.as, align 16
  store i64 %.sroa.29.sroa.0.0.insert.insert131, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.60.1228.off0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  store i64 %.sroa.60.1228.off64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ld = load ptr, ptr %i.ca, align 8, !nonnull !5, !align !146, !noundef !5 ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 408
  %.val20 = load i64, ptr %i.le, align 8, !noundef !5 ; 2 uses
  %i.lf = icmp ult i64 %2, %.val20
  br i1 %i.lf, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %.val20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21
          to label %.noexc unwind label %bb.df

.noexc:                                           ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.lg = getelementptr i8, ptr %i.ld, i64 400
  %.val19 = load ptr, ptr %i.lg, align 8, !nonnull !5, !noundef !5
  %i.lh = getelementptr inbounds nuw [80 x i8], ptr %.val19, i64 %2
  %.sroa.09.0.val = load i16, ptr %i.da, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ar, ptr noundef nonnull align 16 dereferenceable(32) %i.as, i64 32, i1 false)
  call void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB5_25DebuggingInformationEntry3set(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.lh, i16 noundef %.sroa.09.0.val, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.de

bb.de:                                            ; preds = %bb.b, %bb.dd
  %i.li = icmp eq ptr %i.cz, %i.ax
  br i1 %i.li, label %._crit_edge, label %bb.b

bb.df:                                            ; preds = %bb.dc
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit14AttributeValueECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 dereferenceable(32) %i.as) #16
          to label %common.resume unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.dh:                                            ; preds = %._crit_edge, %bb.da
  ret void

._crit_edge:                                      ; preds = %bb.de, %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsi68uqYEhoRA_5gimli5write4unit7convertINtB5_11ConvertUnitINtNtNtBb_4read12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianEE7convertCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %.sroa.58.sroa.6.i.i = alloca [16 x i8], align 16 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.11.i = alloca [32 x i8], align 8         ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [320 x i8], align 16              ; 28 uses
  %i.i = alloca [784 x i8], align 16              ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.3 = alloca [16 x i8], align 8            ; 3 uses
  %.sroa.4 = alloca [256 x i8], align 8           ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [88 x i8], align 8                ; 14 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 6 uses
  %.sroa.8 = alloca [280 x i8], align 8           ; 6 uses
  %i.p = alloca [784 x i8], align 16              ; 7 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.49 = alloca [760 x i8], align 8          ; 2 uses
  %.sroa.875 = alloca [16 x i8], align 8          ; 6 uses
  %.sroa.11 = alloca [760 x i8], align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.875)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58.sroa.6.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !379, !noalias !382, !align !146, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !379, !noalias !382, !nonnull !5, !align !146, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.not.i = icmp eq ptr %i.t, null                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 160
  %spec.select.i = select i1 %.not.i, ptr %i.v, ptr %i.t
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !379, !noalias !382, !nonnull !5 ; 4 uses
  %.val30.i = load ptr, ptr %i.x, align 8, !alias.scope !379, !noalias !382, !nonnull !5
  %.sroa.012.0.i = select i1 %.not.i, ptr %.val.i, ptr %.val30.i ; 23 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 96 ; 3 uses
  %i.z = load i64, ptr %i.y, align 16, !range !33, !noalias !384, !noundef !5
  %.not19.i = icmp eq i64 %i.z, -2
  br i1 %.not19.i, label %.thread99, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 400
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 16, !alias.scope !385, !noalias !388
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 376
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !385, !noalias !388
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 392
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !390, !noalias !388, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 409
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !385, !noalias !388, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 304
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !393, !noalias !396, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 312
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !393, !noalias !396, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 320
  %.val.i.i.i = load i8, ptr %i.al, align 16, !range !58, !alias.scope !393, !noalias !396, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !398
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 208
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %.noexc unwind label %.thread96

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !398
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 232
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianEjEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.e unwind label %bb.d, !noalias !388

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.f ], [ %i.ao, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #16
          to label %.thread87 unwind label %bb.n, !noalias !388

bb.d:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !398
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 256
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.h unwind label %bb.g, !noalias !388

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.aq, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #16
          to label %bb.c unwind label %bb.n, !noalias !388

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !398
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 280
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianEjEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.j unwind label %bb.i, !noalias !388

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %bb.f unwind label %bb.n, !noalias !388

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 328
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !399, !noalias !402, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 336
  %i.aw = load i64, ptr %i.av, align 16, !alias.scope !399, !noalias !402, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 344
  %.val.i16.i.i = load i8, ptr %i.ax, align 8, !range !58, !alias.scope !399, !noalias !402, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 368
  %i.az = load i8, ptr %i.ay, align 16, !range !90, !alias.scope !385, !noalias !388, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 352
  %i.bb = load ptr, ptr %i.ba, align 16, !alias.scope !385, !noalias !388, !nonnull !5
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 360
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !385, !noalias !388
  %i.be = load i64, ptr %i.y, align 16, !range !404, !alias.scope !385, !noalias !388, !noundef !5
  %.not11.i.i = icmp eq i64 %i.be, -1
  br i1 %.not11.i.i, label %_RNvXsL_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.y) #22, !noalias !384
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 176
  %i.bg = load <2 x i64>, ptr %i.bf, align 16, !alias.scope !405, !noalias !408
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 192
  %i.bi = load i64, ptr %i.bh, align 16, !alias.scope !405, !noalias !408, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 128 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 16, !range !404, !alias.scope !405, !noalias !408, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.bk, -1
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.bj) #22, !noalias !384
end_hunk_1
