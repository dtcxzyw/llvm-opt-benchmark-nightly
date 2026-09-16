Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/gimli-3e7b4f451eed5746.gimli.d2cf5f70e100ae54-cgu.06?download=true
inline.NumInlined: 216
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMNtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB2_5Dwarf15get_line_string:bb.a
  br label %_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !595, !noalias !596, !noundef !5
  %i.p = tail call { ptr, i64 } @_RNvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB5_15LineStringTable3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n, i64 noundef %i.o), !noalias !598
  br label %_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit

_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.merged.i = phi { ptr, i64 } [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ]
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1285bytes(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !noundef !5  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 11
  br i1 %i.d, label %bb.c, label %bb.b, !prof !599

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.e, align 8, !noundef !5
  %i.l = tail call { ptr, i64 } @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB5_11StringTable3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, i64 noundef %i.k)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.e, align 8, !noundef !5
  %i.n = tail call { ptr, i64 } @_RNvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB5_15LineStringTable3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, i64 noundef %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.merged = phi { ptr, i64 } [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB4_9Operation4size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %.sroa.410.0.extract.shift = lshr i32 %2, 8     ; 3 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.f = icmp ne i64 %i.e, 26
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %i.h = icmp samesign ugt i64 %i.e, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 24
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %.loopexit
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.m
    i64 7, label %bb.n
    i64 8, label %4
    i64 9, label %bb.o
    i64 10, label %.loopexit
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.w
    i64 14, label %bb.x
    i64 15, label %bb.x
    i64 16, label %bb.y
    i64 17, label %bb.z
    i64 18, label %bb.aa
    i64 19, label %bb.ab
    i64 20, label %bb.ac
    i64 21, label %bb.ad
    i64 22, label %bb.ag
    i64 23, label %bb.ah
    i64 24, label %bb.ai
    i64 25, label %bb.aj
    i64 26, label %bb.ak
    i64 27, label %bb.y
    i64 28, label %bb.cb
    i64 29, label %bb.cb
    i64 30, label %bb.cb
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.m, align 8
  br label %bb.bq

bb.d:                                             ; preds = %bb.a
  %.sroa.09.0.extract.trunc.mask = and i32 %2, 255
  %i.n = zext nneg i32 %.sroa.09.0.extract.trunc.mask to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %.loopexit, label %.preheader

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  br label %bb.al

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.ao, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !610, !noundef !5 ; 2 uses
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !610, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.u
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !610, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.ao, label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !610
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !610, !noundef !5
  %i.af = sub i64 %i.ab, %i.ae
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.05.0.i = phi i64 [ %i.af, %bb.k ], [ %i.ag, %bb.l ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.k ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ag = lshr i64 %.sroa.05.0.i, 7               ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.07.0.i, 1
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.ap, label %bb.l

bb.m:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  br label %bb.aq

bb.n:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i16, ptr %i.al, align 8, !noundef !5 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5 ; 2 uses
  %i.ap = icmp ult i16 %i.am, 32
  br i1 %i.ap, label %.preheader222, label %.preheader224.preheader

4:                                                ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !noundef !5     ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load i16, ptr %7, align 8, !noundef !5     ; 2 uses
  %9 = icmp ult i16 %8, 128
  %10 = icmp ult i16 %8, 16384
  %spec.select405 = select i1 %10, i64 2, i64 3
  %.lcssa373 = select i1 %9, i64 1, i64 %spec.select405
  %.not.i192 = icmp eq ptr %3, null
  br i1 %.not.i192, label %bb.bc, label %bb.ax

bb.o:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !noundef !5
  %i.as = icmp ugt i8 %i.ar, 1
  %. = zext i1 %i.as to i64
  br label %.loopexit

bb.p:                                             ; preds = %bb.a
  br label %.loopexit

bb.q:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !5 ; 3 uses
  %.not.i186 = icmp eq ptr %3, null
  br i1 %.not.i186, label %bb.be, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !611, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !611, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.au
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !611, !noundef !5 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.be, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !611
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !611, !noundef !5
  %i.bf = sub i64 %i.bb, %i.be
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.sroa.05.0.i187 = phi i64 [ %i.bf, %bb.u ], [ %i.bg, %bb.v ]
  %.sroa.07.0.i188 = phi i64 [ 0, %bb.u ], [ %i.bh, %bb.v ] ; 2 uses
  %i.bg = lshr i64 %.sroa.05.0.i187, 7            ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.07.0.i188, 1
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %bb.bf, label %bb.v

bb.w:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !5
  br label %bb.bg

bb.x:                                             ; preds = %bb.a, %bb.a
  br label %.loopexit

bb.y:                                             ; preds = %bb.a, %bb.a
  br label %.loopexit

bb.z:                                             ; preds = %bb.a
  %.sroa.410.0.extract.trunc.mask181 = and i32 %.sroa.410.0.extract.shift, 255
  %i.bl = zext nneg i32 %.sroa.410.0.extract.trunc.mask181 to i64
  br label %.loopexit

bb.aa:                                            ; preds = %bb.a
  %.sroa.410.0.extract.trunc.mask = and i32 %.sroa.410.0.extract.shift, 255
  %i.bm = zext nneg i32 %.sroa.410.0.extract.trunc.mask to i64
  br label %.loopexit

bb.ab:                                            ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !10, !noundef !5
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.bh, label %.loopexit

bb.ac:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !10, !noundef !5
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.bk, label %.loopexit

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !612, !noalias !613, !nonnull !5, !noundef !5 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !612, !noalias !613, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bw, 5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.af
  %.sroa.03.0.i255 = phi i64 [ 0, %.lr.ph ], [ %i.ce, %bb.af ]
  %.sroa.05.0.i191254 = phi ptr [ %i.bu, %.lr.ph ], [ %i.cc, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !614
  call void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB4_9Operation4size(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.0.i191254, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %3), !noalias !615, !inline_history !616
  %i.ca = load i32, ptr %i.a, align 8, !range !14, !noalias !614, !noundef !5
  %i.cb = trunc nuw i32 %i.ca to i1
  br i1 %i.cb, label %bb.bn, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i191254, i64 32 ; 2 uses
  %i.cd = load i64, ptr %i.bz, align 8, !noalias !614, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !614
  %i.ce = add i64 %i.cd, %.sroa.03.0.i255         ; 2 uses
  %i.cf = icmp eq ptr %i.cc, %i.bx
  br i1 %i.cf, label %._crit_edge, label %bb.ae

bb.ag:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load i16, ptr %i.cg, align 8, !noundef !5 ; 3 uses
  %i.ci = icmp ult i16 %i.ch, 32
  br i1 %i.ci, label %.loopexit, label %bb.br

bb.ah:                                            ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !5 ; 2 uses
  br label %bb.bt

bb.ai:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5
  %.sroa.5.0.extract.shift.mask = and i32 %2, -65536
  %i.cn = icmp eq i32 %.sroa.5.0.extract.shift.mask, 131072
  %..sroa.410.0.extract.shift = select i1 %i.cn, i32 %2, i32 %.sroa.410.0.extract.shift
  %i.co = and i32 %..sroa.410.0.extract.shift, 255
  %i.cp = zext nneg i32 %i.co to i64
  br label %bb.bv

bb.aj:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5
  br label %bb.by

bb.ak:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %i.cs, align 8, !noundef !5
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load i64, ptr %12, align 8, !noundef !5
  br label %bb.bz

.loopexit:                                        ; preds = %bb.ce, %bb.bs, %bb.cb, %bb.cc, %bb.cd, %bb.by, %bb.br, %bb.bg, %bb.aw, %bb.as, %bb.an, %.preheader, %bb.ag, %bb.bm, %bb.ac, %bb.bj, %bb.ab, %bb.e, %bb.o, %bb.a, %bb.a, %bb.av, %.loopexit225, %bb.ar, %bb.am, %bb.ca, %.loopexit228, %bb.bu, %bb.bp, %bb.bf, %bb.bd, %bb.ap, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.p, %bb.d
  %.sroa.084.0 = phi i64 [ %spec.select407, %bb.ce ], [ %i.n, %bb.d ], [ 0, %bb.a ], [ %i.de, %bb.an ], [ %i.db, %bb.am ], [ %i.ee, %bb.aw ], [ %i.dj, %bb.ap ], [ %i.dm, %bb.ar ], [ %i.ey, %bb.bg ], [ %i.eb, %bb.av ], [ %i.gk, %bb.by ], [ %i.dy, %.loopexit225 ], [ %i.eu, %bb.bd ], [ %i.gs, %bb.ca ], [ 0, %bb.e ], [ %., %bb.o ], [ 1, %bb.p ], [ %i.ew, %bb.bf ], [ %i.cx, %.preheader ], [ 2, %bb.x ], [ 0, %bb.a ], [ 4, %bb.y ], [ %i.bl, %bb.z ], [ %i.bm, %bb.aa ], [ %i.dp, %bb.as ], [ 1, %bb.ab ], [ %i.fv, %bb.bp ], [ 1, %bb.ac ], [ 0, %bb.ag ], [ %i.gb, %bb.bu ], [ %i.gi, %.loopexit228 ], [ %i.fh, %bb.bj ], [ %i.fp, %bb.bm ], [ 1, %bb.br ], [ %spec.select406, %bb.bs ], [ 2, %bb.cb ], [ 3, %bb.cc ], [ 4, %bb.cd ]
  %i.cu = add i64 %.sroa.084.0, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cu, ptr %i.cv, align 8
  br label %bb.bq

.preheader:                                       ; preds = %bb.e, %.preheader
  %.sroa.084.1 = phi i64 [ %i.cx, %.preheader ], [ 0, %bb.e ]
  %.sroa.011.0 = phi i64 [ %i.cw, %.preheader ], [ %i.p, %bb.e ]
  %i.cw = lshr i64 %.sroa.011.0, 7                ; 2 uses
  %i.cx = add nuw nsw i64 %.sroa.084.1, 1         ; 2 uses
  %i.cy = icmp eq i64 %i.cw, 0
  br i1 %i.cy, label %.loopexit, label %.preheader

bb.al:                                            ; preds = %bb.an, %bb.f
  %.sroa.084.2 = phi i64 [ 0, %bb.f ], [ %i.de, %bb.an ] ; 2 uses
  %.sroa.014.0 = phi i64 [ %i.s, %bb.f ], [ %i.dd, %bb.an ] ; 2 uses
  %i.cz = ashr i64 %.sroa.014.0, 6                ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.db = add i64 %.sroa.084.2, 1
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.dc = icmp eq i64 %i.cz, -1
  %i.dd = ashr i64 %.sroa.014.0, 7
  %i.de = add i64 %.sroa.084.2, 1                 ; 2 uses
  br i1 %i.dc, label %.loopexit, label %bb.al

bb.ao:                                            ; preds = %bb.i, %bb.g
  %storemerge219 = phi i64 [ 16, %bb.g ], [ 17, %bb.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %storemerge219, ptr %i.df, align 4
  br label %bb.bq

bb.ap:                                            ; preds = %bb.l
  %i.dg = add nuw i64 %.sroa.07.0.i, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5
  %i.dj = add i64 %i.dg, %i.di
  br label %.loopexit

bb.aq:                                            ; preds = %bb.as, %bb.m
  %.sroa.084.3 = phi i64 [ 0, %bb.m ], [ %i.dp, %bb.as ] ; 2 uses
  %.sroa.025.0 = phi i64 [ %i.ak, %bb.m ], [ %i.do, %bb.as ] ; 2 uses
  %i.dk = ashr i64 %.sroa.025.0, 6                ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dm = add i64 %.sroa.084.3, 1
  br label %.loopexit

bb.as:                                            ; preds = %bb.aq
  %i.dn = icmp eq i64 %i.dk, -1
  %i.do = ashr i64 %.sroa.025.0, 7
  %i.dp = add i64 %.sroa.084.3, 1                 ; 2 uses
  br i1 %i.dn, label %.loopexit, label %bb.aq

.preheader224.preheader:                          ; preds = %bb.n
  %i.dq = icmp ult i16 %i.am, 128
  %i.dr = icmp ult i16 %i.am, 16384
  %spec.select = select i1 %i.dr, i64 2, i64 3
  %.lcssa371 = select i1 %i.dq, i64 1, i64 %spec.select
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.preheader, %bb.au
  %.sroa.041.0 = phi i64 [ %i.dx, %bb.au ], [ 0, %.preheader224.preheader ] ; 2 uses
  %.sroa.029.0 = phi i64 [ %i.dw, %bb.au ], [ %i.ao, %.preheader224.preheader ] ; 2 uses
  %i.ds = ashr i64 %.sroa.029.0, 6                ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader224
  %i.du = add i64 %.sroa.041.0, 1
  br label %.loopexit225

bb.au:                                            ; preds = %.preheader224
  %i.dv = icmp eq i64 %i.ds, -1
  %i.dw = ashr i64 %.sroa.029.0, 7
  %i.dx = add i64 %.sroa.041.0, 1                 ; 2 uses
  br i1 %i.dv, label %.loopexit225, label %.preheader224

.loopexit225:                                     ; preds = %bb.au, %bb.at
  %.sroa.041.1 = phi i64 [ %i.du, %bb.at ], [ %i.dx, %bb.au ]
  %i.dy = add i64 %.sroa.041.1, %.lcssa371
  br label %.loopexit

.preheader222:                                    ; preds = %bb.n, %bb.aw
  %.sroa.084.4 = phi i64 [ %i.ee, %bb.aw ], [ 0, %bb.n ] ; 2 uses
  %.sroa.029.1 = phi i64 [ %i.ed, %bb.aw ], [ %i.ao, %bb.n ] ; 2 uses
  %i.dz = ashr i64 %.sroa.029.1, 6                ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.preheader222
  %i.eb = add i64 %.sroa.084.4, 1
  br label %.loopexit

bb.aw:                                            ; preds = %.preheader222
  %i.ec = icmp eq i64 %i.dz, -1
  %i.ed = ashr i64 %.sroa.029.1, 7
  %i.ee = add i64 %.sroa.084.4, 1                 ; 2 uses
  br i1 %i.ec, label %.loopexit, label %.preheader222

bb.ax:                                            ; preds = %4
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !617, !noundef !5 ; 2 uses
  %i.eh = icmp ult i64 %6, %i.eg
  br i1 %i.eh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !617, !nonnull !5, !noundef !5
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %6
  %i.el = load i64, ptr %i.ek, align 8, !noalias !617, !noundef !5 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.bc, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %6, i64 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !617
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !noalias !617, !noundef !5
  %i.ep = sub i64 %i.el, %i.eo
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.05.0.i193 = phi i64 [ %i.ep, %bb.ba ], [ %i.eq, %bb.bb ]
  %.sroa.07.0.i194 = phi i64 [ 0, %bb.ba ], [ %i.er, %bb.bb ]
  %i.eq = lshr i64 %.sroa.05.0.i193, 7            ; 2 uses
  %i.er = add nuw nsw i64 %.sroa.07.0.i194, 1     ; 2 uses
  %i.es = icmp eq i64 %i.eq, 0
  br i1 %i.es, label %bb.bd, label %bb.bb

bb.bc:                                            ; preds = %bb.ay, %4
  %storemerge218 = phi i64 [ 16, %4 ], [ 17, %bb.ay ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %storemerge218, ptr %i.et, align 4
  br label %bb.bq

bb.bd:                                            ; preds = %bb.bb
  %i.eu = add nuw i64 %i.er, %.lcssa373
  br label %.loopexit

bb.be:                                            ; preds = %bb.s, %bb.q
  %storemerge = phi i64 [ 16, %bb.q ], [ 17, %bb.s ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %storemerge, ptr %i.ev, align 4
  br label %bb.bq

bb.bf:                                            ; preds = %bb.v
  %i.ew = add nuw i64 %.sroa.07.0.i188, 2
  br label %.loopexit

bb.bg:                                            ; preds = %bb.bg, %bb.w
  %.sroa.084.5 = phi i64 [ 0, %bb.w ], [ %i.ey, %bb.bg ]
  %.sroa.062.0 = phi i64 [ %i.bk, %bb.w ], [ %i.ex, %bb.bg ]
  %i.ex = lshr i64 %.sroa.062.0, 7                ; 2 uses
  %i.ey = add nuw nsw i64 %.sroa.084.5, 1         ; 2 uses
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %.loopexit, label %bb.bg

bb.bh:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = load i64, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNCNvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB6_9Operation4size0Ba_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr nonnull %i.d, i64 noundef %i.fb) #26
  %i.fc = load i32, ptr %i.c, align 8, !range !14, !noundef !5
  %i.fd = trunc nuw i32 %i.fc to i1
  br i1 %i.fd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.0153.0.copyload = load i64, ptr %i.fe, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0153.0.copyload, ptr %i.ff, align 4
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.bk:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fj = load i64, ptr %i.fi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNCNvMs_NtNtCsi68uqYEhoRA_5gimli5write2opNtB6_9Operation4size0Ba_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr nonnull %i.d, i64 noundef %i.fj) #26
  %i.fk = load i32, ptr %i.b, align 8, !range !14, !noundef !5
  %i.fl = trunc nuw i32 %i.fk to i1
  br i1 %i.fl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.0159.0.copyload = load i64, ptr %i.fm, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0159.0.copyload, ptr %i.fn, align 4
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.bn:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.011.0.copyload.i = load i64, ptr %i.fq, align 4, !noalias !614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !614
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.011.0.copyload.i, ptr %i.fr, align 4
  br label %bb.bq

._crit_edge:                                      ; preds = %bb.af, %bb.ad
  %.sroa.03.0.i.lcssa = phi i64 [ 0, %bb.ad ], [ %i.ce, %bb.af ] ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %._crit_edge
  %.sroa.0102.0 = phi i64 [ 0, %._crit_edge ], [ %i.ft, %bb.bo ]
  %.sroa.0104.0 = phi i64 [ %.sroa.03.0.i.lcssa, %._crit_edge ], [ %i.fs, %bb.bo ]
  %i.fs = lshr i64 %.sroa.0104.0, 7               ; 2 uses
  %i.ft = add nuw nsw i64 %.sroa.0102.0, 1        ; 2 uses
  %i.fu = icmp eq i64 %i.fs, 0
  br i1 %i.fu, label %bb.bp, label %bb.bo

bb.bp:                                            ; preds = %bb.bo
  %i.fv = add i64 %i.ft, %.sroa.03.0.i.lcssa
  br label %.loopexit

bb.bq:                                            ; preds = %bb.c, %bb.ao, %bb.bc, %bb.be, %bb.bi, %bb.bl, %bb.bn, %.loopexit
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %bb.ao ], [ 1, %bb.bc ], [ 1, %bb.be ], [ 1, %bb.bi ], [ 1, %bb.bl ], [ 1, %bb.bn ], [ 0, %.loopexit ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.br:                                            ; preds = %bb.ag
  %i.fw = icmp ult i16 %i.ch, 128
  br i1 %i.fw, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fx = icmp ult i16 %i.ch, 16384
  %spec.select406 = select i1 %i.fx, i64 2, i64 3
  br label %.loopexit

bb.bt:                                            ; preds = %bb.bt, %bb.ah
  %.sroa.0108.0 = phi i64 [ 0, %bb.ah ], [ %i.fz, %bb.bt ]
  %.sroa.0110.0 = phi i64 [ %i.ck, %bb.ah ], [ %i.fy, %bb.bt ]
  %i.fy = lshr i64 %.sroa.0110.0, 7               ; 2 uses
  %i.fz = add nuw nsw i64 %.sroa.0108.0, 1        ; 2 uses
  %i.ga = icmp eq i64 %i.fy, 0
  br i1 %i.ga, label %bb.bu, label %bb.bt

bb.bu:                                            ; preds = %bb.bt
  %i.gb = add i64 %i.fz, %i.ck
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bx, %bb.ai
  %.sroa.0112.0 = phi i64 [ %i.cm, %bb.ai ], [ %i.gg, %bb.bx ] ; 2 uses
  %.sroa.0117.0 = phi i64 [ 0, %bb.ai ], [ %i.gh, %bb.bx ] ; 2 uses
  %i.gc = ashr i64 %.sroa.0112.0, 6               ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ge = add i64 %.sroa.0117.0, 1
  br label %.loopexit228

bb.bx:                                            ; preds = %bb.bv
  %i.gf = icmp eq i64 %i.gc, -1
  %i.gg = ashr i64 %.sroa.0112.0, 7
  %i.gh = add i64 %.sroa.0117.0, 1                ; 2 uses
  br i1 %i.gf, label %.loopexit228, label %bb.bv

.loopexit228:                                     ; preds = %bb.bx, %bb.bw
  %.sroa.0117.1 = phi i64 [ %i.ge, %bb.bw ], [ %i.gh, %bb.bx ]
  %i.gi = add i64 %.sroa.0117.1, %i.cp
  br label %.loopexit

bb.by:                                            ; preds = %bb.by, %bb.aj
  %.sroa.084.9 = phi i64 [ 0, %bb.aj ], [ %i.gk, %bb.by ]
  %.sroa.0120.0 = phi i64 [ %i.cr, %bb.aj ], [ %i.gj, %bb.by ]
  %i.gj = lshr i64 %.sroa.0120.0, 7               ; 2 uses
  %i.gk = add nuw nsw i64 %.sroa.084.9, 1         ; 2 uses
  %i.gl = icmp eq i64 %i.gj, 0
  br i1 %i.gl, label %.loopexit, label %bb.by

bb.bz:                                            ; preds = %bb.bz, %bb.ak
  %.sroa.0122.0 = phi i64 [ %11, %bb.ak ], [ %i.gm, %bb.bz ]
  %.sroa.0126.0 = phi i64 [ 0, %bb.ak ], [ %i.gn, %bb.bz ]
  %i.gm = lshr i64 %.sroa.0122.0, 7               ; 2 uses
  %i.gn = add nuw nsw i64 %.sroa.0126.0, 1        ; 2 uses
  %i.go = icmp eq i64 %i.gm, 0
  br i1 %i.go, label %.preheader230.a, label %bb.bz

.preheader230.a:                                  ; preds = %bb.bz, %.preheader230.a
  %.sroa.0124.0 = phi i64 [ %i.gp, %.preheader230.a ], [ %i.ct, %bb.bz ]
  %.sroa.0128.0 = phi i64 [ %i.gq, %.preheader230.a ], [ 0, %bb.bz ]
  %i.gp = lshr i64 %.sroa.0124.0, 7               ; 2 uses
  %i.gq = add nuw nsw i64 %.sroa.0128.0, 1        ; 2 uses
  %i.gr = icmp eq i64 %i.gp, 0
  br i1 %i.gr, label %bb.ca, label %.preheader230.a

bb.ca:                                            ; preds = %.preheader230.a
  %i.gs = add nuw i64 %i.gq, %i.gn
  br label %.loopexit

bb.cb:                                            ; preds = %bb.a, %bb.a, %bb.a
  %.sroa.0130.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0130.0 = load i32, ptr %.sroa.0130.0.in, align 8, !noundef !5 ; 4 uses
  %i.gt = icmp ult i32 %.sroa.0130.0, 128
  br i1 %i.gt, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gu = icmp ult i32 %.sroa.0130.0, 16384
  br i1 %i.gu, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gv = icmp ult i32 %.sroa.0130.0, 2097152
  br i1 %i.gv, label %.loopexit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gw = icmp ult i32 %.sroa.0130.0, 268435456
  %spec.select407 = select i1 %i.gw, i64 5, i64 6
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB4_9DwarfUnit15get_line_string(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(648) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.a = load i64, ptr %1, align 8, !range !7, !alias.scope !622, !noalias !623, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !622, !noalias !623, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !622, !noalias !623, !noundef !5
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.h, 1
  br label %_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !622, !noalias !623, !noundef !5
  %i.m = tail call { ptr, i64 } @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB5_11StringTable3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k, i64 noundef %i.l), !noalias !624
  br label %_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !622, !noalias !623, !noundef !5
  %i.p = tail call { ptr, i64 } @_RNvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB5_15LineStringTable3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n, i64 noundef %i.o), !noalias !625
  br label %_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit

_RNvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_10LineString3get.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.merged.i = phi { ptr, i64 } [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ]
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB4_9DwarfUnit3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([648 x i8]) align 8 captures(none) dereferenceable(648) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i32 132096, ptr %i.c, align 8, !alias.scope !628
  store <4 x i8> splat (i8 1), ptr %i.b, align 4, !alias.scope !628
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i8 -5, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !628
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 273
  store i8 14, ptr %.sroa.7.0..sroa_idx.i, align 1, !alias.scope !628
  store i64 0, ptr %i.a, align 8, !alias.scope !628
  %.sroa.4.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx35.i, align 8, !alias.scope !628
  %.sroa.5.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx36.i, align 8, !alias.scope !628
  %.sroa.6.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx37.i, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.d, align 8, !alias.scope !628
  %.sroa.4.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx28.i, align 8, !alias.scope !628
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !628
  %.sroa.6.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx30.i, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !alias.scope !628
  store i32 0, ptr %i.e, align 2, !alias.scope !628
  store i64 1, ptr %.sroa.65.0..sroa_idx.i, align 8, !alias.scope !628
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !628
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !628
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !alias.scope !628
  store i64 1, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !628
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %.sroa.1014.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.711.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !628
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.1014.0..sroa_idx.i, align 8, !alias.scope !628
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.h, align 8, !alias.scope !628
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !628
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !628
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 278
  store i8 0, ptr %i.i, align 2, !alias.scope !628
  call void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB4_4Unit3new(ptr noalias nofree noundef nonnull sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(280) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx30, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %.sroa.5.0..sroa_idx31, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false)
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 0, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 0, 1114112) i32 @_RNvNtCsi68uqYEhoRA_5gimli9case_fold14case_fold_data(i32 noundef range(i32 128, 1114112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i32 %0, 8094
  %i.b = select i1 %i.a, i64 0, i64 744, !unpredictable !5 ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 372                ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.c
  %.val12.1.i = load i32, ptr %i.d, align 4, !range !631, !noalias !632, !noundef !5
  %i.e = icmp samesign ugt i32 %.val12.1.i, %0
  %i.f = select i1 %i.e, i64 %i.b, i64 %i.c, !unpredictable !5 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 186                ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.g
  %.val12.2.i = load i32, ptr %i.h, align 4, !range !631, !noalias !632, !noundef !5
  %i.i = icmp samesign ugt i32 %.val12.2.i, %0
  %i.j = select i1 %i.i, i64 %i.f, i64 %i.g, !unpredictable !5 ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 93                 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.k
  %.val12.3.i = load i32, ptr %i.l, align 4, !range !631, !noalias !632, !noundef !5
  %i.m = icmp samesign ugt i32 %.val12.3.i, %0
  %i.n = select i1 %i.m, i64 %i.j, i64 %i.k, !unpredictable !5 ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 46                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.o
  %.val12.4.i = load i32, ptr %i.p, align 4, !range !631, !noalias !632, !noundef !5
  %i.q = icmp samesign ugt i32 %.val12.4.i, %0
  %i.r = select i1 %i.q, i64 %i.n, i64 %i.o, !unpredictable !5 ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 23                 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.s
  %.val12.5.i = load i32, ptr %i.t, align 4, !range !631, !noalias !632, !noundef !5
  %i.u = icmp samesign ugt i32 %.val12.5.i, %0
  %i.v = select i1 %i.u, i64 %i.r, i64 %i.s, !unpredictable !5 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 12                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.w
  %.val12.6.i = load i32, ptr %i.x, align 4, !range !631, !noalias !632, !noundef !5
  %i.y = icmp samesign ugt i32 %.val12.6.i, %0
  %i.z = select i1 %i.y, i64 %i.v, i64 %i.w, !unpredictable !5 ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 6                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.aa
  %.val12.7.i = load i32, ptr %i.ab, align 4, !range !631, !noalias !632, !noundef !5
  %i.ac = icmp samesign ugt i32 %.val12.7.i, %0
  %i.ad = select i1 %i.ac, i64 %i.z, i64 %i.aa, !unpredictable !5 ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @29, i64 %i.ae
  %.val12.8.i = load i32, ptr %i.af, align 4, !range !631, !noalias !632, !noundef !5
end_hunk_0
